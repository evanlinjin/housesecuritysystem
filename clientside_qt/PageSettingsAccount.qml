import QtQuick 2.7

PageSettingsHomeForm {
    toolbar.text: "Settings <b>></b> Account"

    listView.model: VisualItemModel {
        ComponentListItem {
            ln1: "Logout"
            height: 60
            onClicked: session.logout()
        }
    }
}
