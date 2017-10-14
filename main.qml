import QtQuick 2.0
import QtQuick.Window 2.2
import QtQuick.Controls 1.4


Rectangle {
    id: page
    width: 1000; height: 850;
    color: "lightgray"

   /* Text {
        id: helloText
        text: "Varun"
        y: 0
        anchors.horizontalCenter: page.horizontalCenter
        font.pointSize: 24; font.bold: true
    }
    */
    State { name: 'loaded'; when: logo.status == Image.Ready }


    Image {
        id: logo
        source: "http://auv-iitk.github.io/images/logo.jpg"
        y:20;
        cache: true;
        onStatusChanged: if (logo.status == Image.Ready) console.log('')

        anchors.horizontalCenter: page.horizontalCenter

    }
    Text { text: logo.status == Image.Ready ? '' : 'AUV-IITK'; font.family: "FreeSans"; font.pointSize:40 ;height:40; color: "#ffffff";y:20;
        anchors.horizontalCenter: page.horizontalCenter

    }

    TabView {
        y:200;
        anchors.horizontalCenter: page.horizontalCenter;
        height:600;
        width:900;

        Tab {
            title: "WELCOME"
            Loader  { source:"welcome.qml" }
        }
      Tab {
            title: "TAB2"
            Loader  { source:"tab2.qml" }
        }
        Tab {
            title: "TAB3"
            Loader  { source:"tab3.qml" }
        }
        Tab {
            title: "TAB4"
            Loader  { source:"tab4.qml" }
        }
        Tab {
            title: "TAB5"
            Loader  { source:"tab5.qml" }
        }
        Tab {
            title: "TAB6"
            Loader  { source:"tab6.qml" }
        }
        Tab {
            title: "TAB7"
            Loader  { source:"tab7.qml" }
        }

    }



  }



