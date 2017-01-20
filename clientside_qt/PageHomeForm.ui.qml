import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    id: homeItem
    property alias emailText: emailText
    property alias gridView: gridView

    ToolBar {
        id: toolBar
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.left: parent.left

        Text {
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
        anchors.topMargin: 5
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 5
        anchors.right: parent.right
        anchors.rightMargin: 5
        anchors.left: parent.left
        anchors.leftMargin: 5
        delegate: ComponentGridItem {}

        cellWidth: width/splitNum
        cellHeight: cellWidth
        ScrollBar.vertical: ScrollBar {}
    }
}
