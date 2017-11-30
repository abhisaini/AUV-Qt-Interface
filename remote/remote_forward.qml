import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Rectangle {
    id:page;
    height:420;
    width:250;
    border.color:"black";
    border.width: 2;
    Column{
        anchors.horizontalCenter: page.horizontalCenter;
        anchors.verticalCenter: page.verticalCenter;
        Rectangle{
         height: 230;
         width: 250;
         border.color: 'black';
         border.width: 2;
         id:cover;
         TabView{
             height: 228;
             width: 246;
             anchors.horizontalCenter: cover.horizontalCenter;
             anchors.verticalCenter: cover.verticalCenter;

             Tab{
                 title: 'T-3'
                 Loader{
                     source: 'thrust3.qml'
                 }
             }
             Tab{
                 title: 'T-4'
                 Loader{
                     source: 'thrust4.qml'
                 }
             }

             style: TabViewStyle {
                 frameOverlap: 3
                 tab: Rectangle {
                     color: styleData.selected ? "#F6F6F6" :"lightgrey"
                     border.color:  "black"
                     implicitWidth: Math.max(text.width + 30, 80)
                     implicitHeight: styleData.selected ? "32" :"30"
                     radius: 2.5
                     Text {
                         id: text
                         anchors.centerIn: parent
                         text: styleData.title
                         color:  "black"
                     }
                 }
                 frame: Rectangle { color: "white" ;border.color:'black';border.width: 1;}
             }


         }


        }
        Rectangle{
         height: 190;
         width: 250;
         border.width: 2;
         border.color: 'black';
         id:detailsPWM
         Grid{
             columns:2;
             rows:2;
             rowSpacing:30;
             anchors.horizontalCenter: detailsPWM.horizontalCenter;
             anchors.verticalCenter: detailsPWM.verticalCenter;

             //PWM 1
             Rectangle{
                 height:50;
                 width:130;
                 color:'black';
                 id:p3;
                 Text{
                     text:'PWM 3';
                     color:'white';
                     font.pointSize: 12;
                     anchors.horizontalCenter: p3.horizontalCenter;
                     anchors.verticalCenter: p3.verticalCenter;
                     font.bold: true;

                 }
             }
             Rectangle{
                 height:50;
                 width:70;
                 border.color:'black';
                 id:pv3
                 Text{
                     text:'247';
                     color:'black';
                     font.pointSize: 12;
                     anchors.horizontalCenter: pv3.horizontalCenter;
                     anchors.verticalCenter: pv3.verticalCenter;
                     font.bold: true;
                     id:valuePWM3

                 }

             }


             //PWM 2
             Rectangle{
                 height:50;
                 width:130;
                 color:'black';
                 id:p4;
                 Text{
                     text:'PWM 2';
                     color:'white';
                     font.pointSize: 12;
                     anchors.horizontalCenter: p4.horizontalCenter;
                     anchors.verticalCenter: p4.verticalCenter;
                     font.bold: true;

                 }
             }
             Rectangle{
                 height:50;
                 width:70;
                 border.color:'black';
                 id:pv4
                 Text{
                     text:'174';
                     color:'black';
                     font.pointSize: 12;
                     anchors.horizontalCenter: pv4.horizontalCenter;
                     anchors.verticalCenter: pv4.verticalCenter;
                     font.bold: true;
                     id:valuePWM4

                 }
             }
         }
        }
    }
}










