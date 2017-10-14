#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include <qt5/QtQml/QtQml>
#include <qt5/QtQml/QQmlEngine>>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
