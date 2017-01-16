import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    id: newUserItem
    property alias usernameField: usernameField
    property alias usernameErrorText: usernameErrorText
    property alias passwordErrorText: passwordErrorText
    property alias confirmPasswordErrorText: confirmPasswordErrorText
    property alias confirmPasswordField: confirmPasswordField
    property alias passwordField: passwordField
    property alias submitButton: submitButton

    ColumnLayout {
        id: columnLayout1
        anchors.rightMargin: 10
        anchors.leftMargin: 10
        anchors.bottomMargin: 10
        anchors.topMargin: 10
        anchors.fill: parent

        Text {
            id: heading
            text: qsTr("Create a new user")
            font.pointSize: 12
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }

        ColumnLayout {
            id: inputLayout
            width: 100
            height: 100
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            Text {
                id: usernameText
                text: qsTr("Email")
                Layout.fillWidth: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignLeft

                Text {
                    id: usernameErrorText
                    visible: false
                    color: "#ab3334"
                    text: qsTr("Invalid Email")
                    font.italic: false
                    anchors.top: parent.top
                    anchors.topMargin: 0
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                }
            }

            TextField {
                id: usernameField
                text: ""
                Layout.fillWidth: true
                Layout.preferredWidth: 280
                inputMethodHints: Qt.ImhEmailCharactersOnly
            }

            Text {
                id: passwordText
                text: qsTr("Password")
                Layout.fillWidth: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignLeft

                Text {
                    id: passwordErrorText
                    visible: false
                    x: 594
                    y: -63
                    color: "#ab3334"
                    text: qsTr("Too Short")
                    anchors.right: parent.right
                    font.italic: false
                    anchors.top: parent.top
                    anchors.rightMargin: 0
                    anchors.topMargin: 0
                }
            }

            TextField {
                id: passwordField
                text: ""
                Layout.fillWidth: true
                echoMode: TextInput.Password
                Layout.preferredWidth: 280
            }

            Text {
                id: confirmPasswordText
                visible: false
                text: qsTr("Confirm Password")
                Layout.fillWidth: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignLeft

                Text {
                    id: confirmPasswordErrorText
                    x: 594
                    y: -126
                    color: "#ab3334"
                    text: qsTr("Passwords Do Not Match")
                    anchors.right: parent.right
                    font.italic: false
                    anchors.top: parent.top
                    anchors.rightMargin: 0
                    anchors.topMargin: 0
                }
            }

            TextField {
                id: confirmPasswordField
                text: ""
                Layout.fillWidth: true
                echoMode: TextInput.Password
                Layout.preferredWidth: 280
            }
        }


        Button {
            id: submitButton
            text: qsTr("Submit")
            enabled: false
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
        }

        Text {
            id: errorText
            color: "#ab3334"
            text: qsTr("")
            font.bold: true
            font.italic: false
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.rowSpan: 1
            Layout.columnSpan: 1
            font.pixelSize: 11
        }
    }
}
