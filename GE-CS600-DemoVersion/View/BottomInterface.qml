import QtQuick 2.0
import QtQuick.Controls 2.1

Row {
    id: row1
    spacing: 2
    anchors {
        right: parent.right
        bottom: parent.bottom
        margins: 10
    }

    Button {
        id: button10
        width: 100
        height: 100
        padding: 4
        property bool isActive: false
        Text{
            //x: 15
            //y: 35
            anchors {
                //right: parent.right
                //bottom: parent.bottom
                verticalCenter: parent.verticalCenter
                horizontalCenter: parent.horizontalCenter
                top: parent.top
                margins: 10
            }
            text: qsTr("Mode")
            font.pointSize: 8
            elide: Text.ElideRight
            color: button10.isActive ? "#000000" : "#FFFFFF"
        }
        Text{
            anchors {
                //right: parent.right
                //bottom: parent.bottom
                verticalCenter: parent.verticalCenter
                horizontalCenter: parent.horizontalCenter
                //top: parent.top
                //margins: 10
            }
            text: qsTr("\nPCV-VG")
            font.pointSize: 12
            elide: Text.ElideRight
            color: button10.isActive ? "#000000" : "#FFFFFF"
        }
        background: Rectangle{
            //color: "#201a30"
            color: parent.down ? "#bbbbbb" :
                                 (parent.hovered ? "#d6d6d6" : "#201a30")
            radius: 10
        }
        onClicked: {
            isActive = !isActive;
            buttonClick(this, isActive)
        }
    }


    Button {
        id: button11
        width: 100
        height: 100
        padding: 4
        property bool isActive: false
        Text{
            //x: 5
            //y: 35
            anchors {
                //right: parent.right
                //bottom: parent.bottom
                verticalCenter: parent.verticalCenter
                horizontalCenter: parent.horizontalCenter
                top: parent.top
                margins: 10
            }
            text: qsTr("TV")
            font.pointSize: 8
            elide: Text.ElideRight
            color: button11.isActive ? "#000000" : "#FFFFFF"
        }
        Text{
            //x: 5
            //y: 35
            anchors {
                //right: parent.right
                //bottom: parent.bottom
                verticalCenter: parent.verticalCenter
                horizontalCenter: parent.horizontalCenter
                top: parent.top
                margins: 10
            }
            text: qsTr("TV")
            font.pointSize: 8
            elide: Text.ElideRight
            color: button11.isActive ? "#000000" : "#FFFFFF"
        }
        background: Rectangle{
            //color: "#201a30"
            color: parent.down ? "#bbbbbb" :
                                 (parent.hovered ? "#d6d6d6" : "#201a30")
            radius: 10
        }
        onClicked: {
            isActive = !isActive;
            buttonClick(this, isActive)
        }
    }

    Button {
        id: button12
        width: 100
        height: 100
        padding: 4
        property bool isActive: false
        Text{
            x: 5
            y: 35
            text: qsTr("More Settings")
            font.pointSize: 8
            elide: Text.ElideRight
            color: button12.isActive ? "#000000" : "#FFFFFF"
        }
        background: Rectangle{
            //color: "#201a30"
            color: parent.down ? "#bbbbbb" :
                                 (parent.hovered ? "#d6d6d6" : "#201a30")
            radius: 10
        }
        onClicked: {
            isActive = !isActive;
            buttonClick(this, isActive)
        }
    }

    Button {
        id: button13
        width: 100
        height: 100
        padding: 4
        property bool isActive: false
        Text{
            x: 5
            y: 35
            text: qsTr("More Settings")
            font.pointSize: 8
            elide: Text.ElideRight
            color: button13.isActive ? "#000000" : "#FFFFFF"
        }
        background: Rectangle{
            //color: "#201a30"
            color: parent.down ? "#bbbbbb" :
                                 (parent.hovered ? "#d6d6d6" : "#201a30")
            radius: 10
        }
        onClicked: {
            isActive = !isActive;
            buttonClick(this, isActive)
        }
    }

    Button {
        id: button14
        width: 100
        height: 100
        padding: 4
        property bool isActive: false
        Text{
            x: 5
            y: 35
            text: qsTr("More Settings")
            font.pointSize: 8
            elide: Text.ElideRight
            color: button14.isActive ? "#000000" : "#FFFFFF"
        }
        background: Rectangle{
            //color: "#201a30"
            color: parent.down ? "#bbbbbb" :
                                 (parent.hovered ? "#d6d6d6" : "#201a30")
            radius: 10
        }
        onClicked: {
            isActive = !isActive;
            buttonClick(this, isActive)
        }
    }

    Button {
        id: button15
        width: 100
        height: 100
        padding: 4
        property bool isActive: false
        Text{
            x: 5
            y: 35
            text: qsTr("More Settings")
            font.pointSize: 8
            elide: Text.ElideRight
            color: button15.isActive ? "#000000" : "#FFFFFF"
        }
        background: Rectangle{
            //color: "#201a30"
            color: parent.down ? "#bbbbbb" :
                                 (parent.hovered ? "#d6d6d6" : "#201a30")
            radius: 10
        }
        onClicked: {
            isActive = !isActive;
            buttonClick(this, isActive)
        }
    }

    Button {
        id: button16
        width: 100
        height: 100
        padding: 4
        property bool isActive: false
        Text{
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            text: qsTr("More\nSettings")
            font.pointSize: 8
            elide: Text.ElideRight
            color: button16.isActive ? "#000000" : "#FFFFFF"
        }
        background: Rectangle{
            //color: "#201a30"
            color: parent.down ? "#bbbbbb" :
                                 (parent.hovered ? "#d6d6d6" : "#201a30")
            radius: 10
        }
        onClicked: {
            isActive = !isActive;
            buttonClick(this, isActive)
        }
    }
}
