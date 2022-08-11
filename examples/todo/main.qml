import QtQuick 6.3
import QtQuick.Window 6.3
import QtQuick.Layouts 6.3
import QuickFlux 1.1
import "./views"
import "./middlewares"
import "./actions"

Item {

    MiddlewareList {
        applyTarget: AppActions

        SystemMiddleware {
            mainWindow: mainWindow
        }

        DialogMiddleware {
        }
    }

    MainWindow {
        id: mainWindow
    }
}

