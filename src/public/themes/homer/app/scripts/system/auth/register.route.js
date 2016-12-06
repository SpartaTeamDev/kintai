(function() { "use strict";
/**
 * @author ntd1712
 */
chaos.config(configBlocks);

function configBlocks($stateProvider, $translatePartialLoaderProvider) {
    $translatePartialLoaderProvider.addPart("user");
    $stateProvider
        .state("register", {
            url: "/register",
            templateUrl: "views/system/auth/register.html",
            data: {
                allowGuest: true,
                pageTitle: "REGISTER",
                specialClass: "blank"
            },
            controller: "RegisterController as ctrl"
        });
}

})();