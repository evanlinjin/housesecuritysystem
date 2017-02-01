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

    Component { id: pageLogin; PageLogin{} }
    Component { id: pageNewUser; PageNewUser{} }
    Component { id: pageHome; PageHome{} }
    Component { id: pageSettingsHome; PageSettingsHome{} }
    Component { id: pageSettingsSessions; PageSettingsSessions{} }
    Component { id: pageSettingsChangePassword; PageSettingsChangePassword{} }

    LoadingView {
        id: loading
    }

    ComponentPopup {
        id: popup
        onOpened: Homeseed.popupOpen = true
        onClosed: Homeseed.popupOpen = false
    }

    Component.onCompleted: {
        // LoadingView :
        Loading.onLoadingStart.connect(loading.start)
        Loading.onLoadingStop.connect(loading.stop)

        // Session Login/Logout :
        Session.onIsLoggedInChanged.connect(gotoHomeOrLogin)

        // Page Naviagation :
        Homeseed.onPopPageStack.connect(stack.pop)
        Homeseed.onClosePopup.connect(popup.close)
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
