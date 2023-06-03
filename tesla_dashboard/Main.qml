import QtQuick
import QtQuick.Window
import "ui/ButtomBar"

Window {
    width: 1280
    height: 720
    visible: true
    title: qsTr("Tesla Infotainment")

    Rectangle
    {
        id:right_screen
        anchors
        {
            top:parent.top
            bottom:buttom_bar.top
            right:parent.right
        }

        width: parent.width * 2/3
        color: 'orange'
    }

    ButtomBar
    {
       id:buttom_bar

    }


}
