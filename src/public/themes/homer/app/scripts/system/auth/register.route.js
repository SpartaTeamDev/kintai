(function() {
/**
 * @author ntd1712
 */
chaos.config(configBlocks);

function configBlocks($stateProvider) {
    $stateProvider
        .state("register", {
            url: "/register",
            templateUrl: "views/system/auth/register.html",
            data: {
                pageTitle: "Register",
                specialClass: "blank"
            },
            controller: "RegisterController as ctrl",
            guest: true
        });
}

})();