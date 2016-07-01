(function() {
/**
 * @author ntd1712
 */
chaos.controller("StaffController", Anonymous);

function Anonymous($scope, StaffRepository, AbstractController) {
    function StaffController() {
        StaffController.parent.constructor.apply(this, arguments.callee.caller.arguments);
    }
    extend(StaffController, AbstractController);

    return new StaffController();
}

})();