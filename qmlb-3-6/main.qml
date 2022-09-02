import QtQuick

//TapHandler : monitor the state of user interaction

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        anchors.centerIn: parent
        width: 100
        height: 100
        color: input_handler.pressed ? "red": "blue"

        TapHandler {
            id:input_handler
        }
    }
}
