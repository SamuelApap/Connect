.pragma library

var listeners = []
function navigate(url) {
    for (var listener in listeners) {
        listeners[listener](url)
    }
}

function subscribe(func) {
    listeners.push(func)
}

function dispose(func) {
    var index = listeners.indexOf(func)
    listeners.splice(index, 1)
}
