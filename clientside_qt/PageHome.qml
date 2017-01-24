import QtQuick 2.7

PageHomeForm {
    emailText.text: Session.email

    gridView.model: VisualItemModel {
        ComponentGridItem {
            icon: "settings"
            label: "Settings"
            onClicked: stack.push(pageSettingsHome)
        }
    }
}
