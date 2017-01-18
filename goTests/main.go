package main

import (
	"crypto/rand"
	"encoding/base64"
	"fmt"
)

func main() {
	for i := 0; i < 30; i += 3 {
		str := genRandomString(i)
		fmt.Printf("RANDSTR: %s, I: %d, LEN: %d\n", str, i, len(str))
	}
}

func genRandomBytes(c int) []byte {
	b := make([]byte, c)
	rand.Read(b)
	return b
}

func genRandomString(c int) string {
	b := make([]byte, c)
	rand.Read(b)
	return base64.URLEncoding.EncodeToString(b)
}
