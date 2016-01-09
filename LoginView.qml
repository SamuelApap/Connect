import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2
import "qrc:///config/"

Item {
    Column {
        width: 300
        anchors.centerIn: parent
        spacing: 100

        Image {
            fillMode: Image.PreserveAspectFit
            anchors.left: parent.left
            anchors.right: parent.right
            source: "qrc:///images/Logo.svg"
        }

        Column {
            anchors.left: parent.left
            anchors.right: parent.right
            spacing: 10

            TextField {
                id: txtEmail
                anchors.left: parent.left
                anchors.right: parent.right
                echoMode: TextInput.Normal
                style: Style.textField
            }

            TextField {
                id: txtPassword
                anchors.left: parent.left
                anchors.right: parent.right
                echoMode: TextInput.Password
                style: Style.textField
            }

            Button {
                id: btnLogin
                anchors.left: parent.left
                anchors.right: parent.right
                text: "Login"
                style: Style.button
                onClicked: {
                    var rest = new RestService.RestService()
                    rest.post()
                }
            }
        }
    }
}
