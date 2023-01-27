import QtQuick 2.0

Item {

    id: time
    x: 639
    width: 200
    height: 200
    anchors.rightMargin: 85
    anchors.topMargin: 20
    anchors{
        right: parent.right
        top: parent.top
        margins: 70
    }

    Text {
        id: text1
        color: "#ffffff"
        font.pointSize: 16
    }

    Timer{
        interval: 500
        running: true
        repeat: true

        onTriggered: {
            var date = new Date();
            text1.text = date.toLocaleTimeString(Qt.locale("en_US"), "hh:mm")
        }
    }
}
