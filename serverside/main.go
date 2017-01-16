package main

import (
	"encoding/json"
	"io"
	"io/ioutil"
	"net/http"
<<<<<<< HEAD

	"bytes"
	"fmt"

	"github.com/evanlinjin/housesecuritysystem/serverside/dbAccess"
=======
>>>>>>> d89fd319ec814acc8af996c7fcc8a17d55317cfd
)

func apiv0(path string) string {
	return "/api/v0/" + path
}

func init() {
	http.HandleFunc(apiv0("test"), testHandleV0)
	http.HandleFunc(apiv0("create_user"), createUserHandleV0)
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
