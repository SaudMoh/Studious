import QtQuick 2.0

Rectangle{
    property alias mouseArea:mouseArea
       width:100
       height:100
       border.width: 2
       color: "red"
       MouseArea{
           id:mouseArea
           anchors.fill: parent
           hoverEnabled: true
           onClicked:{parent.visible = false}
           onEntered: {parent.color = "blue"}
           onExited: {parent.color = "red"}
       }
}
