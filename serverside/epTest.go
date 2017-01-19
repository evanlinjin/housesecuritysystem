package main

import (
	"bytes"
	"fmt"
	"net/http"
)

func testHandleV1(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "text/plain")
	dbc, e := GetDbConnection()
	if e != nil {
		sendError(w, r, "Cannot connect to db: %v", e)
		return
	}
	defer dbc.Close()

	rows, e := dbc.Db.Query("SELECT * FROM Users")
	if e != nil {
		sendError(w, r, "Cannot query db: %v", e)
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
