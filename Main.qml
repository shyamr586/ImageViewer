import QtQuick
import QtQuick.Window

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    Image {
        height: parent.height; width: parent.width
        id: img
        source: "images/test.png"
        fillMode: img.PreserveAspectFit

        property real effectiveWidth: sourceSize.width / sourceSize.height * img.height
        property real effectiveHeight: sourceSize.height / sourceSize.width * img.width
        property real xImage: (parent.width - effectiveWidth) / 2
        property real yImage: (parent.height - effectiveHeight) / 2

    }
    MouseArea {id: mouseArea; anchors.fill: parent; onDoubleClicked: zoomFunction()}


    function zoomFunction(){
        console.log("mouseX---------> ",mouseArea.mouseX);
        console.log("mouseY---------> ",mouseArea.mouseY);

        var mouseX = mouseArea.mouseX
        var mouseY = mouseArea.mouseY

        if (mouseArea.mouseY <= img.yImage) {
            mouseY = img.yImage;
        } else if (mouseArea.mouseY >= img.yImage + img.effectiveHeight) {
            mouseY = (img.yImage + img.effectiveHeight);
        } else if (mouseArea.mouseX <= img.xImage) {
            mouseX = img.xImage;
        } else if (mouseArea.mouseX >= img.xImage + img.effectiveWidth) {
            mouseX = (img.xImage + img.effectiveWidth);
        }

        if (img.scale===1){
            img.x = (img.width / 2) - mouseX;
            img.y = (img.height / 2) - mouseY;
            img.scale=2.5;
        } else {
            img.x = 0; img.y = 0;
            img.scale = 1;
        }

    }

}
