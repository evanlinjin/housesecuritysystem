package main

import (
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"io/ioutil"
	"net/http"
	"strings"

	"google.golang.org/appengine"
	"google.golang.org/appengine/log"
)

func apiv1(path string) string { return "/api/v1/" + path }

func init() {
	http.HandleFunc(apiv1("test"), testHandleV1)

	http.HandleFunc(apiv1("create_user"), createUserHandleV1)
	http.HandleFunc(apiv1("activate_user/"), activateUserHandleV1)

	http.HandleFunc(apiv1("login"), loginHandleV1)
	http.HandleFunc(apiv1("logout"), logoutHandleV1)

	http.HandleFunc(apiv1("list_user_sessions"), getUserSessionsHandleV1)
	http.HandleFunc(apiv1("delete_user_sessions"), deleteUserSessionsHandleV1)

	http.HandleFunc(apiv1("change_user_password"), changeUserPasswordHandleV1)

	http.HandleFunc(apiv1("test_datastore"), testDatastoreHandleV1)

	// New Handlers.
	http.HandleFunc("/api/v2", handlerV2)
	http.HandleFunc("/api/v2/activate_user/", activateUserHandlerV2)
}

func handlerV2(w http.ResponseWriter, r *http.Request) {
	h, e := CreateHandle(w, r)
	if e != nil {
		h.SendInternalServerError(e)
	}

	unmarshalRequestBody(h.W, readRequestBody(h.R), h.Request)

	switch h.Request.Action {
	case "create_user":
		h.CreateUser()
	default:
		h.SendBadRequestError(errors.New("invalid request"))
	}
}

func activateUserHandlerV2(w http.ResponseWriter, r *http.Request) {
	h, e := CreateHandle(w, r)
	if e != nil {
		h.SendInternalServerError(e)
	}

	// Analyse path to obtain uid & keyPass.
	path := r.URL.EscapedPath()
	strArray := strings.Split(path[strings.LastIndex(path, "/")+1:], "+")
	userID, activationKey := strArray[0], strArray[1]

	// Activate User.
	e = h.C.ActivateUser(userID, activationKey)
	if e != nil {
		h.SendUnauthorizedError(e)
	}

	h.Response.Okay = true
	h.Response.Content["activated"] = interface{}(true)
	sendResponse(w, h.Response, http.StatusOK)
}

/******************************************************************************/
/* UNIVERSAL ENDPOINT FUNCTIONS                                               */
/******************************************************************************/

func readRequestBody(r *http.Request) []byte {
	body, err := ioutil.ReadAll(io.LimitReader(r.Body, 1048576))
	if err != nil {
		panic(err)
	} else if err = r.Body.Close(); err != nil {
		panic(err)
	}
	return body
}

func unmarshalRequestBody(w http.ResponseWriter, body []byte, v interface{}) {
	err := json.Unmarshal(body, &v)
	if err != nil {
		w.WriteHeader(http.StatusNotModified)
		encodeResponse(w)
		panic(err)
	}
}

func encodeResponse(w http.ResponseWriter) (err error) {
	err = json.NewEncoder(w).Encode(err)
	if err != nil {
		panic(err)
	}
	return
}

func sendResponse(w http.ResponseWriter, v interface{}, httpStatus int) error {
	respData, err := json.Marshal(v)
	if err != nil {
		return err
	}
	w.WriteHeader(httpStatus)
	w.Write(respData)
	return nil
}

func sendError(w http.ResponseWriter, r *http.Request, format string, args ...interface{}) {
	log.Errorf(appengine.NewContext(r), format, args)
	http.Error(w, fmt.Sprintf(format, args), http.StatusInternalServerError)
}
