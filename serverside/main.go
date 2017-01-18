package main

import (
	"context"
	"encoding/json"
	"io"
	"io/ioutil"
	"net/http"

	"google.golang.org/appengine/log"
)

func apiv0(path string) string { return "/api/v0/" + path }
func apiv1(path string) string { return "/api/v1/" + path }

func init() {
	http.HandleFunc(apiv0("test"), testHandleV0)
	http.HandleFunc(apiv0("test_un_uniq"), testUsernameUniqHandleV0)
	http.HandleFunc(apiv0("create_user"), createUserHandleV0)

	http.HandleFunc(apiv1("create_user"), createUserHandleV1)
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

func sendError(ctx context.Context, w http.ResponseWriter, format string, args ...interface{}) {
	log.Errorf(ctx, format, args)
	http.Error(w, "An error occurred. Please try again.", http.StatusInternalServerError)
}
