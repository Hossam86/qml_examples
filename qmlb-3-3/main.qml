import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Image {
        id: name
        source: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Qt_logo_2016.svg/1280px-Qt_logo_2016.svg.png"
        width: 150
        height: 100
        opacity: 0.25
        anchors.centerIn: parent

    }
    TextInput
    {
        id:myinput
        text: "Hello World!"
        anchors.centerIn: parent
    }
    Text {
        id: mytext
        text: myinput.text
    }
}
