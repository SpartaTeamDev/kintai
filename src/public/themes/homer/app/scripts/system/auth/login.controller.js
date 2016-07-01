(function() {
/**
 * @author ntd1712
 */
chaos.controller("LoginController", Anonymous);

function Anonymous($scope, LoginRepository, AbstractController) {
    function LoginController() {
        LoginController.parent.constructor.apply(this, arguments.callee.caller.arguments);
    }
    extend(LoginController, AbstractController);

    LoginController.prototype.login = function(model) {
        this.repository.store(model).then(
            function(response) {
                delete $scope.$parent.error;
                Lockr.set(CONFIG.cookie.name + "_jwt", response.data.token);
                $scope.$state.go(CONFIG.app.defaultRoute, {}, { reload: true });
            },
            function(response) {
                $scope.$parent.error = response.data.error || "Could not log in";
            });

        return this;
    };

    LoginController.prototype.logout = function(model) {
        this.repository.store(model)
            .then(function() {
                $scope.$state.go("login", {}, { reload: true });
            })
            .finally(function() {
                Lockr.rm(CONFIG.cookie.name + "_jwt");
            });

        return this;
    };

    LoginController.prototype.recovery = function(model) {
        this.repository.store(model).then(
            function() {
                delete $scope.$parent.error;
                $scope.$parent.toast = "Please check your email for the reset password instructions";
                $scope.$state.go("login", {}, { reload: true });
            },
            function(response) {
                $scope.$parent.error = response.data.error || "Your email is invalid";
            });

        return this;
    };

    LoginController.prototype.reset = function(model) {
        if (model.password !== model.confirmPassword) {
            return $scope.$parent.error = "Password does not match the confirm password";
        }

        this.repository.store(model).then(
            function() {
                delete $scope.$parent.error;
                $scope.$state.go("login", {}, { reload: true });
            },
            function(response) {
                $scope.$parent.error = response.data.error || "Could not reset password";
            });

        return this;
    };

    return new LoginController();
}

})();