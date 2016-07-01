(function() {
/**
 * @author ntd1712
 */
chaos.controller("RoleController", Anonymous);

function Anonymous($scope, RoleRepository, PermissionRepository, AbstractController) {
    function RoleController() {
        AbstractController.apply(this, arguments.callee.caller.arguments);
    }
    RoleController.prototype = Object.create(AbstractController.prototype);
    RoleController.prototype.constructor = RoleController;

    RoleController.prototype.afterForm = function() {
        PermissionRepository.index().then(function(response) {
            $scope.permissions = response.data;
        });
    };

    RoleController.prototype.toggle = function(mode) {
        switch (mode) {
            case "check":
                $scope.model.Permissions = $scope.permissions.map(function(item) {
                    return item;
                });
                break;
            case "uncheck":
                $scope.model.Permissions = [];
                break;
            default:
        }
    };

    return new RoleController();
}

})();