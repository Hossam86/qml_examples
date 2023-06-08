import QtQuick 2.15
import QtQuick.Controls 2.15

Slider
{
    id:cnt_slider
    value: 65
    from:55
    to:85
    stepSize: 1
    orientation: Qt.Vertical


//    handle: Rectangle{

//        anchors.horizontalCenter: parent.horizontalCenter

//        width: 70
//        height:70
//        radius: width/2
//        color:'black'
//        border.color: 'white'
//        border.width: 3
//        y:cnt_slider.visualPosition *(cnt_slider.availableHeight-height)

//        Text {
//            text: cnt_slider.value
//            font.pixelSize: 30
//            color: "white"
//            anchors.centerIn: parent
//        }

//    }
}
