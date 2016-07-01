(function() {
/**
 * @author ntd1712
 */
chaos.controller("PermissionController", Anonymous);

function Anonymous($scope, PermissionRepository, AbstractController) {
    function PermissionController() {
        AbstractController.apply(this, arguments.callee.caller.arguments);
    }
    PermissionController.prototype = Object.create(AbstractController.prototype);
    PermissionController.prototype.constructor = PermissionController;

    return new PermissionController();
}

})();