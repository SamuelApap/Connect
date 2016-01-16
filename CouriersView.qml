import QtQuick 2.0

Item {
    Column {
        anchors.fill: parent
        anchors.topMargin: 7
        anchors.leftMargin: 7
        anchors.rightMargin: 7
        spacing: 7

        //Courier
        Rectangle {
            anchors.left: parent.left
            anchors.right: parent.right
            height: 80
            color: "#FFF"

            Row {
                anchors.fill: parent
                anchors.margins: 5
                spacing: 5

                Image {
                    width: 70
                    height: 70
                    fillMode: Image.PreserveAspectFit
                    source: "qrc:///images/Avatar-1.png"
                }

                Column {
                    spacing: 1

                    Text {
                        text: qsTr("Christian Vella")
                        font.pointSize: 16
                        font.family: "Segoe UI, Roboto"
                        color: "#9C231A"
                    }
                    Text {
                        text: qsTr("Packages: 17/23")
                        font.pointSize: 10
                        font.family: "Segoe UI, Roboto"
                        color: "#696969"
                    }
                    Text {
                        text: qsTr("Locaiton: St. Pauls Bay, Malta")
                        font.pointSize: 10
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
