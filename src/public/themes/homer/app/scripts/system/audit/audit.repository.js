(function() {
/**
 * @author ntd1712
 */
chaos.service("AuditRepository", Anonymous);

function Anonymous($http, AuditModel, AbstractRepository) {
    function AuditRepository() {
        AuditRepository.parent.constructor.apply(this, arguments.callee.caller.arguments);
    }
    extend(AuditRepository, AbstractRepository);

    return new AuditRepository();
}

})();