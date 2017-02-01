import QtQuick 2.7
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.3

Item {
    id: item1
    property alias currentPasswordErrorLabel: currentPasswordErrorLabel
    property alias newPasswordErrorLabel: newPasswordErrorLabel
    property alias confirmPasswordErrorLabel: confirmPasswordErrorLabel
    property alias confirmPasswordField: confirmPasswordField
    property alias newPasswordField: newPasswordField
    property alias currentPasswordField: currentPasswordField
    property alias submitButton: submitButton

    TempToolbar {
        id: tempToolbar
        text: "Change Account Password"
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.left: parent.left
    }

    ColumnLayout {
        id: columnLayout
        anchors.rightMargin: 10
        anchors.leftMargin: 10
        anchors.bottomMargin: 10
        anchors.topMargin: 10
        anchors.top: tempToolbar.bottom
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.left: parent.left

        ColumnLayout {
            id: columnLayout1
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop

            Label {
                id: currentPasswordLabel
                text: qsTr("Current Password")
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                Layout.fillWidth: true

                Label {
                    id: currentPasswordErrorLabel
                    x: 232
                    y: 0
                    text: qsTr("Password Incorrect")
                    anchors.top: parent.top
                    horizontalAlignment: Text.AlignRight
                    visible: false
                    anchors.bottom: parent.bottom
                    anchors.right: parent.right
                    verticalAlignment: Text.AlignVCenter
                }
            }

            TextField {
                id: currentPasswordField
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                Layout.fillWidth: true
            }

            Label {
                id: newPasswordLabel
                text: qsTr("New Password")
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                Layout.fillWidth: true

                Label {
                    id: newPasswordErrorLabel
                    text: qsTr("Password Too Short")
                    visible: false
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignRight
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.right: parent.right
                }
            }

            TextField {
                id: newPasswordField
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                Layout.fillWidth: true
            }

            Label {
                id: confirmPasswordLabel
                text: qsTr("Confirm New Password")
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                Layout.fillWidth: true

                Label {
                    id: confirmPasswordErrorLabel
                    text: qsTr("Passwords Don't Match")
                    visible: false
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignRight
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.right: parent.right
                }
            }

            TextField {
                id: confirmPasswordField
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                Layout.fillWidth: true
            }
        }

        Button {
            id: submitButton
            text: qsTr("Submit")
            enabled: false
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            Layout.fillWidth: true
        }
    }
}
