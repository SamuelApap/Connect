import QtQuick 2.0
import QtQuick.Controls 1.4

Item {

    FontLoader{
        id:roboto
        source: "qrc:///fonts/roboto.ttf"
    }

    ListView {
        anchors.fill: parent
        anchors.topMargin: 7
        anchors.leftMargin: 7
        anchors.rightMargin: 7
        clip: true
        model: 20
        delegate: packageDelegate
        spacing: 7
    }

    Component {
        id: packageDelegate

        //Package
        Rectangle {
            anchors.left: parent.left
            anchors.right: parent.right
            height: 80
            color: "#FFF"

            Item {
                id: topRow
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.margins: 5
                height: 55

                Rectangle {
                    id: packageImage
                    width: 50
                    height: 50
                    color: "#9C231A"

                    Image {
                        anchors.centerIn: parent
                        height: 24
                        fillMode: Image.PreserveAspectFit
                        source: "qrc:///images/Icon-Package.svg"
                    }
                }

                Column {
                    anchors.left: packageImage.right
                    anchors.leftMargin: 5
                    spacing: 3

                    Text {
                        text: qsTr("Package ID: #00001")
                        font.pixelSize: 14
                        font.family: roboto.name
                        color: "#696969"
                    }
                    Text {
                        text: qsTr("Name: Christian Vella")
                        font.pixelSize: 14
                        font.family: roboto.name
                        color: "#696969"
                    }
                    Text {
                        text: qsTr("Telephone: +356 799201052")
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
                        source: "qrc:///images/Icon-Truck.svg"
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

            //Address
            Row {
                anchors.top: topRow.bottom
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.leftMargin: 5
                anchors.rightMargin: 5
                spacing: 3

                Image {
                    id: locationImage
                    width: 10
                    fillMode: Image.PreserveAspectFit
                    source: "qrc:///images/Icon-Pin.svg"
                }

                Text {
                    text: qsTr("Address: 21 St. Mary, Ir-Republica Street, Rabat, Gozo")
                    font.pixelSize: 14
                    font.family: roboto.name
                    color: "#696969"
                }
            }
        }
    }
}
