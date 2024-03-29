import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Item {
    id: item1
    height: toolBar.height
    property alias backIcon: backIcon
    property alias heading: heading
    property alias text: heading.text
    property alias backButton: backButton
    ToolBar {
        id: toolBar
        anchors.fill: parent
        ToolButton {
            id: backButton
            anchors.bottom: parent.bottom
            anchors.top: parent.top
            anchors.left: parent.left

            Icon {
                id: backIcon
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }
        }

        Item {
            id: itemSpace
            width: backButton.width
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.right: parent.right
        }

        Label {
            id: heading
            anchors.left: backButton.right
            anchors.right: itemSpace.left
            anchors.bottom: parent.bottom
            anchors.top: parent.top
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
    }
}
