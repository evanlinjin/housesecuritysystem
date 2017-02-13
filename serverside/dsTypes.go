package main

import (
	"time"

	"cloud.google.com/go/datastore"
)

const (
	userKind    = "User"
	sessionKind = "Session"
)

const activateAccountMsg = `
Hi there,

Thank you for creating an account at House Security Systems!

Please confirm your email address by clicking on the link below:
https://telepool-144405.appspot.com/api/v2/activate_user/%d+%s

Kind regards,


Evan Lin
Gooseberry Technologies
`

// UserDS represents a User Type of Entity.
type UserDS struct {
	UserID         *datastore.Key `datastore:"__key__" json:"user_id"`
	Email          string         `datastore:"email" json:"email"`
	PasswordSalt   string         `datastore:"password_salt,noindex" json:"-"`
	PasswordHash   string         `datastore:"password_hash,noindex" json:"-"`
	Activated      bool           `datastore:"activated" json:"activated"`
	ActivationHash string         `datastore:"activation_hash,noindex" json:"-"`
	Created        time.Time      `datastore:"created" json:"created,omitempty"`
	Sessions       []SessionDS    `datastore:"sessions" json:"sessions"`
}

// SessionDS represents a Session Type of Entity.
type SessionDS struct {
	SessionID         *datastore.Key `datastore:"__key__" json:"session_id"`
	SessionHash       string         `datastore:"session_hash,noindex" json:"-"`
	SystemProductName string         `datastore:"system_product_name" json:"system_product_name"`
	Created           time.Time      `datastore:"created" json:"created,omitempty"`
	LastSeen          time.Time      `datastore:"last_seen" json:"last_seen,omitempty"`
}
