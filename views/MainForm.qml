import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2
import "qrc:/scripts/scripts/rest-service.js" as RestService

Item {
    Column{ anchors.centerIn: parent; spacing: 50;

        // Logo
        Image { fillMode: Image.PreserveAspectFit; width: 300; source: "qrc:/images/images/Logo.svg";
        }

        //Login Details
        ColumnLayout { anchors.horizontalCenter: parent.horizontalCenter; width: 300; spacing: 10;
            Rectangle { anchors.left: parent.left; anchors.right: parent.right; color: "#FFF"; height: 35;
                TextInput { id: txtEmail; anchors.fill: parent; anchors.margins: 8; anchors.leftMargin: 10; anchors.rightMargin: 10; echoMode: TextInput.Normal;
                    font.family: "Segoe UI, Roboto";
                }
            }

            Rectangle { anchors.left: parent.left; anchors.right: parent.right; color: "white"; height: 35; border.width: 1; border.color: "black";
                TextInput { id: txtPassword; anchors.fill: parent; anchors.margins: 8; anchors.leftMargin: 10; anchors.rightMargin: 10; echoMode: TextInput.Password; }
            }

            Button { id: btnLogin; anchors.left: parent.left; anchors.right: parent.right; anchors.topMargin: 20; text: "Login";
                onClicked: { var rest = new RestService.RestService(); /*rest.post()*/}
            }
        }
    }
}
