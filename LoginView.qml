import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2
import "qrc:///config/"
Item {
    ColumnLayout {
        width: 300
        anchors.centerIn: parent

        Image {
            fillMode: Image.PreserveAspectFit
            anchors.left: parent.left
            anchors.right: parent.right
            source: "qrc:///images/Logo.svg"
        }

        TextInput {
            id: txtEmail
            height: 35
            anchors.left: parent.left
            anchors.right: parent.right
            echoMode: TextInput.Normal
            verticalAlignment: Text.AlignVCenter
            font.family: "Segoe UI, Roboto"
            style: Style.textField
        }

        TextInput {
            id: txtPassword
            height: 35
            anchors.left: parent.left
            anchors.right: parent.right
            echoMode: TextInput.Password
            verticalAlignment: Text.AlignVCenter
            style: Style.textField
            font.family: "Segoe UI, Roboto"
        }

        Button {
            id: btnLogin
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.topMargin: 20
            text: "Login"
            height: 50
            style: Style.button
            onClicked: {
                var rest = new RestService.RestService()
                rest.post();
            }
        }
    }
}
