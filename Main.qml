import QtQuick
import QtQuick.Window

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


        Image {
            id: name
            anchors.fill: parent
            source: "images/test.png"
            fillMode: Image.PreserveAspectFit
        }



}
