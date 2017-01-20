import QtQuick 2.7

PageHomeForm {
    emailText.text: session.email
    gridView.model: ListModel {
        ListElement {pageTitle: "Settings"; pageUrl: "pageSettings"}
        ListElement {pageTitle: "Tests"; pageUrl: "pageTests"}
    }
}
