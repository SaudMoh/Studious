import QtQuick 2.5
import QtQuick.Controls 1.4
import QtMultimedia 5.5
import QtGraphicalEffects 1.0

ApplicationWindow
{
    id: root
    visible: true
    width: 640
    height: 480
    title: qsTr("Advance Wars")
    color: "transparent"



    Audio
    {
        id: playMusic
        source: "/songs/01-advance-wars-1-opening.mp3"
        autoPlay: true
    }

    SettingsPage
    {
        id: settingsPage
        visible: false
    }

    NewGamePage
    {
        id: newGamePage
        visible: false
    }

    LoadGamePage
    {
        id: loadGamePage
        visible: false
    }

    Item
    {
        id: homeRoot
        width: 640
        height: 480
        FontLoader
        {
              id: cFontLoader
              source: "/fonts/Minecrafter_3.ttf"
        }

        Image
        {
            id: mainBackground
            anchors.fill: parent
            source: "img/AdvancedLogoBG.png"
            width: 640
            height: 480
        }


        // new game button
            Text
            {
                id: newgametextarea
                text: "New Game"
                font.family: cFontLoader.name
                font.pointSize: 12
                color: "#0048ff"
                anchors.centerIn: parent
                anchors.bottom: loadgametextarea.top
                anchors.verticalCenterOffset: -30
                ColorAnimation on color { from: "#bdcdf8"; to:"#0048ff";  duration: 700; loops: Animation.Infinite}
                MouseArea
                {
                    anchors.fill: parent
                    onClicked:
                    {
                        homeRoot.visible = false
                        newGamePage.visible = true
                    }
                }
            }

            DropShadow
            {
                id: newButtonShadow
                anchors.fill: newgametextarea
                horizontalOffset: 0
                verticalOffset: 4
                radius: 0
                color: "#57c18d"
                samples: 17
                spread: 0.0
                source: newgametextarea
            }

        // load game button
            Text
            {
                id: loadgametextarea
                text: "Load Game"
                font.family: cFontLoader.name
                font.pointSize: 12
                color: "#0048ff"
                anchors.centerIn: parent
                anchors.bottom: settingstextarea.top
                anchors.verticalCenterOffset: 10
                ColorAnimation on color { from: "#bdcdf8"; to:"#0048ff";  duration: 700; loops: Animation.Infinite}
                MouseArea
                {
                    anchors.fill: parent
                    onClicked:
                    {
                        homeRoot.visible = false
                        loadGamePage.visible = true
                    }
                }
            }

            DropShadow
            {
                id: loadButtonShadow
                anchors.fill: loadgametextarea
                horizontalOffset: 0
                verticalOffset: 4
                radius: 0
                color: "#57c18d"
                samples: 17
                spread: 0.0
                source: loadgametextarea
            }

        //settings button
            Text
            {
                id: settingstextarea
                anchors.centerIn: parent
                text: "Settings"
                font.family: cFontLoader.name
                font.pointSize: 12
                color: "#0048ff"
                anchors.verticalCenterOffset: 50
                ColorAnimation on color { from: "#bdcdf8"; to:"#0048ff";  duration: 700; loops: Animation.Infinite}
                MouseArea
                {
                    anchors.fill: parent
                    onClicked:
                    {
                        homeRoot.visible = false
                        settingsPage.visible = true
                    }
                }
            }

            DropShadow
            {
                id: settingsButtonShadow
                anchors.fill: settingstextarea
                horizontalOffset: 0
                verticalOffset: 4
                radius: 0
                color: "#57c18d"
                samples: 17
                spread: 0.0
                source: settingstextarea
            }


    }


































//    HomeScreen
//    {
//        id: showHome
//        anchors.fill: parent
//        visible: true

////        onStartNewGame:
////        {

////        }

////        onStartLoadGame:
////        {

////        }

//        onStartSettings:
//        {
//            SettingsPage.visible = true
//            HomeScreen.visible = false

//        }
//    }

////    SettingsPage
////    {

////    }
}
