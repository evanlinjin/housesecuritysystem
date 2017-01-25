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

	// SHOW ALL USERS :

	rows, e := dbc.Db.Query("SELECT * FROM Users")
	if e != nil {
		sendError(w, r, "Cannot query db: %v", e)
		return
	}

	buf := bytes.NewBufferString("Users:\n")
	for rows.Next() {
		id, email, pSalt, pHash := "", "", "", ""
		var active []uint8
		if e = rows.Scan(&id, &email, &pSalt, &pHash, &active); e != nil {
			http.Error(w, fmt.Sprintf("Could not scan result: %v", e), 500)
			return
		}
		fmt.Fprintf(buf, "- %s, %s, %s, %s, %v\n", id, email, pSalt, pHash, active)
	}

	rows.Close()

	// SHOW ALL SESSIONS:

	rows, e = dbc.Db.Query("SELECT * FROM Sessions")
	if e != nil {
		sendError(w, r, "Cannot query db: %v", e)
		return
	}

	fmt.Fprintf(buf, "\nSessions:\n")
	for rows.Next() {
		var sid, hash, uid, client string
		var loginTime, lastSeenTime int64
		if e = rows.Scan(&sid, &hash, &uid, &client, &loginTime, &lastSeenTime); e != nil {
			http.Error(w, fmt.Sprintf("Could not scan result: %v", e), 500)
			return
		}
		fmt.Fprintf(buf, "- %s, %s, %s, %s, %v, %v\n", sid, hash, uid, client, loginTime, lastSeenTime)
	}

	rows.Close()

	w.Write(buf.Bytes())

	return
}
