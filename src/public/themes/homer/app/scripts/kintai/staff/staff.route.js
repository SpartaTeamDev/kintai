(function() {
/**
 * @author ntd1712
 */
chaos.config(configBlocks);

function configBlocks($stateProvider) {
    $stateProvider
        .state("staff", {
            url: "/staff",
            templateUrl: "views/common/content-small.html",
            data: {
                pageTitle: "Staff"
            },
            controller: "StaffController as ctrl",
            abstract: true
        })
        .state("staff.index", {
            url: "",
            templateUrl: "views/common/simple-grid.html",
            data: {
                pageTitle: "Manage Staffs",
                pageDesc: "From here you can browse all of the latest staffs"
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
                pageTitle: "New Staff",
                pageDesc: "From here you can create a new staff",
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
                pageTitle: "Edit Staff",
                pageDesc: "From here you can edit an existing staff",
                isNew: false
            }
        });
}

})();