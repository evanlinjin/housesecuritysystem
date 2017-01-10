package main

import (
	"net/http"

	"github.com/evanlinjin/housesecuritysystem/dbAccess"

	"bytes"
	"fmt"
)

func apiv0(path string) string { return "/api/v0/" + path }

func init() {
	http.HandleFunc(apiv0("test"), testHandler)
}

func testHandler(w http.ResponseWriter, r *http.Request) {
	cred := dbAccess.GetCredentials()

	w.Header().Set("Content-Type", "text/plain")

	db, err := cred.OpenDB("mysql")
	if err != nil {
		http.Error(w, fmt.Sprintf("Could not open db: %v", err), 500)
		return
	}
	defer db.Close()

	rows, err := db.Query("SHOW DATABASES")
	if err != nil {
		http.Error(w, fmt.Sprintf("Could not query db: %v", err), 500)
		return
	}
	defer rows.Close()

	buf := bytes.NewBufferString("Databases:\n")
	for rows.Next() {
		dbName := ""
		if err := rows.Scan(&dbName); err != nil {
			http.Error(w, fmt.Sprintf("Could not scan result: %v", err), 500)
			return
		}
		fmt.Fprintf(buf, "- %s\n", dbName)
	}
	w.Write(buf.Bytes())

	return
}
