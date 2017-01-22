import QtQuick 2.7

PageLoginForm {
    emailErrorText {
        visible: false
    }

    emailField {
        text: session.email
        onTextChanged: checkSubmitOkay()
        onAccepted: focusNext(passwordField)
    }

    passwordField {
        onTextChanged: checkSubmitOkay()
        onAccepted: submit()
    }

    loginButton {
        enabled: false
        onClicked: submit()
    }

    newAccountMouseArea {
        onClicked: stack.push(pageNewUser)
    }

    function checkSubmitOkay() {
        emailErrorText.visible = false
        loginButton.enabled = (emailField.text != ""
                               && passwordField.text.length >= 6)
        return loginButton.enabled
    }

    function focusNext(what) {
        what.selectAll()
        what.forceActiveFocus()
    }

    function submit() {
        if (checkSubmitOkay()) {
            session.login(emailField.text.toLowerCase(), passwordField.text)
        }
    }
}
