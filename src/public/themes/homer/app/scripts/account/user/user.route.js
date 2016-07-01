(function() {
/**
 * @author ntd1712
 */
chaos.config(configBlocks);

function configBlocks($stateProvider) {
    var route = "views/account/user/";
    $stateProvider
        .state("user", {
            url: "/user",
            templateUrl: "views/common/content-small.html",
            data: {
                pageTitle: "User"
            },
            abstract: true,
            controller: "UserController as ctrl"
        })
        .state("user.index", {
            url: "",
            templateUrl: route + "grid.html",
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
                    templateUrl: route + "form.html"
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
                    templateUrl: route + "form.html"
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