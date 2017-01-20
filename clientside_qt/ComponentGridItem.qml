import QtQuick 2.7

Item {
    width: parent.width/splitNum
    height: width
    Rectangle {
        width: parent.width-15
        height: parent.height-15
        color: "#eff0f1"
        anchors.centerIn: parent
    }

    Text {
        text: pageTitle
        font.weight: Font.Medium
        anchors.centerIn: parent
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: openPage(pageUrl)
    }
}
