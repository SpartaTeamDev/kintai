(function() { "use strict";
/**
 * @author ntd1712
 */
chaos.config(configBlocks)
     .run(runBlocks);

function configBlocks($compileProvider, $httpProvider, $urlRouterProvider,
                      $translateProvider, $translatePartialLoaderProvider, jwtOptionsProvider) {
    // setup pascalprecht.translate
    $translatePartialLoaderProvider.addPart(".messages");
    $translateProvider
        .fallbackLanguage(CFG.app.fallback_locale)
        .preferredLanguage(CFG.app.locale)
        .useLoader("$translatePartialLoader", {
            urlTemplate: "/themes/" + CFG.app.theme + "/app/l10n/{lang}/{part}.json"
        })
        // .useSanitizeValueStrategy("sanitize")
        .useStorage("Lockr");

    // setup angular-jwt & misc.
    jwtOptionsProvider.config({
        tokenGetter: ["options", "$http", "jwtHelper", function(options, $http, jwtHelper) {
            if (options) {
                var ext = options.url.substr(options.url.length - 5);

                if (".html" === ext || ".json" === ext) {
                    return null;
                }
            }

            var token = Lockr.get(CFG.session.cookie + "_jwt");

            if (!token) {
                return null;
            }

            if (jwtHelper && jwtHelper.isTokenExpired(token)) {
                return $http({
                    url: $http.defaults.route + "auth/renewtoken?token=" + token,
                    skipAuthorization: true,
                    method: "POST"
                }).then(function(response) {
                    if (response.headers("authorization")) {
                        token = (response.headers("authorization") + "").replace(/bearer\s*/i, "");
                        Lockr.set(CFG.session.cookie + "_jwt", token);

                        return token;
                    }
                });
            }

            return token;
        }],
        unauthenticatedRedirector: ["$state", function($state) {
            $state.go("login", {}, { reload: true });
        }],
        whiteListedDomains: ["localhost", "127.0.0.1", String(CFG.session.domain)]
    });

    $httpProvider.interceptors.push("jwtInterceptor");
    $httpProvider.interceptors.push("RequestProvider");
    $httpProvider.defaults.withCredentials = true;
    delete $httpProvider.defaults.headers.common["X-Requested-With"];

    $compileProvider.debugInfoEnabled(false);
    $urlRouterProvider.otherwise(function($injector) {
        $injector.get("$state").go(
            Lockr.get(CFG.session.cookie + "_jwt") ? (CFG.app.defaultRoute || "setting.index") : "login",
            {}, { reload: true });
    });
}

function runBlocks($http, $rootScope, $state, $transitions, $translate, jwtHelper) {
    // what if the user is not authenticated
    $transitions.onBefore({}, function(/** Transition */$transition$) {
        var to = $transition$.to();

        if (!("logout" === to.name || to.data.allowGuest) || to.requiresLogin) {
            var token = Lockr.get(CFG.session.cookie + "_jwt");

            if (!token) {
                // event.preventDefault();
                return $rootScope.$broadcast("unauthenticated", token);
            }

            if (!$rootScope.$user) {
                var decoded = jwtHelper.decodeToken(token);
                $rootScope.$user = decoded.res;
            }
        }
    });
    $rootScope.$on("tokenHasExpired", function() {
        $rootScope.$broadcast("unauthenticated");
    });
    $rootScope.$on("unauthenticated", function() {
        $rootScope.error = "Invalid or expired session";
        $rootScope.isAuthenticated = false;

        $state.go("login", {}, { reload: true });
    });

    // setup defaults: $rootScope
    $rootScope.$state = $state;
    $rootScope._ = window._;
    $rootScope.moment = window.moment;
    $rootScope.CFG = window.CFG;

    $rootScope.$watch("toast", function(newValue) {
        if (undefined !== newValue) {
            notify(newValue);
            delete $rootScope.toast;
        }
    });
    $rootScope.$on("$translatePartialLoaderStructureChanged", function() {
        $translate.refresh();
    });
    $rootScope.switchLanguage = function(langKey) {
        $translate.use(langKey);
    };

    // $http
    $http.defaults.route = CFG.app.url + "/api/";
}

})();