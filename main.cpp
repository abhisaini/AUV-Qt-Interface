#include <QApplication>
#include <bits/stdc++.h>
#include <QProcess>
#include <QObject>
//#include <QWidget>
#include <QWidgetList>
#include <QQmlEngine>
#include <QQmlContext>
#include <QtQuickWidgets/QQuickWidget>
#include <QQuickView>
#include <QQuickWidget>
#include <QString>
#include "main.h"
#include <QDebug>
#include <qdebug.h>
#include <QtGui>
#include <QQmlApplicationEngine>

#include <qt5/QtQml/QtQml>
#include <qt5/QtQml/QQmlEngine>

void Motion :: Forward( ){
    // rostopic pub /pwm/upward std_msgs/Float64 "255"
    QString cmd = "rostopic pub /pwm/forward std_msgs/Float64 " ;
    cmd += cmd + QString::number(PWM3) ;
    cmd = cmd + " " + QString::number(PWM4) ;
    std :: string cmd0 = cmd.toUtf8().constData();
   // qDebug() << " aaa ";
    qDebug() << cmd0.c_str() ;
    //qDebug() << " aaa ";
    qDebug() << "  \n" ;
    //std :: system(cmd0.c_str());   // To be uncommented
}
void Motion :: updatePWM3(int tmp1){
    PWM3 = tmp1;
    //getPWM3();
    emit updatedPWM3();
    Forward();
}

int main(int argc, char *argv[]) {
    QApplication app(argc, argv);
    //Mine moved ;
    //QQmlApplicationEngine engine;
    //engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    Motion move;

    qmlRegisterType <Motion> ("Motion.header",1,0,"Remote");

    QQuickView view;
        view.engine()->rootContext()->setContextProperty("move", &move);
        view.setSource(QUrl("qrc:/main.qml"));
        view.show();

    return app.exec();
    //return 0;
}





