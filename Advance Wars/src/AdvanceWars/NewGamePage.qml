import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.1
import QtMultimedia 5.5
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.0

Item
{
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
        id: backFromNewGame
        anchors.centerIn: parent
        text: "Back"
        font.family: cFontLoader.name
        font.pointSize: 12
        color: "#d4352a"
        anchors.verticalCenterOffset: 100
        ColorAnimation on color { from: "#de948f"; to:"#d4352a";  duration: 700; loops: Animation.Infinite}
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
