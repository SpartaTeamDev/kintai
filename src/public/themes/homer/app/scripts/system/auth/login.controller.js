(function() { "use strict";
/**
 * @author ntd1712
 */
chaos.controller("LoginController", Anonymous);

function Anonymous($scope, LoginRepository, AbstractController) {
    function LoginController() {
        this.__super__.constructor.apply(this, arguments);
    }
    extend(LoginController, AbstractController);

    LoginController.prototype.login = function(model) {
        this.repository.store(model).then(
            function(response) {
                delete $scope.$parent.error;
                Lockr.set(CFG.session.cookie + "_jwt", response.data.token);
                $scope.$state.go(CFG.app.defaultRoute, {}, { reload: true });
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
                Lockr.rm(CFG.session.cookie + "_jwt");
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

    return LoginController.construct(arguments);
}

})();