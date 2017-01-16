import QtQuick 2.7

PageLoginForm {
    newAccountMouseArea.onClicked: {
        stack.push(pageNewUser)
    }
}
