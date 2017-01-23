import QtQuick 2.7
import QtQuick.Controls 2.0

Popup {
    id: logoutPopup

    property alias titleText: cp.titleText
    property alias bodyText: cp.bodyText
    property alias confirmText: cp.confirmText
    property alias cancelText: cp.cancelText
    property bool show2Buttons: false
    property var confirmTrigger

    modal: true
    height: parent.height
    width: parent.width

    contentItem: ConfirmPopupItem {
        id: cp
        titleText: "Logout Confirmation"
        bodyText: "Are you sure you want to logout?"
        confirmText: "Logout"
        cancelText: "Cancel"
        confirmButton.onClicked: {
            logoutPopup.close()
            confirmTrigger()
        }
        confirmButton.visible: show2Buttons
        cancelButton.onClicked: logoutPopup.close()
    }

    enter: Transition {
        NumberAnimation { property: "opacity"; from: 0.0; to: 1.0 }
    }
    exit: Transition {
        NumberAnimation { property: "opacity"; from: 1.0; to: 0.0 }
    }
}
