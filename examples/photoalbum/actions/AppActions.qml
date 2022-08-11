pragma Singleton
import QtQuick 6.3
import QuickFlux 1.1
import "./"

ActionCreator {

    /* Create action by signal */

    signal askToPickPhoto();

    signal pickPhoto(string url)

    /*
    "signal pickPhoto(url)

    It is equivalent to:

    function pickPhoto(url) {
        AppDispatcher.dispatch("pickPhoto", {url: url});
    }
    */

    /* Create action by traditional method */

    function previewPhoto(url) {
        AppDispatcher.dispatch(ActionTypes.previewPhoto,{url: url});
    }

    function navigateTo(item,properties) {
        AppDispatcher.dispatch(ActionTypes.navigateTo,
                               {item: item,
                                properties: properties});
    }

    function navigateBack() {
        AppDispatcher.dispatch(ActionTypes.navigateBack);
    }
}

