import QtQuick 2.0

Rectangle {
    id: root
    focus: true
    property list<QtObject> itmes: [
                                       QtObject {
                                           property string tabName: "tab1"
                                           property var component:  Component {
                                                                       Rectangle {
                                                                           anchors.fill: parent
                                                                           color: "red"
                                                                       }
                                                                   }
                                       },
                                        QtObject {
                                            property string tabName: "tab2"
                                            property var component:  Component {
                                                                        Rectangle {
                                                                            anchors.fill: parent
                                                                            color: "blue"
                                                                        }
                                                                    }
                                        },
                                        QtObject {
                                            property string tabName: "tab3"
                                            property var component:  Component {
                                                                        Rectangle {
                                                                            anchors.fill: parent
                                                                            color: "yellow"
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
                color: tabs.selectedIndex == index?"green":"blue"
                border.color: "black"
                border.width: 2
                Text {
                    anchors.centerIn: parent
                    text: root.itmes[index].tabName

                }

                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        swipeArea.navigateToIndex(index);
                    }
                }
            }
        }
    }

    Row {
        anchors.top: menu.bottom
        anchors.bottom: parent.bottom
        id: tabs
        property int selectedIndex: 0
        Behavior on x {
            NumberAnimation {
                duration: 150
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

    SwipeArea {
        anchors.top: menu.bottom
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        id:swipeArea
        elementToHandle: tabs
        flickDifference: root.width
    }
}
