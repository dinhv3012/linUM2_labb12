import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.2
import com.example.client 1.0

Page {
    id: page3
    visible: true
    Material.theme: Material.Dark
    Material.primary: Material.Indigo

    background: Rectangle {
        color: "#2b2b2b"
    }

    property alias personalNumber: personalNumber
    property alias fetchDataButton: fetchDataButton
    property alias resultText: resultText

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 20

        TextField {
            id: personalNumber
            Layout.fillWidth: true
            placeholderText: "Enter personal number"
            padding: 10
            font.pixelSize: 18
            background: Rectangle {
                color: "#444"
                radius: 8
            }
            color: "white"
            placeholderTextColor: "#aaa"
        }

        Button {
            id: fetchDataButton
            text: "Fetch Data"
            Layout.alignment: Qt.AlignHCenter
            font.pixelSize: 18
            background: Rectangle {
                color: Material.primary
                radius: 8
                border.color: "white"
                border.width: 1
            }
            contentItem: Text {
                text: fetchDataButton.text
                color: "white"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.centerIn: parent
            }
            padding: 10
        }

        Rectangle {
            Layout.fillWidth: true
            height: 120
            radius: 8
            border.color: "transparent"
            color: "transparent"
            Text {
                id: resultText
                text: "Fetched data will show here"
                font.pixelSize: 24
                color: "white"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.centerIn: parent
                padding: 10
                wrapMode: Text.WordWrap
            }
        }
    }
}
