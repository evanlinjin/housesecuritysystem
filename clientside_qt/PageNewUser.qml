import QtQuick 2.7
import UserManagement 1.0

PageNewUserForm {
    usernameField.onTextChanged: {
        usernameErrorText.visible = !userManagement.testUsernameEmail(usernameField.text)
        checkSubmitOkay()
    }

    passwordField.onTextChanged: {
        passwordErrorText.visible = passwordField.text.length < 6
        checkSubmitOkay()
    }

    confirmPasswordField.onTextChanged: {
        confirmPasswordErrorText.visible = (passwordField.text !== confirmPasswordField.text)
        checkSubmitOkay()
    }

    submitButton.onPressed: {
        userManagement.createUser(usernameField.text, passwordField.text, "Satellite4080XCDT")
        usernameField.enabled = false
        passwordField.enabled = false
        confirmPasswordField.enabled = false
        submitButton.enabled = false
    }

    closeButton.onClicked: {
        stack.pop()
    }

    UserManagement {
        id: userManagement

    }

    Component.onCompleted: {
        userManagement.createUserComplete.connect(function(success, msg) {
            console.log("userManagement.createUserComplete:", success, msg)
            if (success === true) {
                // TODO: Open a window and move on.
            } else {
                errorText.text = msg
                usernameField.enabled = true
                passwordField.enabled = true
                confirmPasswordField.enabled = true
            }
        })
    }

    function checkSubmitOkay() {
        submitButton.enabled = (!usernameErrorText.visible &&
                                !passwordErrorText.visible &&
                                !confirmPasswordErrorText.visible &&
                                usernameField.text != "" &&
                                passwordField.text.length >= 6 &&
                                passwordField.text === confirmPasswordField.text)
    }
}
