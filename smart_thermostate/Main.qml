import QtQuick
import QtQuick.Window

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Smart Thermostat")

    Loader
    {
        id:mainLoader
        source:"./ui/Home_Screen/Home_Screen.qml"
        anchors.fill: parent
    }
}
