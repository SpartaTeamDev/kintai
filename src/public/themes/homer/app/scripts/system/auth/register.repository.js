(function() {
/**
 * @author ntd1712
 */
chaos.service("RegisterRepository", Anonymous);

function Anonymous($http, RegisterModel, AbstractRepository) {
    function RegisterRepository() {
        RegisterRepository.parent.constructor.apply(this, arguments.callee.caller.arguments);
    }
    extend(RegisterRepository, AbstractRepository);

    return new RegisterRepository();
}

})();