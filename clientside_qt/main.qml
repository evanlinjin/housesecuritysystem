import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("House Security System")

    StackView {
        id: stack
        anchors.fill: parent
        initialItem: pageLogin
    }

    Component {id: pageLogin; PageLogin{} }
    Component {id: pageNewUser; PageNewUser{} }
}
