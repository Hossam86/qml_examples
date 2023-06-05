#include "hvachandler.h"

HvacHandler::HvacHandler(QObject *parent):QObject(parent), m_targetTemperture(70)
{

}

int HvacHandler::targetTemperture() const
{
    return m_targetTemperture;
}

void HvacHandler::incrementTargetTemp(const int &val)
{
    int newTargetTemp=m_targetTemperture+val;
    setTargetTemperture(newTargetTemp);
}

void HvacHandler::setTargetTemperture(int newTargetTemperture)
{
    if (m_targetTemperture == newTargetTemperture)
        return;
    m_targetTemperture = newTargetTemperture;
    emit targetTempertureChanged();
}
