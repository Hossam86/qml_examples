import QtQuick

// ID - must be unique
// Root Object - there can be only ones
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Image {
        id: myimage
        source: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Qt_logo_2016.svg/1280px-Qt_logo_2016.svg.png"
        anchors.centerIn: parent;
    }


    // Mouse area
    Rectangle{

        id:my_area
        color:"blue"
        width: 200
        height: 200
        anchors.centerIn: parent


        MouseArea{
            id:myMouse
            anchors.fill: parent
            acceptedButtons: Qt.LeftButton|Qt.RightButton
            hoverEnabled: true
            onClicked: {
                console.log("Clicked " + mouse.button)
                if(mouse.button===Qt.LeftButton ) parent.color="green"
                if(mouse.button===Qt.RightButton) parent.color="blue"
            }

            onDoubleClicked: console.log('Doubled Clicked '+ mouse.button)
            onPositionChanged: console.log('position:X '+ mouseX+' '+' :Y ' +mouseY)
            onEntered: parent.color='orange'
            onExited: parent.color='blue'
        }
    }
    // ---------------------------------------------------------------------------------------
    // custom components
    property var middle: (height/2)-50
    MyButton{
        id:button1
        title: 'button 1'
        x: 50
        y:middle
        color:'red'
        colorClicked: 'orange'
    }
    MyButton
    {
        id:button2
        title: 'button 2'
        x:200
        y:middle
        color:'blue'
        colorClicked: 'orange'
    }
    MyButton
    {
        id:button3
        title: 'button3'
        x:350
        y:middle
        color:'green'
        colorClicked: 'orange'
    }

    MyButton
    {
        id:button4
        title: "<b>super<\b> <i>Long<\i> <u>Button</u>"
        x:50
        y:middle+120
        width:500
        height: 35
        color:'lightblue'
        colorClicked: 'orange'

    }

}



