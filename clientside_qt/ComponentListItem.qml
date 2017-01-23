import QtQuick 2.7
import QtQuick.Controls 2.0

// pageTitle: STRING, Name of page.
// pageDesc: STRING, Description of page.
// pageUrl: STRING, Url of page.

ItemDelegate {
    property string ln1
    property string ln2

    width: parent.width
    text: ln2 === "" ?
              ("%1").arg(ln1)
            :
              ("<h4>%1</h4><smaller>%2</smaller>").arg(ln1).arg(ln2)
}
