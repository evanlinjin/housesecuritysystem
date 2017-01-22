import QtQuick 2.7

PageLoginForm {
    emailField.onTextChanged: {
        checkSubmitOkay()
    }

    passwordField.onTextChanged: {
        checkSubmitOkay()
    }

    loginButton.onClicked: {
//        emailField.enabled = false
//        passwordField.enabled = false
//        loginButton.enabled = false
//        busyIndicator.running = true
//        loading.start("Logging in...")

        if (!session.login(emailField.text, passwordField.text)) {
//            emailField.enabled = true
//            passwordField.enabled = true
//            loginButton.enabled = true
//            busyIndicator.running = false
//            emailErrorText.visible = true
        }
    }

    newAccountMouseArea.onClicked: {
        stack.push(pageNewUser)
    }

    Component.onCompleted: {
        emailField.text = session.email
        emailErrorText.visible = false
        loginButton.enabled = false
    }

    function checkSubmitOkay() {
        emailErrorText.visible = false
        loginButton.enabled = (emailField.text != "" &&
                passwordField.text.length >= 6)
    }
}
