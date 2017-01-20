import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import HSS 1.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("House Security System")

    property int splitNum: width/120

    StackView {
        id: stack
        anchors.fill: parent
        initialItem: pageLogin
    }

    Component {id: pageLogin; PageLogin{} }
    Component {id: pageNewUser; PageNewUser{} }
    Component {id: pageHome; PageHome{} }

    SessionManager {
        id: session

        Component.onCompleted: {
            var openHome = function() {
                while (stack.depth > 1) {stack.pop()}
                stack.replace(stack.initialItem, pageHome)
            }
            if (isLoggedIn()) {openHome()}
            uidChanged.connect(openHome)
        }
    }

    function openPage(str) {
        var p = function(pid) {stack.push(pid)}
        switch (str) {
        case "pageLogin": return p(pageLogin)
        case "pageNewUser": return p(pageNewUser)
        case "pageHome": return p(pageHome)
        }
    }
}
