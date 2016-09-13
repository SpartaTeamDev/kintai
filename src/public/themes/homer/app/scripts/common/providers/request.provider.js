(function() { "use strict";
/**
 * @author ntd1712
 */
chaos.provider("RequestProvider", RequestProvider);

function RequestProvider() {
    this.$get = ["$q", "$rootScope", function($q, $rootScope) {
        return {
            responseError: function(response) {
                if (401 === response.status) {
                    // handled by angular-jwt, $rootScope.$broadcast("unauthenticated", response);
                }
                else if (response.data) {
                    switch (response.data.error) {
                        case "token_expired":
                        case "token_not_provided":
                        case "token_invalid":
                        case "user_not_found":
                            $rootScope.$broadcast("unauthenticated", response);
                            break;
                        case "csrf_invalid":
                            location.reload(true);
                            break;
                        default:
                            if (418 !== response.status) {
                                alert("Oops...", response.data.error, "error");
                            }
                    }
                }

                return $q.reject(response);
            }
        };
    }];
}

})();