package main

import (
	"fmt"
	"net/http"

	"github.com/evanlinjin/housesecuritysystem/dbAccess"
)

// UniqUNReq represents a Test Username Unique Request.
type UniqUNReq struct {
	Username string `json:"username"`
}

// UniqUNResp represents a Test Username Unique Response.
type UniqUNResp struct {
	Status   string `json:"status"` // OKAY, ERROR: ""
	Username string `json:"username"`
	IsUnique bool   `json:"is_unique"`
}

func testUsernameUniqHandleV0(w http.ResponseWriter, r *http.Request) {
	// Read and store request data + get db access.
	uniqUNReq := UniqUNReq{}
	body := readRequestBody(r)
	cred := dbAccess.GetCredentials()

	unmarshalRequestBody(w, body, &uniqUNReq)
	w.Header().Set("Content-Type", "application/json;charset=UTF-8")

	// Check if Unique Username.
	isUniq, err := cred.CheckUniqUsername(uniqUNReq.Username)
	if err != nil {
		sendResponse(w, UniqUNResp{
			Status:   fmt.Sprintf("ERROR: %s", err.Error()),
			Username: uniqUNReq.Username,
			IsUnique: false,
		}, http.StatusBadRequest)
		return
	}
	if isUniq == false {
		sendResponse(w, UniqUNResp{
			Status:   "OKAY",
			Username: uniqUNReq.Username,
			IsUnique: false,
		}, http.StatusBadRequest)
		return
	}

	// Send Success Response.
	sendResponse(w, UniqUNResp{
		Status:   "OKAY",
		Username: uniqUNReq.Username,
		IsUnique: true,
	}, http.StatusAccepted)
	return
}
