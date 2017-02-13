package main

import "net/http"

// Handle is a struct for Request/Response Convenience.
type Handle struct {
	W        http.ResponseWriter
	R        *http.Request
	C        *DatastoreConnection
	Request  *Request
	Response *Response
}

// CreateHandle creates a Handle.
func CreateHandle(w http.ResponseWriter, r *http.Request) (h *Handle, e error) {
	w.Header().Set("Content-Type", "application/json;charset=UTF-8")
	c, e := CreateDatastoreConnection(r)
	if e != nil {
		return
	}
	h = &Handle{w, r, c, &Request{}, &Response{}}
	h.Response.Content = make(map[string]interface{})
	return
}

// CreateUser creates a new User.
func (h *Handle) CreateUser() {
	email := h.Request.Content["email"].(string)
	password := h.Request.Content["password"].(string)
	if e := h.C.CreateNewUser(email, password); e != nil {
		h.SendBadRequestError(e)
		return
	}

	h.Response.Okay = true
	h.Response.Content = nil
	sendResponse(h.W, h.Response, http.StatusOK)
	return
}
