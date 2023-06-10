import QtQuick
import QtQuick.Window
import com.mycompany.messaging


Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Message {
        author: "Amelie"
        creationDate: new Date()
    }
}
