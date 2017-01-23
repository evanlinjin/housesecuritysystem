package main

import (
	"fmt"
	"net/http"
)

// GetUserSessionsRequest represents a Get User Sessions Request.
type GetUserSessionsRequest struct {
	UserID     string `json:"user_id"`
	SessionID  string `json:"session_id"`
	SessionKey string `json:"session_key"`
}

// GetUserSessionsResponse represents a Get User Sessions Response.
type GetUserSessionsResponse struct {
	Status   string    `json:"status"`
	Count    int       `json:"count"`
	Sessions []Session `json:"sessions"`
}

func getUserSessionsHandleV1(w http.ResponseWriter, r *http.Request) {
	/* HELPER FUNCTIONS START */
	sendResponseError := func(httpStatus int, format string, a ...interface{}) {
		msg := fmt.Sprintf(format, a)
		sendResponse(w, GetUserSessionsResponse{Status: msg}, httpStatus)
	}
	/* HELPER FUNCTIONS END */

	w.Header().Set("Content-Type", "application/json;charset=UTF-8")

	// Connect to DB.
	dbc, e := GetDbConnection()
	if e != nil {
		sendResponseError(http.StatusInternalServerError, "ERROR: Cannot connect to db: %v", e)
		return
	}
	defer dbc.Close()

	// Read HTTP Request.
	request := GetUserSessionsRequest{}
	unmarshalRequestBody(w, readRequestBody(r), &request)

	// Check Current Session.
	sActive, _, e := dbc.CheckSession(request.SessionID, request.SessionKey)
	if e != nil || sActive == false {
		sendResponseError(http.StatusUnauthorized, "FAILED: %v", e)
		return
	}

	// Get User Sessions.
	sessions, e := dbc.GetUserSessions(request.UserID, request.SessionID)
	if e != nil {
		sendResponseError(http.StatusInternalServerError, "ERROR: %v", e)
		return
	}

	// Send Success Response.
	sendResponse(w, GetUserSessionsResponse{
		Status:   "OKAY",
		Count:    len(sessions),
		Sessions: sessions,
	}, http.StatusOK)
	return
}
