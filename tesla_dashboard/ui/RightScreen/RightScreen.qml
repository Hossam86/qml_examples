import QtQuick 2.15
import QtLocation
import QtPositioning
Rectangle
{
    id:right_screen
    anchors
    {
        top:parent.top
        bottom:buttom_bar.top
        right:parent.right
    }

    width: parent.width * 2/3
    color: 'orange'

    Plugin {
        id: mapPlugin
        name: "osm"

        PluginParameter {
            name: "osm.mapping.providersrepository.disabled"
            value: "true"
        }
        PluginParameter {
            name: "osm.mapping.providersrepository.address"
            value: "http://maps-redirect.qt.io/osm/6.5/"
        }
    }

    Map {
        id: map
        anchors.fill: parent
        plugin: mapPlugin
        center: QtPositioning.coordinate(30.071576, 30.960096) // Oslo
        zoomLevel: 14
        property geoCoordinate startCentroid

        PinchHandler {
            id: pinch
            target: null
            onActiveChanged: if (active) {
                                 map.startCentroid = map.toCoordinate(pinch.centroid.position, false)
                             }
            onScaleChanged: (delta) => {
                                map.zoomLevel += Math.log2(delta)
                                map.alignCoordinateToPoint(map.startCentroid, pinch.centroid.position)
                            }
            onRotationChanged: (delta) => {
                                   map.bearing -= delta
                                   map.alignCoordinateToPoint(map.startCentroid, pinch.centroid.position)
                               }
            grabPermissions: PointerHandler.TakeOverForbidden
        }
        WheelHandler {
            id: wheel
            // workaround for QTBUG-87646 / QTBUG-112394 / QTBUG-112432:
            // Magic Mouse pretends to be a trackpad but doesn't work with PinchHandler
            // and we don't yet distinguish mice and trackpads on Wayland either
            acceptedDevices: Qt.platform.pluginName === "cocoa" || Qt.platform.pluginName === "wayland"
                             ? PointerDevice.Mouse | PointerDevice.TouchPad
                             : PointerDevice.Mouse
            rotationScale: 1/120
            property: "zoomLevel"
        }
        DragHandler {
            id: drag
            target: null
            onTranslationChanged: (delta) => map.pan(-delta.x, -delta.y)
        }
        Shortcut {
            enabled: map.zoomLevel < map.maximumZoomLevel
            sequence: StandardKey.ZoomIn
            onActivated: map.zoomLevel = Math.round(map.zoomLevel + 1)
        }
        Shortcut {
            enabled: map.zoomLevel > map.minimumZoomLevel
            sequence: StandardKey.ZoomOut
            onActivated: map.zoomLevel = Math.round(map.zoomLevel - 1)
        }
    }

    Image {
        id: lock_icon
        source: {systemHandler.carLocked ?  "qrc:/ui/assets/lock.png" : "qrc:/ui/assets/unlock.png"}
        anchors{
            left: parent.left
            top:parent.top
            margins: 20
        }
        width: parent.width/40
        fillMode: Image.PreserveAspectFit

        MouseArea{
            anchors.fill: parent
            onClicked: systemHandler.setCarLocked(!systemHandler.carLocked)
        }
    }

    Text {
        id: date_time
        text: systemHandler.currentTime

        anchors{
            left: lock_icon.right
            leftMargin: 40;
            bottom: lock_icon.bottom
        }

        font.pixelSize: 12
        font.bold: true
        color:'black'
    }

    Text {
        id: outdoor_temp
        text: systemHandler.outdoorTemp+"°F"

        anchors{
            left: date_time.right
            leftMargin: 40;
            bottom: lock_icon.bottom
        }

        font.pixelSize: 12
        font.bold: true
        color:'black'
    }

    Text {
        id: user_name
        text: systemHandler.userName

        anchors{
            left: outdoor_temp.right
            leftMargin: 40;
            bottom: lock_icon.bottom
        }

        font.pixelSize: 12
        font.bold: true
        color:'black'
    }

    NavigationSearchBox{
        id:navigation_box

        anchors
        {
            left:lock_icon.left
            top:lock_icon.bottom
            topMargin:15
        }

        width:parent.width/3
        height: parent.height/12

    }

}
