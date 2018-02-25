#include <QApplication>
#include <bits/stdc++.h>
#include <QQmlApplicationEngine>
#include <QProcess>
#include <QQmlContext>
#include <QObject>
//#include <QWidget>
#include <QWidgetList>
#include <QtQuickWidgets/QQuickWidget>
#include <QQuickView>
#include <QQuickWidget>
#include <QString>
#include "main.h"
#include <QDebug>

void Motion :: Forward(){
    std :: system("roscore");
}

int main(int argc, char *argv[]) {
    QApplication app(argc, argv);
    Motion move;
    QQuickView view;
        view.engine()->rootContext()->setContextProperty("move", &move);
        view.setSource(QUrl("qrc:/main.qml"));
        view.show();
    return app.exec();
}





