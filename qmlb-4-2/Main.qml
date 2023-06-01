import QtQuick
import QtQuick.Window

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle
    {
        id:my_item
        anchors.centerIn: parent
        color: "red"
        width:200
        height:200
        visible: true

        border.color: "#000000"
        border.width: 5

        radius: width

        // gradient are super easy

    }

}
