#include "client.h"
#include <QFile>
#include <QTextStream>
#include <QDebug>

Client::Client(QObject *parent) : QObject(parent) {}

QString Client::fetchData(const QString &personalNumber)
{
    return getStudentData(personalNumber);
}

QString Client::getStudentData(const QString &personalNumber)
{

    QString filePath = ":/students.txt";
    QFile file(filePath);

    if (!file.exists()) {
        qDebug() << "Error: File does not exist";
        return "Error: File does not exist";
    }

    if (!file.open(QIODevice::ReadOnly | QIODevice::Text)) {
        qDebug() << "Error: Cannot open file:" << file.errorString();
        return "Error: Cannot open file: " + file.errorString();
    }

    QTextStream in(&file);
    while (!in.atEnd()) {
        QString line = in.readLine();
        if (line.startsWith(personalNumber)) {
            return line;
        }
    }

    qDebug() << "Error: Student not found";
    return "Error: Student not found";
}
