import QtQuick 2.7
import UserManagement 1.0

Page1Form {
//    submit.onReleased: {
//        userManagement.createUser(textFieldUsername.text, "passwprd", "Satellite4080XCDT")
//    }

    UserManagement {
        id: userManagement

    }

    Component.onCompleted: {
        userManagement.createUserComplete.connect(printIt)
    }

    function printIt(str) {
        console.log("USERMANAGEMENT:", str)
    }

}
