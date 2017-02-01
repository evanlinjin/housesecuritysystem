package main

import (
	"fmt"
	"net/http"
)

// ChangeUserPasswordRequest represents a Change User Password Request.
type ChangeUserPasswordRequest struct {
	UserID          string `json:"user_id"`
	SessionID       string `json:"session_id"`
	SessionKey      string `json:"session_key"`
	Email           string `json:"email"`
	CurrentPassword string `json:"current_password"`
	NewPassword     string `json:"new_password"`
}

// ChangeUserPasswordResponse represents a Change User Password Response.
type ChangeUserPasswordResponse struct {
	Status string `json:"status"`
}

func changeUserPasswordHandleV1(w http.ResponseWriter, r *http.Request) {
	/* HELPER FUNCTIONS START */
	sendResponseError := func(httpStatus int, format string, a ...interface{}) {
		msg := fmt.Sprintf(format, a)
		sendResponse(w, ChangeUserPasswordResponse{Status: msg}, httpStatus)
	}
	/* HELPER FUNCTIONS END */

	w.Header().Set("Content-Type", "application/json;charset=UTF-8")

	// Connect to DB.
	dbc, e := GetDbConnection()
	if e != nil {
		sendResponseError(http.StatusInternalServerError, "ERROR: [GetDbConnection] %v", e)
		return
	}
	defer dbc.Close()

	// Read HTTP Request.
	request := ChangeUserPasswordRequest{}
	unmarshalRequestBody(w, readRequestBody(r), &request)

	// Check Current Session.
	sActive, _, e := dbc.CheckSession(request.SessionID, request.SessionKey)
	if e != nil || sActive == false {
		sendResponseError(http.StatusUnauthorized, "FAILED: [CheckSession] %v", e)
		return
	}

	// Check login details.
	uid, e := dbc.CheckLogin(request.Email, request.CurrentPassword)
	if e != nil || uid == "" {
		sendResponseError(http.StatusUnauthorized, "FAILED: [CheckLogin] %v", e)
		return
	}

	// Check Account Enabled.
	if dbc.CheckAccountEnabled(uid) == false {
		sendResponseError(http.StatusUnauthorized, "FAILED: [CheckAccountEnabled] %v", e)
		return
	}

	// Change Account Password.
	if dbc.ChangeAccountPassword(uid, request.NewPassword) != nil {
		sendResponseError(http.StatusUnauthorized, "FAILED: [ChangeAccountPassword] %v", e)
		return
	}

	// Send Success Response.
	sendResponse(w, ChangeUserPasswordResponse{
		Status: "SUCCESS",
	}, http.StatusOK)
	return
}
