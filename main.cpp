#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlEngine>
#include <QtQml>
#include <localstorage.h>
#include <QFontDatabase>

int main(int argc, char *argv[])
{
    qmlRegisterType<LocalStorage>("connect.localStorage", 1, 0, "LocalStorage");

    //QFontDatabase fontDB;
   // fontDb.addApplicationFont("qrc:///fonts/yukarimobil.ttf");

    QApplication app(argc, argv);
    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:///main.qml")));

    return app.exec();
}

