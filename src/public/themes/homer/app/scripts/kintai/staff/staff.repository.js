(function() { "use strict";
/**
 * @author ntd1712
 */
chaos.service("StaffRepository", Anonymous);

function Anonymous(StaffModel, AbstractRepository) {
    function StaffRepository() {
        this.__super__.constructor.apply(this, arguments);
    }
    extend(StaffRepository, AbstractRepository);

    return StaffRepository.newInstance(arguments);
}

})();