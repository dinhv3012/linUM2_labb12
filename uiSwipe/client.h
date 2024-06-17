#ifndef CLIENT_H
#define CLIENT_H

#include <QObject>
#include <QString>

class Client : public QObject
{
    Q_OBJECT

public:
    explicit Client(QObject *parent = nullptr);
    Q_INVOKABLE QString fetchData(const QString &personalNumber);

private:
    QString getStudentData(const QString &personalNumber);
};

#endif
