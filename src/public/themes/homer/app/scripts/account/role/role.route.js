(function() {
/**
 * @author ntd1712
 */
chaos.config(configBlocks);

function configBlocks($stateProvider) {
    var route = "views/account/role/";
    $stateProvider
        .state("role", {
            url: "/role",
            templateUrl: "views/common/content-small.html",
            data: {
                pageTitle: "Role"
            },
            abstract: true,
            controller: "RoleController as ctrl"
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
                    templateUrl: route + "form.html"
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
                    templateUrl: route + "form.html"
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