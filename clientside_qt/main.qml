import QtQuick 2.5
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.1
import QtQuick.Controls.Universal 2.1
import HSS 1.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    minimumWidth: 320
    minimumHeight: 320
    title: qsTr("House Security System")

    property int splitNum: width/120

    Universal.theme: Universal.Dark
    Universal.accent: Universal.Cyan


    StackView {
        id: stack
        anchors.fill: parent
        initialItem: Session.isLoggedIn ? pageHome : pageLogin
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
        id: pageSettingsSessions
        PageSettingsSessions{ Component.onCompleted: loading.stop() }
    }

    LoadingView {
        id: loading
    }

    Component.onCompleted: {
        Loading.onLoadingStart.connect(loading.start)
        Loading.onLoadingStop.connect(loading.stop)

        Session.onIsLoggedInChanged.connect(gotoHomeOrLogin)

        Homeseed.onPopPageStack.connect(stack.pop)
        stack.onDepthChanged.connect(changeStackDepth)
    }

    function gotoHomeOrLogin() {
        stack.clear()
        stack.push(Session.isLoggedIn ? pageHome : pageLogin)
    }

    function changeStackDepth() {
        Homeseed.stackDepth = stack.depth
    }
}
