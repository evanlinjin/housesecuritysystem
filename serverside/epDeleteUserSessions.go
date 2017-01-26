package main

import (
	"fmt"
	"net/http"
)

// DeleteUserSessionsRequest represents a delete sessions request.
type DeleteUserSessionsRequest struct {
	UserID           string   `json:"user_id"`
	SessionID        string   `json:"session_id"`
	SessionKey       string   `json:"session_key"`
	SessionsToDelete []string `json:"sessions_to_delete"`
}

// DeleteUserSessionsResponse represents a delete sessions response.
type DeleteUserSessionsResponse struct {
	Status         string    `json:"status"`
	Count          int       `json:"count"`
	ActiveSessions []Session `json:"active_sessions"`
}

func deleteUserSessionsHandleV1(w http.ResponseWriter, r *http.Request) {
	/* HELPER FUNCTIONS START */
	sendResponseError := func(httpStatus int, format string, a ...interface{}) {
		msg := fmt.Sprintf(format, a)
		sendResponse(w, DeleteUserSessionsResponse{Status: msg}, httpStatus)
	}
	/* HELPER FUNCTIONS END */

	w.Header().Set("Content-Type", "application/json;charset=UTF-8")

	// Connect to DB.
	dbc, e := GetDbConnection()
	if e != nil {
		sendResponseError(http.StatusInternalServerError, "ERROR: %v", e)
		return
	}
	defer dbc.Close()

	// Read HTTP Request.
	request := DeleteUserSessionsRequest{}
	unmarshalRequestBody(w, readRequestBody(r), &request)

	// Check Current Session.
	sActive, _, e := dbc.CheckSession(request.SessionID, request.SessionKey)
	if e != nil || sActive == false {
		sendResponseError(http.StatusUnauthorized, "FAILED: %v", e)
		return
	}

	// Delete sessions.
	for i := 0; i < len(request.SessionsToDelete); i++ {
		dbc.DeleteSession(request.UserID, request.SessionsToDelete[i])
	}

	// Retrieve remaining sessions.
	activeSessions, e := dbc.GetUserSessions(request.UserID, request.SessionID)
	if e != nil {
		sendResponseError(http.StatusInternalServerError, "ERROR: %v", e)
		return
	}

	// Send Success Response.
	sendResponse(w, DeleteUserSessionsResponse{
		Status:         "OKAY",
		Count:          len(activeSessions),
		ActiveSessions: activeSessions,
	}, http.StatusOK)
	return
}
