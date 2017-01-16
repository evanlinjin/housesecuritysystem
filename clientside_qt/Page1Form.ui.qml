import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    id: newUserItem
    property alias usernameField: usernameField

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
            style: Text.Normal
            font.bold: true
            font.pixelSize: 14
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
                id: text1
                text: qsTr("Email")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 11
            }

            TextField {
                id: usernameField
                text: ""
                font.pointSize: 11
                Layout.preferredWidth: 280
                inputMethodHints: Qt.ImhEmailCharactersOnly
            }

            Text {
                id: text2
                text: qsTr("Password")
                font.pixelSize: 11
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }

            TextField {
                id: passwordField
                text: ""
                font.pointSize: 11
                echoMode: TextInput.Password
                Layout.preferredWidth: 280
            }

            Text {
                id: text3
                text: qsTr("Confirm Password")
                font.pixelSize: 11
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }

            TextField {
                id: confirmPasswordField
                text: ""
                font.pointSize: 11
                echoMode: TextInput.Password
                Layout.preferredWidth: 280
            }
        }


        Button {
            id: submitButton
            text: qsTr("Submit")
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
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
