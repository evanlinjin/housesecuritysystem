package dbAccess

import (
	"fmt"
	"log"
	"os"

	"database/sql"

	"strconv"
	"time"

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
	rows, err := db.Query("SELECT username FROM Users WHERE username = ?", username)
	if err != nil {
		return err
	}
	cols, err := rows.Columns()
	if err != nil {
		return err
	}
	if len(cols) != 0 {
		// TODO: Needs to return an error.
		return nil
	}
	defer rows.Close()

	// Create new user.
	_, err = db.Exec("INSERT INTO Users (?, ?, ?)", genUID(), username, password)
	if err != nil {
		return err
	}

	return nil
}

// OpenDB opens a MySQL Database.
func (c *Credentials) OpenDB(dbName string) (db *sql.DB, err error) {
	db, err = sql.Open(dbName, fmt.Sprintf(
		"%s:%s@cloudsql(%s)/",
		c.User, c.Password, c.ConnectionName,
	))
	return
}

func mustGetenv(k string) string {
	v := os.Getenv(k)
	if v == "" {
		log.Panicf("%s environment variable not set.", k)
	}
	return v
}

func genUID() string {
	return fmt.Sprintf(
		"uid%s%s",
		strconv.FormatInt(time.Now().Unix(), 10),
		genRandString(7),
	)
}
