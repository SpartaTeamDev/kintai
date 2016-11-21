(function($) { "use strict";
/**
 * HOMER - Responsive Admin Theme
 * version 1.7
 */
function fixWrapperHeight($window) {
    // get and set current height
    var headerH = 62,
        navigationH = $("#navigation").height(),
        contentH = $("div.content").height(),
        windowH = $window.height();

    if (contentH < navigationH) {
        $("#wrapper").css("min-height", (navigationH < windowH ? windowH - headerH : navigationH) + "px");
    }
    else if (contentH > navigationH && contentH < windowH) {
        // set new height when content is higher than navigation but less than window
        $("#wrapper").css("min-height", (windowH - headerH) + "px");
    }
}

function setBodySmall($window) {
    if ($window.width() < 769) {
        $("body").addClass("page-small");
    }
    else {
        $("body").removeClass("page-small show-sidebar");
    }

    return $window;
}

function setPanelSize($window) {
    var $wrapper = $("#wrapper"),
        height = $window.height() - $("#logo").height() - $(".color-line").height();

    if ($wrapper.height() < height) {
        $wrapper.css("height", height + "px");
    }
}

var $window = $(window)
    .on("load", function() {
        $("div.splash").css("display", "none"); // remove splash screen after load
    })
    .on("resize click", function() {
        // add special class to minimize page elements when screen is less than 768px
        setPanelSize(setBodySmall($window));
        // wait until metisMenu, collapse and other effect finish and set wrapper height
        setTimeout(function() { fixWrapperHeight($window) }, 300);
    });

$(function() {
    // set minimal height of #wrapper to fit the window
    fixWrapperHeight($window);
    // add special class to minimize page elements when screen is less than 768px
    setPanelSize(setBodySmall($window));
});

})(jQuery);