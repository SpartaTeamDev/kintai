(function() { "use strict";
/**
 * @author ntd1712
 */
chaos.factory("AbstractRepository", Anonymous);

function Anonymous() {
    // Private static attributes
    var $http;

    /**
     * @constructor
     * @param {Function} $httpProvider
     * @param {Function} model
     */
    function AbstractRepository($httpProvider, model) {
        $http = $httpProvider;
        this.model = model;
        this.route = ($http.defaults.route || "/api/") + model.getRoute();
    }

    // Public, non-privileged methods
    AbstractRepository.prototype = {
        /**
         * @param {Object.<String|Object>} [params=undefined]
         * @returns {Object} HttpPromise
         */
        index: function(params) {
            var me = this;
            return $http
                .get(this.route, { params: params, cache: true })
                .then(function(response) {
                    if (response.data.success) {
                        response.data.data = me.exchangeArray(response.data.data, me.model);
                    }

                    return response.data;
                });
        },
        /**
         * @param {Object} model
         * @returns {Object} HttpPromise
         */
        store: function(model) {
            this.refine();
            return $http.post(this.route, model);
        },
        /**
         * @param {Number|*} id
         * @returns {Object} HttpPromise
         */
        show: function(id) {
            var me = this;
            return $http
                .get(this.route + "/" + id, { cache: true })
                .then(function(response) {
                    if (response.data.success) {
                        response.data.data = me.exchangeObject(response.data.data, me.model);
                    }

                    return response.data;
                });
        },
        /**
         * @param {Object} model
         * @param {Number|*} id
         * @returns {Object} HttpPromise
         */
        update: function(model, id) {
            this.refine();
            return $http.put(this.route + "/" + id, model);
        },
        /**
         * @param {Number|*} id
         * @returns {Object} HttpPromise
         */
        destroy: function(id) {
            this.refine();
            return $http.delete(this.route + "/" + id);
        },
        /**
         * @returns {Object} AbstractRepository
         */
        refine: function() {
            if ("function" === typeof $http.defaults.$cacheFactory) {
                $http.defaults.$cacheFactory.get("$http").removeAll();
            }

            return this;
        },
        /**
         * @param {Object} data
         * @param {Function} model
         * @returns {Object}
         */
        exchangeObject: function(data, model) {
            return new model(data);
        },
        /**
         * @param {Object|Object[]} data
         * @param {Function} model
         * @returns {Object|Object[]}
         */
        exchangeArray: function(data, model) {
            if (Array.isArray(data)) {
                var collection = [],
                    len = data.length, i;

                for (i = 0; i < len; i++) {
                    collection.push(this.exchangeObject(data[i], model));
                }

                return collection;
            }

            return this.exchangeObject(data, model);
        }
    };

    return AbstractRepository;
}

})();