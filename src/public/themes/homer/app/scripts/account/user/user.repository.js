(function() {
/**
 * @author ntd1712
 */
chaos.factory("UserRepository", Anonymous);

function Anonymous($http, UserModel, AbstractRepository) {
    function UserRepository() {
        AbstractRepository.apply(this, arguments.callee.caller.arguments);
    }
    UserRepository.prototype = Object.create(AbstractRepository.prototype);
    UserRepository.prototype.constructor = UserRepository;

    return new UserRepository();
}

})();