(function() {
/**
 * @author ntd1712
 */
chaos.service("StaffRepository", Anonymous);

function Anonymous($http, StaffModel, AbstractRepository) {
    function StaffRepository() {
        StaffRepository.parent.constructor.apply(this, arguments.callee.caller.arguments);
    }
    extend(StaffRepository, AbstractRepository);

    return new StaffRepository();
}

})();