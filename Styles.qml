pragma Singleton
import QtQuick 2.4
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

QtObject {

    // Default Button Style
    property var button: Component {
        ButtonStyle {
            background: Rectangle {
                implicitHeight: 35
                color: "#FFFFFF"
                radius: 3
            }
        }
    }

    // Default TextField Style
    property var textField: Component {
        TextFieldStyle {
            font.pixelSize: 14
            font.family:"Segoe UI, Roboto"

            background: Rectangle {
                implicitHeight: 35
                color: "#FFFFFF"
                radius: 3
            }
        }
    }
}
