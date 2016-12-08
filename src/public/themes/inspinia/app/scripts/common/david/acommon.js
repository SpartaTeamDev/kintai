var SortField = function (name, direction) {
    var self = this;
    self.Name = name;
    self.Direction = direction;
};
var ItemProcessing = function (name, value) {
    var self = this;
    self.Name = name;
    self.Value = value;
};
var ModelProcessing = function ($filter) {
    var self = this;
    self.Completed = 0;
    self.Processing = [];
    self.SetProcessing = function (name, value) {
        var processing = null;
        for(var i = 0; i< self.Processing.length&&processing==null; i++){
            if(self.Processing[i].Name == name) processing = self.Processing[i];
        }
        if (processing != null) {
            processing.Value = value;
        }
        else {
            self.Processing.push(new ItemProcessing(name, value));
        }
        var numProcessing = 0;
        angular.forEach(self.Processing, function (process) {
            if (process.Value == true) numProcessing++;
        });
        if (numProcessing > 0) {
            self.Completed = (self.Processing.length - numProcessing) * 100 / self.Processing.length;
        } else self.Completed = 100;
    };
    self.GetProcessing = function (name) {
        var processing = null;
        for(var i = 0; i< self.Processing.length&&processing==null; i++){
            if(self.Processing[i].Name == name) processing = self.Processing[i];
        }
        if (processing != null) return processing;
        processing = new ItemProcessing(name, false);
        self.Processing.push(processing);
        return processing;
    };
};
var ItemPaging = function (pageindex, pagesize, totalitems) {
    var self = this;
    self.Pages = [];
    self.PageIndex = pageindex;
    self.PageSize = pagesize;
    self.TotalItems = totalitems;
    self.TotalPages = 0;
    self.PageItem = 10;
    self.ResetPaging = function (pageindex, pagesize, totalitems) {
        self.PageIndex = pageindex;
        self.PageSize = pagesize;
        self.TotalItems = totalitems;
        var pageNum = self.TotalItems / self.PageSize;
        if (parseInt(pageNum) < pageNum) pageNum = parseInt(pageNum) + 1;
        self.TotalPages = pageNum;
        ReFormatPaging();
    };
    function ReFormatPaging() {
        self.Pages = [];
        var numpage = self.PageItem;
        for (var i = self.PageIndex - numpage; i < self.PageIndex; i++) {
            if (i > 0) self.Pages.push(i);
        }
        self.Pages.push(self.PageIndex);
        for (var j = 1; j <= numpage; j++) {
            if (self.PageIndex + j <= self.TotalPages) self.Pages.push(self.PageIndex + j);
        }
    }
};
var SearchParam = function (key, value) {
    var self = this;
    self.Key = key;
    self.Value = value;
};
var Container = function (container, showdirection, hidediretion, status) {
    var self = this;
    self.Container = container;
    self.ShowDirection = showdirection;
    self.HideDirection = hidediretion;
    self.Status = status; // show,hide
};
var ModelTransition = function ($filter) {
    var self = this;
    self.Containers = [];
    self.AddContainer = function (container, showdirection, hidedirection) {
        var eContainer = null;
        for(var i = 0; i< self.Containers.length&&eContainer==null; i++){
            if(self.Containers[i].Container == container) eContainer = self.Containers[i];
        }
        if (eContainer != null) {
            eContainer.ShowDirection = showdirection;
            eContainer.HideDirection = hidedirection;
            eContainer.Status = "hide";
        }
        else {
            self.Containers.push(new Container(container, showdirection, hidedirection, "hide"));
        }
    };
    self.ShowContainer = function (container) {
        var currCon = null;
        for(var i = 0; i< self.Containers.length&&currCon==null; i++){
            if(self.Containers[i].Status == "show") currCon = self.Containers[i];
        }
        var showCon = null;
        for(var j = 0; j < self.Containers.length&&showCon==null; j++){
            if (self.Containers[j].Container == container) showCon = self.Containers[j];
        }
        if (showCon != null) {
            if (currCon != null) {
                if (showCon.Container != currCon.Container) {
                    $("#" + currCon.Container).css("opacity", "0.2")
                        .hide("slide", { direction: currCon.HideDirection }, 500, function () {
                            $("#" + showCon.Container)
                                .css("opacity", "1")
                                .show("slide", { direction: showCon.ShowDirection }, 500);
                        });
                    currCon.Status = "hide";
                    showCon.Status = "show";
                }
            }
            else {
                $("#" + showCon.Container).css("opacity", "1")
                    .show("slide", { direction: showCon.ShowDirection }, 500);
                showCon.Status = "show";
            }
        }
    };
    self.HideContainer = function (container) {
        var showCon = null;
        for(var i = 0; i< self.Containers.length&&showCon==null; i++){
            if(self.Containers[i].Container == container) showCon = self.Containers[i];
        }
        if (showCon != null) {
            $("#" + showCon.Container).css("opacity", "1")
                .hide("slide", { direction: showCon.HideDirection }, 250, function () { });
            showCon.Status = "hide";
        }
    };
    self.ShowGroup = function (container, groupby) {
        var showCon = null;
        for(var i = 0; i< self.Containers.length&&showCon==null; i++){
            if(self.Containers[i].Container == container) showCon = self.Containers[i];
        }
        if (showCon != null) {
            $('div[' + groupby + '="' + showCon.Container + '"]').css("opacity", "1")
                .each(function (index) {
                    $(this).show("slide", { direction: showCon.ShowDirection }, index * 100, function () { });
                });
            showCon.Status = "show";
        }
    };
    self.HideGroup = function (container, groupby) {
        var showCon = null;
        for(var i = 0; i< self.Containers.length&&showCon==null; i++){
            if(self.Containers[i].Container == container) showCon = self.Containers[i];
        }
        if (showCon != null) {
            $('div[' + groupby + '="' + showCon.Container() + '"]').css("opacity", "1");
            $('div[' + groupby + '="' + showCon.Container + '"]').each(function (index) {
                $(this).hide("slide", { direction: showCon.HideDirection }, index * 100, function () { });
            });
            showCon.Status = "hide";
        }
    };
};
function parseJsonDate(data_date) {
    if(data_date==null){
        return new Date();
    }
    if(data_date == ""){
        return "";
    }
    return moment(data_date.date, "YYYY-MM-DD HH:mm:00").toDate();
}
function parseJsonDateF(data_date) {
    if(data_date==null||data_date == ""){
        return "";
    }
    return moment(data_date.date, "YYYY-MM-DD HH:mm:ss").format("Do MMM YYYY");
}
function parseJsonDateTimeF(data_date) {
    if(data_date==null||data_date == ""){
        return "";
    }
    return moment(data_date.date, "YYYY-MM-DD HH:mm:ss").format("Do MMM YYYY HH:mm");
}
function parseJsonTimeF(data_date) {
    if(data_date==null||data_date == ""){
        return "";
    }
    return moment(data_date.date, "YYYY-MM-DD HH:mm:ss").format("HH:mm:ss");
}
function parseJsonDateS(date) {
    if(moment(date).isValid()) {
        return moment(date).format("YYYY-MM-DD");
    }
    return '';
}
function parseJsonTimeS(date) {
    if(moment(date).isValid()) {
        return moment(date).format("HH:mm:ss");
    }
    return '';
}
function parseDateDisplay(date) {
    if(moment(date).isValid())
        return moment(date).format("Do MMM YYYY");
    return '';
}
function roundToTwo(value) {
    return (Math.round(value * 100) / 100);
}