
#include <QFile>
#include <QJsonArray>
#include <QJsonDocument>
#include <QJsonObject>
#include <QStandardPaths>

#include "localstorage.h"

bool LocalStorage::set(QString entity, QJsonObject data)
{
    QString saveLocation = QStandardPaths::writableLocation(QStandardPaths::AppDataLocation);

    QByteArray ba = ("LocalStorage SET: " + saveLocation).toLatin1();
    const char *saveLocation_str = ba.data();
    qDebug(saveLocation_str);

    QFile saveFile(saveLocation + "/" + entity + ".json");

    if (!saveFile.open(QIODevice::WriteOnly)) {
        qWarning("Couldn't save file.");
        return false;
    }

    QJsonDocument saveDoc(data);
    saveFile.write(saveDoc.toJson());
    return true;
}

QJsonObject LocalStorage::get(QString entity)
{
    QString saveLocation = QStandardPaths::writableLocation(QStandardPaths::AppDataLocation);

    QByteArray ba = ("LocalStorage GET: "+ saveLocation).toLatin1();
    const char *saveLocation_str = ba.data();
    qDebug(saveLocation_str);

    QFile loadFile(saveLocation + "/" + entity + ".json");

    if (!loadFile.open(QIODevice::ReadOnly)) {
        qWarning("Couldn't open file.");
        QJsonObject object;
        return object;
    }

    QByteArray saveData = loadFile.readAll();
    QJsonDocument loadDoc(QJsonDocument::fromJson(saveData));

    return loadDoc.object();
}
