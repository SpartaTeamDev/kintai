(function() {
/**
 * @author ntd1712
 */
chaos.controller("AuditController", Anonymous);

function Anonymous($scope, AuditRepository, AbstractController) {
    function AuditController() {
        AuditController.parent.constructor.apply(this, arguments.callee.caller.arguments);
    }
    extend(AuditController, AbstractController);

    return new AuditController();
}

})();