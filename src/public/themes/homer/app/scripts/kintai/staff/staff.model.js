(function() {
/**
 * @author ntd1712
 */
chaos.service("StaffModel", Anonymous);

function Anonymous(AbstractModel) {
    function StaffModel(data) {
        StaffModel.parent.constructor.apply(this, [data, StaffModel.getFields()]);
    }
    extend(StaffModel, AbstractModel);

    /**
     * @returns {String}
     */
    StaffModel.getRoute = function() {
        return "staff";
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
            title: "Name",
            value: "",
            sortable: false
        }];
    };

    return StaffModel;
}

})();