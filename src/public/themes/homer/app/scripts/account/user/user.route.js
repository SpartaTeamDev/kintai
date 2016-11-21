(function() { "use strict";
/**
 * @author ntd1712
 */
chaos.config(configBlocks);

function configBlocks($stateProvider, $translatePartialLoaderProvider) {
    $translatePartialLoaderProvider.addPart("user");
    $stateProvider
        .state("user", {
            url: "/user",
            templateUrl: "views/common/content-small.html",
            data: {
                pageTitle: "User"
            },
            controller: "UserController as ctrl",
            abstract: true
        })
        .state("user.index", {
            url: "",
            templateUrl: "views/account/user/grid.html",
            data: {
                pageTitle: "Manage Users",
                pageDesc: "From here you can browse all of the latest user accounts"
            }
        })
        .state("user.create", {
            url: "/create",
            views: {
                "": {
                    templateUrl: "views/common/simple-form.html"
                },
                "@user.create": {
                    templateUrl: "views/account/user/form.html"
                }
            },
            data: {
                pageTitle: "New User",
                pageDesc: "From here you can create a new user account",
                isNew: true
            }
        })
        .state("user.edit", {
            url: "/edit/{id:int}",
            views: {
                "": {
                    templateUrl: "views/common/simple-form.html"
                },
                "@user.edit": {
                    templateUrl: "views/account/user/form.html"
                }
            },
            data: {
                pageTitle: "Edit User",
                pageDesc: "From here you can edit an existing user account",
                isNew: false
            }
        });
}

})();