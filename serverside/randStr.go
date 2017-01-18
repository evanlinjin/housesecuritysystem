package main

import (
	"encoding/base64"
	"math/rand"
)

func generateRandomString(c int) string {
	b := make([]byte, ((3*c)/4)+1)
	rand.Read(b)
	return base64.URLEncoding.EncodeToString(b)[:c]
}

func generateRandomBytes(c int) ([]byte, error) {
	b := make([]byte, c)
	_, e := rand.Read(b)
	return b, e
}
