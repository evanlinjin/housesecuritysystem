import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import HSS 1.0

PageNewUserForm {
    usernameField.onTextChanged: {
        usernameErrorText.visible = !newUserManager.testUsernameEmail(usernameField.text)
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
        newUserManager.createUser(usernameField.text, passwordField.text, "Satellite4080XCDT")
    }

    closeButton.onClicked: {
        stack.pop()
    }

    NewUserManager {
        id: newUserManager

        Component.onCompleted: {
            createUserComplete.connect(function(success, msg) {
                console.log("newUserManager.createUserComplete:", success, msg)
                msgText.text = msg
                popup.open()
            })
            loadingStart.connect(loading.start)
            loadingStop.connect(loading.stop)
        }

    }

    Popup {
        id: popup
        modal: true
        focus: true
        contentHeight: parent.height
        contentWidth: parent.width

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
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                onClicked: popup.close()
            }
        }
        onClosed: stack.pop()
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
