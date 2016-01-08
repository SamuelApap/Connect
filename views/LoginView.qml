import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.2
import "../controls/" as Controls
import "../scripts/" as Scripts
import "../styles/" as Styles

Item {
    Column{ anchors.centerIn: parent; spacing: 50;

        // Logo
        Image { fillMode: Image.PreserveAspectFit; width: 300; source: "qrc:/images/Logo.svg"; }

        //Login Details
        ColumnLayout { anchors.horizontalCenter: parent.horizontalCenter; width: 300; spacing: 10;
            //Rectangle { anchors.left: parent.left; anchors.right: parent.right; color: "#FFF"; height: 35;
                TextField { id: txtEmail; height: 35; anchors.left: parent.left; anchors.right: parent.right; echoMode: TextInput.Normal; verticalAlignment: Text.AlignVCenter;
                            font.family: "Segoe UI, Roboto"; }
            //}

           // Rectangle { anchors.left: parent.left; anchors.right: parent.right; color: "white"; height: 35;
                TextField { id: txtPassword; height: 35; anchors.left: parent.left; anchors.right: parent.right; echoMode: TextInput.Password;
                            verticalAlignment: Text.AlignVCenter;
                    //style:
                }
            //}

            Button { id: btnLogin; anchors.left: parent.left; anchors.right: parent.right; anchors.topMargin: 20; text: "Login";
                style: Styles.defaultButtonStyle;


                onClicked: { var rest = new RestService(); /*rest.post()*/}
            }
        }
    }
}
