(function() {
/**
 * @author ntd1712
 */
chaos.controller("RegisterController", Anonymous);

function Anonymous($scope, RegisterRepository, AbstractController) {
    function RegisterController() {
        RegisterController.parent.constructor.apply(this, arguments.callee.caller.arguments);
    }
    extend(RegisterController, AbstractController);

    RegisterController.prototype.register = function(model) {
        this.repository.store(model).then(
            function() {
                delete $scope.$parent.error;
                $scope.$parent.toast = "You have successfully registered";
                $scope.$state.go("login", {}, { reload: true });
            },
            function(response) {
                $scope.$parent.error = response.data.error || "Could not register";
            });

        return this;
    };

    RegisterController.prototype.cancel = function() {
        delete $scope.model;
    };

    return new RegisterController();
}

})();