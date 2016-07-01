(function() { "use strict";
/**
 * @author ntd1712
 */
window.chaos = angular.module("homer", [
    "ngSanitize",
    "ui.router",
    "ui.select",
    "datatables",
    "angular-jwt",
    "checklist-model",
    "ngFileUpload"
]);

if (window.swal) {
    /**
     * @param {String|*} message
     * @param {String} [text=undefined]
     * @param {String} [type=undefined]
     */
    window.alert = function(message, text, type) {
        swal(String(message), text, type);
    };

    /**
     * @param {String} message
     * @param {Object} [options=undefined]
     * @param {Function} [handler=undefined]
     * @param {Object} [context=undefined]
     */
    window.confirm = function(message, options, handler, context) {
        return !!swal(angular.extend({
            title: message || "Are you sure?",
            text: "You won't be able to undo this action, and you may also lose any data entered",
            type: "warning",
            showCancelButton: true,
            showLoaderOnConfirm: true,
            confirmButtonText: "Yes, do it"
        }, options),
        function(isConfirm) {
            if (isConfirm && "function" === typeof handler) {
                handler.call(context);
            }
        });
    };
}

if (!window.notify) {
    /**
     * @param {String|*} message
     * @param {Object} [options=undefined]
     */
    window.notify = function(message, options) {
        if (window.Snarl) {
            Snarl.addNotification(angular.extend({
                text: message,
                icon: '<i class="fa fa-info-circle"></i>'
            }, options));
        }
        else {
            alert.apply(null, arguments);
        }
    }
}

})();

if ("function" !== typeof inherit) {
    /**
     * @param {Object} [proto]
     * @returns {Object}
     */
    function inherit(proto) {
        function F() {}
        F.prototype = proto;
        return new F();
    }
}

if ("function" !== typeof extend) {
    /**
     * @param {Object} [Child]
     * @param {Object} [Parent]
     */
    function extend(Child, Parent) {
        Parent.prototype.constructor = Parent; // @link http://goo.gl/PxO37U
        Child.prototype = inherit(Parent.prototype);
        Child.prototype.constructor = Child;
        Child.parent = Parent.prototype;
    }
}