import QtQuick 2.7

PageSettingsHomeForm {
    toolbar.text: "Settings"

    listView.model: VisualItemModel {
        ComponentListSectionTitle {
            ln: "Account and Security"
        }
        ComponentListItem {
            ln1: "Active Sessions"
            ln2: "View and manage your active sessions"
            onClicked: stack.push(pageSettingsSessions)
        }
        ComponentListItem {
            ln1: "Log Out"
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
        confirmTrigger: Session.logout
    }
}
