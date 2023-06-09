#include "controller.h"

Controller::Controller(QObject *parent):QObject(parent),m_currentTemp(65), m_targetTemp(70), m_systemState(HEATING)
{

}

int Controller::currentTemp() const
{
    return m_currentTemp;
}

void Controller::setCurrentTemp(int newCurrentTemp)
{
    if (m_currentTemp == newCurrentTemp)
        return;
    m_currentTemp = newCurrentTemp;
    emit currentTempChanged();
}

int Controller::targetTemp() const
{
    return m_targetTemp;
}

void Controller::setTargetTemp(int newTargetTemp)
{
    if (m_targetTemp == newTargetTemp)
        return;
    m_targetTemp = newTargetTemp;
    emit targetTempChanged();
}

QString Controller::systemStatusMessage() const
{
    return m_systemStatusMessage;
}

void Controller::setSystemStatusMessage(const QString &newSystemStatusMessage)
{
    if (m_systemStatusMessage == newSystemStatusMessage)
        return;
    m_systemStatusMessage = newSystemStatusMessage;
    emit systemStatusMessageChanged();
}

Controller::HeatSelectState Controller::systemState() const
{
    return m_systemState;
}

void Controller::setSystemState(HeatSelectState newSystemState)
{
    if (m_systemState == newSystemState)
        return;
    m_systemState = newSystemState;
    emit systemStateChanged();
}
