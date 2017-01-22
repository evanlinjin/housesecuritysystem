import QtQuick 2.7

PageSettingsHomeForm {
    toolbar.text: "Settings > User Account"

    listView.model: VisualItemModel {
        ComponentListItem {
            ln1: "Logout"
            ln2: "Delete the current session."
            onClicked: stack.pop()
        }
    }
}
