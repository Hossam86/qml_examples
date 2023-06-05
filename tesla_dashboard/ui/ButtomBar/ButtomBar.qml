import QtQuick 2.15


Rectangle{

    id: bottom_bar
    anchors
    {
        left:parent.left
        right:parent.right
        bottom: parent.bottom
    }

    height: parent.height/12

    color:'black'

    Image {
        id: carSettingIcon
        source: "qrc:/ui/assets/car.png"

        anchors
        {
            left:parent.left
            leftMargin:30
            verticalCenter: parent.verticalCenter
        }

        height: parent.height*0.85
        fillMode: Image.PreserveAspectFit
    }

    HVACComponent {
        id:passengerHvacController
        anchors{
            top:parent.top
            bottom:parent.bottom
            left:carSettingIcon.right
            leftMargin: 150
        }
    }
}
