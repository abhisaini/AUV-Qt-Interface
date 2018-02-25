#ifndef MAIN_H
#define MAIN_H
#include <QObject>
#include <qdebug.h>

class Motion : public QObject
{
    Q_OBJECT

public:
    Motion() { m_value = 0; }

    int value() const { return m_value; }

public Q_SLOTS:
    void Forward();
   // void Sway();
   // void Upward();


private:
    int m_value;
};


#endif // MAIN_H
