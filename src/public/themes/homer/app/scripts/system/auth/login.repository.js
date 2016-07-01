(function() {
/**
 * @author ntd1712
 */
chaos.service("LoginRepository", Anonymous);

function Anonymous($http, LoginModel, AbstractRepository) {
    function LoginRepository() {
        LoginRepository.parent.constructor.apply(this, arguments.callee.caller.arguments);
    }
    extend(LoginRepository, AbstractRepository);

    return new LoginRepository();
}

})();