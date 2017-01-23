import QtQuick 2.7

PageSettingsHomeForm {
    toolbar.text: "Account Settings"

    listView.model: VisualItemModel {
        ComponentListItem {
            ln1: "Logout"
            height: 52
            onClicked: session.logout()
        }
    }
}
