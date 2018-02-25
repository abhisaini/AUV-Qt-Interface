import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    signal someClicked()
    visible: true
    width: 640
    height: 4801
    title: qsTr("Hello World")

    MainForm {
        anchors.fill: parent
        mouseArea.onClicked: {
            move.Forward();
        }
    }
}
