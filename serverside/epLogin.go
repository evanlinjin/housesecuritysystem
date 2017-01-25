package main

import (
	"fmt"
	"net/http"
)

// LoginRequest represents a login request.
type LoginRequest struct {
	Email    string `json:"email"`
	Password string `json:"password"`
	Client   string `json:"client"`
}

// LoginResponse represends a login response.
type LoginResponse struct {
	Status string `json:"status"`
	// User.
	UserID string `json:"user_id"`
	Email  string `json:"email"`
	// Session.
	SessionID  string `json:"session_id"`
	SessionKey string `json:"session_key"`
	Client     string `json:"client"`
	LoginTime  int64  `json:"login_time"`
}

func loginHandleV1(w http.ResponseWriter, r *http.Request) {
	/* HELPER FUNCTIONS START */
	sendLoginError := func(httpStatus int, format string, a ...interface{}) {
		msg := fmt.Sprintf(format, a)
		sendResponse(w, LoginResponse{Status: msg}, httpStatus)
	}
	/* HELPER FUNCTIONS END */

	w.Header().Set("Content-Type", "application/json;charset=UTF-8")

	// Connect to DB.
	dbc, e := GetDbConnection()
	if e != nil {
		sendLoginError(http.StatusInternalServerError, "ERROR: %v", e)
		return
	}
	defer dbc.Close()

	// Read HTTP Request.
	request := LoginRequest{}
	unmarshalRequestBody(w, readRequestBody(r), &request)

	// Check login details.
	uid, e := dbc.CheckLogin(request.Email, request.Password)
	if e != nil || uid == "" {
		sendLoginError(http.StatusUnauthorized, "FAILED: %v", e)
		return
	}

	// Check Account Enabled.
	if dbc.CheckAccountEnabled(uid) == false {
		sendLoginError(http.StatusUnauthorized, "FAILED: %v", e)
		return
	}

	// Create a new session.
	sid := genUID()
	sessionKey, loginTime, e := dbc.CreateSession(uid, sid, request.Client)
	if e != nil || uid == "" {
		sendLoginError(http.StatusInternalServerError, "ERROR: %v", e)
		return
	}

	// Send Response.
	sendResponse(w, LoginResponse{
		Status:     "SUCCESS",
		UserID:     uid,
		Email:      request.Email,
		SessionID:  sid,
		SessionKey: sessionKey,
		Client:     request.Client,
		LoginTime:  loginTime,
	}, http.StatusOK)
	return
}
