(function() { "use strict";
/**
 * @author ntd1712
 */
chaos.config(configBlocks);

function configBlocks($stateProvider, $translatePartialLoaderProvider) {
    $translatePartialLoaderProvider.addPart("audit");
    $stateProvider
        .state("audit", {
            url: "/audit",
            views: {
                "": {
                    templateUrl: "views/common/content-small.html"
                },
                "@audit": {
                    templateUrl: "views/common/simple-grid.html",
                    controller: "AuditController as ctrl"
                }
            },
            data: {
                pageTitle: "AUDIT_TRAIL",
                pageDesc: "FROM_HERE_YOU_CAN_BROWSE_ALL_OF_THE_LATEST_ITEMS"
            },
            onEnter: function($rootScope) {
                $rootScope.dtColumns = { ops: ["show", "destroy"] };
            },
            onExit: function($rootScope) {
                delete $rootScope.dtColumns;
            }
        })
        .state("audit.show", {
            url: "/show/{id:int}",
            views: {
                "": {
                    templateUrl: "views/common/simple-details.html",
                    controller: "AuditController as ctrl"
                },
                "@audit.show": {
                    templateUrl: "views/system/audit/details.html"
                }
            },
            data: {
                pageTitle: "AUDIT_TRAIL",
                pageDesc: "FROM_HERE_YOU_CAN_VIEW_DETAILS_OF_AN_EXISTING_ITEM",
                isNew: false
            }
        });
}

})();