package dbAccess

import (
	"fmt"
	"log"
	"os"

	"database/sql"

	/* mysql DRIVER */
	_ "github.com/go-sql-driver/mysql"
)

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
	_, err = db.Exec("CREATE TABLE IF NOT EXISTS Users (id CHAR(30) NOT NULL, username VARCHAR(30) NOT NULL, password VARCHAR(30) NOT NULL, PRIMARY KEY(id), UNIQUE KEY(username))")
	if err != nil {
		return err
	}

	// Create new user.
	_, err = db.Exec("INSERT INTO Users (id,username,password) VALUES (?,?,?)", genRandString(30), username, password)
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
