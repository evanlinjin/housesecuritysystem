import QtQuick 2.7
import QtQuick.Controls 2.0

// pageTitle: STRING, Name of page.
// pageUrl: STRING, Url of page.

ItemDelegate {
    property alias icon: icon.name
    property string label

    width: parent.width/splitNum
    height: width + 5

    Icon {
        id: icon
        size: parent.width/2
        anchors.centerIn: parent
        anchors.verticalCenterOffset: -10
    }

    Label {
        id: lb
        text: ("%1").arg(label)
        anchors.top: icon.bottom
        anchors.topMargin: 10
        anchors.horizontalCenter: icon.horizontalCenter
    }
}
