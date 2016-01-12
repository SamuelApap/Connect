#ifndef LOCALSTORAGE_H
#define LOCALSTORAGE_H
#include <QObject>
#include <QJsonObject>

class LocalStorage: public QObject
{
    Q_OBJECT
public:
    Q_INVOKABLE bool set(QString entity, QJsonObject obj);
    Q_INVOKABLE QJsonObject get(QString entity);
};

#endif // LOCALSTORAGE_H
