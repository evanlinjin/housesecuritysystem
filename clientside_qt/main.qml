import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
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
        initialItem: session.isLoggedIn() ? pageHome : pageLogin
    }

    Component {
        id: pageLogin
        PageLogin{ Component.onCompleted: loading.stop() }
    }
    Component {
        id: pageNewUser
        PageNewUser{ Component.onCompleted: loading.stop() }
    }
    Component {
        id: pageHome
        PageHome{ Component.onCompleted: loading.stop() }
    }
    Component {
        id: pageSettingsHome
        PageSettingsHome{ Component.onCompleted: loading.stop() }
    }
    Component {
        id: pageSettingsAccount
        PageSettingsAccount{ Component.onCompleted: loading.stop() }
    }

    SessionManager {
        id: session

        Component.onCompleted: {
            onLoggedIn.connect(gotoHomePage)
            onLoggedOut.connect(gotoLoginPage)
            onLoadingStart.connect(loading.start)
            onLoadingStop.connect(loading.stop)
        }

        function gotoHomePage() {
            stack.clear()
            stack.replace(stack.initialItem, pageHome)
        }

        function gotoLoginPage() {
            stack.clear()
            stack.replace(stack.initialItem, pageLogin)
        }
    }

    Loading {
        id: loading
    }
}
