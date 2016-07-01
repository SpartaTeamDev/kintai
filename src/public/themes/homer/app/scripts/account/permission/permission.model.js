(function() {
/**
 * @author ntd1712
 */
chaos.value("PermissionModel", PermissionModel);

function PermissionModel(data) {
    data = data || {};
    var fields = arguments.callee.getFields(),
        length = fields.length, key;
    for (key = 0; key < length; key++) {
        this[fields[key].data] = data[fields[key].data] || fields[key].value;
    }
}

PermissionModel.getRoute = function() {
    return "permission";
};

PermissionModel.getFields = function() {
    return [{
        data: "Id",
        value: 0,
        visible: false
    },{
        data: "Name",
        value: "",
        title: "Name",
        class: "col-xs-4"
    },{
        data: "Description",
        value: "",
        title: "Description",
        class: "text-wrap",
        sortable: false
    }];
};

})();