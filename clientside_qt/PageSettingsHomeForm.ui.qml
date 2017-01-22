import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Item {
    property alias toolbar: toolbar
    property alias listView: listView
    TempToolbar {
        id: toolbar
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.top: parent.top
    }

    ListView {
        id: listView
        clip: true
        anchors.top: toolbar.bottom
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        ScrollBar.vertical: ScrollBar {
            active: true
            onActiveChanged: active = true
        }
    }
}
