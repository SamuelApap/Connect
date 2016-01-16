import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2
import "qrc:///config/"
import connect.localStorage 1.0

ApplicationWindow {
    id:mainWindow
    visible: true
    width: 720
    height: 720
    color: "#9C231A"
    title: "Connect Express Couriers"

    LocalStorage{
     id:localStorage
    }

    function navigate(url){
        loader.source = url
    }

    Loader{
        id:loader
        anchors.fill: parent
        source: AppConfig.instance.navigation.mainSplitView
    }

    Component.onCompleted: {        
       NavigationService.subscribe(function(url){
           console.log(url)
           navigate(url)
       })

       // if the user is allready logged in redirect to MainSplitView
        var user = localStorage.get(AppConfig.instance.storage.token)
        if(user && user.access_token)
            navigate(AppConfig.instance.navigation.mainSplitView)
    }
}
