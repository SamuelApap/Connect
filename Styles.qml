pragma Singleton
import QtQuick 2.4
import QtQuick.Controls.Styles 1.4

QtObject {
    property var defaultButtonStyle: Component {
        ButtonStyle {
            background: Rectangle {
                color: "Blue"
            }
        }
    }
}
