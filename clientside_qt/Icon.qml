import QtQuick 2.7
import QtGraphicalEffects 1.0
import QtQuick.Controls.Universal 2.0

Item {
    width: image.width
    height: image.height

    property alias size: image.width
    property alias color: overlay.color
    property string name

    Image {
        id: image
        width: 20
        height: width
        smooth: true
        visible: false
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        fillMode: Image.PreserveAspectCrop
        source: ("qrc:/icons/%1.svg").arg(name)

        onSourceChanged: {
            overlay.source = image
        }
    }

    ColorOverlay {
        id: overlay
        anchors.fill: image
        source: image
        color: Universal.foreground
    }
}
