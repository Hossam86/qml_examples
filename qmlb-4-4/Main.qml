import QtQuick
import QtQuick.Window

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Text {
        id: my_text
        text: qsTr("<html><b>Hello</b><i> <font color='green' >World </font></i></html><br>
<a href='https://www.google.com/'>my link</a> ")
        anchors.centerIn: parent
        onLinkHovered:
        {
            console.log("Hover: "+link)
            if(link){
                my_text.font.bold=true}

            else{
                my_text.font.bold= false
            }
        }

        onLinkActivated: Qt.openUrlExternally(link)
    }
}
