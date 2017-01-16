package main

import (
	"fmt"
	"net/http"
	"os"

	"github.com/evanlinjin/housesecuritysystem/dbAccess"
)

// CreateUserReq represents a Create User Request.
type CreateUserReq struct {
	Username         string `json:"username"`
	Password         string `json:"password"`
	SuperAccessToken string `json:"super_access_token"`
}

// CreateUserResp represents a Create User Response.
type CreateUserResp struct {
	Status   string `json:"status"` // OKAY, ERROR: ""
	UserID   string `json:"user_id"`
	Username string `json:"username"`
}

func createUserHandleV0(w http.ResponseWriter, r *http.Request) {
	// Read and store request data + get db access.
	createUserReq := CreateUserReq{}
	body := readRequestBody(r)
	cred := dbAccess.GetCredentials()

	unmarshalRequestBody(w, body, &createUserReq)
	w.Header().Set("Content-Type", "application/json;charset=UTF-8")

	// Check Super Access Token.
	if createUserReq.SuperAccessToken != os.Getenv("SUPER_ACCESS_TOKEN") {
		sendResponse(w, CreateUserResp{
			Status:   "FAILED: UNAUTHORIZED",
			Username: createUserReq.Username,
		}, http.StatusUnauthorized)
		return
	}

	// Check if Unique Username.
	isUniq, _ := cred.CheckUniqUsername(createUserReq.Username)
	if isUniq == false {
		sendResponse(w, CreateUserResp{
			Status:   "FAILED: USERNAME NOT UNIQUE",
			Username: createUserReq.Username,
		}, http.StatusBadRequest)
		return
	}

	// Add user to db.
	err := cred.CreateUser(createUserReq.Username, createUserReq.Password)
	if err != nil {
		sendResponse(w, CreateUserResp{
			Status:   fmt.Sprintf("FAILED: %s", err.Error()),
			Username: createUserReq.Username,
		}, http.StatusBadRequest)
		return
	}

	// Get UID.
	uid, _ := cred.GetUID(createUserReq.Username, createUserReq.Password)

	// Set up User Confirmation Mechanism.
	err = cred.GenerateUserConfirmationPortal(createUserReq.Username, uid)
	if err != nil {
		sendResponse(w, CreateUserResp{
			Status:   fmt.Sprintf("FAILED: %s", err.Error()),
			Username: createUserReq.Username,
		}, http.StatusBadRequest)
		return
	}

	// Send Success Response.
	sendResponse(w, CreateUserResp{
		Status:   "SUCCESS",
		Username: createUserReq.Username,
		UserID:   uid,
	}, http.StatusAccepted)
	return
}
