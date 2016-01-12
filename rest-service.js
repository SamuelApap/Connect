function RestService() {

    function convertToFormEncoded(obj) {
        var data = ""
        for (var key in obj) {
            data += key + "=" + escape(obj[key]) + "&"
        }
        data = data.substring(0, data.length - 1)
        return data
    }

    function send(obj) {
        var request = new XMLHttpRequest()
        var params = ""
        var url = AppConfig.instance.baseUrl + obj.url

        request.open(obj.type, url, true)

        if (obj.asFormEncoded) {
            params = convertToFormEncoded(obj.data)
        } else {
            params = JSON.stringify(obj.data)
            request.setRequestHeader("Content-Type",
                                     "application/json;charset=UTF-8")
        }

        request.onreadystatechange = function () {
            if (request.readyState == 4) {
                if (request.status == 200) {
                    if (obj.onSuccess)
                        obj.onSuccess(JSON.parse(request.responseText))
                } else {
                    console.log("Request on error: " + request.responseText)
                    if (obj.onError)
                        obj.onError(request.responseText)
                }

                if (obj.onCompleted)
                    obj.onCompleted()
            }
        }

        request.send(params)
    }

    this.post = function (obj) {
        obj = obj ? obj : {

                    }
        obj.type = "POST"
        send(obj)
    }

    this.get = function (obj) {
        obj = obj ? obj : {

                    }
        obj.type = "GET"
        send(obj)
    }
}
