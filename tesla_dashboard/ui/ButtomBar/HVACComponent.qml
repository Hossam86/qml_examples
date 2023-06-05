import QtQuick 2.15

Item {
    property string font_color: '#f0eded'

    Rectangle{
        id: decrement_button
        anchors
        {
            left: parent.left
            bottom:parent.bottom
            top:parent.top
        }
        width: height/2
        color: 'black'

        Text {
            id: decrementText
            text: "<"
            anchors.centerIn: parent
            font.pixelSize: 12;
            color: font_color

        }
    }
    Text {
        id: targetTempertureText
        text: qsTr("70")

        anchors
        {
            left:decrement_button.right
            leftMargin:15
            verticalCenter:parent.verticalCenter

        }
        color: font_color
        font.pixelSize: 24
    }

    Rectangle{
        id: increment_button
        anchors
        {
            left: targetTempertureText.right
            leftMargin:15
            bottom:parent.bottom
            top:parent.top
        }
        width: height/2
        color: 'black'

        Text {
            id: incrementText
            text: ">"
            anchors.centerIn: parent
            font.pixelSize: 12;
            color: font_color

        }
    }

}

