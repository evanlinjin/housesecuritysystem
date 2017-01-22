import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Popup {
    modal: true
    focus: true
    contentHeight: parent.height
    contentWidth: parent.width

    ColumnLayout {
        anchors.fill: parent
        Label {
            id: msgText
            text: qsTr("FAILED.")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.Wrap
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        }

        Button {
            id: closeButton
            text: qsTr("Close")
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            onClicked: popup.close()
        }
    }

    function openMsg(msg) {
        msgText.text = msg
        open()
    }

}
