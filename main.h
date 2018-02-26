#ifndef MAIN_H
#define MAIN_H
#include <QObject>
#include <qdebug.h>
class Motion : public QObject
{
    Q_OBJECT
    //Q_PROPERTY(NOTIFY updatedPWM3)
public:
    Motion() {
        PWM1 = 0;
        PWM2 = 0;
        PWM3 = 0;
        PWM4 = 0;
        PWM5 = 0;
        PWM6 = 0;
    }
    void Forward();
   // void Sway();
   // void Upward();

public Q_SLOTS:
    void updatePWM3(int tmp1);
    int getPWM3(){
        return PWM3;
    }

/*signals:
    void valueChanged(int newValue);*/
signals :
    void updatedPWM3();
private:
    int PWM1;
    int PWM2;
    int PWM3;
    int PWM4;
    int PWM5;
    int PWM6;

};
#endif // MAIN_H
