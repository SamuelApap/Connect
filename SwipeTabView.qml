import QtQuick 2.0
import "qrc:///config/"

Rectangle {
    id: root
    focus: true
    color: "#f5f5f5"

    FontLoader{
        id:roboto
        source: "qrc:///fonts/roboto.ttf"
    }

    property list<QtObject> itmes: [
        QtObject {
            property string tabName: "Packages"
            property string tabImage: "qrc:///images/Icon-Package.svg"
            property var component: Component {
                Rectangle {
                    anchors.fill: parent
                    color: "#f5f5f5"
                    PackagesView {
                        anchors.fill: parent
                    }
                }
            }
        },
        QtObject {
            property string tabName: "Couriers"
            property string tabImage: "qrc:///images/Icon-Users.svg"
            property var component: Component {
                Rectangle {
                    anchors.fill: parent
                    color: "#f5f5f5"
                    CouriersView {
                        anchors.fill: parent
                    }
                }
            }
        },
        QtObject {
            property string tabName: "Messags"
            property string tabImage: "qrc:///images/Icon-Chat.svg"
            property var component: Component {
                Rectangle {
                    anchors.fill: parent
                    color: "#f5f5f5"
                }
            }
        }
    ]

    Grid {
        id: menu
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        height: 75
        columns: root.itmes.length

        Repeater {
            clip: true
            model: root.itmes.length
            delegate: Rectangle {
                height: menu.height
                width: root.width / root.itmes.length
                color: "#9C231A"

                Item {
                    anchors.fill: parent
                    opacity: tabs.selectedIndex == index ? 1 : 0.7

                    Image {
                        id:tabImage
                        anchors.top: parent.top
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.topMargin: 4
                        height: 40
                        fillMode: Image.PreserveAspectFit
                        source: root.itmes[index].tabImage
                    }
                    Text {
                        anchors.top: tabImage.bottom
                        anchors.horizontalCenter: parent.horizontalCenter
                        text: root.itmes[index].tabName
                        horizontalAlignment:  Text.AlignHCenter
                        color: "#FFF"
                        font.bold: true
                        font.pixelSize: 18
                        font.family: roboto.name
                    }
                    Rectangle {
                        anchors.bottom: parent.bottom
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: 100
                        height: 5
                        color: "#FFF"
                        opacity: tabs.selectedIndex == index ? 1 : 0
                    }
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        swipeArea.navigateToIndex(index)
                    }
                }
            }
        }
    }

    SwipeArea {
        anchors.top: menu.bottom
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        id: swipeArea
        elementToHandle: tabs
        flickDifference: root.width
    }

    Row {
        anchors.top: menu.bottom
        anchors.bottom: parent.bottom
        id: tabs
        property int selectedIndex: 0
        Behavior on x {
            NumberAnimation {
                duration: 250
            }
        }
        Repeater {
            id: repeater
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            clip: true
            model: root.itmes.length
            delegate: Loader {
                height: tabs.height
                width: root.width
                sourceComponent: root.itmes[index].component
            }
        }
    }

}
