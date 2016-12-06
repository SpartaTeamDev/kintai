(function() { "use strict";
/**
 * @author ntd1712
 */
chaos.config(configBlocks);

function configBlocks($stateProvider, $translatePartialLoaderProvider) {
    $translatePartialLoaderProvider.addPart("lookup");
    $stateProvider
        .state("lookup", {
            url: "/lookup",
            templateUrl: "views/common/content-small.html",
            data: {
                pageTitle: "LOOKUP"
            },
            controller: "LookupController as ctrl",
            abstract: true
        })
        .state("lookup.index", {
            url: "",
            templateUrl: "views/common/simple-grid.html",
            data: {
                pageTitle: "MANAGE_LOOKUPS",
                pageDesc: "FROM_HERE_YOU_CAN_BROWSE_ALL_OF_THE_LATEST_ITEMS"
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
                pageTitle: "NEW_LOOKUP",
                pageDesc: "FROM_HERE_YOU_CAN_CREATE_A_NEW_ITEM",
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
                pageTitle: "EDIT_LOOKUP",
                pageDesc: "FROM_HERE_YOU_CAN_EDIT_AN_EXISTING_ITEM",
                isNew: false
            }
        });
}

})();