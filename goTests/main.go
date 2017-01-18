package main

import (
	"crypto/rand"
	"encoding/base64"
	"fmt"
	"time"

	"golang.org/x/crypto/bcrypt"
)

const cryptNum = 10

func main() {
	// for i := 0; i <= 32; i++ {
	// 	str := generateRandomString(i)
	// 	fmt.Printf("RANDSTR: %s, I: %d, LEN: %d\n", str, i, len(str))
	// }
	password := "samosa42"
	salt := generateRandomString(32)
	hash, _ := bcrypt.GenerateFromPassword([]byte(password+salt), cryptNum)

	fmt.Print("\n[ INITIATION ]\n\n")
	fmt.Printf("PASSWORD: %s\nSALT: %s\n", password, salt)
	fmt.Printf("HASH: %v [%d]\n", string(hash), len(hash))

	fmt.Print("\n[ DECRYPTION ]\n\n")
	fmt.Println(bcrypt.CompareHashAndPassword(hash, []byte(password+salt)))

	fmt.Printf("%s-%d\n", generateRandomString(21), time.Now().UnixNano())
}

func generateRandomBytes(c int) []byte {
	b := make([]byte, c)
	rand.Read(b)
	return b
}

func generateRandomString(c int) string {
	b := make([]byte, ((3*c)/4)+1)
	rand.Read(b)
	return base64.URLEncoding.EncodeToString(b)[:c]
}
