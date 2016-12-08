var ValidateField = function (name, isvalid, valmsg) {
    var self = this;
    self.Name = name;
    self.IsValid = isvalid;
    self.ValMsg = valmsg;
};
var ValidationManager = function () {
    var self = this;
    self.IsValid = false;
    self.ArrValidateField = [];
    self.Set = function (name, isvalid, valmsg) {
        var valfield = null;
        for (var i = 0; i < self.ArrValidateField.length; i++) {
            if (self.ArrValidateField[i].Name == name) {
                valfield = self.ArrValidateField[i];
                break;
            }
        }
        if (valfield != null) {
            valfield.IsValid = isvalid;
            valfield.ValMsg = valmsg;
        }
        else {
            self.ArrValidateField.push(new ValidateField(name, isvalid, valmsg));
        }
        var numValid = 0;
        angular.forEach(self.ArrValidateField, function (valfield) {
            if (valfield.IsValid == true || valfield.ValMsg == "") {
                valfield.ValMsg = "";
                numValid++;
            }
        });
        self.IsValid = numValid == self.ArrValidateField.length;
    };
    self.Get = function (name) {
        var valfield = null;
        for (var i = 0; i < self.ArrValidateField.length; i++) {
            if (self.ArrValidateField[i].Name == name) {
                valfield = self.ArrValidateField[i];
                break;
            }
        }
        if (valfield == null) {
            valfield = new ValidateField(name, false, "");
            self.ArrValidateField.push(valfield);
        }
        return valfield;
    };
    self.Reset = function () {
        if (self.ArrValidateField.length == 0) {
            self.IsValid = true;
        } else {
            angular.forEach(self.ArrValidateField, function (valfield) {
                valfield.IsValid = false;
                valfield.ValMsg = "";
            });
            self.IsValid = false;
        }
    };
};