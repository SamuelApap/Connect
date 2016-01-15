import QtQuick 2.0

MouseArea {
    id: root
    property int oldX: 0
    property int startX: 0
    property double trashold: 0.25
    property var elementToHandle
    property int flickDifference
    property bool gestureStarted: false
    property var gestureStartTime

    function navigateToIndex(idx) {
        elementToHandle.x = idx * flickDifference * -1
        elementToHandle.selectedIndex = idx
        oldX = elementToHandle.x
    }

    onReleased: {
        var xMoved = oldX
        var diff = elementToHandle.x - oldX
        var firstDiff = oldX - flickDifference
        var secondDiff = oldX + flickDifference
        var lastPos = elementToHandle.childrenRect.width - flickDifference

        if (diff <= -(flickDifference * trashold)
                || diff >= (flickDifference * trashold) || isFlick(diff)) {
            if (diff < 0 && firstDiff >= -lastPos) {
                xMoved = firstDiff
            } else if (diff > 0 && secondDiff <= 0) {
                xMoved = secondDiff
            }
        }

        oldX = xMoved
        elementToHandle.x = xMoved
        gestureStarted = false
        var index = oldX == 0 ? 0 : (oldX / flickDifference) * -1
        elementToHandle.selectedIndex = index
    }

    onPressed: {
        gestureStarted = true
        gestureStartTime = new Date()
        startX = mouseX
    }

    onMouseXChanged: {
        elementToHandle.x = oldX - (startX - mouseX)
    }

    function isFlick(xPosDiff) {
        var now = new Date()
        var timeDiff = now - gestureStartTime
        //high velocity and large diff between start end point
        if (timeDiff < 175 && Math.abs(xPosDiff) > 1) {
            return true
        }
        return false
    }
}
