pragma Singleton
import QtQuick 6.3
import QuickFlux 1.1

RootStore {
    /// Set the source of actions from AppDispatcher
    bindSource: AppDispatcher
}
