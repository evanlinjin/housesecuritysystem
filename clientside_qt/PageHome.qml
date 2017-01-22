import QtQuick 2.7

PageHomeForm {
    emailText.text: session.email

    gridView.model: VisualItemModel {
        ComponentGridItem {
            ln1: "Settings"
            onClicked: stack.push(pageSettingsHome)
        }
    }
}
