import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
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

    Popup {
        id: popup
        modal: true
        focus: true

        ColumnLayout {
            anchors.fill: parent
            Text {
                id: msgText
                text: qsTr("FAILED.")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.Wrap
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            }

            Button {
                id: closeButton
                text: qsTr("Close")
                Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                onClicked: popup.close()
            }
        }
        onClosed: stack.pop()
    }

    Component.onCompleted: {
        userManagement.createUserComplete.connect(function(success, msg) {
            console.log("userManagement.createUserComplete:", success, msg)

            if (success) {
                msgText.text = msg
            } else {
                usernameField.enabled = true
                passwordField.enabled = true
                confirmPasswordField.enabled = true
            }

            popup.open()
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
