(function() {
/**
 * @author ntd1712
 */
chaos.service("LookupRepository", Anonymous);

function Anonymous($http, LookupModel, AbstractRepository) {
    function LookupRepository() {
        LookupRepository.parent.constructor.apply(this, arguments.callee.caller.arguments);
    }
    extend(LookupRepository, AbstractRepository);

    return new LookupRepository();
}

})();