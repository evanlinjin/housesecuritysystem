package dbAccess

// ErrorID is an identifier for error codes.
type ErrorID int

const (
	// ErrorUsernameNotUnique is when username is not unique.
	ErrorUsernameNotUnique ErrorID = iota
	// ErrorInvalidCredentials is when login credentials are incorrect.
	ErrorInvalidCredentials
)

// AccessUsersError represents an error that occurs when attempting User API interaction.
type AccessUsersError struct {
	id ErrorID
}

func (e *AccessUsersError) Error() (msg string) {
	prefix := "[AccessUsersError] "
	switch e.id {
	case ErrorUsernameNotUnique:
		msg = prefix + "Username not unique."
	case ErrorInvalidCredentials:
		msg = prefix + "Login credentials are incorrect."
	default:
		msg = prefix + "Unkown error."
	}
	return
}
