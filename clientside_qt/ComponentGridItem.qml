import QtQuick 2.7
import QtQuick.Controls 2.0

// pageTitle: STRING, Name of page.
// pageUrl: STRING, Url of page.

ItemDelegate {
    property string ln1

    width: parent.width/splitNum
    height: width

    Label {
        id: label
        text: ("<h4>%1</h4>").arg(ln1)
        anchors.centerIn: parent
    }
}
