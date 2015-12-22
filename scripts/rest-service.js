function RestService() {
    function send(type, url, data, onSuccess, onError, onComplete) {
        var request = new XMLHttpRequest()
        request.onreadystatechange = function () {
            var DONE = this.DONE || 4
            var isSuccess = this.status < 400
            var isError = this.status >= 400

            if(isSuccess && onSuccess){
                onSuccess(this.responseText);
            }
            else if(isError && onError){
                onError(this.responseText);
            }

            if (this.readyState === DONE) {
                onComplete()
            }
        }
        request.open(type, url, true)
        request.setRequestHeader('X-Requested-With', 'XMLHttpRequest')
        request.send(data)
    }

    this.post = function (url, data, onSuccess, onError, onComplete) {
        send("POST", url, data, onSuccess, onError, onComplete)
    }

    this.get = function (url, data, onSuccess, onError, onComplete) {
        send("GET", url, data, onSuccess, onError, onComplete)
    }
}
