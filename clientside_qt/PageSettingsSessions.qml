import QtQuick 2.7
import HSS 1.0

PageSettingsHomeForm {
    toolbar.text: "Sessions"
    listView {
        delegate: ComponentListItem {
            ln1: model.appName + " " + model.appVersion
            ln2: model.osName + " " + model.osVersion
            onPressAndHold: console.log("Pressed and Held.")
        }
        model: Session.genSessionsModel(this)
    }

    Component.onCompleted: {
        listView.model.onLoadingStart.connect(loading.start)
        listView.model.onLoadingStop.connect(loading.stop)
        listView.model.refresh();
    }
}
