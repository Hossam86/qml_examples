import QtQuick

// Z axis represent stack of elements on top of each other

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Image {
        id: image
        source: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Qt_logo_2016.svg/1280px-Qt_logo_2016.svg.png"
        width: 150
        height: 100
        x: 100
        y: 100
        z: 0
    }

    Rectangle {
        color: "red"
        width: 200
        height:200
        x: 50
        y: 50
        opacity: 0.5
        z: 1
    }

    Rectangle {
        color: "blue"
        width: 200
        height:200
        x: 150
        y: 150
        opacity: 0.5
        z:2
    }
}
