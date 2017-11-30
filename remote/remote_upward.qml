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
                 title: 'T-5'
                 Loader{
                     source: 'thrust5.qml'
                 }
             }
             Tab{
                 title: 'T-6'
                 Loader{
                     source: 'thrust6.qml'
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
                 id:p5;
                 Text{
                     text:'PWM 5';
                     color:'white';
                     font.pointSize: 12;
                     anchors.horizontalCenter: p5.horizontalCenter;
                     anchors.verticalCenter: p5.verticalCenter;
                     font.bold: true;

                 }
             }
             Rectangle{
                 height:50;
                 width:70;
                 border.color:'black';
                 id:pv5
                 Text{
                     text:'247';
                     color:'black';
                     font.pointSize: 12;
                     anchors.horizontalCenter: pv5.horizontalCenter;
                     anchors.verticalCenter: pv5.verticalCenter;
                     font.bold: true;
                     id:valuePWM5

                 }

             }


             //PWM 2
             Rectangle{
                 height:50;
                 width:130;
                 color:'black';
                 id:p6;
                 Text{
                     text:'PWM 6';
                     color:'white';
                     font.pointSize: 12;
                     anchors.horizontalCenter: p6.horizontalCenter;
                     anchors.verticalCenter: p6.verticalCenter;
                     font.bold: true;

                 }
             }
             Rectangle{
                 height:50;
                 width:70;
                 border.color:'black';
                 id:pv6
                 Text{
                     text:'174';
                     color:'black';
                     font.pointSize: 12;
                     anchors.horizontalCenter: pv6.horizontalCenter;
                     anchors.verticalCenter: pv6.verticalCenter;
                     font.bold: true;
                     id:valuePWM6

                 }
             }
         }
        }
    }
}










