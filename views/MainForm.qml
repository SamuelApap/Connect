import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2
import "../controls/" as Controls
import "qrc:/scripts/" as Scripts

Item {
    Column{ anchors.centerIn: parent; spacing: 50;

        // Logo
        Image { fillMode: Image.PreserveAspectFit; width: 300; source: "qrc:/images/Logo.svg"; }

        //Login Details
        ColumnLayout { anchors.horizontalCenter: parent.horizontalCenter; width: 300; spacing: 10;
            Rectangle { anchors.left: parent.left; anchors.right: parent.right; color: "#FFF"; height: 35;
                TextInput { id: txtEmail; anchors.fill: parent; anchors.leftMargin: 8; anchors.rightMargin: 8; echoMode: TextInput.Normal; verticalAlignment: Text.AlignVCenter;
                            font.family: "Segoe UI, Roboto"; selectionColor: "Grey"; selectedTextColor: "White"; }
            }

            Rectangle { anchors.left: parent.left; anchors.right: parent.right; color: "white"; height: 35;
                TextInput { id: txtPassword; anchors.fill: parent; anchors.leftMargin: 8; anchors.rightMargin: 8; echoMode: TextInput.Password;
                            verticalAlignment: Text.AlignVCenter; }
            }

            Button { id: btnLogin; anchors.left: parent.left; anchors.right: parent.right; anchors.topMargin: 20; text: "Login";
                //style:
                   // ButtonStyle { background:
                      // Rectangle { color: "Blue"; }}

                onClicked: { var rest = new RestService.RestService(); /*rest.post()*/}
            }
        }
    }
}
