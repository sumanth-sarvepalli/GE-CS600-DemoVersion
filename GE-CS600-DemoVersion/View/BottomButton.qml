import QtQuick 2.6
import QtQuick.Controls 2.1

Button {
    width: 120
    height: 120
    padding: 4
    background: Rectangle{
        color: parent.down ? "#bbbbbb" :
                             (parent.hovered ? "#d6d6d6" : "#686891")
        radius: 10
    }
//    property bool isActive: false
//    onClicked: {
//        isActive = !isActive;
//        buttonClick(this, isActive, true)
//        menuDisplay(popup,isActive)
//    }
    Text{
        id:newtext
    }
}
