import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.1
import QtMultimedia 5.5
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.0

// settings page
Rectangle
{
    id: settingsrect
    anchors.fill: parent
    border.width: 2
    radius: 10
    visible: true

    property bool is_playing: true

    property variant songs: ["Opening"]
    property int song_index: 0
    property variant sources: [":/../songs/01-advance-wars-1-opening.mp3"]

    property int number_of_songs: 1

    //    HomeScreen
    //    {
    //        id: homeScreen
    //        visible: false
    //    }

    Item
    {
        id: settingsRoot
        width: 640
        height: 480
        FontLoader
        {
            id: cFontLoader
            source: "/fonts/Minecrafter_3.ttf"
        }

        Image
        {
            id: settingsBackground
            anchors.fill: parent
            source: "img/AdvancedLogoSettings.png"
            width: 640
            height: 480
        }

        Text
        {
            id: backFromSettings
            anchors.centerIn: parent
            text: "Back"
            font.family: cFontLoader.name
            font.pointSize: 12
            color: "#3c7631"
            anchors.verticalCenterOffset: 100
            anchors.horizontalCenterOffset: 60
            ColorAnimation on color { from: "#a5d09d"; to:"#3c7631";  duration: 700; loops: Animation.Infinite}
            MouseArea
            {
                anchors.fill: parent
                onClicked:
                {
                    homeRoot.visible = true
                    settingsPage.visible = false
                }
            }

        }
        DropShadow
        {
            id: backFromSettingsShadow
            anchors.fill: backFromSettings
            horizontalOffset: 0
            verticalOffset: 2
            radius: 0
            color: "#57c18d"
            samples: 17
            spread: 0.0
            source: backFromSettings
        }

        Text
        {
            id: saveSettings
            anchors.centerIn: parent
            text: "Save"
            font.family: cFontLoader.name
            font.pointSize: 12
            color: "#3c7631"
            anchors.verticalCenterOffset: 100
            anchors.horizontalCenterOffset: -60
            ColorAnimation on color { from: "#a5d09d"; to:"#3c7631";  duration: 700; loops: Animation.Infinite}
            MouseArea
            {
                anchors.fill: parent
                onClicked:
                {
                    homeRoot.visible = true
                    settingsPage.visible = false
                }
            }

        }
        DropShadow
        {
            id: saveSettingsShadow
            anchors.fill: saveSettings
            horizontalOffset: 0
            verticalOffset: 2
            radius: 0
            color: "#57c18d"
            samples: 17
            spread: 0.0
            source: saveSettings
        }

        //START HERE ///////////////////////////////////////////////////////////

        Text
        {
            id: textToggle
            text: "Music"
            font.family: cFontLoader.name
            font.pointSize: 9
            anchors.verticalCenter: settingsRoot.verticalCenter
            anchors.verticalCenterOffset: 6
            anchors.horizontalCenter: settingsRoot.horizontalCenter
            anchors.horizontalCenterOffset: -75
            //anchors.right: musicToggle.left
            anchors.rightMargin: -5
            color: "#3c7631"
            //ColorAnimation on color { from: "#a5d09d"; to:"#3c7631";  duration: 700; loops: Animation.Infinite}
        }
        DropShadow
        {
            id: musicToggleShadow
            anchors.fill: textToggle
            horizontalOffset: 0
            verticalOffset: 2
            radius: 0
            color: "#57c18d"
            samples: 17
            spread: 0.0
            source: textToggle
        }

        CheckBox
        {
            id: soundcheckbox
            anchors.verticalCenter: settingsRoot.verticalCenter
            anchors.verticalCenterOffset: 11
            anchors.horizontalCenter: settingsRoot.horizontalCenter
            anchors.horizontalCenterOffset: 15
            z:+2
            width: 50
            height: 50
            checked: false
            MouseArea
            {
                id: soungmousearea
                anchors.fill: parent
                onClicked:
                {
                    // play song
                    if (soundcheckbox.checked === true)
                    {
                        soundcheckbox.checked = false
                        is_playing = false
                        songplaying.pause()
                    }
                    // pause song
                    else
                    {
                        soundcheckbox.checked = true
                        is_playing = true
                        songplaying.play()
                    }
                    console.log("Play button clicked!")
                }
            }
        }

        Text
        {
            id: settings2
            text: "STNG 2"
            font.family: cFontLoader.name
            font.pointSize: 9
            anchors.verticalCenter: settingsRoot.verticalCenter
            anchors.verticalCenterOffset: -40
            anchors.horizontalCenter: settingsRoot.horizontalCenter
            anchors.horizontalCenterOffset: -75
            anchors.bottom: textToggle.top
            anchors.topMargin: -5
            color: "#3c7631"
            //ColorAnimation on color { from: "#a5d09d"; to:"#3c7631";  duration: 700; loops: Animation.Infinite}
        }
        DropShadow
        {
            id: settings2shadow
            anchors.fill: settings2
            horizontalOffset: 0
            verticalOffset: 2
            radius: 0
            color: "#57c18d"
            samples: 17
            spread: 0.0
            source: settings2
        }


        Text
        {
            id: settings1
            text: "STNG 1"
            font.family: cFontLoader.name
            font.pointSize: 9
            anchors.verticalCenter: settingsRoot.verticalCenter
            anchors.verticalCenterOffset: -70
            anchors.horizontalCenter: settingsRoot.horizontalCenter
            anchors.horizontalCenterOffset: -75
            anchors.bottom: textToggle.top
            anchors.topMargin: -5
            color: "#3c7631"
            //ColorAnimation on color { from: "#a5d09d"; to:"#3c7631";  duration: 700; loops: Animation.Infinite}
        }
        DropShadow
        {
            id: settings1shadow
            anchors.fill: settings1
            horizontalOffset: 0
            verticalOffset: 2
            radius: 0
            color: "#57c18d"
            samples: 17
            spread: 0.0
            source: settings1
        }
    }
}
