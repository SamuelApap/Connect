import QtQuick 2.0

Rectangle {
    id: root
    focus: true
    property list<Component> model:[
        Component { Rectangle{anchors.fill: parent;color:"red"; width:40; height:40} },
        Component { Rectangle{anchors.fill: parent;color:"yellow"; width:40; height:40} },
        Component { Rectangle{anchors.fill: parent;color:"blue"; width:40; height:40} },
        Component { Rectangle{anchors.fill: parent;color:"orange"; width:40; height:40} },
        Component { Rectangle{anchors.fill: parent;color:"green"; width:40; height:40} }
    ]

    Row {
        id: tabs
        Behavior on x{
       NumberAnimation { duration: 150 }
        }
        Repeater {
            id: repeater
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            clip: true
            model: root.model.length
            delegate:
                Loader {
                    height: root.height
                    width: root.width
                    sourceComponent: root.model[index]
                }
        }
    }

    SwipeArea {
        elementToHandle: tabs
        flickDifference: root.width
    }
}
