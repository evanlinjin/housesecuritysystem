package main

import (
	"fmt"
	"log"
	"net/http"

	"cloud.google.com/go/datastore"
	"google.golang.org/appengine"
)

// DsUser represents a User kind in Datastore.
type DsUser struct {
	Activated bool
	Created   string
	Email     string
}

func testDatastoreHandleV1(w http.ResponseWriter, r *http.Request) {
	ctx := appengine.NewContext(r)
	projectID := "telepool-144405"

	// Creates a client.
	client, err := datastore.NewClient(ctx, projectID)
	if err != nil {
		log.Fatalf("Failed to create client: %v", err)
		http.Error(w, fmt.Sprintf("Failed to create client: %v", err), http.StatusInternalServerError)
		return
	}

	// Sets the kind for new entity.
	kind := "User"
	// Create a key instance.
	userKey := datastore.IncompleteKey(kind, nil)
	// Create a User instance.
	user := DsUser{
		Activated: false,
		Created:   "slfkslf",
		Email:     "test@gmail.com",
	}

	// Save the new entity.
	if _, err := client.Put(ctx, userKey, &user); err != nil {
		log.Fatalf("Failed to save task: %v", err)
		http.Error(w, fmt.Sprintf("Failed to save task: %v", err), http.StatusInternalServerError)
		return
	}

	w.Write([]byte(fmt.Sprintf("ENTITY SAVED: %v", user)))
	return
}
