import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.1
import QtMultimedia 5.5
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.0

Item
{
    id: loadGameRoot
    width: 640
    height: 480
    FontLoader
    {
        id: cFontLoader
        source: "/fonts/Minecrafter_3.ttf"
    }

    Image
    {
        id: loadBackground
        anchors.fill: parent
        source: "img/AdvancedLogoLoadGame.png"
        width: 640
        height: 480
    }

    Text
    {
        id: backFromLoadGame
        anchors.centerIn: parent
        text: "Back"
        font.family: cFontLoader.name
        font.pointSize: 12
        color: "#0867a8"
        anchors.verticalCenterOffset: 100
        ColorAnimation on color { from: "#5ba0d0"; to:"#0867a8";  duration: 700; loops: Animation.Infinite}
        MouseArea
        {
            anchors.fill: parent
            onClicked:
            {
                homeRoot.visible = true
                loadGamePage.visible = false
            }
        }

    }
    DropShadow
    {
        id: backFromLoadGameShadow
        anchors.fill: backFromLoadGame
        horizontalOffset: 0
        verticalOffset: 2
        radius: 0
        color: "#5ba0d0"
        samples: 17
        spread: 0.0
        source: backFromLoadGame
    }
}
