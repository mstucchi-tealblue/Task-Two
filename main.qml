import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    visible:true
    width: 400
    height: 500

    property int i: 0
    property int current: 0
    property variant cognomi: ["Bianchi Marco","Cerini - Agnello","Villa Tremolada","Sala - Confalonieri","Fumagalli - Conti","Canton - Brambilla"]


    Rectangle {
        id:root
        width: 400
        height: 500
        color:"gray"


        /*Siccome posso mettere solo un componente in focus, metto in focus il componente root
        * e da qui quando leggo la pressione di un carattere genero il relativo click sul rettangolo
        * desiderato in modo da triggerare l'handler onClicked di quel rettangolo
        */

        focus: true
        Keys.onPressed: {
            if (event.key === Qt.Key_Up) {
                up_m.clicked({})
                event.accepted = true;
            }
            if (event.key === Qt.Key_Down) {
                down_m.clicked({})
                event.accepted = true;
            }
            if (event.key === Qt.Key_1) {
                one_m.clicked({})
                event.accepted = true;
            }
            if (event.key === Qt.Key_2) {
                two_m.clicked({})
                event.accepted = true;
            }
            if (event.key === Qt.Key_3) {
                three_m.clicked({})
                event.accepted = true;
            }
            if (event.key === Qt.Key_4) {
                four_m.clicked({})
                event.accepted = true;
            }
            if (event.key === Qt.Key_5) {
                five_m.clicked({})
                event.accepted = true;
            }
            if (event.key === Qt.Key_6) {
                six_m.clicked({})
                event.accepted = true;
            }
        }

        Rectangle {
            id:c1
            width: root.width/3
            height: root.height/20
            color: "white"
            anchors {
                top:root.top
                topMargin: root.height/30
                left: root.left
                leftMargin: root.width/20
            }

            Text {
                id:cogn1
                text: qsTr(cognomi[0])
                anchors.centerIn: parent
            }
        }

        Rectangle {
            id:c2
            width: root.width/3
            height: root.height/20
            color: "white"
            anchors
            {
                top: c1.bottom
                topMargin:  root.height/40
                horizontalCenter: c1.horizontalCenter
            }
            Text {
                id:cogn2
                text: qsTr(cognomi[1])
                anchors.centerIn: parent
            }
        }

        Rectangle {
            id:c3
            width: root.width/3
            height: root.height/20
            color: "white"
            anchors
            {
                top: c2.bottom
                topMargin:  root.height/40
                horizontalCenter: c1.horizontalCenter
            }
            Text {
                id:cogn3
                text: qsTr(cognomi[2])
                anchors.centerIn: parent
            }
        }

        Rectangle {
            id:c4
            width: root.width/3
            height: root.height/20
            color: "white"
            anchors
            {
                top: c3.bottom
                topMargin:  root.height/40
                horizontalCenter: c1.horizontalCenter
            }
            Text {
                id:cogn4
                text: qsTr(cognomi[3])
                anchors.centerIn: parent
            }
        }

        Rectangle {
            id:c5
            width: root.width/3
            height: root.height/20
            color: "white"
            anchors
            {
                top: c4.bottom
                topMargin:  root.height/40
                horizontalCenter: c1.horizontalCenter
            }
            Text {
                id:cogn5
                text: qsTr(cognomi[4])
                anchors.centerIn: parent
            }
        }

        Rectangle {
            id:c6
            width: root.width/3
            height: root.height/20
            color: "white"
            anchors
            {
                top: c5.bottom
                topMargin:  root.height/40
                horizontalCenter: c1.horizontalCenter
            }
            Text {
                id:cogn6
                text: qsTr(cognomi[5])
                anchors.centerIn: parent
            }
        }


        Rectangle {
            id: up
            height: root.height/20
            anchors {
                left: one_r.right
                right: two_r.left
                top: display.bottom
                topMargin: root.height/40
            }

            Text {
                id: up_w
                text: qsTr("↑")
                anchors.centerIn: parent
            }
            MouseArea {
                id: up_m
                anchors.fill: parent
                onClicked: { if(i<=0) {i=6;} displayIN.text = cognomi[--i];  }
            }
        }


        Rectangle {
            id: down
            height: root.height/20
            anchors {
                left: two_r.right
                right: three_r.left
                top: display.bottom
                topMargin: root.height/40
            }

            Text {
                id: down_r
                text: qsTr("↓")
                anchors.centerIn: parent
            }
            MouseArea {
                id:down_m
                anchors.fill: parent
                onClicked: {if(i>=5){ i=-1; } displayIN.text = cognomi[++i]; }
            }
        }

        Rectangle {
            id:display
            width: root.width/2
            height:root.height/4
            color:"blue"
            anchors{
                top: root.top
                topMargin: root.height/30
                right: root.right
                rightMargin: root.width/20

            }

            Text {
                id: displayIN
                text: "Digita il codice utente"
                font.pointSize: 11
                anchors.centerIn: parent
            }
        }

        Rectangle {
            id: one_r
            width: root.width/10
            height:root.height/20
            color:"white"
            anchors {
                right: root.right
                rightMargin: display.width -0.5*width
                top: display.bottom
                topMargin: root.height/10
            }

            MouseArea
            {
                id:one_m
                anchors.fill: parent
                onClicked: {displayIN.text = cogn1.text; i = 0;}
            }

            Text {
                id: one_w
                text: qsTr("1")
                anchors.centerIn: parent
            }
        }

        Rectangle {
            id: two_r
            width: root.width/10
            height:root.height/20
            color:"white"
            anchors {
                horizontalCenter: display.horizontalCenter
                top: display.bottom
                topMargin: root.height/10
            }

            MouseArea
            {
                id:two_m
                anchors.fill: parent
                onClicked: {displayIN.text = cogn2.text; i = 1; }
            }

            Text {
                id: two_w
                text: qsTr("2")
                anchors.centerIn: parent
            }
        }

        Rectangle {
            id: three_r
            width: root.width/10
            height:root.height/20
            color:"white"
            anchors {
                right: root.right
                rightMargin: root.width/20
                top: display.bottom
                topMargin: root.height/10
            }

            MouseArea
            {
                id: three_m
                anchors.fill: parent
                onClicked: { displayIN.text = cogn3.text; i = 2; }
            }

            Text {
                id: three_w
                text: qsTr("3")
                anchors.centerIn: parent
            }
        }




        Rectangle {
            id: four_r
            width: root.width/10
            height:root.height/20
            color:"white"
            anchors {
                right: root.right
                rightMargin: display.width -0.5*width
                top: one_r.bottom
                topMargin: root.height/25
            }

            MouseArea
            {
                id: four_m
                anchors.fill: parent
                onClicked: {displayIN.text = cogn4.text; i = 3;}
            }

            Text {
                id: four_w
                text: qsTr("4")
                anchors.centerIn: parent
            }
        }

        Rectangle {
            id: five_r
            width: root.width/10
            height:root.height/20
            color:"white"
            anchors {
                horizontalCenter: display.horizontalCenter
                top: two_r.bottom
                topMargin: root.height/25
            }

            MouseArea
            {
                id: five_m
                anchors.fill: parent
                onClicked: {displayIN.text = cogn5.text; i = 4;}
            }

            Text {
                id: five_w
                text: qsTr("5")
                anchors.centerIn: parent
            }
        }

        Rectangle {
            id: six_r
            width: root.width/10
            height:root.height/20
            color:"white"
            anchors {
                right: root.right
                rightMargin: root.width/20
                top: three_r.bottom
                topMargin: root.height/25
            }

            MouseArea
            {
                id: six_m
                anchors.fill: parent
                onClicked: {displayIN.text = cogn6.text; i = 5;}
            }

            Text {
                id: six_w
                text: qsTr("6")
                anchors.centerIn: parent
            }
        }



    }

}

