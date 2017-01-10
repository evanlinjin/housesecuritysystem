package dbAccess

import (
	"fmt"
	"log"
	"os"

	"database/sql"

	_ "github.com/go-sql-driver/mysql"
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
	db, err := c.OpenDB("mysql")
	if err != nil {
		return err
	}
	defer db.Close()

	// Instantiate Users Table.
	_, err = db.Exec("CREATE TABLE IF NOT EXISTS Users (id CHAR(20) NOT NULL, username VARCHAR(30) NOT NULL, password VARCHAR(30) NOT NULL, PRIMARY KEY(id), UNIQUE KEY(username))")
	if err != nil {
		return err
	}

	// Check if username is unique.
	isUniq, err := checkUniqUsername(db, username)
	if err != nil {
		return err
	} else if isUniq == false {
		return &AccessUsersError{id: ErrorUsernameNotUnique}
	}

	// Create new user.
	_, err = db.Exec("INSERT INTO Users (?, ?, ?)", genRandString(20), username, password)
	if err != nil {
		return err
	}

	return nil
}

// GetUID obtains the user ID from username and password (if correct).
func (c *Credentials) GetUID(username, password string) (uid string, err error) {
	// Open Database.
	db, err := c.OpenDB("mysql")
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
	db, err := c.OpenDB("mysql")
	if err != nil {
		return false, err
	}
	defer db.Close()
	return checkUniqUsername(db, username)
}

// OpenDB opens a MySQL Database.
func (c *Credentials) OpenDB(dbName string) (*sql.DB, error) {
	return sql.Open(dbName, fmt.Sprintf(
		"%s:%s@cloudsql(%s)/",
		c.User, c.Password, c.ConnectionName,
	))
}

func mustGetenv(k string) string {
	v := os.Getenv(k)
	if v == "" {
		log.Panicf("%s environment variable not set.", k)
	}
	return v
}

func checkUniqUsername(db *sql.DB, username string) (bool, error) {
	// Check if username is unique.
	rows, err := db.Query("SELECT username FROM Users WHERE username = ?", username)
	if err != nil {
		return false, err
	}
	defer rows.Close()

	cols, err := rows.Columns()
	if err != nil {
		return false, err
	}

	return (len(cols) == 0), nil
}
