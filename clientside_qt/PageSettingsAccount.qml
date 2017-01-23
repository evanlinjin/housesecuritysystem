import QtQuick 2.7
import QtQuick.Controls 2.0

PageSettingsHomeForm {
    toolbar.text: "Account Settings"

    listView.model: VisualItemModel {
        ComponentListItem {
            ln1: "Logout"
            height: 52
            onClicked: logoutPopup.open()
        }
    }

    ComponentPopup {
        id: logoutPopup
        titleText: "Logout Confirmation"
        bodyText: "Are you sure you want to logout?"
        confirmText: "Logout"
        cancelText: "Cancel"
        show2Buttons: true
        confirmTrigger: session.logout
    }
}
