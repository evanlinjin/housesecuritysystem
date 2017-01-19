import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    id: loginItem
    property alias newAccountMouseArea: newAccountMouseArea

    ToolBar {
        id: toolBar
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0

        Text {
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
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            Text {
                id: usernameText
                text: qsTr("Email")
            }

            TextField {
                id: usernameField
                text: qsTr("")
                Layout.fillWidth: true
            }

            Text {
                id: passwordText
                text: qsTr("Password")
            }

            TextField {
                id: passwordField
                text: qsTr("")
                Layout.fillWidth: true
            }
        }

        Button {
            id: button1
            text: qsTr("Login")
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
        }

        Text {
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
