import QtQuick
import QtQuick.Window

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Smart Thermstat")

    Loader
    {
        id:mainLoader
        source:"./UI/HomeScreen/HomeScreen.qml"
        anchors.fill: parent
    }
}
