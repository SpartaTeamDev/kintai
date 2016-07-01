(function() {
/**
 * @author ntd1712
 */
chaos.controller("SettingController", Anonymous);

function Anonymous($scope, SettingRepository, AbstractController) {
    function SettingController() {
        SettingController.parent.constructor.apply(this, arguments.callee.caller.arguments);
    }
    extend(SettingController, AbstractController);

    return new SettingController();
}

})();