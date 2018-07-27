#ifndef THREAD_H
#define THREAD_H
#include <QThread>

class thread: public QThread
{
    Q_OBJECT

public:
    thread();
protected:
    void run();
};

#endif // THREAD_H
