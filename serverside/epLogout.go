package main

import (
	"fmt"
	"net/http"
)

// LogoutRequest represents a logout request.
type LogoutRequest struct {
	UserID     string `json:"user_id"`
	SessionID  string `json:"session_id"`
	SessionKey string `json:"session_key"`
}

// LogoutResponse represents a logout response.
type LogoutResponse struct {
	Status     string `json:"status"`
	UserID     string `json:"user_id"`
	SessionID  string `json:"session_id"`
	LogoutTime int64  `json:"logout_time"`
}

func logoutHandleV1(w http.ResponseWriter, r *http.Request) {
	/* HELPER FUNCTIONS START */
	sendLogoutError := func(httpStatus int, format string, a ...interface{}) {
		msg := fmt.Sprintf(format, a)
		sendResponse(w, LogoutResponse{Status: msg}, httpStatus)
	}
	/* HELPER FUNCTIONS END */

	w.Header().Set("Content-Type", "application/json;charset=UTF-8")

	// Connect to DB.
	dbc, e := GetDbConnection()
	if e != nil {
		sendLogoutError(http.StatusInternalServerError, "ERROR: %v", e)
		return
	}
	defer dbc.Close()

	// Read HTTP Request.
	request := LogoutRequest{}
	unmarshalRequestBody(w, readRequestBody(r), &request)

	// Check if session is active.
	sessionActive, _, e := dbc.CheckSession(request.SessionID, request.SessionKey)
	if e != nil || sessionActive == false {
		sendLogoutError(http.StatusUnauthorized, "FAILED: %v", e)
		return
	}

	// Delete session.
	logoutTime, e := dbc.DeleteSession(request.UserID, request.SessionID)
	if e != nil {
		sendLogoutError(http.StatusBadRequest, "FAILED: %v", e)
		return
	}

	// Send Response.
	sendResponse(w, LogoutResponse{
		Status:     "SUCCESS",
		UserID:     request.UserID,
		SessionID:  request.SessionID,
		LogoutTime: logoutTime,
	}, http.StatusOK)
}
