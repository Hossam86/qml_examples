import QtQuick 2.15

Rectangle
{
    id:left_screen
    anchors
    {
        top:parent.top
        bottom:buttom_bar.top
        left:parent.left
        right:right_screen.left
    }

    color: 'white'

    Image {
        id: car_render
        source: "/ui/assets/car-model.png"

        anchors.centerIn: parent
        width: parent.width *0.4
        fillMode: Image.PreserveAspectFit

    }
}
