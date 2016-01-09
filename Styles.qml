pragma Singleton
import QtQuick 2.4
import QtQuick.Controls.Styles 1.4

QtObject {

    // Default Button Style
    property var button: Component {
        ButtonStyle {
            background: Rectangle {
                color: "#FFFFFF"
                radius: 3
            }
        }
    }

    // Default TextField Style
    property var textField: Component {
        TextFieldStyle {
            background: Rectangle {
                color: "#FFFFFF"
                radius: 3
                height: 60
            }
        }
    }
}
