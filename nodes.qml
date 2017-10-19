import QtQuick 2.0
import QtQuick.Controls 1.4


Rectangle{
    height:600;width:900;
    id:page;
   Column{
       anchors.horizontalCenter: page.horizontalCenter;
       anchors.verticalCenter: page.verticalCenter;
       spacing:20;

       //////////////
       Rectangle{
           width:860;
           height:90;
           border.color:'black';
           border.width: 2.5;
           id:half1;
           Row{
               anchors.horizontalCenter: half1.horizontalCenter;
               anchors.verticalCenter: half1.verticalCenter;
               Rectangle{
                   height:85;width:347.5;
                   border.color:'black';
                   border.width: 2.5;
                   id:ros;
                   Row{
                       spacing:0;
                       anchors.horizontalCenter: ros.horizontalCenter;
                       anchors.verticalCenter: ros.verticalCenter;

                       Rectangle{
                           height: 60;
                           color: 'black';
                           width:220;
                           id:rosname;
                           Text {

                               text: 'ROSCORE';
                               color:'white';
                               font.pointSize: 13;
                               anchors.horizontalCenter: rosname.horizontalCenter;
                               anchors.verticalCenter: rosname.verticalCenter;

                           }
                       }
                       Rectangle{
                           height: 60;
                           border.width: 2;
                           border.color: 'black';
                           width:60;
                           id:rosStatus;
                           Rectangle{
                               height:40;
                               width:40;
                               border.color:'black';
                               color:'#04dc64';
                               border.width: 2;

                               anchors.horizontalCenter: rosStatus.horizontalCenter;
                               anchors.verticalCenter: rosStatus.verticalCenter;

                           }
                       }
                   }


               }
               //status
               Rectangle{
                   height:85;width:507.5;
                   border.color:'black';
                   border.width: 2.5;
                   id:pack;
                   Row{
                       spacing:0;
                       anchors.horizontalCenter: pack.horizontalCenter;
                       anchors.verticalCenter: pack.verticalCenter;

                       Rectangle{
                           height: 60;
                           color: 'black';
                           width:220;
                           id:packName;
                           Text {

                               text: 'PACKAGE';
                               color:'white';
                               font.pointSize: 13;
                               anchors.horizontalCenter: packName.horizontalCenter;
                               anchors.verticalCenter: packName.verticalCenter;

                           }
                       }
                       Rectangle{
                           height: 60;
                           border.width: 2;
                           border.color: 'black';
                           width:220;
                           id:packDown;
                           ComboBox {
                               width: 200
                               model: [ "Package 1", "Package 2", "Package 3" ]
                               height:40;
                               anchors.horizontalCenter: packDown.horizontalCenter;
                               anchors.verticalCenter: packDown.verticalCenter;

                           }

                       }
                   }

               }

           }


       }

       Rectangle{
           width:860;
           height:450;
           border.color:'black';
           border.width: 5;
           id:half2;



       }
   }
}






