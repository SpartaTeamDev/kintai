(function() {
/**
 * @author ntd1712
 */
chaos.config(configBlocks);

function configBlocks($stateProvider) {
    $stateProvider
        .state("login", {
            url: "/login",
            templateUrl: "views/system/auth/login.html",
            data: {
                pageTitle: "Login",
                specialClass: "blank"
            },
            controller: "LoginController as ctrl",
            onEnter: function() {
                switch ((CONFIG.auth || {}).default) {
                    case "oauth2":
                        var url = CONFIG.auth.redirectUri,
                            token = Lockr.get(CONFIG.cookie.name + "_ret");

                        if (token) {
                            url += "?grant=refresh_token&refresh_token=" + token;
                        }

                        return location.replace(url);
                    default:
                        Lockr.rm(CONFIG.cookie.name + "_jwt");
                }
            },
            guest: true
        })
        .state("logout", {
            templateUrl: "views/system/auth/logout.html",
            controller: "LoginController as ctrl"
        })
        .state("recovery", {
            url: "/recovery",
            templateUrl: "views/system/auth/recovery.html",
            data: {
                pageTitle: "Recovery Password",
                specialClass: "blank"
            },
            controller: "LoginController as ctrl",
            guest: true
        })
        .state("reset", {
            url: "/reset",
            templateUrl: "views/system/auth/reset.html",
            data: {
                pageTitle: "Reset Password",
                specialClass: "blank"
            },
            controller: "LoginController as ctrl",
            guest: true
        })
        .state("oauth2", {
            url: "/oauth2",
            controller: "LoginController as ctrl",
            onEnter: function($state) {
                var parts = location.hash.split("?s=")[1].split("&r=");

                if (parts[0]) {
                    Lockr.set(CONFIG.cookie.name + "_jwt", parts[0]);
                    Lockr.set(CONFIG.cookie.name + "_ret", parts[1]);

                    return $state.go(CONFIG.app.defaultRoute, {}, { reload: true });
                }

                throw new Error("invalid_token");
            },
            guest: true
        });
}

})();