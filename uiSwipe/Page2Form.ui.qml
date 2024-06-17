import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.2

Page {
    id: page2
    visible: true
    Material.theme: Material.Dark
    Material.primary: Material.Indigo

    background: Rectangle {
        color: "#2b2b2b"
    }

    property alias displayText: displayText
    property alias button7: button7
    property alias button8: button8
    property alias button9: button9
    property alias buttonAdd: buttonAdd
    property alias button4: button4
    property alias button5: button5
    property alias button6: button6
    property alias buttonSubtract: buttonSubtract
    property alias button1: button1
    property alias button2: button2
    property alias button3: button3
    property alias buttonMultiply: buttonMultiply
    property alias button0: button0
    property alias buttonDot: buttonDot
    property alias buttonEqual: buttonEqual
    property alias buttonDivide: buttonDivide
    property alias buttonBackspace: buttonBackspace
    property alias buttonClear: buttonClear

    ColumnLayout {
        anchors.fill: parent
        spacing: 10

        Rectangle {
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter
            height: 80
            radius: 8
            border.color: "white"
            border.width: 2
            color: "#333"
            Text {
                id: displayText
                text: "0"
                font.pixelSize: 32
                color: "white"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.centerIn: parent
                padding: 10
            }
        }

        GridLayout {
            Layout.fillWidth: true
            Layout.fillHeight: true
            columns: 4
            rowSpacing: 10
            columnSpacing: 10

            Button {
                id: button7
                text: "7"
                font.pixelSize: 20
                Layout.fillWidth: true
                Layout.fillHeight: true
                background: Rectangle {
                    color: "#444"
                    radius: 8
                }
                contentItem: Text {
                    text: button7.text
                    color: "white"
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.centerIn: parent
                }
            }
            Button {
                id: button8
                text: "8"
                font.pixelSize: 20
                Layout.fillWidth: true
                Layout.fillHeight: true
                background: Rectangle {
                    color: "#444"
                    radius: 8
                }
                contentItem: Text {
                    text: button8.text
                    color: "white"
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.centerIn: parent
                }
            }
            Button {
                id: button9
                text: "9"
                font.pixelSize: 20
                Layout.fillWidth: true
                Layout.fillHeight: true
                background: Rectangle {
                    color: "#444"
                    radius: 8
                }
                contentItem: Text {
                    text: button9.text
                    color: "white"
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.centerIn: parent
                }
            }
            Button {
                id: buttonAdd
                text: "+"
                font.pixelSize: 20
                Layout.fillWidth: true
                Layout.fillHeight: true
                background: Rectangle {
                    color: "#444"
                    radius: 8
                }
                contentItem: Text {
                    text: buttonAdd.text
                    color: "white"
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.centerIn: parent
                }
            }

            Button {
                id: button4
                text: "4"
                font.pixelSize: 20
                Layout.fillWidth: true
                Layout.fillHeight: true
                background: Rectangle {
                    color: "#444"
                    radius: 8
                }
                contentItem: Text {
                    text: button4.text
                    color: "white"
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.centerIn: parent
                }
            }
            Button {
                id: button5
                text: "5"
                font.pixelSize: 20
                Layout.fillWidth: true
                Layout.fillHeight: true
                background: Rectangle {
                    color: "#444"
                    radius: 8
                }
                contentItem: Text {
                    text: button5.text
                    color: "white"
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.centerIn: parent
                }
            }
            Button {
                id: button6
                text: "6"
                font.pixelSize: 20
                Layout.fillWidth: true
                Layout.fillHeight: true
                background: Rectangle {
                    color: "#444"
                    radius: 8
                }
                contentItem: Text {
                    text: button6.text
                    color: "white"
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.centerIn: parent
                }
            }
            Button {
                id: buttonSubtract
                text: "-"
                font.pixelSize: 20
                Layout.fillWidth: true
                Layout.fillHeight: true
                background: Rectangle {
                    color: "#444"
                    radius: 8
                }
                contentItem: Text {
                    text: buttonSubtract.text
                    color: "white"
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.centerIn: parent
                }
            }

            Button {
                id: button1
                text: "1"
                font.pixelSize: 20
                Layout.fillWidth: true
                Layout.fillHeight: true
                background: Rectangle {
                    color: "#444"
                    radius: 8
                }
                contentItem: Text {
                    text: button1.text
                    color: "white"
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.centerIn: parent
                }
            }
            Button {
                id: button2
                text: "2"
                font.pixelSize: 20
                Layout.fillWidth: true
                Layout.fillHeight: true
                background: Rectangle {
                    color: "#444"
                    radius: 8
                }
                contentItem: Text {
                    text: button2.text
                    color: "white"
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.centerIn: parent
                }
            }
            Button {
                id: button3
                text: "3"
                font.pixelSize: 20
                Layout.fillWidth: true
                Layout.fillHeight: true
                background: Rectangle {
                    color: "#444"
                    radius: 8
                }
                contentItem: Text {
                    text: button3.text
                    color: "white"
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.centerIn: parent
                }
            }
            Button {
                id: buttonMultiply
                text: "*"
                font.pixelSize: 20
                Layout.fillWidth: true
                Layout.fillHeight: true
                background: Rectangle {
                    color: "#444"
                    radius: 8
                }
                contentItem: Text {
                    text: buttonMultiply.text
                    color: "white"
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.centerIn: parent
                }
            }

            Button {
                id: button0
                text: "0"
                font.pixelSize: 20
                Layout.fillWidth: true
                Layout.fillHeight: true
                background: Rectangle {
                    color: "#444"
                    radius: 8
                }
                contentItem: Text {
                    text: button0.text
                    color: "white"
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.centerIn: parent
                }
            }
            Button {
                id: buttonDot
                text: "."
                font.pixelSize: 20
                Layout.fillWidth: true
                Layout.fillHeight: true
                background: Rectangle {
                    color: "#444"
                    radius: 8
                }
                contentItem: Text {
                    text: buttonDot.text
                    color: "white"
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.centerIn: parent
                }
            }
            Button {
                id: buttonEqual
                text: "="
                font.pixelSize: 20
                Layout.fillWidth: true
                Layout.fillHeight: true
                background: Rectangle {
                    color: "#444"
                    radius: 8
                }
                contentItem: Text {
                    text: buttonEqual.text
                    color: "white"
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.centerIn: parent
                }
            }
            Button {
                id: buttonDivide
                text: "/"
                font.pixelSize: 20
                Layout.fillWidth: true
                Layout.fillHeight: true
                background: Rectangle {
                    color: "#444"
                    radius: 8
                }
                contentItem: Text {
                    text: buttonDivide.text
                    color: "white"
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.centerIn: parent
                }
            }

            Button {
                id: buttonBackspace
                text: "←"
                font.pixelSize: 20
                Layout.fillWidth: true
                Layout.fillHeight: true
                background: Rectangle {
                    color: "#444"
                    radius: 8
                }
                contentItem: Text {
                    text: buttonBackspace.text
                    color: "white"
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.centerIn: parent
                }
            }
            Button {
                id: buttonClear
                text: "C"
                font.pixelSize: 20
                Layout.fillWidth: true
                Layout.fillHeight: true
                background: Rectangle {
                    color: "#444"
                    radius: 8
                }
                contentItem: Text {
                    text: buttonClear.text
                    color: "white"
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.centerIn: parent
                }
            }
        }
    }
}
