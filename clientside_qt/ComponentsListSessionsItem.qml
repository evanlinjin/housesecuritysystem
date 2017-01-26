import QtQuick 2.7
import QtQuick.Controls 2.0

ItemDelegate {
    property string ln
    width: parent.width
    height: 58
    text: ("<h2>%1</h2>").arg(ln)
    background: Item{}
}
