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

    color: 'blue'
}
