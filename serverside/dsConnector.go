package main

import (
	"errors"
	"fmt"
	"net/http"
	"os"
	"strconv"
	"time"

	"cloud.google.com/go/datastore"
	"golang.org/x/crypto/bcrypt"
	"golang.org/x/net/context"
	"google.golang.org/appengine"
	"google.golang.org/appengine/mail"
)

// DatastoreConnection is another type of goodness.
type DatastoreConnection struct {
	Context context.Context
	Client  *datastore.Client
}

// CreateDatastoreConnection creates a datastore client.
func CreateDatastoreConnection(r *http.Request) (c *DatastoreConnection, e error) {
	c = &DatastoreConnection{
		Context: appengine.NewContext(r),
	}
	c.Client, e = datastore.NewClient(c.Context, os.Getenv("PROJECT_ID"))
	if e != nil {
		return
	}
	return
}

// UniqueEmailCheck returns an error if Email is not Unique.
func (c *DatastoreConnection) UniqueEmailCheck(email string) error {
	q := datastore.NewQuery(userKind).Filter("email =", email).KeysOnly().Limit(1)
	if count, e := c.Client.Count(c.Context, q); e != nil {
		return fmt.Errorf("UniqueEmailCheck: %s", e.Error())
	} else if count > 0 {
		return errors.New("UniqueEmailCheck: email has already been taken")
	}
	return nil
}

// CreateNewUser creates a new user account.
func (c *DatastoreConnection) CreateNewUser(email, password string) (e error) {
	passwordCheck := func(pwdCheck string) error {
		switch {
		case len(pwdCheck) < 8:
			return errors.New("PasswordCheck: password needs to be at least 8 charactors long")
		}
		return nil
	}
	// Check if email is unique.
	if e = c.UniqueEmailCheck(email); e != nil {
		return
	}
	// Check if password is valid.
	if e = passwordCheck(password); e != nil {
		return
	}

	// Generate new User Variables.
	pwdSalt := generateRandomString(LENGTHPASSWORDSALT)
	pwdHash, _ := bcrypt.GenerateFromPassword([]byte(password+pwdSalt), 10)
	activationKey := generateRandomString(LENGTHACCOUNTACTIVATIONKEY)
	activationHash, _ := bcrypt.GenerateFromPassword([]byte(activationKey), 10)
	// Create a User entity.
	user := UserDS{
		Email:          email,
		PasswordSalt:   pwdSalt,
		PasswordHash:   string(pwdHash),
		Activated:      false,
		ActivationHash: string(activationHash),
		Created:        time.Now(),
	}
	// Save User entity.
	userID, e := c.Client.Put(c.Context, datastore.IncompleteKey(userKind, nil), &user)
	if e != nil {
		return fmt.Errorf("CreateNewUser: %s", e.Error())
	}

	// Send activation email.
	e = mail.Send(
		c.Context,
		&mail.Message{
			Sender:  "Gooseberry NoReply <noreply@telepool-144405.appspotmail.com>",
			To:      []string{email},
			Subject: "Confirm your Account",
			Body:    fmt.Sprintf(activateAccountMsg, userID.ID, activationKey),
		},
	)
	if e != nil {
		defer c.Client.Delete(c.Context, userID)
		return fmt.Errorf("CreateNewUser: User not created: %s", e.Error())
	}
	return
}

// ActivateUser activates the user account.
func (c *DatastoreConnection) ActivateUser(userID, activationKey string) (e error) {
	uid, e := strconv.ParseInt(userID, 10, 64)
	if e != nil {
		return
	}
	userKey := datastore.IDKey(userKind, uid, nil)
	user := new(UserDS)

	// Check user.
	if e = c.Client.Get(c.Context, userKey, user); e != nil {
		return
	}
	// Check activation key.
	if e = bcrypt.CompareHashAndPassword([]byte(user.ActivationHash), []byte(activationKey)); e != nil {
		return
	}
	// Activate user.
	user.Activated = true
	_, e = c.Client.Put(c.Context, userKey, user)
	if e != nil {
		return
	}
	return
}
