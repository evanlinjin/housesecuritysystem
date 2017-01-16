package dbAccess

import (
	"fmt"
	"log"
	"net/http"
	"os"

	"google.golang.org/appengine"
	"google.golang.org/appengine/mail"

	"database/sql"

	/* mysql DRIVER */
	_ "github.com/go-sql-driver/mysql"
	/* google app engine MAIL */)

const (
	// ConstDbName is the name of database.
	ConstDbName = "main"
)

// Credentials represents the data needed to interact with MySQL Database.
type Credentials struct {
	ConnectionName string
	User           string
	Password       string
}

// GetCredentials gets credentials for interacting with MySQL Database.
func GetCredentials() *Credentials {
	return &Credentials{
		ConnectionName: mustGetenv("CLOUDSQL_CONNECTION_NAME"),
		User:           mustGetenv("CLOUDSQL_USER"),
		Password:       mustGetenv("CLOUDSQL_PASSWORD"),
	}
}

// CreateUser creates a user.
func (c *Credentials) CreateUser(username, password string) error {
	// Open Database.
	db, err := c.OpenDB(ConstDbName)
	if err != nil {
		return err
	}
	defer db.Close()

	// Instantiate Users Table.
	_, err = db.Exec(fmt.Sprintf(
		"CREATE TABLE IF NOT EXISTS Users (%s,%s,%s,%s,%s,%s)",
		"id CHAR(30) NOT NULL",
		"username TINYTEXT NOT NULL",
		"password TINYTEXT NOT NULL",
		"enabled BIT(1) NOT NULL",
		"PRIMARY KEY(id)",
		"UNIQUE KEY(username)",
	))

	if err != nil {
		return err
	}

	// Create new user.
	_, err = db.Exec("INSERT INTO Users (id,username,password,enabled) VALUES (?,?,?,?)", genRandString(30), username, password, false)
	if err != nil {
		return err
	}

	return nil
}

// GetUID obtains the user ID from username and password (if correct).
func (c *Credentials) GetUID(username, password string) (uid string, err error) {
	// Open Database.
	db, err := c.OpenDB(ConstDbName)
	if err != nil {
		return
	}
	defer db.Close()

	// Find user ID.
	row := db.QueryRow("SELECT id FROM Users WHERE username = ? AND password = ?", username, password)
	if err != nil {
		return
	}
	err = row.Scan(&uid)
	if err != nil {
		return
	} else if uid == "" {
		err = &AccessUsersError{id: ErrorInvalidCredentials}
	}
	return
}

// CheckUniqUsername checks if Username is Unique.
func (c *Credentials) CheckUniqUsername(username string) (bool, error) {
	// Open Database.
	db, err := c.OpenDB(ConstDbName)
	if err != nil {
		return false, err
	}
	defer db.Close()
	return checkUniqUsername(db, username)
}

// GenerateUserConfirmationPortal creates a method for user to confirm account.
func (c *Credentials) GenerateUserConfirmationPortal(username, uid string) error {
	// Open Database.
	db, err := c.OpenDB(ConstDbName)
	if err != nil {
		return err
	}
	defer db.Close()

	// Instantiate UserConfirmationKeys Table.
	_, err = db.Exec(fmt.Sprintf(
		"CREATE TABLE IF NOT EXISTS UserConfirmationKeys (%s,%s,%s)",
		"uid CHAR(30) NOT NULL",
		"key CHAR(30) NOT NULL",
		"PRIMARY KEY(uid)",
	))
	if err != nil {
		return err
	}

	// Generate key.
	key := genRandString(30)

	// Add entry to UserConfirmationKeys Table.
	_, err = db.Exec("INSERT INTO UserConfirmationKeys (uid,key) VALUES (?,?)", uid, key)
	if err != nil {
		return err
	}

	// Send confirmation email.
	confirmMsg := fmt.Sprintf(`
		Thank you for creating an account at House Security Systems!
		Please confirm your email address by clicking on the link below:

		----------
		https://telepool-144405.appspot.com/api/v0/confirm_user/%s
		----------

		Kind regards,


		Evan Lin
		Gooseberry Technologies
	`, key)
	return mail.Send(
		appengine.NewContext(&http.Request{}),
		&mail.Message{
			Sender:  "Gooseberry NoReply <noreply@telepool-144405.appspotmail.com>",
			To:      []string{username},
			Subject: "Confirm your Account",
			Body:    confirmMsg,
		},
	)
}

// OpenDB opens a MySQL Database.
func (c *Credentials) OpenDB(dbName string) (db *sql.DB, err error) {
	db, err = sql.Open("mysql", fmt.Sprintf("%s:%s@cloudsql(%s)/", c.User, c.Password, c.ConnectionName))
	if err != nil {
		return
	}
	_, err = db.Exec(fmt.Sprintf("USE %s", dbName))
	return
}

func mustGetenv(k string) string {
	v := os.Getenv(k)
	if v == "" {
		log.Panicf("%s environment variable not set.", k)
	}
	return v
}

func checkUniqUsername(db *sql.DB, username string) (isUniq bool, err error) {
	// Check if username is unique.
	storedUsername := ""
	err = db.QueryRow("SELECT username FROM Users WHERE username = ?", username).Scan(&storedUsername)
	isUniq = (storedUsername != username)
	return
}
