(function() { "use strict";
/**
 * @author ntd1712
 */
chaos.config(configBlocks)
     .run(runBlocks);

function configBlocks($compileProvider, $httpProvider, $urlRouterProvider, jwtOptionsProvider) {
    jwtOptionsProvider.config({
        tokenGetter: function($http, options, jwtHelper) {
            if (".html" === options.url.substr(options.url.length - 5)) {
                return null;
            }

            var token = Lockr.get(CONFIG.cookie.name + "_jwt");

            if (!token) {
                return null;
            }
            else if (jwtHelper.isTokenExpired(token)) {
                return $http({
                    url: $http.defaults.route + "auth/renewtoken?token=" + token,
                    skipAuthorization: true,
                    method: "POST"
                }).then(function(response) {
                    if (response.headers("authorization")) {
                        token = (response.headers("authorization") + "").replace(/bearer\s*/i, "");
                        Lockr.set(CONFIG.cookie.name + "_jwt", token);

                        return token;
                    }
                });
            }

            return token;
        },
        unauthenticatedRedirector: function($state) {
            $state.go("login", {}, { reload: true });
        },
        whiteListedDomains: ["localhost", "127.0.0.1"]
    });

    $httpProvider.interceptors.push("jwtInterceptor");
    $httpProvider.interceptors.push("RequestProvider");
    $httpProvider.defaults.useXDomain = true;
    $httpProvider.defaults.withCredentials = true;
    delete $httpProvider.defaults.headers.common["X-Requested-With"];

    $compileProvider.debugInfoEnabled(false);
    $urlRouterProvider.otherwise(function($injector) {
        $injector.get("$state").go(CONFIG.app.defaultRoute || "setting.index", {}, { reload: true });
    });
}

function runBlocks($cacheFactory, $http, $rootScope, $state, jwtHelper) {
    // what if a user is not authenticated
    $rootScope.$on("$stateChangeStart", function(event, toState) {
        if (!("logout" === toState.name || true === toState.guest)) {
            var token = Lockr.get(CONFIG.cookie.name + "_jwt");

            if (!token) {
                event.preventDefault();
                $rootScope.error = "Invalid or expired session";

                return $state.go("login", {}, { reload: true });
            }

            if (!$rootScope.$user) {
                var decoded = jwtHelper.decodeToken(token);
                $rootScope.$user = decoded.res;
            }
        }
    });

    $rootScope.$on("unauthenticated", function() {
        $state.go("login", {}, { reload: true });
    });

    // setup defaults: $rootScope
    $rootScope.$state = $state;
    $rootScope.moment = window.moment;
    $rootScope.CONFIG = window.CONFIG || {};
    $rootScope.LANG = window.LANG || {};

    $rootScope.$watch("toast", function(newValue) {
        if (undefined !== newValue) {
            notify(newValue);
            delete $rootScope.toast;
        }
    });
    
    // $http
    $http.defaults.$cacheFactory = $cacheFactory;
    $http.defaults.route = CONFIG.app.url + "/api/";
}

})();