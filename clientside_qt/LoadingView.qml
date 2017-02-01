import QtQuick 2.4

LoadingForm {
    id: loading
    property bool isLoading: false
    anchors.fill: parent

    function start(msg) {
        isLoading = true
        label.text = msg
    }

    function stop() {
        cancelButton.visible = false
        cancelButton.enabled = false
        isLoading = false
        label.text = qsTr("Loading ...")
    }

    function showCancelButton() {
        cancelButton.visible = true
        cancelButton.enabled = true
    }

    Timer {
        id: timer
        running: false
        repeat: false
        interval: 5000 // 5 seconds.
        onTriggered: cancelButton.visible = true
    }

    cancelButton {
        visible: false
        enabled: false
        onClicked: Session.abortAll()
    }

    pane.onOpacityChanged: loading.visible = (pane.opacity !== 0.0)

    states: [
        State {
            when: isLoading
            PropertyChanges {target: pane; opacity: 1.0}
            PropertyChanges {target: busyIndicator; opacity: 1.0}
            PropertyChanges {target: label; opacity: 1.0}
        },
        State {
            when: !isLoading
            PropertyChanges {target: pane; opacity: 0.0}
            PropertyChanges {target: busyIndicator; opacity: 0.0}
            PropertyChanges {target: label; opacity: 0.0}
        }
    ]
    transitions: [ Transition { NumberAnimation { property: "opacity"; duration: 220}} ]
}
