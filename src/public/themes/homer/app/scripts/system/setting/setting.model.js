(function() {
/**
 * @author ntd1712
 */
chaos.service("SettingModel", Anonymous);

function Anonymous(AbstractModel) {
    function SettingModel(data) {
        SettingModel.parent.constructor.apply(this, [data, SettingModel.getFields()]);
    }
    extend(SettingModel, AbstractModel);

    /**
     * @returns {String}
     */
    SettingModel.getRoute = function() {
        return "setting";
    };

    /**
     * @return {Object[]}
     */
    SettingModel.getFields = function() {
        return [{
            data: "Id",
            value: 0,
            visible: false
        },{
            data: "Name",
            title: "Name",
            value: "",
            class: "col-xs-3"
        },{
            data: "Value",
            title: "Value",
            value: "",
            class: "text-wrap",
            sortable: false
        },{
            data: "Description",
            value: "",
            visible: false
        }];
    };

    return SettingModel;
}

})();