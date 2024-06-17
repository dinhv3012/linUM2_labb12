import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

Page {
    id: page1
    property alias button1: button1
    property alias button2: button2
    property alias textField1: textField1
    property alias image1: image1

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 10

        RowLayout {
            spacing: 10
            RoundButton {
                id: button1
                text: "Button 1"
            }
            RoundButton {
                id: button2
                text: "Button 2"
            }
        }
        TextField {
            id: textField1
            placeholderText: "Enter text"
            Layout.fillWidth: true
            width: 300
        }
    }

    Image {
        id: image1
        source: "qrc:/images/linux.png"
        width: 100
        height: 100
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        anchors.margins: 10
        fillMode: Image.PreserveAspectFit
        visible: false
    }
}
