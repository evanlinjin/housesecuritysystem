package main

import (
	"fmt"
	"net/http"
)

// CreateUserRequest represents a Create User Request.
type CreateUserRequest struct {
	Email    string `json:"email"`
	Password string `json:"password"`
}

// CreateUserResponse represents a Create User Response.
type CreateUserResponse struct {
	Status string `json:"status"` // OKAY, ERROR: ""
	UserID string `json:"user_id"`
	Email  string `json:"email"`
}

func createUserHandleV1(w http.ResponseWriter, r *http.Request) {
	/* HELPER FUNCTIONS START */
	sendResponseError := func(httpStatus int, format string, a ...interface{}) {
		msg := fmt.Sprintf(format, a)
		sendResponse(w, CreateUserResponse{Status: msg}, httpStatus)
	}
	/* HELPER FUNCTIONS END */

	w.Header().Set("Content-Type", "application/json;charset=UTF-8")

	// Connect to DB.
	dbc, e := GetDbConnection()
	if e != nil {
		sendResponseError(http.StatusInternalServerError, "Cannot connect to db: %v", e)
		return
	}
	defer dbc.Close()

	// Read HTTP Request.
	request := CreateUserRequest{}
	unmarshalRequestBody(w, readRequestBody(r), &request)

	// Generate UID.
	uid := genUID()

	// Add Account to DB.
	e = dbc.CreateNewAccount(uid, request.Email, request.Password)
	if e != nil {
		sendResponseError(http.StatusBadRequest, "Cannot create new account: %v", e)
		return
	}

	// Create Account Activation Method.
	e = dbc.CreateAccountActivationMethod(r, request.Email, uid)
	if e != nil {
		sendResponseError(http.StatusInternalServerError, "Cannot create account activation method: %v", e)
		return
	}

	// Send Success Response.
	sendResponse(w, CreateUserResponse{
		Status: "SUCCESS",
		Email:  request.Email,
		UserID: uid,
	}, http.StatusOK)
	return
}
