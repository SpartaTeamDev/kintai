(function() {
/**
 * @author ntd1712
 */
chaos.factory("RoleRepository", Anonymous);

function Anonymous($http, RoleModel, AbstractRepository) {
    function RoleRepository() {
        AbstractRepository.apply(this, arguments.callee.caller.arguments);
    }
    RoleRepository.prototype = Object.create(AbstractRepository.prototype);
    RoleRepository.prototype.constructor = RoleRepository;

    return new RoleRepository();
}

})();