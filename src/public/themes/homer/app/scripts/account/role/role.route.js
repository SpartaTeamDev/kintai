(function() { "use strict";
/**
 * @author ntd1712
 */
chaos.config(configBlocks);

function configBlocks($stateProvider, $translatePartialLoaderProvider) {
    $translatePartialLoaderProvider.addPart("role");
    $stateProvider
        .state("role", {
            url: "/role",
            templateUrl: "views/common/content-small.html",
            data: {
                pageTitle: "Role"
            },
            controller: "RoleController as ctrl",
            abstract: true
        })
        .state("role.index", {
            url: "",
            templateUrl: "views/common/simple-grid.html",
            data: {
                pageTitle: "Manage Roles",
                pageDesc: "From here you can browse all of the latest roles"
            }
        })
        .state("role.create", {
            url: "/create",
            views: {
                "": {
                    templateUrl: "views/common/simple-form.html"
                },
                "@role.create": {
                    templateUrl: "views/account/role/form.html"
                }
            },
            data: {
                pageTitle: "New Role",
                pageDesc: "From here you can create a new role",
                isNew: true
            }
        })
        .state("role.edit", {
            url: "/edit/{id:int}",
            views: {
                "": {
                    templateUrl: "views/common/simple-form.html"
                },
                "@role.edit": {
                    templateUrl: "views/account/role/form.html"
                }
            },
            data: {
                pageTitle: "Edit Role",
                pageDesc: "From here you can edit an existing role",
                isNew: false
            }
        });
}

})();