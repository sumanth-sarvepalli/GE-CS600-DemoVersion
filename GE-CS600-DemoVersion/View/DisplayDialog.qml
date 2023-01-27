import QtQuick 2.0
import QtQuick.Controls 2.1

Dialog {
    width: 500
    height: 700
    x:50
    y:50
    title: "Title"
    standardButtons: Dialog.Ok | Dialog.Cancel

    onAccepted: console.log("Ok clicked")
    onRejected: console.log("Cancel clicked")
    /*
    standardButtons: DialogButtonBox.Ok

    property alias text : textContainer.text

    Text {
        id: textContainer

        anchors.fill: parent

        horizontalAlignment: Qt.AlignLeft
        verticalAlignment: Qt.AlignTop
    }*/
}
