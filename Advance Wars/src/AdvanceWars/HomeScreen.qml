import QtQuick 2.0
import QtGraphicalEffects 1.0

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

    signal startNewGame
    signal startLoadGame
    signal startSettings


    // load game button
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
                    root.startNewGame()
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

    // new game button
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
                    root.startLoadGame()
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
                    root.startSettings()
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
