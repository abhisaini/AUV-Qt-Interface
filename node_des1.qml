import QtQuick 2.0
import QtQuick.Controls 1.4
Rectangle {
    height:440;
    width:850;
    Column{
        spacing:0;
        Rectangle{
            width:850;
            height:370;
            id:nodeCover;
            Row{
                spacing:0;
                anchors.horizontalCenter: nodeCover.horizontalCenter;
                anchors.verticalCenter: nodeCover.verticalCenter;

                Rectangle{
                    height:350;
                    width:500;
                    border.color: 'black';
                    border.width:2.5;
                    ScrollView{

                    }
                }
                Rectangle{
                    height:350;
                    width:300;
                    border.color:'black';
                    border.width:2.5;
                    id:description;
                    Column{
                        anchors.horizontalCenter: description.horizontalCenter;
                        anchors.verticalCenter: description.verticalCenter;

                        spacing:0;
                        Rectangle{
                            height:60;
                            color:'black';
                            width:295;
                            id:desHead;
                            Text{
                                text:'Description';
                                anchors.horizontalCenter: desHead.horizontalCenter;
                                anchors.verticalCenter: desHead.verticalCenter;
                                color:'white';
                                font.pointSize: 15;
                            }
                        }
                        Rectangle{
                            height:285;
                            color:'light grey';
                            width:295;
                            id:decCover;
                            Text{
                                text:'node description '
                                anchors.horizontalCenter: decCover.horizontalCenter;
                                anchors.verticalCenter: decCover.verticalCenter;
                                id:decContent;
                            }

                        }
                    }

                }
            }
        }
        Rectangle{
            width:850;
            color:'black';
            height:70;
            id:packDes;
            Text{
                color:'white';
                anchors.horizontalCenter: packDes.horizontalCenter;
                anchors.verticalCenter: packDes.verticalCenter;
                text:'package 1 description';

            }
        }
    }

}
