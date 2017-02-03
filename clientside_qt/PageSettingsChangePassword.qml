import QtQuick 2.7
import HSS 1.0

PageSettingsChangePasswordForm {
    property NewUserManager manager

    Component.onCompleted: {
        manager = Homeseed.genNewUserManager(this)
        manager.onPasswordChangeComplete.connect(openPopup)
    }

    currentPasswordField {
        echoMode: TextInput.Password
        onTextChanged: {
            currentPasswordErrorLabel.visible = false
            checkSubmitOkay()
        }
        onAccepted: focusNext(newPasswordField)
    }

    newPasswordField {
        echoMode: TextInput.Password
        onTextChanged: {
            newPasswordErrorLabel.visible = newPasswordField.text.length < 6
            checkSubmitOkay()
        }
        onAccepted: focusNext(confirmPasswordField)
    }

    confirmPasswordField {
        echoMode: TextInput.Password
        onTextChanged: {
            confirmPasswordErrorLabel.visible = (newPasswordField.text !== confirmPasswordField.text)
            checkSubmitOkay()
        }
    }

    submitButton {
        onClicked: submit()
    }

    function openPopup(msg) {
        popup.titleText = "Message"
        popup.bodyText = msg
        popup.confirmText = ""
        popup.cancelText = "Close"
        popup.open()
    }

    function checkSubmitOkay() {
        submitButton.enabled = (!currentPasswordErrorLabel.visible &&
                                !newPasswordErrorLabel.visible &&
                                !confirmPasswordErrorLabel.visible &&
                                currentPasswordField.text !== "" &&
                                newPasswordField.text === confirmPasswordField.text &&
                                newPasswordField.text != "" &&
                                newPasswordField.text.length >= 6)
        return submitButton.enabled
    }

    function focusNext(what) {
        what.selectAll()
        what.forceActiveFocus()
    }

    function submit() {
        if (checkSubmitOkay()) {
            manager.changePassword(currentPasswordField.text, newPasswordField.text)
            stack.pop()
        }
    }
}
