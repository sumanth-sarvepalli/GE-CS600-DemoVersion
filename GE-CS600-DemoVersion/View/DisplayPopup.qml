import QtQuick 2.0
import QtQuick.Controls 2.1

Popup{
    width: 500
    height: 700
    x:50
    y:50
    closePolicy: Popup.CloseOnEscape
    background: Rectangle{
        color: "#bbc3db"
        Text{
            anchors {
                verticalCenter: parent.verticalCenter
                horizontalCenter: parent.horizontalCenter
                top: parent.top
                left:parent.left
                margins: 20
            }
            text: qsTr("Case Defaults")
            elide: Text.ElideRight
            font.pointSize: 12
        }

        ComboBox{
            id:combobox1
            width: 200
            height: 100
            anchors {
                top: parent.top
                right: parent.right
                margins: 20
            }
            model: ["ADULT","CHILD"]
            background:  Rectangle{
                color: "#839bcb"
                radius: 10
            }
        }
    }
}
