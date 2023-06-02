import QtQuick

Item {
    id:root
    width: 100
    height:100
    property color color:  '#COCOCO'
    property color colorClicked: 'green'
    property string title: 'Click Me'

    Rectangle
    {
        id:myRec
        anchors.fill: parent
        color: root.color
        Text {
            id: display
            text: root.title
            anchors.centerIn: parent

            MouseArea{
                id: mouseArea
                onPressed: parent.color= root.colorClicked
                onReleased: parent.color= root.color
            }
        }
    }


}
