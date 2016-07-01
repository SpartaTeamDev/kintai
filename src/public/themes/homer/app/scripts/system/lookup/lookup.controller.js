(function() {
/**
 * @author ntd1712
 */
chaos.controller("LookupController", Anonymous);

function Anonymous($scope, LookupRepository, AbstractController) {
    function LookupController() {
        LookupController.parent.constructor.apply(this, arguments.callee.caller.arguments);
    }
    extend(LookupController, AbstractController);

    return new LookupController();
}

})();