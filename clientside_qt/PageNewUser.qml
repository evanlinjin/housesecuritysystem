import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import HSS 1.0

PageNewUserForm {
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

    property NewUserManager newUserManager: Homeseed.genNewUserManager(this)

    Connections {
        target: newUserManager
        onCreateUserComplete: popup.openMsg(msg)
    }

    ComponentPopup {
        id: popup
        titleText: "Message"
        cancelText: "Close"
        onClosed: stack.pop()

        function openMsg(msg) {
            bodyText = msg
            popup.open()
        }
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
