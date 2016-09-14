(function() {
/**
 * @author ntd1712
 */
chaos.controller("UserController", Anonymous);

function Anonymous($scope, UserRepository, RoleRepository, AbstractController) {
    function UserController() {
        AbstractController.apply(this, arguments.callee.caller.arguments);
    }
    UserController.prototype = Object.create(AbstractController.prototype);
    UserController.prototype.constructor = UserController;

    UserController.prototype.beforeForm = function(id, isNew) {
        $scope.roles = { data: [], primary: { Id: 0 }, secondary: [], filter: function(value) {
            return undefined === _.find([$scope.roles.primary].concat($scope.roles.secondary), { Id: value.Id });
        }};
    };

    UserController.prototype.afterForm = function(id, response, isNew) {
        if (!isNew) {
            if (Array.isArray($scope.model.Profile)) {
                $scope.model.Profile = {};
            }

            $scope.model.Password = $scope.mistr.Password = "******";
        }

        RoleRepository.index().then(function(response) {
            $scope.roles.data = response.data;
            var defaultRole = _.find($scope.roles.data, { Name: 'User' }),
                primaryRole = _.find($scope.model.Roles, { IsPrimary: true });

            if (undefined !== primaryRole) {
                $scope.roles.primary = primaryRole.Role;
            }
            else if (undefined !== defaultRole) {
                $scope.roles.primary = defaultRole;
            }

            _.forEach(_.without($scope.model.Roles, primaryRole), function(value) {
                $scope.roles.secondary.push(value.Role);
            });
        });
    };

    UserController.prototype.beforeSave = function(model, id, isNew) {
        model.Roles = [$scope.roles.primary].concat($scope.roles.secondary);
    };

    return new UserController();
}

})();