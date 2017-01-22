import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Item {
    id: homeItem
    property alias emailText: emailText
    property alias gridView: gridView

    ToolBar {
        id: toolBar
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.left: parent.left

        Label {
            id: emailText
            text: qsTr("")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.fill: parent
        }
    }

    GridView {
        id: gridView
        clip: true
        anchors.top: toolBar.bottom
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        anchors.left: parent.left
        ScrollBar.vertical: ScrollBar {active: true; onActiveChanged: active = true;}
        cellWidth: width/splitNum
        cellHeight: cellWidth
    }
}
