import QtQuick 2.7

PageSettingsHomeForm {
    toolbar.text: "Settings"

    listView.model: VisualItemModel {
        ComponentListItem {
            ln1: "Account"
            ln2: "Mannage your user account."
            onClicked: stack.push(pageSettingsAccount)
        }
        ComponentListItem {
            ln1: "Sessions"
            ln2: "Mannage your active sessions."
            onClicked: stack.push(pageSettingsSessions)
        }
    }
}
