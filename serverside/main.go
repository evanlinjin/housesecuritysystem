package main

import (
	"fmt"
	"log"
	"net/http"

	"github.com/kabukky/httpscerts"
)

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello World!")
}

func main() {
	err := httpscerts.Check("cert.pem", "key.pem")
	if err != nil {
		err = httpscerts.Generate("cert.pem", "key.pem", "127.0.0.1:8081")
		if err != nil {
			log.Fatal("Error: Couldn't create https certs.")
		}
	}
	http.HandleFunc("/", handler)
	http.ListenAndServeTLS(":8081", "cert.pem", "key.pem", nil)
}

func init() {
	main()
}
