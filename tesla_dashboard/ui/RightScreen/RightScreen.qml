import QtQuick 2.15

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
