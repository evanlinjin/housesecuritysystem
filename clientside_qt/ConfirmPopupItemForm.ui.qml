import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Item {
    width: 400
    height: 400
    property alias cancelButton: cancelButton
    property alias confirmButton: confirmButton
    property alias body: body
    property alias title: title

    ColumnLayout {
        id: columnLayout
        anchors.rightMargin: 10
        anchors.leftMargin: 10
        anchors.bottomMargin: 10
        anchors.topMargin: 10
        anchors.fill: parent

        Label {
            id: title
            text: qsTr("Label")
            wrapMode: Text.WordWrap
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
        }

        Label {
            id: body
            text: qsTr("Label")
            Layout.fillHeight: true
            Layout.fillWidth: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.WordWrap
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        }

        RowLayout {
            id: rowLayout
            width: 100
            height: 100
            Layout.alignment: Qt.AlignHCenter | Qt.AlignBaseline
            Layout.fillWidth: true
            spacing: 20

            Button {
                id: cancelButton
                text: qsTr("Cancel")
                Layout.fillWidth: true
            }
            Button {
                id: confirmButton
                text: qsTr("Okay")
                Layout.fillWidth: true
            }
        }
    }
}
