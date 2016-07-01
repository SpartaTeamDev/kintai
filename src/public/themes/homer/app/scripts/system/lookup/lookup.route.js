(function() {
/**
 * @author ntd1712
 */
chaos.config(configBlocks);

function configBlocks($stateProvider) {
    $stateProvider
        .state("lookup", {
            url: "/lookup",
            templateUrl: "views/common/content-small.html",
            data: {
                pageTitle: "Lookup"
            },
            controller: "LookupController as ctrl",
            abstract: true
        })
        .state("lookup.index", {
            url: "",
            templateUrl: "views/common/simple-grid.html",
            data: {
                pageTitle: "Manage Lookups",
                pageDesc: "From here you can browse all of the latest lookup values"
            }
        })
        .state("lookup.create", {
            url: "/create",
            views: {
                "": {
                    templateUrl: "views/common/simple-form.html"
                },
                "@lookup.create": {
                    templateUrl: "views/system/lookup/form.html"
                }
            },
            data: {
                pageTitle: "New Lookup",
                pageDesc: "From here you can create a new lookup value",
                isNew: true
            }
        })
        .state("lookup.edit", {
            url: "/edit/{id:int}",
            views: {
                "": {
                    templateUrl: "views/common/simple-form.html"
                },
                "@lookup.edit": {
                    templateUrl: "views/system/lookup/form.html"
                }
            },
            data: {
                pageTitle: "Edit Lookup",
                pageDesc: "From here you can edit an existing lookup value",
                isNew: false
            }
        });
}

})();