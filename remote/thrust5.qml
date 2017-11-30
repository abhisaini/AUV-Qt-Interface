import QtQuick 2.0
import QtQuick.Controls 1.4

Rectangle {
    height:228;
    width:246;
    id:detTh5;
    Column{
        spacing: 40;
        anchors.horizontalCenter: detTh5.horizontalCenter;
        anchors.verticalCenter: detTh5.verticalCenter;
        id:col;
        Slider{
            id:setPWM5;
            value: .5;

        }
        Row{
            spacing: 25;
            anchors.horizontalCenter: col.horizontalCenter;

            Rectangle{

                height:55;
                width:55;
                id:clockwise;
                border.width: 1;
                radius:10;
                Image {
                    source: "clock.png"
                    height:35;
                    width:35;
                    anchors.horizontalCenter: clockwise.horizontalCenter;
                    anchors.verticalCenter: clockwise.verticalCenter;


                }

            }
            Rectangle{
                height:55;
                width:55;
                id:anticlockwise;
                border.width: 1;
                radius:10;

                Image {
                    source: "anticlock.png"
                    height:35;
                    width:35;
                    anchors.horizontalCenter: anticlockwise.horizontalCenter;
                    anchors.verticalCenter: anticlockwise.verticalCenter;

                }

            }
        }
    }

}
