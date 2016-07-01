(function($) {
/**
 * HOMER - Responsive Admin Theme
 * version 1.7
 */
function fixWrapperHeight() {
    // get and set current height
    var headerH = 62,
        navigationH = $("#navigation").height(),
        contentH = $("div.content").height(),
        windowH = $(window).height();

    if (contentH < navigationH) {
        $("#wrapper").css("min-height", (navigationH < windowH ? windowH - headerH : navigationH) + "px");
    }
    else if (contentH > navigationH && contentH < windowH) {
        // set new height when content is higher than navigation but less than window
        $("#wrapper").css("min-height", windowH - headerH + "px");
    }
}

function setBodySmall() {
    if ($(this).width() < 769) {
        $("body").addClass("page-small");
    }
    else {
        $("body").removeClass("page-small show-sidebar");
    }
}

function setPanelSize() {
    var $wrapper = $("#wrapper"),
        height = $(this).height() - $("#logo").height() - $(".color-line").height();

    if ($wrapper.height() < height) {
        $wrapper.css("height", height + "px");
    }
}

$(function() {
    // set minimal height of #wrapper to fit the window
    fixWrapperHeight();
    // add special class to minimize page elements when screen is less than 768px
    setBodySmall();
    setPanelSize();
});

$(window)
    .on("load", function() {
        // remove splash screen after load
        $("div.splash").css("display", "none");
    })
    .on("resize click", function() {
        // add special class to minimize page elements when screen is less than 768px
        setBodySmall();
        setPanelSize();
        // wait until metisMenu, collapse and other effect finish and set wrapper height
        setTimeout(function() { fixWrapperHeight() }, 300);
    });

})(jQuery);