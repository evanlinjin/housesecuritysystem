import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls.Universal 2.1

Item {
    property string ln
    width: parent.width
    height: itemDelegate.height + itemDelegate.anchors.topMargin
//    opacity: 0.7

    ItemDelegate {
        id: itemDelegate
        width: parent.width
        height: 42
        anchors.top: parent.top
        anchors.topMargin: 18
        text: ("<h3>%1</h3>").arg(ln)
        Universal.foreground: Universal.accent
        background: Item{}
    }
}

