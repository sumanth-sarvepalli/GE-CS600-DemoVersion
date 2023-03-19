import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 2.1
import "View/"
import DisplayModel 1.0

Window {
    visible: true
    width: 1480
    height: 960
    color: "#000000"
    property alias button1: button1
    title: qsTr("GE Carestation")
    id: window1

    DisplayTime{ }
    DisplayPopup { id: popup }
    DisplayDialog { id: myDialog }
    DisplayImage { }

    Label {
        id: label4
        x: 270
        y: 299
        text: qsTr("")
        font.pointSize: 10
    }
    function test()
    {
        var num1 =10;
        console.log('value of num: ',num1);
    }

    function autoHorizontalSize(value){
        return (window1.width) * (value/window1.width);
    }

    function autoVerticalSize(value) {
        return (window1.height) * (value/window1.height);
    }


    Button{
        width: autoHorizontalSize(160)
        height: autoVerticalSize(100)
        padding: 4
        onClicked: test()
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

    function dialogDisplay(myDialog,check){
        if(check)
            myDialog.visible = true;
        else
            myDialog.visible = false;

        return myDialog;
    }

    Column{
        id: column1
        spacing: 2
        anchors {
            right: parent.right
            top: parent.top
            margins: 20
        }

        RightButton {
            id: button1
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
            MouseArea {
                Connections {
                  //anchors.fill: image
                  onClicked: image.visible = true
                }
            }
        }

        RightButton {
            id: button2
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

        RightButton {
            id: button3
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

        RightButton {
            id: button4
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

            BottomButton {
                id: button10
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

            BottomButton {
                id: button11
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
                    dialogDisplay(myDialog,isActive)
                }
            }

            BottomButton {
                id: button12
                property bool isActive: false
                Text{
                    anchors {
                        verticalCenter: parent.verticalCenter
                        horizontalCenter: parent.horizontalCenter
                        top: parent.top
                        margins: 10
                    }
                    x: 5
                    y: 35
                    text: qsTr("RR")
                    font.pointSize: 8
                    elide: Text.ElideRight
                    color: button12.isActive ? "#000000" : "#FFFFFF"
                }
                Text{
                    anchors {
                        horizontalCenter: parent.horizontalCenter
                        bottom: parent.bottom
                        margins: 10
                    }
                    x: 5
                    y: 35
                    text: qsTr("\n/min")
                    font.pointSize: 8
                    elide: Text.ElideRight
                    color: button12.isActive ? "#000000" : "#FFFFFF"
                }

                onClicked: {
                    isActive = !isActive;
                    buttonClick(this, isActive, true)
                }
            }

            BottomButton {
                id: button13
                property bool isActive: false
                Text{
                    anchors {
                        verticalCenter: parent.verticalCenter
                        horizontalCenter: parent.horizontalCenter
                        top: parent.top
                        margins: 10
                    }
                    x: 5
                    y: 35
                    text: qsTr("I:E")
                    font.pointSize: 8
                    elide: Text.ElideRight
                    color: button13.isActive ? "#000000" : "#FFFFFF"
                }
                onClicked: {
                    isActive = !isActive;
                    buttonClick(this, isActive, true)
                }
            }

            BottomButton {
                id: button14
                property bool isActive: false
                Text{
                    anchors {
                        verticalCenter: parent.verticalCenter
                        horizontalCenter: parent.horizontalCenter
                        top: parent.top
                        margins: 10
                    }
                    x: 5
                    y: 35
                    text: qsTr("PEEP")
                    font.pointSize: 8
                    elide: Text.ElideRight
                    color: button14.isActive ? "#000000" : "#FFFFFF"
                }
                onClicked: {
                    isActive = !isActive;
                    buttonClick(this, isActive, true)
                }
            }

            BottomButton {
                id: button15
                padding: 4
                property bool isActive: false
                Text{
                    anchors {
                        verticalCenter: parent.verticalCenter
                        horizontalCenter: parent.horizontalCenter
                        top: parent.top
                        margins: 10
                    }
                    x: 5
                    y: 35
                    text: qsTr("Pmax")
                    font.pointSize: 8
                    elide: Text.ElideRight
                    color: button15.isActive ? "#000000" : "#FFFFFF"
                }
                onClicked: {
                    isActive = !isActive;
                    buttonClick(this, isActive, true)
                }
            }

            BottomButton {
                id: button16
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

    Rectangle{
        id: rectangle2
        width: 300
        height: 160
        anchors{
            bottom: parent.bottom
            left: parent.left
            margins: 10
        }
        color: "black"
        border.color: "#4a4a6f"
        Text{
            anchors{
                verticalCenter: parent.verticalCenter
                horizontalCenter: parent.horizontalCenter
                top: parent.top
                margins: 20
            }
            text: qsTr("Air\tN2O\tO2")
            color: "white"
            font.pointSize: 10
            elide: Text.ElideRight
        }

        Text{
            anchors{
                horizontalCenter: parent.horizontalCenter
                bottom: parent.bottom
                margins: 10
            }
            text: qsTr("l/min")
            color: "white"
            font.pointSize: 10
            elide: Text.ElideRight
        }
    }

    Rectangle{
        id: rectangle3
        width: 200
        height: 160
        color: "black"
        border.color: "#4a4a6f"
        anchors{
            bottom: parent.bottom
            right: rectangle1.left
            margins: 10
        }
        Text {
            anchors{
                verticalCenter: parent.verticalCenter
                horizontalCenter: parent.horizontalCenter
                top: parent.top
                margins: 10
            }
            text: qsTr("Total Flow")
            color: "white"
            font.pointSize: 10
            elide: Text.ElideRight
        }
        Text{
            anchors{
                bottom: parent.bottom
                margins: 20
            }
            text: qsTr("FGO2%")
            color: "white"
            font.pointSize: 10
            elide: Text.ElideRight
        }
    }




}
