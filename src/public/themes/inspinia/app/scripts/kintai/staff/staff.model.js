(function() { "use strict";
/**
 * @author ntd1712
 */
chaos.service("StaffModel", Anonymous);

function Anonymous(AbstractModel) {
    function StaffModel(data) {
        this.__super__.constructor.apply(this, [data, StaffModel.getFields()]);
    }
    extend(StaffModel, AbstractModel);

    /**
     * @returns {string}
     */
    StaffModel.getRoute = function() {
        return "kintai/staff";
    };

    /**
     * @return {Object[]}
     */
    StaffModel.getFields = function() {
        return [{
            data: "Id",
            value: 0,
            visible: false
        },{
            data: "Name",
            title: t("NAME"),
            value: "",
            sortable: false
        }];
    };

    return StaffModel;
}

})();