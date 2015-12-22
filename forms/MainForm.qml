import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2
import "../scripts/restService.js" as RestService

Item {

    //property alias button1: button1
    //property alias button2: button2
    ColumnLayout {
        anchors.centerIn: parent
        spacing: 50

        Image {
            fillMode: Image.PreserveAspectFit
            source: "qrc:/images/images/connect.png"
        }

        ColumnLayout {
            anchors.horizontalCenter: parent.horizontalCenter
            width: 300
            spacing: 10

            Rectangle {
                anchors.left: parent.left
                anchors.right: parent.right
                color: "white"
                height: 30
                border.width: 1
                border.color: "black"

                TextInput {
                    id: txtEmail
                    anchors.fill: parent
                    echoMode: TextInput.Normal
                }
            }

            Rectangle {
                anchors.left: parent.left
                anchors.right: parent.right
                color: "white"
                height: 30
                border.width: 1
                border.color: "black"

                TextInput {
                    id: txtPassword
                    anchors.fill: parent
                    echoMode: TextInput.Password
                }
            }

            Button {
                id: btnLogin
                anchors.left: parent.left
                anchors.right: parent.right
                text: "Login"
                onClicked: {
                    var rest = new RestService.RestService()
                    //rest.post()
                }
            }
        }
    }
}
