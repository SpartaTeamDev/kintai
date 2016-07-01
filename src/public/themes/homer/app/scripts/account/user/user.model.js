(function() {
/**
 * @author ntd1712
 */
chaos.value("UserModel", UserModel);

function UserModel(data) {
    data = data || {};
    var fields = arguments.callee.getFields(),
        length = fields.length, key;
    for (key = 0; key < length; key++) {
        this[fields[key].data] = data[fields[key].data] || fields[key].value;
    }
}

UserModel.getRoute = function() {
    return "user";
};

UserModel.getFields = function() {
    return [{
        data: "Id",
        value: 0,
        visible: false
    },{
        data: "Name",
        value: "",
        title: "Username"
    },{
        data: "Email",
        value: "",
        title: "Email"
    },{
        data: "Password",
        value: "",
        visible: false
    },{
        data: "ForcePasswordChange",
        value: true,
        visible: false
    },{
        data: "Profile",
        value: "",
        visible: false
    },{
        data: "Roles",
        value: [],
        visible: false
    }];
};

})();