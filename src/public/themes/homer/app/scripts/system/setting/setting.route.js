(function() { "use strict";
/**
 * @author ntd1712
 */
chaos.config(configBlocks);

function configBlocks($stateProvider, $translatePartialLoaderProvider) {
    $translatePartialLoaderProvider.addPart("setting");
    $stateProvider
        .state("setting", {
            url: "/setting",
            templateUrl: "views/common/content-small.html",
            data: {
                pageTitle: "Setting"
            },
            controller: "SettingController as ctrl",
            abstract: true
        })
        .state("setting.index", {
            url: "",
            templateUrl: "views/common/simple-grid.html",
            data: {
                pageTitle: "Manage Settings",
                pageDesc: "From here you can browse all of the latest settings"
            }
        })
        .state("setting.create", {
            url: "/create",
            views: {
                "": {
                    templateUrl: "views/common/simple-form.html"
                },
                "@setting.create": {
                    templateUrl: "views/system/setting/form.html"
                }
            },
            data: {
                pageTitle: "New Setting",
                pageDesc: "From here you can create a new setting",
                isNew: true
            }
        })
        .state("setting.edit", {
            url: "/edit/{id:int}",
            views: {
                "": {
                    templateUrl: "views/common/simple-form.html"
                },
                "@setting.edit": {
                    templateUrl: "views/system/setting/form.html"
                }
            },
            data: {
                pageTitle: "Edit Setting",
                pageDesc: "From here you can edit an existing setting",
                isNew: false
            }
        });
}

})();