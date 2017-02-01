import QtQuick 2.7

TempToolbarForm {
    property bool showBackIcon: true
    backButton.onClicked: stack.pop()
    backIcon {
        name: "back"
        visible: showBackIcon
    }
}
