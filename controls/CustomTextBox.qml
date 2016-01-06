import QtQuick 2.0
import QtGraphicalEffects 1.0

Item {
    id: container
    anchors.left: parent.left
    anchors.right: parent.right
    height: childrenRect.height - (txtError.height + txtError.anchors.topMargin)
    state: "default"
    property double fontSize: 0
    property var focusOut: null

    function focus() {
        textInput.focus = true
        textInput.forceActiveFocus()
    }

    onEnabledChanged: {
        if (container.enabled && container.state != "error") {
            txt.color = "white"
            textInput.color = "black"
        } else if (!container.enabled && container.state != "error") {
            txt.color = "#eee"
            textInput.color = "gray"
        }
    }

    function pastVisible(v) {
        paste.visible = v
        if (v)
            clikableArea.anchors.right = paste.left
        else
            clikableArea.anchors.right = txt.right
    }

    property string text: ""
    property string placeholder
    property int echoMode
    property string error: ""

    onTextChanged: {
        pastVisible(false)
    }

    Binding {
        target: container
        property: "text"
        value: textInput.text
    }
    onErrorChanged: {
        if (error == "")
            container.state = "default"
        else
            container.state = "error"
    }

    states: [
        State {
            name: "default"
        },
        State {
            name: "error"
            PropertyChanges {
                target: txtError
                visible: true
            }
            PropertyChanges {
                target: container
                height: childrenRect.height
            }
            PropertyChanges {
                target: txt
                border.color: "#F04243"
                color: "#F9EBEB"
            }
            PropertyChanges {
                target: textInput
                color: "#F04243"
            }
            PropertyChanges {
                target: placeholder
                color: "#F6B2B3"
            }
        }
    ]

    Rectangle {
        anchors.leftMargin: resizeToScale(5)
        anchors.rightMargin: resizeToScale(5)
        id: txt
        radius: resizeToScale(4)
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.top: parent.top
        border.color: "#CCC"
        border.width: resizeToScale(2)
        height: resizeToScale(60)

        TextInput {
            id: textInput
            inputMethodHints: Qt.ImhNoPredictiveText
            text: container.text
            anchors.rightMargin: resizeToScale(10)
            anchors.leftMargin: resizeToScale(10)
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.left: parent.left
            font.pixelSize: fontSize == 0 ? resizeToScale(25) : fontSize
            echoMode: container.echoMode
            enabled: container.enabled
            selectionColor: "lightgreen"
            onFocusChanged: {
                if (!focus && focusOut)
                    focusOut()
            }
            focus: true
        }

        Text {
            id: placeholder
            text: container.placeholder
            anchors.rightMargin: resizeToScale(10)
            anchors.leftMargin: resizeToScale(10)
            color: "#CCC"
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.left: parent.left
            font.pixelSize: fontSize == 0 ? resizeToScale(25) : fontSize
            visible: textInput.text == "" && (!textInput.activeFocus)
        }

        MouseArea {
            id: clikableArea
            anchors.top: txt.top
            anchors.left: txt.left
            anchors.bottom: txt.bottom
            anchors.right: txt.right
            onReleased: {
                textInput.focus = true
                textInput.forceActiveFocus()
            }
            onPressAndHold: {
                if (textInput.canPaste) {
                    pastVisible(true)
                }
            }
        }

        Rectangle {
            id: paste
            width: resizeToScale(120)
            color: "green"
            radius: resizeToScale(5)
            visible: false
            anchors.right: parent.right
            anchors.margins: resizeToScale(7)
            anchors.bottom: parent.bottom
            anchors.top: parent.top
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    pastVisible(false)
                    textInput.paste()
                }
            }
            Text {
                text: "Paste"
                font.bold: true
                font.pixelSize: resizeToScale(20)
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                color: "white"
                style: Text.Outline
            }
        }
    }

    Text {
        id: txtError
        anchors.topMargin: resizeToScale(5)
        anchors.left: txt.left
        anchors.right: txt.right
        anchors.top: txt.bottom
        visible: false
        font.pixelSize: resizeToScale(20)
        text: container.error
        font.italic: true
        color: "#F04243"
    }
}
