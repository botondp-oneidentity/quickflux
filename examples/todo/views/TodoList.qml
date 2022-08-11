import QtQuick 6.3
import QuickFlux 1.1
import QtQuick.Controls 6.3
import QtQuick.Layouts 6.3
import "../stores"

ScrollView {
    ListView {
        anchors.fill: parent

        model: TodoVisualModel {
            id: visualModel
        }
    }
}

