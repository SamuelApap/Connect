#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlEngine>
#include <QtQml>
#include <localstorage.h>

int main(int argc, char *argv[])
{
    qmlRegisterType<LocalStorage>("connect.localStorage", 1, 0, "LocalStorage");

    QApplication app(argc, argv);
    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:///main.qml")));

    return app.exec();
}

