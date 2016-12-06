(function() { "use strict";
/**
 * @author ntd1712
 */
chaos.controller("SettingController", Anonymous);

function Anonymous($scope, SettingRepository, AbstractController) {
    function SettingController() {
        this.__super__.constructor.apply(this, arguments);
    }
    extend(SettingController, AbstractController);

    return SettingController.newInstance(arguments);
}

})();