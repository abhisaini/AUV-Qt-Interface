import QtQuick 2.0

Rectangle{
    id:page;
    width:900;
    height:600;

    Rectangle{
        id:frame;
        anchors.horizontalCenter: page.horizontalCenter;
        anchors.verticalCenter: page.verticalCenter;
        border.color:" black";
        border.width: 5;
        width:860;
        height:550;
        Grid{

            columnSpacing:20;
            columns:3;
            rows:2;
            anchors.horizontalCenter: frame.horizontalCenter;
            anchors.verticalCenter: frame.verticalCenter;
            Rectangle{
                color:"black";
                id:sway;
                height:50;
                width:250;
                Text {

                    text: qsTr("SWAY");
                    font.bold: true;
                    font.pointSize: 15;
                    color:"white";
                    anchors.horizontalCenter: sway.horizontalCenter;
                    anchors.verticalCenter: sway.verticalCenter;

                }
            }
            Rectangle{
                color:"black";
                id:forward;
                height:50;
                width:250;
                Text {

                    text: qsTr("FORWARD");
                    font.bold: true;
                    font.pointSize: 15;
                    color:"white";
                    anchors.horizontalCenter: forward.horizontalCenter;
                    anchors.verticalCenter: forward.verticalCenter;

                }
            }
            Rectangle{
                height:50;
                id:vrward;
                color:"black";
                width:250;
                Text {

                    text: qsTr("VRWARD");
                    font.bold: true;
                    font.pointSize: 15;
                    color:"white";
                    anchors.horizontalCenter: vrward.horizontalCenter;
                    anchors.verticalCenter: vrward.verticalCenter;

                }

            }
            Rectangle{
                height:450;
                border.color:"black";
                border.width: 2;
                width:250;
                Loader{
                    source:"remote/remote_sway.qml";
                }

            }
            Rectangle{
                height:450;
                border.color:"black";
                border.width: 2;
                width:250;
                Loader{
                    source:"remote/remote_forward.qml";
                }

            }
            Rectangle{
                height:450;
                border.color:"black";
                border.width: 2;
                width:250;
                Loader{
                    source:"remote/remote_vrward.qml";
                }

            }
    }
}
}
