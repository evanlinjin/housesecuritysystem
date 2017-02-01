import QtQuick 2.7
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.3
import HSS 1.0

PageNewUserForm {

    property NewUserManager newUserManager

    Component.onCompleted: {
        newUserManager = Homeseed.genNewUserManager(this)
        newUserManager.onCreateUserComplete.connect(openPopup)
    }

    usernameField {
        onTextChanged: {
            usernameErrorText.visible = !newUserManager.testUsernameEmail(usernameField.text)
            checkSubmitOkay()
        }
        onAccepted: focusNext(passwordField)
    }

    passwordField {
        onTextChanged: {
            passwordErrorText.visible = passwordField.text.length < 6
            checkSubmitOkay()
        }
        onAccepted: focusNext(confirmPasswordField)
    }

    confirmPasswordField {
        onTextChanged: {
            confirmPasswordErrorText.visible = (passwordField.text !== confirmPasswordField.text)
            checkSubmitOkay()
        }
        onAccepted: submit()
    }

    submitButton {
        onClicked: submit()
    }

    closeButton {
        onClicked: stack.pop()
    }
    
    function openPopup(msg) {
        popup.titleText = "Message"
        popup.bodyText = msg
        popup.confirmText = ""
        popup.cancelText = "Close"
        popup.open()
    }

    function checkSubmitOkay() {
        submitButton.enabled = (!usernameErrorText.visible &&
                                !passwordErrorText.visible &&
                                !confirmPasswordErrorText.visible &&
                                usernameField.text != "" &&
                                passwordField.text.length >= 6 &&
                                passwordField.text === confirmPasswordField.text)
        return submitButton.enabled
    }

    function focusNext(what) {
        what.selectAll()
        what.forceActiveFocus()
    }

    function submit() {
        if (checkSubmitOkay()) {
            newUserManager.createUser(usernameField.text.toLowerCase(), passwordField.text)
        }
    }
}
