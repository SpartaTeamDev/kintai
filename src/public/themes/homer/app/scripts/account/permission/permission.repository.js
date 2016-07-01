(function() {
/**
 * @author ntd1712
 */
chaos.factory("PermissionRepository", Anonymous);

function Anonymous($http, PermissionModel, AbstractRepository) {
    function PermissionRepository() {
        AbstractRepository.apply(this, arguments.callee.caller.arguments);
    }
    PermissionRepository.prototype = Object.create(AbstractRepository.prototype);
    PermissionRepository.prototype.constructor = PermissionRepository;

    return new PermissionRepository();
}

})();