import QtQuick 2.15

Item {
    Rectangle{
        id:mainBackground
        anchors.fill: parent
        color:'black'
    }

    Text {
        id: currentTempText
        text: '65'
        anchors.centerIn: parent
        color: 'white'
        font.pixelSize: 200
    }

    Text {
        id: system_status
        text: qsTr("Heating...")
        anchors{
            horizontalCenter: parent.horizontalCenter
            top:currentTempText.bottom
            topMargin: 40
        }
        font.pixelSize: 30
        color:"white"
    }

    TempertureControlSlider
    {
        id:temperture_control_slider
        anchors{
        top:parent.top
        left: system_status.right
        bottom: parent.bottom
        leftMargin: 100
        topMargin: 80
        bottomMargin:80
        }

    }

}
