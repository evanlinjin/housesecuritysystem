package main

import (
	"net/http"

	"google.golang.org/appengine/log"
)

// SendInternalServerError sends an internal server error.
func (h *Handle) SendInternalServerError(e error) {
	log.Errorf(h.C.Context, "InternalServerError: %s", e.Error())
	errResp := CreateErrorResponse(
		"InternalServerError",
		"Internal Server Error",
		"Sorry, our servers screwed up. We will fix this soon. In the mean time, please try again!",
	)
	sendResponse(h.W, errResp, http.StatusInternalServerError)
}

// SendUnauthorizedError sends an unauthorised error.
func (h *Handle) SendUnauthorizedError(e error) {
	log.Errorf(h.C.Context, "UnauthorizedError: %s", e.Error())
	errResp := CreateErrorResponse(
		"UnauthorizedError",
		"Unauthorized",
		"Sorry, you are unauthorized to complete this action.",
	)
	sendResponse(h.W, errResp, http.StatusUnauthorized)
}

// SendBadRequestError sends an unauthorised error.
func (h *Handle) SendBadRequestError(e error) {
	log.Errorf(h.C.Context, "BadRequestError: %s", e.Error())
	errResp := CreateErrorResponse(
		"BadRequestError",
		"Bad Request",
		"The request was invalid. Please try again.",
	)
	sendResponse(h.W, errResp, http.StatusBadRequest)
}
