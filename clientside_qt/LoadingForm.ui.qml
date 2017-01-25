import QtQuick 2.4
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Item {
    id: item1
    width: 400
    height: 400
    property alias cancelButton: cancelButton
    property alias pane: pane
    property alias busyIndicator: busyIndicator
    property alias label: label

    Pane {
        id: pane
        anchors.fill: parent
    }

    Item {
        id: item2
        x: 100
        y: 81
        width: 60
        height: 60
        anchors.verticalCenterOffset: -20
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        Layout.alignment: Qt.AlignHCenter | Qt.AlignBaseline

        BusyIndicator {
            id: busyIndicator
            anchors.fill: parent
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        }
    }

    Label {
        id: label
        text: qsTr("Loading ...")
        anchors.right: parent.right
        anchors.left: parent.left
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.topMargin: 20
        anchors.top: item2.bottom
        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
    }

    Button {
        id: cancelButton
        text: qsTr("Cancel")
        anchors.right: parent.right
        anchors.rightMargin: 20
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
    }
}
