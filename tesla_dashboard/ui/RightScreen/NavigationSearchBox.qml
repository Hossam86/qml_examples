import QtQuick 2.15

Rectangle{
    id:navigation_search_box
    radius: 5;
    color:"#f0f0f0"

    Image{
        id:search_icon
        source:"qrc:/ui/assets/search.png"
        anchors{
        left: parent.left
        leftMargin: 25
        verticalCenter: parent.verticalCenter
        }
        height: parent.height*.45
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: navigation_place_holder_text
        visible: navigation_text_input.text==""
        text: qsTr("Navigate")
        color: "#373737"
        anchors
        {
            left:search_icon.right
            leftMargin:20
            verticalCenter:parent.verticalCenter
        }
    }


    TextInput{
       id: navigation_text_input
       clip: true;
       anchors{
            top:parent.top
            left:search_icon.right
            bottom: parent.bottom
            right: parent.right
            leftMargin: 20
       }
       verticalAlignment: Text.AlignVCenter
       font.pixelSize: 16;
    }
}
