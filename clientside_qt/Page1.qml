import QtQuick 2.7
import UserManagement 1.0

Page1Form {    
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

    //    submit.onReleased: {
    //        userManagement.createUser(textFieldUsername.text, "passwprd", "Satellite4080XCDT")
    //    }

    UserManagement {
        id: userManagement

    }

    Component.onCompleted: {
        userManagement.createUserComplete.connect(function(str) {
            console.log("USERMANAGEMENT:", str)
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
