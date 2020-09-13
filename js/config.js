var require = {
    "baseUrl": BASE_URL+"/js",
    "urlArgs": "version=v11",
    "paths": {
        "head": "../backend/scripts/libs/head.min",
        "jquery": "../js/jquery-2.1.4.min",
        "underscore": "../backend/scripts/libs/underscore",
        "underscore/libs/template/helpers":"../backend/scripts/libs/underscore.template-helpers",
        "underscore/template/helpers":"../backend/scripts/underscore.template-helpers",
        "moment": "../backend/scripts/libs/moment",
        "midway": "../backend/scripts/libs/midway.min.js",
        "bootstrap": "../css/bootstrap-4/dist/js/bootstrap.min",
        "bootstrap/datepicker": "../backend/scripts/libs/bootstrap-datepicker/js/bootstrap-datepicker",
        "bootstrap/datetimepicker": "libs/bootstrap-datetimepicker/js/bootstrap-datetimepicker",
        "bootstrap/datetimepicker/th": "libs/bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.th",
        "cycle": "../backend/scripts/libs/jquery.cycle2",
        "cycle/carousel": "../backend/scripts/libs/jquery.cycle2.carousel",
        "gmapspicker": "../backend/scripts/libs/jquery-gmaps-latlon-picker",
        "text": "../backend/scripts/libs/require/text",
        "json": "../backend/scripts/libs/require/json",
        "JSON3": "../backend/scripts/libs/json3",
        "jquery/easing": "libs/jquery.easing.1.3",
        "fancybox": "libs/fancybox/source/jquery.fancybox",
        "fancybox-thumbs": "vendor/jquery.fancybox-thumbs",
        "utils": "../backend/scripts/utils",
        "lightbox": "libs/lightbox-2.6.min",
        "anythingslider": "libs/jquery.anythingslider",
        "validation": "../backend/scripts/libs/validator",
        "gmap3": "libs/gmap3v5.1.1/gmap3",
        "jquery/cookie": "libs/jquery.cookie",
        "jquery/mousewheel": "libs/jquery.mousewheel",
        "jquery/mCustomScrollbar": "libs/jquery.mCustomScrollbar",
        "jquery/form": "libs/jquery.form",
        "jquery/iframe-transport": "libs/jquery.iframe-transport",
        "select2": "../backend/scripts/libs/select2-3.4.3/select2",
        "bootstrap/spinedit": "libs/bootstrap-spinedit/js/bootstrap-spinedit",
        "jquery/blockUI": "libs/jquery.blockUI",
        "datetimepicker": "libs/datetimepicker/dist/DateTimePicker",
        "classie": "vendor/classie",
        "gnmenu": "vendor/gnmenu",
        "owlcarousel": "vendor/owl.carousel.min",
        "SmoothScroll": "vendor/SmoothScroll.min",
        "affix": "vendor/bs-affix",
        "lazysizes": "vendor/lazysizes.min",
        "noty": "vendor/jquery.noty.min",
        "masonry": "vendor/masonry.min",
        "imagesloaded": "vendor/imagesloaded.min",
        "jscroll": "vendor/jquery.jscroll.min",
        "jquery.infinitescroll": "vendor/jquery.infinitescroll.min",
        "jquery.endless-scroll": "vendor/jquery.endless-scroll",
        "sweetalert": "vendor/sweetalert.min",
        "match-height": "vendor/jquery.matchHeight-min",
    },
    "shim": {
        "jquery": {
            exports: "$"
        },
        "underscore": {
            exports: "_"
        },
        "validation": {
            exports: "Validator"
        },
        "jquery/easing": {
            deps: ["jquery"]
        },
        "jquery/cookie": {
            deps: ["jquery"]
        },
        "jquery/form": {
            deps: ["jquery"]
        },
        "jquery/iframe-transport": {
            deps: ["jquery"]
        },
        "jquery/blockUI": {
            deps: ["jquery"]
        },
        "jquery/mousewheel": {
            deps: ["jquery"]
        },
        "affix": {
            deps: ["jquery"]
        },
        "noty": {
            deps: ["jquery"]
        },
        "jscroll": {
            deps: ["jquery"]
        },
        "jquery.endless-scroll": {
            deps: ["jquery"]
        },
        "jquery.infinitescroll": {
            deps: ["jquery"]
        },
        "lazysizes": {
            deps: ["jquery"]
        },
        "jquery/mCustomScrollbar": {
            deps: ["jquery", "jquery/mousewheel"]
        },
        "cycle": {
            deps: ["jquery","jquery/easing"]
        },
        "cycle/carousel": {
            deps: ["jquery","cycle","jquery/easing"]
        },
        "select2": {
            deps: ["jquery"]
        },
        "gmap3": {
            deps: ["jquery"]
        },
        "moment": {
            deps: ["jquery"],
            exports: ["moment"]
        },
        "fancybox": {
            deps: ["jquery"]
        },
        "fancybox-thumbs": {
            deps: ["jquery", "fancybox"]
        },
        "gmapspicker": {
            deps: ["jquery"]
        },
        "datetimepicker": {
            deps: ["jquery"]
        },
        "bootstrap": {
            deps: ["jquery"]
        },
        "bootstrap/datepicker": {
            deps: ["jquery","bootstrap"]
        },
        "bootstrap/datetimepicker": {
            deps: ["jquery", "moment", "bootstrap"]
        },
        "bootstrap/datetimepicker/th": {
            deps: ["jquery", "moment", "bootstrap","bootstrap/datetimepicker"]
        },
        "bootstrap/spinedit": {
            deps: ["jquery","bootstrap"]
        },
        "underscore/libs/template/helpers": {
            deps: ["underscore"]
        },
        "underscore/template/helpers": {
            deps: ["underscore/libs/template/helpers", "utils"]
        },
        "utils": {
            deps: ["jquery","underscore"]
        },
        "lightbox": {
            deps: ["jquery"]
        },
        "anythingslider": {
            deps: ["jquery"]
        },
        "gnmenu": {
            deps: ["classie"],
            exports: "gnMenu"
        },
        "owlcarousel": {
            deps: ["jquery"],
        },
        "masonry": {
            deps: ["jquery"],
        },
        "imagesloaded": {
            deps: ["jquery"],
        },
        "match-height": {
            deps: ["jquery"],
        },
    }
};

// var head_conf = {
//     screens: [480, 768, 980, 1200]
// };
