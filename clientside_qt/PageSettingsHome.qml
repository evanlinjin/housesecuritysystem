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
            onClicked: openLogoutPopup()
        }
    }

    function openLogoutPopup() {
        popup.titleText = "Logout"
        popup.bodyText = "Are you sure you want to logout of your current session?"
        popup.confirmText = "Logout"
        popup.cancelText = "Cancel"
        popup.confirmTrigger = Session.logout
        popup.open()
    }
}
