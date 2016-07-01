(function() {
/**
 * @author ntd1712
 */
chaos.config(configBlocks);

function configBlocks($stateProvider) {
    var route = "views/account/permission/";
    $stateProvider
        .state("permission", {
            url: "/permission",
            templateUrl: "views/common/content-small.html",
            data: {
                pageTitle: "Permission"
            },
            controller: "PermissionController as ctrl",
            abstract: true
        })
        .state("permission.index", {
            url: "",
            templateUrl: "views/common/simple-grid.html",
            data: {
                pageTitle: "Manage Permissions",
                pageDesc: "From here you can browse all of the latest permissions"
            }
        })
        .state("permission.create", {
            url: "/create",
            views: {
                "": {
                    templateUrl: "views/common/simple-form.html"
                },
                "@permission.create": {
                    templateUrl: route + "form.html"
                }
            },
            data: {
                pageTitle: "New Permission",
                pageDesc: "From here you can create a new permission",
                isNew: true
            }
        })
        .state("permission.edit", {
            url: "/edit/{id:int}",
            views: {
                "": {
                    templateUrl: "views/common/simple-form.html"
                },
                "@permission.edit": {
                    templateUrl: route + "form.html"
                }
            },
            data: {
                pageTitle: "Edit Permission",
                pageDesc: "From here you can edit an existing permission",
                isNew: false
            }
        });
}

})();