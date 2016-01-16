import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2

import connect.localStorage 1.0
import "qrc:///config/"

Item {
    FontLoader{
        id:yrikari
        source: "qrc:///fonts/yukarimobil.ttf"
    }

    //Header
    Rectangle {
        id: header
        anchors {
            top: parent.top
            right: parent.right
            left: parent.left
        }
        height: 50
        color: "transparent"

        //Title
        Text {
            anchors.top: parent.top
            anchors.left: parent.left
            text: qsTr("Connect Express Couriers")
            color: "#FFFFFF"
            anchors.topMargin: 5
            anchors.leftMargin: 10
            font.family: yrikari.name
            font.pixelSize: 28
        }

        //Actions
        Row {
            anchors.top: parent.top
            anchors.right: parent.right
            anchors.topMargin: 10
            anchors.rightMargin: 10
            spacing: 16

            //Search
            Image {
                width: 23
                height: 23
                fillMode: Image.PreserveAspectFit
                source: "qrc:///images/Icon-Search.svg"
            }

            //Notifications
            Image {
                width: 23
                height: 23
                fillMode: Image.PreserveAspectFit
                source: "qrc:///images/Icon-Bell.svg"
            }

            //Menu
            Column {
                spacing: 3

                Rectangle {
                    width: 6
                    height: 6
                    color: "#FFFFFF"
                    radius: width * 0.5
                }
                Rectangle {
                    width: 6
                    height: 6
                    color: "#FFFFFF"
                    radius: width * 0.5
                }
                Rectangle {
                    width: 6
                    height: 6
                    color: "#FFFFFF"
                    radius: width * 0.5
                }
            }
        }
    }

    //Tabs
    SwipeTabView {
        anchors.top: header.bottom
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        anchors.left: parent.left
    }
}
