import QtQuick 2.0

Item {

    FontLoader {
        id: roboto
        source: "qrc:///fonts/roboto.ttf"
    }

    ListView {
        anchors.fill: parent
        anchors.topMargin: 7
        anchors.leftMargin: 7
        anchors.rightMargin: 7
        clip: true
        model: 20
        delegate: courierDelegate
        spacing: 7
    }

    //Courier
    Component {
        id: courierDelegate

        Rectangle {
            anchors.left: parent.left
            anchors.right: parent.right
            height: 80
            color: "#FFF"

            Item {
                anchors.fill: parent
                anchors.margins: 5

                Image {
                    width: 70
                    height: 70
                    fillMode: Image.PreserveAspectFit
                    source: "qrc:///images/Avatar-1.png"
                }

                Column {
                    anchors.left: parent.left
                    anchors.leftMargin: 75
                    spacing: 1

                    Text {
                        text: qsTr("Christian Vella")
                        font.pixelSize: 22
                        font.family: roboto.name
                        color: "#9C231A"
                    }
                    Text {
                        text: qsTr("Packages: 17/23")
                        font.pixelSize: 14
                        font.family: roboto.name
                        color: "#696969"
                    }
                    Text {
                        text: qsTr("Locaiton: St. Pauls Bay, Malta")
                        font.pixelSize: 14
                        font.family: roboto.name
                        color: "#696969"
                    }
                }

                Rectangle {
                    width: 55
                    height: 70
                    color: "#00000000"
                    anchors.right: parent.right
                    anchors.rightMargin: 10

                    Image {
                        anchors.centerIn: parent
                        width: 40
                        fillMode: Image.PreserveAspectFit
                        source: "qrc:///images/Icon-Phone.svg"
                    }
                }

                //Menu
                Column {
                    anchors.top: parent.top
                    anchors.right: parent.right
                    spacing: 2

                    Rectangle {
                        width: 4
                        height: 4
                        color: "#dedede"
                        radius: width * 0.5
                    }
                    Rectangle {
                        width: 4
                        height: 4
                        color: "#dedede"
                        radius: width * 0.5
                    }
                    Rectangle {
                        width: 4
                        height: 4
                        color: "#dedede"
                        radius: width * 0.5
                    }
                }
            }
        }
    }
}
