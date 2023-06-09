import QtQuick
import QtQuick.Window
import ThermoStat 1.0

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Smart Thermostat")

    SystemController
    {
        id:sys_cnt
    }
    Loader
    {
        id:mainLoader
        source:"qrc:/ui/Home_Screen/Home_Screen.qml"
        anchors.fill: parent
    }
}
