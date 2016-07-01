(function() {
/**
 * @author ntd1712
 */
chaos.service("LookupModel", Anonymous);

function Anonymous(AbstractModel) {
    function LookupModel(data) {
        LookupModel.parent.constructor.apply(this, [data, LookupModel.getFields()]);
    }
    extend(LookupModel, AbstractModel);

    /**
     * @returns {String}
     */
    LookupModel.getRoute = function() {
        return "lookup";
    };

    /**
     * @return {Object[]}
     */
    LookupModel.getFields = function() {
        return [{
            data: "Id",
            value: 0,
            visible: false
        },{
            data: "Name",
            title: "Name",
            value: "",
            sortable: false
        },{
            data: "Code",
            title: "Code",
            value: 0,
            class: "col-xs-1 text-center",
            sortable: false
        },{
            data: "Type",
            title: "Type",
            value: ""
        },{
            data: "Position",
            title: "Position",
            value: 0,
            class: "col-xs-1 text-center",
            sortable: false
        }];
    };

    return LookupModel;
}

})();