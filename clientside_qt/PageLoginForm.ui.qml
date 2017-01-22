import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Item {
    id: loginItem
    property alias newAccountMouseArea: newAccountMouseArea
    property alias loginButton: loginButton
    property alias passwordField: passwordField
    property alias emailField: emailField
    property alias emailErrorText: emailErrorText

    ToolBar {
        id: toolBar
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0

        Label {
            id: heading
            text: qsTr("House Secuirty Login")
            anchors.fill: parent
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
    }

    ColumnLayout {
        id: columnLayout
        anchors.top: toolBar.bottom
        anchors.topMargin: 10
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 10

        ColumnLayout {
            id: columnLayout1
            width: 100
            height: 100
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop

            Label {
                id: emailText
                text: qsTr("Email")
                Layout.fillWidth: true

                Label {
                    id: emailErrorText
                    color: "#ab3334"
                    text: qsTr("Invalid Login Details")
                    anchors.top: parent.top
                    anchors.topMargin: 0
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                }
            }

            TextField {
                id: emailField
                text: qsTr("")
                Layout.fillWidth: true
                inputMethodHints: Qt.ImhEmailCharactersOnly | Qt.ImhLowercaseOnly | Qt.ImhNoAutoUppercase
            }

            Label {
                id: passwordText
                text: qsTr("Password")
                Layout.fillWidth: true
            }

            TextField {
                id: passwordField
                text: qsTr("")
                Layout.fillWidth: true
                echoMode: TextInput.Password
            }
        }

        Button {
            id: loginButton
            text: qsTr("Login")
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
        }

        Label {
            id: newAccountText
            text: qsTr("Create a new account")
            font.underline: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            MouseArea {
                id: newAccountMouseArea
                anchors.rightMargin: -10
                anchors.leftMargin: -10
                anchors.bottomMargin: -10
                anchors.topMargin: -10
                anchors.fill: parent
            }
        }
    }
}
