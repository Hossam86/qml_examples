#include "message.h"

Message::Message(QObject *parent)
    : QObject{parent}
{

}

QString Message::author() const
{
    return m_author;
}

void Message::setAuthor(const QString &newAuthor)
{
    if (m_author == newAuthor)
        return;
    m_author = newAuthor;
    emit authorChanged();
}

QDateTime Message::creationDate() const
{
    return m_creationDate;
}

void Message::setCreationDate(const QDateTime &newCreationDate)
{
    if (m_creationDate == newCreationDate)
        return;
    m_creationDate = newCreationDate;
    emit creationDateChanged();
}
