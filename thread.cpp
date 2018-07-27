#include "thread.h"
#include <QDebug>
thread::thread()
{
    //qDebug("dfd");
}
void thread::run()
{
    for (int i = 0; i < 1000000;i ++){
        qDebug() << "aaa\n" ;
        QThread::sleep(1);
    }
    qDebug() << "qqqq";
}
