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

    Temperature_Slider
    {
        id:temp_slider
        anchors{
        top:parent.top
        left: system_status.right
        bottom: parent.bottom
        leftMargin: 100
        topMargin: 80
        bottomMargin:80
        }

    }

    Image {
        id: heating_select
        source: "qrc:/ui/assets/flame.png"
       anchors{
       top: temp_slider.top
       right: system_status.left
       rightMargin: 100
       }

       width: 70
       height:70
    }

    Image {
        id: hetting_settings
        source: "qrc:/ui/assets/settings.png"
       anchors{
       bottom: temp_slider.bottom
       right: system_status.left
       rightMargin: 100
       }

       width: 70
       height:70
    }




}
