import QtQuick 2.0
import QtQuick.Controls 1.4

Item {
    Column {
        anchors.fill: parent
        anchors.topMargin: 7
        anchors.leftMargin: 7
        anchors.rightMargin: 7
        spacing: 7

        //Package
        Rectangle {
            anchors.left: parent.left
            anchors.right: parent.right
            height: 80
            color: "#FFF"

            Grid {
                anchors.fill: parent
                anchors.margins: 5
                spacing: 5

                Rectangle {
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
                    anchors.left: parent.left
                    anchors.leftMargin: 55
                    spacing: 1

                    Text {
                        text: qsTr("Package ID: #00001")
                        font.pointSize: 9
                        font.family: "Segoe UI, Roboto"
                        color: "#696969"
                    }
                    Text {
                        text: qsTr("Name: Christian Vella")
                        font.pointSize: 9
                        font.family: "Segoe UI, Roboto"
                        color: "#696969"
                    }
                    Text {
                        text: qsTr("Telephone: +356 799201052")
                        font.pointSize: 9
                        font.family: "Segoe UI, Roboto"
                        color: "#696969"
                    }
                }

                //Address
                Grid {
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 15

                    Image {
                        anchors.left: parent.left
                        width: 10
                        fillMode: Image.PreserveAspectFit
                        source: "qrc:///images/Icon-Pin.svg"
                    }

                    Text {
                        anchors.left: parent.left
                        anchors.leftMargin: 13
                        text: qsTr("Address: 21 St. Mary, Ir-Republica Street, Raabat, Gozo")
                        font.pointSize: 9
                        font.family: "Segoe UI, Roboto"
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
        }


        //Package
        Rectangle {
            anchors.left: parent.left
            anchors.right: parent.right
            height: 80
            color: "#FFF"

            Grid {
                anchors.fill: parent
                anchors.margins: 5
                spacing: 5

                Rectangle {
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
                    anchors.left: parent.left
                    anchors.leftMargin: 55
                    spacing: 1

                    Text {
                        text: qsTr("Package ID: #00001")
                        font.pointSize: 9
                        font.family: "Segoe UI, Roboto"
                        color: "#696969"
                    }
                    Text {
                        text: qsTr("Name: Christian Vella")
                        font.pointSize: 9
                        font.family: "Segoe UI, Roboto"
                        color: "#696969"
                    }
                    Text {
                        text: qsTr("Telephone: +356 799201052")
                        font.pointSize: 9
                        font.family: "Segoe UI, Roboto"
                        color: "#696969"
                    }
                }

                //Address
                Grid {
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 15

                    Image {
                        anchors.left: parent.left
                        width: 10
                        fillMode: Image.PreserveAspectFit
                        source: "qrc:///images/Icon-Pin.svg"
                    }

                    Text {
                        anchors.left: parent.left
                        anchors.leftMargin: 13
                        text: qsTr("Address: 21 St. Mary, Ir-Republica Street, Raabat, Gozo")
                        font.pointSize: 9
                        font.family: "Segoe UI, Roboto"
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
        }



        //Package
        Rectangle {
            anchors.left: parent.left
            anchors.right: parent.right
            height: 80
            color: "#FFF"

            Grid {
                anchors.fill: parent
                anchors.margins: 5
                spacing: 5

                Rectangle {
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
                    anchors.left: parent.left
                    anchors.leftMargin: 55
                    spacing: 1

                    Text {
                        text: qsTr("Package ID: #00001")
                        font.pointSize: 9
                        font.family: "Segoe UI, Roboto"
                        color: "#696969"
                    }
                    Text {
                        text: qsTr("Name: Christian Vella")
                        font.pointSize: 9
                        font.family: "Segoe UI, Roboto"
                        color: "#696969"
                    }
                    Text {
                        text: qsTr("Telephone: +356 799201052")
                        font.pointSize: 9
                        font.family: "Segoe UI, Roboto"
                        color: "#696969"
                    }
                }

                //Address
                Grid {
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 15

                    Image {
                        anchors.left: parent.left
                        width: 10
                        fillMode: Image.PreserveAspectFit
                        source: "qrc:///images/Icon-Pin.svg"
                    }

                    Text {
                        anchors.left: parent.left
                        anchors.leftMargin: 13
                        text: qsTr("Address: 21 St. Mary, Ir-Republica Street, Raabat, Gozo")
                        font.pointSize: 9
                        font.family: "Segoe UI, Roboto"
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
        }



        //Package
        Rectangle {
            anchors.left: parent.left
            anchors.right: parent.right
            height: 80
            color: "#FFF"

            Grid {
                anchors.fill: parent
                anchors.margins: 5
                spacing: 5

                Rectangle {
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
                    anchors.left: parent.left
                    anchors.leftMargin: 55
                    spacing: 1

                    Text {
                        text: qsTr("Package ID: #00001")
                        font.pointSize: 9
                        font.family: "Segoe UI, Roboto"
                        color: "#696969"
                    }
                    Text {
                        text: qsTr("Name: Christian Vella")
                        font.pointSize: 9
                        font.family: "Segoe UI, Roboto"
                        color: "#696969"
                    }
                    Text {
                        text: qsTr("Telephone: +356 799201052")
                        font.pointSize: 9
                        font.family: "Segoe UI, Roboto"
                        color: "#696969"
                    }
                }

                //Address
                Grid {
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 15

                    Image {
                        anchors.left: parent.left
                        width: 10
                        fillMode: Image.PreserveAspectFit
                        source: "qrc:///images/Icon-Pin.svg"
                    }

                    Text {
                        anchors.left: parent.left
                        anchors.leftMargin: 13
                        text: qsTr("Address: 21 St. Mary, Ir-Republica Street, Raabat, Gozo")
                        font.pointSize: 9
                        font.family: "Segoe UI, Roboto"
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
        }



        //Package
        Rectangle {
            anchors.left: parent.left
            anchors.right: parent.right
            height: 80
            color: "#FFF"

            Grid {
                anchors.fill: parent
                anchors.margins: 5
                spacing: 5

                Rectangle {
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
                    anchors.left: parent.left
                    anchors.leftMargin: 55
                    spacing: 1

                    Text {
                        text: qsTr("Package ID: #00001")
                        font.pointSize: 9
                        font.family: "Segoe UI, Roboto"
                        color: "#696969"
                    }
                    Text {
                        text: qsTr("Name: Christian Vella")
                        font.pointSize: 9
                        font.family: "Segoe UI, Roboto"
                        color: "#696969"
                    }
                    Text {
                        text: qsTr("Telephone: +356 799201052")
                        font.pointSize: 9
                        font.family: "Segoe UI, Roboto"
                        color: "#696969"
                    }
                }

                //Address
                Grid {
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 15

                    Image {
                        anchors.left: parent.left
                        width: 10
                        fillMode: Image.PreserveAspectFit
                        source: "qrc:///images/Icon-Pin.svg"
                    }

                    Text {
                        anchors.left: parent.left
                        anchors.leftMargin: 13
                        text: qsTr("Address: 21 St. Mary, Ir-Republica Street, Raabat, Gozo")
                        font.pointSize: 9
                        font.family: "Segoe UI, Roboto"
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
        }



        //Package
        Rectangle {
            anchors.left: parent.left
            anchors.right: parent.right
            height: 80
            color: "#FFF"

            Grid {
                anchors.fill: parent
                anchors.margins: 5
                spacing: 5

                Rectangle {
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
                    anchors.left: parent.left
                    anchors.leftMargin: 55
                    spacing: 1

                    Text {
                        text: qsTr("Package ID: #00001")
                        font.pointSize: 9
                        font.family: "Segoe UI, Roboto"
                        color: "#696969"
                    }
                    Text {
                        text: qsTr("Name: Christian Vella")
                        font.pointSize: 9
                        font.family: "Segoe UI, Roboto"
                        color: "#696969"
                    }
                    Text {
                        text: qsTr("Telephone: +356 799201052")
                        font.pointSize: 9
                        font.family: "Segoe UI, Roboto"
                        color: "#696969"
                    }
                }

                //Address
                Grid {
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 15

                    Image {
                        anchors.left: parent.left
                        width: 10
                        fillMode: Image.PreserveAspectFit
                        source: "qrc:///images/Icon-Pin.svg"
                    }

                    Text {
                        anchors.left: parent.left
                        anchors.leftMargin: 13
                        text: qsTr("Address: 21 St. Mary, Ir-Republica Street, Raabat, Gozo")
                        font.pointSize: 9
                        font.family: "Segoe UI, Roboto"
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
        }

    }
}
