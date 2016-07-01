(function() {
/**
 * @author ntd1712
 */
chaos.config(configBlocks);

function configBlocks($stateProvider) {
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
                pageTitle: "Audit Trails",
                pageDesc: "From here you can browse all of the latest audit trails"
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
                pageTitle: "Audit Trails",
                pageDesc: "From here you can view details of an existing audit trail",
                isNew: false
            }
        });
}

})();