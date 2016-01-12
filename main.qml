import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2
import "qrc:///config/"

ApplicationWindow {
    id:mainWindow
    visible: true
    width: 720
    height: 720
    color: "#9C231A"
    title: "Connect Express Couriers"

    function navigate(url){
        loader.source = url
    }

    Loader{
        id:loader
        anchors.fill: parent
        source: AppConfig.instance.navigation.loginView
    }

    Component.onCompleted: {
       NavigationService.subscribe(function(url){
           console.log(url)
           navigate(url)
       })
    }
}
