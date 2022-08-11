import QtQuick 6.3
import QtQuick.Window 6.3
import QtQuick.Controls 6.3
import QuickFlux 1.1
import "./views"
import "./scripts"
import "./actions"

Window {
    visible: true
    title: "Photo Album"
    width: 640
    height: 480

    StackView {
        anchors.fill: parent
    }

    ImagePickerScript {
    }

}

