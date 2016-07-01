(function() {
/**
 * @author ntd1712
 */
chaos.service("SettingRepository", Anonymous);

function Anonymous($http, SettingModel, AbstractRepository) {
    function SettingRepository() {
        SettingRepository.parent.constructor.apply(this, arguments.callee.caller.arguments);
    }
    extend(SettingRepository, AbstractRepository);

    return new SettingRepository();
}

})();