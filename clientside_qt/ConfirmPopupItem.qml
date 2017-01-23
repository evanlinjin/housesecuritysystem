import QtQuick 2.7

ConfirmPopupItemForm {
    property string titleText
    property string bodyText
    property string confirmText
    property string cancelText

    title.text: ("<h4>%1</h4>").arg(titleText)
    body.text: bodyText
    confirmButton.text: confirmText
    cancelButton.text: cancelText
}
