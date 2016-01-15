import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2

import connect.localStorage 1.0
import "qrc:///config/"

Item {
    Column {
        anchors.left: parent.left
        anchors.right: parent.right
        spacing: 20

        //Header
        Rectangle {
            anchors {
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
                font.family: "Yukarimobile"
                font.pointSize: 22
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
        TabView {
            Tab {
                title: "Packages"
                Rectangle {
                    color: "red"
                }
            }
            Tab {
                title: "Couriers"
                Rectangle {
                    color: "blue"
                }
            }
            Tab {
                title: "Messages"
                Rectangle {
                    color: "green"
                }
            }
        }
    }
}
