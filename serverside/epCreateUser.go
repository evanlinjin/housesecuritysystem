package main

import (
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

func createUserHandleV0(w http.ResponseWriter, r *http.Request) {
	// Read and store request data.
	body, createUserReq := readRequestBody(r), CreateUserReq{}
	unmarshalRequestBody(w, body, &createUserReq)
	w.Header().Set("Content-Type", "application/json;charset=UTF-8")

	// Check Super Access Token.
	if createUserReq.SuperAccessToken != os.Getenv("SUPER_ACCESS_TOKEN") {
		w.WriteHeader(http.StatusUnauthorized)
		w.Write([]byte("UNAUTHORIZED\n"))
		return
	}

	// Add user to db.
	if dbAccess.GetCredentials().CreateUser(createUserReq.Username, createUserReq.Password) != nil {
		w.WriteHeader(http.StatusNotModified)
		w.Write([]byte("FAILED\n"))
		return
	}

	// Send Success Response.
	w.WriteHeader(http.StatusCreated)
	w.Write([]byte("SUCCESS\n"))
	return
}
