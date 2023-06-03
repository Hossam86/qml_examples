import QtQuick
import QtQuick.Window

import "ui/ButtomBar"
import "ui/RightScreen"
import "ui/LeftScreen"



Window {
    width: 1280
    height: 720
    visible: true
    title: qsTr("Tesla Infotainment")


    RightScreen
    {
        id:right_screen
    }

    LeftScreen
    {
        id:left_screen
    }

    ButtomBar
    {
        id:buttom_bar

    }


}
