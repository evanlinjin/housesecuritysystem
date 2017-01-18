package main

import (
	"bytes"
	"fmt"
	"net/http"

	"github.com/evanlinjin/housesecuritysystem/dbAccess"
)

func testHandleV0(w http.ResponseWriter, r *http.Request) {
	cred := dbAccess.GetCredentials()

	w.Header().Set("Content-Type", "text/plain")

	db, err := cred.OpenDB(dbAccess.ConstDbName)
	if err != nil {
		http.Error(w, fmt.Sprintf("Could not open db: %v", err), 500)
		return
	}
	defer db.Close()

	rows, err := db.Query("SELECT * FROM Users")
	if err != nil {
		http.Error(w, fmt.Sprintf("Could not query db: %v", err), 500)
		return
	}
	defer rows.Close()

	buf := bytes.NewBufferString("Users:\n")
	for rows.Next() {
		id, email, pSalt, pHash := "", "", "", ""
		var active []uint8
		if err := rows.Scan(&id, &email, &pSalt, &pHash, &active); err != nil {
			http.Error(w, fmt.Sprintf("Could not scan result: %v", err), 500)
			return
		}
		fmt.Fprintf(buf, "- %s, %s, %s, %s, %v\n", id, email, pSalt, pHash, active)
	}
	w.Write(buf.Bytes())

	return
}
