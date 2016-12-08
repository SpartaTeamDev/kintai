(function() { "use strict";
/**
 * @author ntd1712
 */
angular.module("homer").controller("StaffController", Anonymous);

function Anonymous($scope, StaffRepository, AbstractController) {
    function StaffController() {
        this.__super__.constructor.apply(this, arguments);
    }
    extend(StaffController, AbstractController);

    return StaffController.newInstance(arguments);
}

})();