import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.1
import QtMultimedia 5.5
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.0

Item
{

    property bool first_player_turn: false

    id: newGameRoot
    width: 640
    height: 480
    FontLoader
    {
        id: cFontLoader
        source: "/fonts/Minecrafter_3.ttf"
    }

    Image
    {
        id: newGameBackground
        anchors.fill: parent
        source: "img/AdvancedLogoNewGame.png"
        width: 640
        height: 480
    }



    Text
    {
        id: color1
        anchors.centerIn: parent
        text: "RED"
        font.family: cFontLoader.name
        font.pointSize: 10
        color: "#ef4942"
        anchors.verticalCenterOffset: -100
        anchors.horizontalCenterOffset: -60
        ColorAnimation on color { id: redAnim; from: "#ddadab"; to:"#ef4942";  duration: 700; loops: Animation.Infinite}


        Image
        {
            id: redTrooper
            anchors.bottom: color1.top
            anchors.bottomMargin: 5
            //anchors.horizontalCenterOffset: -60
            source: "/img/RedTroops.png"
        }

        MouseArea
        {
            anchors.fill: parent
            onClicked:
            {
                if(!first_player_turn == true)
                {
                    color1.text = "PLAYER 1"
                    first_player_turn = true
                }
                else
                {
                    color1.text = "PLAYER 2"
                }
                color1.color = "#8f929b"
                redAnim.stop()
            }
        }

    }
    DropShadow
    {
        id: color1Shadow
        anchors.fill: color1
        horizontalOffset: 0
        verticalOffset: 2
        radius: 0
        color: "#ddadab"
        samples: 17
        spread: 0.0
        source: color1
    }

    Text
    {
        id: color2
        anchors.centerIn: parent
        text: "GREEN"
        font.family: cFontLoader.name
        font.pointSize: 10
        color: "#4aa086"
        anchors.verticalCenterOffset: -100
        anchors.horizontalCenterOffset: 85
        ColorAnimation on color {id: greenAnim; from: "#9ecdbf"; to:"#4aa086";  duration: 700; loops: Animation.Infinite}

        Image
        {
            id: greenTrooper
            anchors.bottom: color2.top
            anchors.bottomMargin: 5
            //anchors.horizontalCenterOffset: 85
            source: "img/GreenTroops.png"
        }

        MouseArea
        {
            anchors.fill: parent
            onClicked:
            {
                if(!first_player_turn == true)
                {
                    color2.text = "PLAYER 1"
                    first_player_turn = true
                }
                else
                {
                    color2.text = "PLAYER 2"
                }
                color2.color = "#8f929b"
                greenAnim.stop()
            }
        }

    }

    DropShadow
    {
        id: color2Shadow
        anchors.fill: color2
        horizontalOffset: 0
        verticalOffset: 2
        radius: 0
        color: "#9ecdbf"
        samples: 17
        spread: 0.0
        source: color2
    }



    Text
    {
        id: color3
        anchors.centerIn: parent
        text: "YELLOW"
        font.family: cFontLoader.name
        font.pointSize: 10
        color: "#e7db52"
        anchors.verticalCenterOffset: 50
        anchors.horizontalCenterOffset: -60
        ColorAnimation on color { id: yellowAnim; from: "#eee9b2"; to:"#e7db52";  duration: 700; loops: Animation.Infinite}

        Image
        {
            id: yellowTrooper
            anchors.bottom: color3.top
            anchors.bottomMargin: 5
            anchors.horizontalCenterOffset: -20
            source: "img/YellowTroops.png"
        }

        MouseArea
        {
            anchors.fill: parent
            onClicked:
            {
                if(!first_player_turn == true)
                {
                    color3.text = "PLAYER 1"
                    first_player_turn = true
                }
                else
                {
                    color3.text = "PLAYER 2"
                }
                color3.color = "#8f929b"
                yellowAnim.stop()
            }
        }

    }

    DropShadow
    {
        id: color3Shadow
        anchors.fill: color3
        horizontalOffset: 0
        verticalOffset: 2
        radius: 0.0
        color: "#8b843a"
        samples: 17
        spread: 0.0
        source: color3
    }

    Text
    {
        id: color4
        anchors.centerIn: parent
        text: "BLUE"
        font.family: cFontLoader.name
        font.pointSize: 10
        color: "#1f4ddc"
        anchors.verticalCenterOffset: 50
        anchors.horizontalCenterOffset: 85
        ColorAnimation on color { id: blueAnim; from: "#94aeff"; to:"#1f4ddc";  duration: 700; loops: Animation.Infinite}
        Image
        {
            id: blueTrooper
            anchors.bottom: color4.top
            anchors.bottomMargin: 5
            //anchors.horizontalCenterOffset: 85
            source: "img/BlueTroops.png"
        }
        MouseArea
        {
            anchors.fill: parent
            onClicked:
            {
                if(!first_player_turn == true)
                {
                    color4.text = "PLAYER 1"
                    first_player_turn = true
                }
                else
                {
                    color4.text = "PLAYER 2"
                }
                color4.color = "#8f929b"
                blueAnim.stop()
            }
        }
    }

    DropShadow
    {
        id: color4Shadow
        anchors.fill: color4
        horizontalOffset: 0
        verticalOffset: 2
        radius: 0
        color: "#94aeff"
        samples: 17
        spread: 0.0
        source: color4
    }

    Text
    {
        id: startNewGame
        anchors.centerIn: parent
        text: "Start Game"
        font.family: cFontLoader.name
        font.pointSize: 12
        color: "#d4352a"
        anchors.verticalCenterOffset: 120
        ColorAnimation on color { id: startAnim ;from: "#de948f"; to:"#d4352a";  duration: 700; loops: Animation.Infinite}
        MouseArea
        {
            anchors.fill: parent
            onClicked:
            {
                   //Add access to your board here -Saud
            }
        }

    }
    DropShadow
    {
        id: startNewGameShadow
        anchors.fill: startNewGame
        horizontalOffset: 0
        verticalOffset: 2
        radius: 0
        color: "#de948f"
        samples: 17
        spread: 0.0
        source: startNewGame
    }

    Text
    {
        id: backFromNewGame
        anchors.centerIn: parent
        text: "Back"
        font.family: cFontLoader.name
        font.pointSize: 12
        color: "#d4352a"
        anchors.verticalCenterOffset: 160
        ColorAnimation on color { id: backAnim ;from: "#de948f"; to:"#d4352a";  duration: 700; loops: Animation.Infinite}
        MouseArea
        {
            anchors.fill: parent
            onClicked:
            {
                homeRoot.visible = true
                newGamePage.visible = false
            }
        }

    }
    DropShadow
    {
        id: backFromNewGameShadow
        anchors.fill: backFromNewGame
        horizontalOffset: 0
        verticalOffset: 2
        radius: 0
        color: "#de948f"
        samples: 17
        spread: 0.0
        source: backFromNewGame
    }
}
