import QtQuick
import QtQuick.Window

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property var middle: height/2
    Image {
        id: local_image
        source: "/images/smile"

        height: 300
        fillMode: Image.PreserveAspectFit
        x:300
        y:middle-100
    }
    Image {
        id: remote_image
        source: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/Qt_logo_neon_2022.svg/225px-Qt_logo_neon_2022.svg.png"

        height: 100
        fillMode: Image.PreserveAspectFit
        x:100
        y:middle

        onProgressChanged: console.log(remote_image.progress)
        onStateChanged: if(remote_image.status==Image.Ready) console.log("Remote Image was loaded")

    }

}
