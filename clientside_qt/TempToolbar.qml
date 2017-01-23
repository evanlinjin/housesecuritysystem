import QtQuick 2.7

TempToolbarForm {
    backButton.onClicked: stack.pop()
    backIcon {
        name: "back"
    }
}
