#ifndef CONTROLLER_H
#define CONTROLLER_H

#include <QObject>

class Controller: public QObject
{
    Q_OBJECT
    Q_PROPERTY(int currentTemp READ currentTemp WRITE setCurrentTemp NOTIFY currentTempChanged)
    Q_PROPERTY(int targetTemp READ targetTemp WRITE setTargetTemp NOTIFY targetTempChanged)
    Q_PROPERTY(QString systemStatusMessage READ systemStatusMessage WRITE setSystemStatusMessage NOTIFY systemStatusMessageChanged)
    Q_PROPERTY(HeatSelectState systemState READ systemState WRITE setSystemState NOTIFY systemStateChanged)

public:
    Controller(QObject *parent);
    int currentTemp() const;

    enum HeatSelectState
    {
        HEATING,
        COOLING,
        AUTO
    };

    Q_ENUM(HeatSelectState)

    int targetTemp() const;
    void setTargetTemp(int newTargetTemp);

    QString systemStatusMessage() const;
    void setSystemStatusMessage(const QString &newSystemStatusMessage);

    HeatSelectState systemState() const;
    void setSystemState(HeatSelectState newSystemState);

public slots:
    void setCurrentTemp(int newCurrentTemp);
signals:
    void currentTempChanged();
    void targetTempChanged();

    void systemStatusMessageChanged();

    void systemStateChanged();

private:
    int m_currentTemp;
    int m_targetTemp;
    QString m_systemStatusMessage;
    HeatSelectState m_systemState;
};

#endif // CONTROLLER_H
