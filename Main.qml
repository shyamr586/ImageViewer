import QtQuick
import QtQuick.Window

Window {
    id: root
    width: img.width
    height: img.height
    visible: true
    title: qsTr("Hello World")

    Image {
        id: img
        //anchors.centerIn: parent
        source: "images/test.png"
        fillMode: img.PreserveAspectFit
    }
    MouseArea {id: mouseArea; anchors.fill: parent; onDoubleClicked: zoomFunction()}


    function zoomFunction(){
        console.log("mouseX---------> ",mouseArea.mouseX);
        console.log("mouseY---------> ",mouseArea.mouseY);
        if (img.scale===1){
            img.x = (img.width / 2) - mouseArea.mouseX;
            img.y = (img.height / 2) - mouseArea.mouseY;
            img.scale=2.5;
        } else {
            img.x = 0;
            img.y = 0;
            img.scale=1;
        }

    }

}
