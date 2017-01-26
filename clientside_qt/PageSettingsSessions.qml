import QtQuick 2.7
import QtQuick.Controls 2.0
import HSS 1.0

PageSettingsHomeForm {
    toolbar.text: "Active Sessions"
    listView {
        delegate: ComponentListItem {
            ln1: client
            ln2: ("<li><b>Login Time:</b> %1</li><li><b>Last Seen:</b> %2</li>")
            .arg(getDateTimeStr(loginTime))
            .arg(getDateTimeStr(lastSeenTime))

            ToolButton {
                visible: sessionID !== Session.sid
                anchors.top: parent.top
                anchors.right: parent.right
                anchors.bottom: parent.bottom

                Icon {
                    name: "close"
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                }

                onClicked: openDeleteSessionPopup(ln1, ln2, sessionID)
            }

            Button {
                id: deleteAllButton
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                anchors.leftMargin: 23
                anchors.rightMargin: 23
                visible: sessionID === Session.sid
                text: "Terminate all other sessions"
                onClicked: openDeleteAllOtherSessionsPopup()
            }

            Component.onCompleted: {
                if (sessionID === Session.sid) {
                    text += "<br><br>"
                }
            }
        }
        model: Session.genSessionsModel(this)
        section {
            property: "sessionType"
            delegate: ComponentListSectionTitle {
                ln: section
            }
        }
    }

    Component.onCompleted: {
        loading.showCancelButton()
        listView.model.onLoadingStart.connect(loading.start)
        listView.model.onLoadingStop.connect(loading.stop)
        listView.model.refresh();
    }

    ComponentPopup {
        id: deleteSessionPopup
        cancelText: "Cancel"
        show2Buttons: true
    }

    function openDeleteSessionPopup(sname, sdesc, sid) {
        deleteSessionPopup.titleText =
                "Delete Session Confirmation"
        deleteSessionPopup.bodyText =
                ("Are you sure you want to delete this session?<br><br><h4>%1</h4>%2").arg(sname).arg(sdesc)
        deleteSessionPopup.confirmText =
                "Delete"
        deleteSessionPopup.confirmTrigger = function() {
            listView.model.deleteSession(sid)
        }
        deleteSessionPopup.open()
    }

    function openDeleteAllOtherSessionsPopup() {
        deleteSessionPopup.titleText =
                "Delete All Other Sessions Confirmation"
        deleteSessionPopup.bodyText =
                "Are you sure you want to delete all other sessions?"
        deleteSessionPopup.confirmText =
                "Delete All"
        deleteSessionPopup.confirmTrigger = function() {
            listView.model.deleteAllOtherSessions()
        }
        deleteSessionPopup.open()
    }

    function convTimePart(n) {
        var temp = n.toString()
        if (temp.length === 1) {
            return "0" + temp
        }
        return temp
    }

    function getDateTimeStr(epoch) {
        var dt = new Date(epoch*1000)
        var timeStr = ("%1:%2").arg(convTimePart(dt.getHours())).arg(convTimePart(dt.getMinutes()))
        var dateStr = ("%1/%2/%3").arg(convTimePart(dt.getDate())).arg(dt.getMonth()).arg(dt.getFullYear())
        return ("%1, %2").arg(timeStr).arg(dateStr)
    }
}
