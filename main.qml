import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

ApplicationWindow {
    visible: true
    width: 800
    height: 500
    title: qsTr('First Time Threading')

    property string time_str;

    Rectangle {
        id: bg
        anchors.fill: parent

        Image {
            anchors.fill: parent
            source: "blueberries.jpg"
        }

        Label {
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 20
            anchors.left: parent.left
            anchors.leftMargin: 20
            text: time_str
            font.family: "Segoe UI Semilight"
            font.pixelSize: 24
            color: "white"
        }

        Component.onCompleted: {
            time.start_clock()
        }

        Connections {
            target: time
            onRecieveTime: {
                var ret_value = _start_clock
                time_str = ret_value
            }
        }
    }
}
