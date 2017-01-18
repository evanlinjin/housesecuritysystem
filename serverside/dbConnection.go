package main

import (
	"database/sql"
	"fmt"
	"net/http"
	"os"
	"time"

	"google.golang.org/appengine"
	"google.golang.org/appengine/mail"

	"golang.org/x/crypto/bcrypt"

	/* mysql DRIVER */
	_ "github.com/go-sql-driver/mysql"
)

const (
	// DBNAME is the database name.
	DBNAME = "test"
	// LENGTHUSERID is the char length of random part of userid.
	LENGTHUSERID = 21
	// LENGTHPASSWORDSALT is the char length of password salt.
	LENGTHPASSWORDSALT = 32
	// LENGTHPASSWORDHASH is the char length of password hash.
	LENGTHPASSWORDHASH = 60
	// LENGTHACCOUNTACTIVATIONKEY is the char length of account activation key.
	LENGTHACCOUNTACTIVATIONKEY = 32
	// LENGTHACCOUNTACTIVATIONKEYSALT is the char length of account activation key salt.
	LENGTHACCOUNTACTIVATIONKEYSALT = 32
	// LENGTHACCOUNTACTIVATIONKEYHASH is the char length of account activation key hash.
	LENGTHACCOUNTACTIVATIONKEYHASH = 60
)

const activateAccountEmailMsg = `
Hi there,

Thank you for creating an account at House Security Systems!

Please confirm your email address by clicking on the link below:
https://telepool-144405.appspot.com/api/v1/activate_user/%s+%s

Kind regards,

Evan Lin
Gooseberry Technologies
`

// DbConnection represents a connection to MySQL Database.
type DbConnection struct {
	Db *sql.DB
}

// GetDbConnection returns a DB connection.
func GetDbConnection() (c *DbConnection, e error) {
	c = &DbConnection{}
	c.Db, e = sql.Open("mysql", fmt.Sprintf(
		"%s:%s@cloudsql(%s)/",
		os.Getenv("CLOUDSQL_USER"),
		os.Getenv("CLOUDSQL_PASSWORD"),
		os.Getenv("CLOUDSQL_CONNECTION_NAME"),
	))
	if e != nil {
		return
	}
	_, e = c.Db.Exec(fmt.Sprintf("USE %s", DBNAME))
	return
}

// Close closes DB connection.
func (c *DbConnection) Close() (e error) {
	e = c.Db.Close()
	return
}

// CreateNewAccount creates a new account.
func (c *DbConnection) CreateNewAccount(email, password string) (uid string, e error) {
	// Instantiate Users Table.
	_, e = c.Db.Exec(fmt.Sprintf(
		"CREATE TABLE IF NOT EXISTS Users (%s,%s,%s,%s,%s,%s,%s)",
		fmt.Sprintf("uid VARCHAR(%d) NOT NULL", 255),
		fmt.Sprintf("email VARCHAR(%d) NOT NULL", 255),
		fmt.Sprintf("passwordSalt CHAR(%d) NOT NULL", LENGTHPASSWORDSALT),
		fmt.Sprintf("passwordHash CHAR(%d) NOT NULL", LENGTHPASSWORDHASH),
		"enabled BIT(1) NOT NULL",
		"PRIMARY KEY(id)",
		"UNIQUE KEY(email)",
	))
	if e != nil {
		return
	}

	// Create new account variables.
	uid = fmt.Sprintf("%s-%d", generateRandomString(LENGTHUSERID), time.Now().UnixNano())
	pwdSalt := generateRandomString(LENGTHPASSWORDSALT)
	pwdHash, _ := bcrypt.GenerateFromPassword([]byte(password+pwdSalt), 10)

	// Create new account.
	_, e = c.Db.Exec(
		"INSERT INTO Users (uid, email, passwordSalt, passwordHash, enabled) VALUES (?,?,?,?,?)",
		uid, email, pwdSalt, string(pwdHash), false,
	)
	return
}

// CheckUniqEmail checks if email is unique.
func (c *DbConnection) CheckUniqEmail(email string) (isUniq bool, e error) {
	tempEmail := ""
	e = c.Db.QueryRow("SELECT email FROM Users WHERE email = ?", email).Scan(&tempEmail)
	isUniq = (tempEmail != email)
	return
}

// CreateAccountActivationMethod creates a method for user to confirm account.
func (c *DbConnection) CreateAccountActivationMethod(r *http.Request, email, uid string) (e error) {
	// Instantiate AccountActivationMethods Table.
	_, e = c.Db.Exec(fmt.Sprintf(
		"CREATE TABLE IF NOT EXISTS AccountActivationMethods (%s,%s,%s,%s)",
		fmt.Sprintf("uid VARCHAR(%d) NOT NULL", 255),
		fmt.Sprintf("keySalt CHAR(%d) NOT NULL", LENGTHACCOUNTACTIVATIONKEYSALT),
		fmt.Sprintf("keyHash CHAR(%d) NOT NULL", LENGTHACCOUNTACTIVATIONKEYHASH),
		"PRIMARY KEY(uid)",
	))
	if e != nil {
		return
	}

	// Create Account Activation Variables.
	keyPass := generateRandomString(LENGTHACCOUNTACTIVATIONKEY)
	keySalt := generateRandomString(LENGTHACCOUNTACTIVATIONKEYSALT)
	keyHash, _ := bcrypt.GenerateFromPassword([]byte(keyPass+keySalt), 10)

	// Add entry to AccountActivationMethods Table.
	_, e = c.Db.Exec(
		"INSERT INTO AccountActivationMethods (uid,keySalt,keyHash) VALUES (?,?,?)",
		uid, keySalt, string(keyHash),
	)
	if e != nil {
		return
	}

	// Send Confirmation Email.
	e = mail.Send(
		appengine.NewContext(r),
		&mail.Message{
			Sender:  "Gooseberry NoReply <noreply@telepool-144405.appspotmail.com>",
			To:      []string{email},
			Subject: "Confirm your Account",
			Body:    fmt.Sprintf(activateAccountEmailMsg, uid, keyPass),
		},
	)
	return
}

// ActivateAccount activates user.
func (c *DbConnection) ActivateAccount(uid string) (e error) {
	_, e = c.Db.Exec("UPDATE Users SET enabled = ? WHERE uid = ?", true, uid)
	return
}

// CheckActivationURL checks whether Activation URL is valid.
func (c *DbConnection) CheckActivationURL(uid, keyPass string) (ok bool, e error) {
	dbUID, dbKeySalt, dbKeyHash := "", "", ""
	e = c.Db.QueryRow("SELECT * FROM AccountActivationMethods WHERE uid = ?", uid).Scan(&dbUID, &dbKeySalt, &dbKeyHash)
	if e != nil {
		return
	}

	e = bcrypt.CompareHashAndPassword([]byte(dbKeyHash), []byte(keyPass+dbKeySalt))
	if e != nil {
		return
	}

	ok = true
	return
}

// CheckAccountEnabled checks whether account is active.
func (c *DbConnection) CheckAccountEnabled(uid string) (active bool) {
	row := c.Db.QueryRow("SELECT enabled FROM Users WHERE uid = ?", uid)
	var enabled []uint8
	row.Scan(&enabled)
	active = (enabled[0] == 1)
	return
}
