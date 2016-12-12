(function() { "use strict";
/**
 * @author ntd1712
 */
chaos.config(configBlocks);

function configBlocks($stateProvider) {
    $stateProvider
        .state("staff", {
            url: "/staff",
            templateUrl: "views/common/content-small.html",
            resolve: {
                deps: function($ocLazyLoad, $translatePartialLoader) {
                    $translatePartialLoader.addPart("staff");
                    return $ocLazyLoad.load("staff");
                }
            },
            data: {
                pageTitle: "STAFF"
            },
            controller: "StaffController as ctrl",
            abstract: true
        })
        .state("staff.index", {
            url: "",
            templateUrl: "views/common/simple-grid.html",
            data: {
                pageTitle: "MANAGE_STAFFS",
                pageDesc: "FROM_HERE_YOU_CAN_BROWSE_ALL_OF_THE_LATEST_RECORDS"
            }
        })
        .state("staff.create", {
            url: "/create",
            views: {
                "": {
                    templateUrl: "views/common/simple-form.html"
                },
                "@staff.create": {
                    templateUrl: "views/kintai/staff/form.html"
                }
            },
            data: {
                pageTitle: "NEW_STAFF",
                pageDesc: "FROM_HERE_YOU_CAN_CREATE_A_NEW_RECORD",
                isNew: true
            }
        })
        .state("staff.edit", {
            url: "/edit/{id:int}",
            views: {
                "": {
                    templateUrl: "views/common/simple-form.html"
                },
                "@staff.edit": {
                    templateUrl: "views/kintai/staff/form.html"
                }
            },
            data: {
                pageTitle: "EDIT_STAFF",
                pageDesc: "FROM_HERE_YOU_CAN_EDIT_AN_EXISTING_RECORD",
                isNew: false
            }
        });
}

})();