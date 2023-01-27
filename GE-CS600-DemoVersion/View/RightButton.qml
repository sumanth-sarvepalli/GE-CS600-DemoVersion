import QtQuick 2.0
import QtQuick.Controls 2.1

Button{
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
}
