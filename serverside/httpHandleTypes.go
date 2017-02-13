package main

// Request is a request struct.
type Request struct {
	Action  string                 `json:"action"`
	Content map[string]interface{} `json:"content"`
}

// Response is a response struct.
type Response struct {
	Okay    bool                   `json:"okay"`
	Error   *ResponseError         `json:"error,omitempty"`
	Content map[string]interface{} `json:"content,omitempty"`
}

// ResponseError is a response error struct.
type ResponseError struct {
	Type    string `json:"type,omitempty"`
	Heading string `json:"heading,omitempty"`
	Message string `json:"message,omitempty"`
}

// CreateErrorResponse creates an error response.
func CreateErrorResponse(typ, hdn, msg string) (r *Response) {
	r = &Response{
		Okay:  false,
		Error: &ResponseError{typ, hdn, msg},
	}
	return
}
