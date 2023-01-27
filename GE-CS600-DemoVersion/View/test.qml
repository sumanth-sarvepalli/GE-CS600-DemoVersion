import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 2.1

Window {
    visible: true
    width: 1560
    height: 960
    color: "#000000"
    property alias button1: button1
    title: qsTr("GE Carestation")

    Label {
        id: label4
        x: 270
        y: 299
        text: qsTr("")
        font.pointSize: 10
    }

    function buttonClick(button, check, vbutton){
        if (vbutton === undefined) vbutton = false
        if(check)
            button.background.color = "yellow";
        else if(vbutton)
            button.background.color = "#686891";
        else
            button.background.color = "#484d6a";

        return button;
    }

    function menuDisplay(popup,check){
        if(check)
            popup.visible = true;
        else
            popup.visible = false;

        return popup;
    }

    Column{
        id: column1
        spacing: 2
        anchors {
            right: parent.right
            top: parent.top
            margins: 20
        }

        Button {
            id: button1
            width: 160
            height: 100
            padding: 4
            background: Rectangle{
                color: parent.down ? "#bbbbbb" :
                                     (parent.hovered ? "#d6d6d6" : "#484d6a")
                radius: 10
            }
            property bool isActive: false
            onClicked: {
                isActive = !isActive;
                buttonClick(this, isActive)
            }
            Text{
                anchors {
                    verticalCenter: parent.verticalCenter
                    horizontalCenter: parent.horizontalCenter
                }
                text: qsTr("Audio Pause")
                font.pointSize: 12
                elide: Text.ElideRight
                color: button1.isActive ? "#000000" : "#FFFFFF"
            }
        }

        Button {
            id: button2
            width: 160
            height: 100
            padding: 4
            background: Rectangle{
                color: parent.down ? "#bbbbbb" :
                                     (parent.hovered ? "#d6d6d6" : "#484d6a")
                radius: 10
            }
            property bool isActive: false
            onClicked: {
                isActive = !isActive;
                buttonClick(this, isActive)
            }
            Text {
                anchors {
                    verticalCenter: parent.verticalCenter
                    horizontalCenter: parent.horizontalCenter
                }
                color: button2.isActive ? "#000000" : "#FFFFFF"
                text: qsTr("Alarm Setup")
                elide: Text.ElideRight
                font.pointSize: 12
            }
        }

        Button {
            id: button3
            width: 160
            height: 100
            padding: 4
            background: Rectangle{
                color: parent.down ? "#bbbbbb" :
                                     (parent.hovered ? "#d6d6d6" : "#484d6a")
                radius: 10
            }
            property bool isActive: false
            onClicked: {
                isActive = !isActive;
                buttonClick(this, isActive)
            }
            Text {
                anchors {
                    verticalCenter: parent.verticalCenter
                    horizontalCenter: parent.horizontalCenter
                }
                color: button3.isActive ? "#000000" : "#FFFFFF"
                text: qsTr("Auto Limits")
                elide: Text.ElideRight
                font.pointSize: 12
            }
        }

        Button {
            id: button4
            width: 160
            height: 100
            padding: 4
            background: Rectangle{
                color: parent.down ? "#bbbbbb" :
                                     (parent.hovered ? "#d6d6d6" : "#484d6a")
                radius: 10
            }
            property bool isActive: false
            onClicked: {
                isActive = !isActive;
                buttonClick(this, isActive)
            }
            Text {
                anchors {
                    verticalCenter: parent.verticalCenter
                    horizontalCenter: parent.horizontalCenter
                }
                color: button4.isActive? "#000000" : "#ffffff"
                text: qsTr("System Setup")
                elide: Text.ElideRight
                font.pointSize: 12
            }
        }

        // Exit button
        Button {
            id: button5
            y: 600
            width: 160
            height: 100
            spacing: -17
            Text {
                x: 30
                y: 35
                color: "#ffffff"
                text: qsTr("End Case")
                elide: Text.ElideRight
                font.pointSize: 12
            }
            background: Rectangle {
                color: parent.down ? "#bbbbbb" :
                                     (parent.hovered ? "#d6d6d6" : "skyblue")
                radius: 10
            }
            onClicked: Qt.quit()
        }
    }

    Rectangle {
        id: rectangle1
        width: 960
        height: 160
        anchors{
            bottom: parent.bottom
            right: parent.right
            margins: 10
        }
        color: "#4a4a6f"
        Text{
            anchors {
                left: parent.left
                top: parent.top
                margins: 5
            }
            font.pointSize: 8
            elide: Text.ElideRight
            color: "white"
            text: qsTr("Ventilator On: Pressure Control + Volume Guarantee")
        }

        Row {
            id: row1
            spacing: 10
            anchors {
                left: parent.left
                bottom: parent.bottom
                margins: 10
            }

            Button {
                id: button10
                width: 120
                height: 120
                padding: 4
                background: Rectangle{
                    color: parent.down ? "#bbbbbb" :
                                         (parent.hovered ? "#d6d6d6" : "#686891")
                    radius: 10
                }
                property bool isActive: false

                Text{
                    anchors {
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
                        verticalCenter: parent.verticalCenter
                        horizontalCenter: parent.horizontalCenter
                    }
                    text: qsTr("\nPCV-VG")
                    font.pointSize: 12
                    elide: Text.ElideRight
                    color: button10.isActive ? "#000000" : "#FFFFFF"
                }
                onClicked: {
                    isActive = !isActive;
                    buttonClick(this, isActive, true)
                    menuDisplay(popup,isActive)
                }
            }

            Button {
                id: button11
                width: 120
                height: 120
                padding: 4
                background: Rectangle{
                    color: parent.down ? "#bbbbbb" :
                                         (parent.hovered ? "#d6d6d6" : "#686891")
                    radius: 10
                }
                property bool isActive: false
                Text{
                    anchors {
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
                    anchors {
                        bottom: parent.bottom
                        verticalCenter: parent.verticalCenter
                        horizontalCenter: parent.horizontalCenter
                        margins: 10
                    }
                    text: qsTr("\nml")
                    font.pointSize: 8
                    elide: Text.ElideRight
                    color: button11.isActive ? "#000000" : "#FFFFFF"
                }
                onClicked: {
                    isActive = !isActive;
                    buttonClick(this, isActive, true)
                }
            }

            Button {
                id: button12
                width: 120
                height: 120
                padding: 4
                background: Rectangle{
                    color: parent.down ? "#bbbbbb" :
                                         (parent.hovered ? "#d6d6d6" : "#686891")
                    radius: 10
                }
                property bool isActive: false
                Text{
                    x: 5
                    y: 35
                    text: qsTr("More Settings")
                    font.pointSize: 8
                    elide: Text.ElideRight
                    color: button12.isActive ? "#000000" : "#FFFFFF"
                }
                onClicked: {
                    isActive = !isActive;
                    buttonClick(this, isActive, true)
                }
            }

            Button {
                id: button13
                width: 120
                height: 120
                padding: 4
                background: Rectangle{
                    color: parent.down ? "#bbbbbb" :
                                         (parent.hovered ? "#d6d6d6" : "#686891")
                    radius: 10
                }
                property bool isActive: false
                Text{
                    x: 5
                    y: 35
                    text: qsTr("More Settings")
                    font.pointSize: 8
                    elide: Text.ElideRight
                    color: button13.isActive ? "#000000" : "#FFFFFF"
                }
                onClicked: {
                    isActive = !isActive;
                    buttonClick(this, isActive, true)
                }
            }

            Button {
                id: button14
                width: 120
                height: 120
                padding: 4
                background: Rectangle{
                    color: parent.down ? "#bbbbbb" :
                                         (parent.hovered ? "#d6d6d6" : "#686891")
                    radius: 10
                }
                property bool isActive: false
                Text{
                    x: 5
                    y: 35
                    text: qsTr("More Settings")
                    font.pointSize: 8
                    elide: Text.ElideRight
                    color: button14.isActive ? "#000000" : "#FFFFFF"
                }
                onClicked: {
                    isActive = !isActive;
                    buttonClick(this, isActive, true)
                }
            }

            Button {
                id: button15
                width: 120
                height: 120
                padding: 4
                background: Rectangle{
                    color: parent.down ? "#bbbbbb" :
                                         (parent.hovered ? "#d6d6d6" : "#686891")
                    radius: 10
                }
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
                onClicked: {
                    isActive = !isActive;
                    buttonClick(this, isActive, true)
                }
            }

            Button {
                id: button16
                width: 120
                height: 120
                padding: 4
                background: Rectangle{
                    color: parent.down ? "#bbbbbb" :
                                         (parent.hovered ? "#d6d6d6" : "#686891")
                    radius: 10
                }
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
                onClicked: {
                    isActive = !isActive;
                    buttonClick(this, isActive, true)
                }
            }
        }
    }
}
