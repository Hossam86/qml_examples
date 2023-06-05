#ifndef HVACHANDLER_H
#define HVACHANDLER_H

#include<QObject>

class HvacHandler:public QObject
{
    Q_OBJECT
    Q_PROPERTY(int targetTemperture READ targetTemperture WRITE setTargetTemperture NOTIFY targetTempertureChanged);

public:
    HvacHandler(QObject *parent = nullptr);
    int targetTemperture() const;
    Q_INVOKABLE void incrementTargetTemp(const int& val);

public slots:
void setTargetTemperture(int newTargetTemperture);

signals:
    void targetTempertureChanged();
private:
    int m_targetTemperture;
};

#endif // HVACHANDLER_H
