package main

import (
	"fmt"
	"net/http"
	"strings"
)

func activateUserHandleV1(w http.ResponseWriter, r *http.Request) {
	// Connect to DB.
	dbc, e := GetDbConnection()
	if e != nil {
		sendError(w, r, "Cannot connect to db: %v", e)
		return
	}
	defer dbc.Close()

	// Analyse path to obtain uid & keyPass.
	path := r.URL.EscapedPath()
	strArray := strings.Split(path[strings.LastIndex(path, "/")+1:], "+")
	uid, keyPass := strArray[0], strArray[1]

	// Check if activation key is valid.
	valid, _ := dbc.CheckActivationURL(uid, keyPass)
	if valid == false {
		sendError(w, r, "Activation URL invalid: %v", strArray)
		return
	}

	// Activate Account.
	e = dbc.ActivateAccount(uid)
	if e != nil {
		sendError(w, r, "Cannot activate account: %v, error: %v", strArray, e)
		return
	}

	w.Write([]byte(fmt.Sprintf("ACTIVATED: %v", dbc.CheckAccountEnabled(uid))))
	return
}
