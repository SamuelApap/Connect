import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2

ApplicationWindow {
    visible: true
    width: 720
    height:720
    color: "#9C231A"
    title: "Connect Express Couriers"

    menuBar: MenuBar {
        Menu {
            title: "File"
            MenuItem {
                text: "Open"
                onTriggered: console.log("Open action triggered");
            }
            MenuItem {
                text: "Exit"
                onTriggered: Qt.quit();
            }
        }
    }

    MainForm {
        anchors.fill: parent
    }
}

