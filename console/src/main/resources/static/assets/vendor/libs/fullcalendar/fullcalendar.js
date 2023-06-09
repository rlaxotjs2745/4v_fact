! function(e, t) {
    for (var n in t) e[n] = t[n]
}(window, function(e) {
    var t = {};

    function n(r) {
        if (t[r]) return t[r].exports;
        var o = t[r] = {
            i: r,
            l: !1,
            exports: {}
        };
        return e[r].call(o.exports, o, o.exports, n), o.l = !0, o.exports
    }
    return n.m = e, n.c = t, n.d = function(e, t, r) {
        n.o(e, t) || Object.defineProperty(e, t, {
            enumerable: !0,
            get: r
        })
    }, n.r = function(e) {
        "undefined" != typeof Symbol && Symbol.toStringTag && Object.defineProperty(e, Symbol.toStringTag, {
            value: "Module"
        }), Object.defineProperty(e, "__esModule", {
            value: !0
        })
    }, n.t = function(e, t) {
        if (1 & t && (e = n(e)), 8 & t) return e;
        if (4 & t && "object" == typeof e && e && e.__esModule) return e;
        var r = Object.create(null);
        if (n.r(r), Object.defineProperty(r, "default", {
            enumerable: !0,
            value: e
        }), 2 & t && "string" != typeof e)
            for (var o in e) n.d(r, o, function(t) {
                return e[t]
            }.bind(null, o));
        return r
    }, n.n = function(e) {
        var t = e && e.__esModule ? function() {
            return e.default
        } : function() {
            return e
        };
        return n.d(t, "a", t), t
    }, n.o = function(e, t) {
        return Object.prototype.hasOwnProperty.call(e, t)
    }, n.p = "", n(n.s = 808)
}({
    136: function(e, t, n) {
        "use strict";
        var r = n(19),
            o = n.n(r)()((function(e) {
                return e[1]
            }));
        o.push([e.i, '\n/* classes attached to <body> */\n\n.fc-not-allowed,\n.fc-not-allowed .fc-event { /* override events\' custom cursors */\n  cursor: not-allowed;\n}\n\n.fc-unselectable {\n  -webkit-user-select: none;\n     -moz-user-select: none;\n      -ms-user-select: none;\n          user-select: none;\n  -webkit-touch-callout: none;\n  -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\n}\n.fc {\n  /* layout of immediate children */\n  display: flex;\n  flex-direction: column;\n\n  font-size: 1em\n}\n.fc,\n  .fc *,\n  .fc *:before,\n  .fc *:after {\n    box-sizing: border-box;\n  }\n.fc table {\n    border-collapse: collapse;\n    border-spacing: 0;\n    font-size: 1em; /* normalize cross-browser */\n  }\n.fc th {\n    text-align: center;\n  }\n.fc th,\n  .fc td {\n    vertical-align: top;\n    padding: 0;\n  }\n.fc a[data-navlink] {\n    cursor: pointer;\n  }\n.fc a[data-navlink]:hover {\n    text-decoration: underline;\n  }\n.fc-direction-ltr {\n  direction: ltr;\n  text-align: left;\n}\n.fc-direction-rtl {\n  direction: rtl;\n  text-align: right;\n}\n.fc-theme-standard td,\n  .fc-theme-standard th {\n    border: 1px solid #ddd;\n    border: 1px solid var(--fc-border-color, #ddd);\n  }\n/* for FF, which doesn\'t expand a 100% div within a table cell. use absolute positioning */\n/* inner-wrappers are responsible for being absolute */\n/* TODO: best place for this? */\n.fc-liquid-hack td,\n  .fc-liquid-hack th {\n    position: relative;\n  }\n\n@font-face {\n  font-family: \'fcicons\';\n  src: url("data:application/x-font-ttf;charset=utf-8;base64,AAEAAAALAIAAAwAwT1MvMg8SBfAAAAC8AAAAYGNtYXAXVtKNAAABHAAAAFRnYXNwAAAAEAAAAXAAAAAIZ2x5ZgYydxIAAAF4AAAFNGhlYWQUJ7cIAAAGrAAAADZoaGVhB20DzAAABuQAAAAkaG10eCIABhQAAAcIAAAALGxvY2ED4AU6AAAHNAAAABhtYXhwAA8AjAAAB0wAAAAgbmFtZXsr690AAAdsAAABhnBvc3QAAwAAAAAI9AAAACAAAwPAAZAABQAAApkCzAAAAI8CmQLMAAAB6wAzAQkAAAAAAAAAAAAAAAAAAAABEAAAAAAAAAAAAAAAAAAAAABAAADpBgPA/8AAQAPAAEAAAAABAAAAAAAAAAAAAAAgAAAAAAADAAAAAwAAABwAAQADAAAAHAADAAEAAAAcAAQAOAAAAAoACAACAAIAAQAg6Qb//f//AAAAAAAg6QD//f//AAH/4xcEAAMAAQAAAAAAAAAAAAAAAQAB//8ADwABAAAAAAAAAAAAAgAANzkBAAAAAAEAAAAAAAAAAAACAAA3OQEAAAAAAQAAAAAAAAAAAAIAADc5AQAAAAABAWIAjQKeAskAEwAAJSc3NjQnJiIHAQYUFwEWMjc2NCcCnuLiDQ0MJAz/AA0NAQAMJAwNDcni4gwjDQwM/wANIwz/AA0NDCMNAAAAAQFiAI0CngLJABMAACUBNjQnASYiBwYUHwEHBhQXFjI3AZ4BAA0N/wAMJAwNDeLiDQ0MJAyNAQAMIw0BAAwMDSMM4uINIwwNDQAAAAIA4gC3Ax4CngATACcAACUnNzY0JyYiDwEGFB8BFjI3NjQnISc3NjQnJiIPAQYUHwEWMjc2NCcB87e3DQ0MIw3VDQ3VDSMMDQ0BK7e3DQ0MJAzVDQ3VDCQMDQ3zuLcMJAwNDdUNIwzWDAwNIwy4twwkDA0N1Q0jDNYMDA0jDAAAAgDiALcDHgKeABMAJwAAJTc2NC8BJiIHBhQfAQcGFBcWMjchNzY0LwEmIgcGFB8BBwYUFxYyNwJJ1Q0N1Q0jDA0Nt7cNDQwjDf7V1Q0N1QwkDA0Nt7cNDQwkDLfWDCMN1Q0NDCQMt7gMIw0MDNYMIw3VDQ0MJAy3uAwjDQwMAAADAFUAAAOrA1UAMwBoAHcAABMiBgcOAQcOAQcOARURFBYXHgEXHgEXHgEzITI2Nz4BNz4BNz4BNRE0JicuAScuAScuASMFITIWFx4BFx4BFx4BFREUBgcOAQcOAQcOASMhIiYnLgEnLgEnLgE1ETQ2Nz4BNz4BNz4BMxMhMjY1NCYjISIGFRQWM9UNGAwLFQkJDgUFBQUFBQ4JCRULDBgNAlYNGAwLFQkJDgUFBQUFBQ4JCRULDBgN/aoCVgQIBAQHAwMFAQIBAQIBBQMDBwQECAT9qgQIBAQHAwMFAQIBAQIBBQMDBwQECASAAVYRGRkR/qoRGRkRA1UFBAUOCQkVDAsZDf2rDRkLDBUJCA4FBQUFBQUOCQgVDAsZDQJVDRkLDBUJCQ4FBAVVAgECBQMCBwQECAX9qwQJAwQHAwMFAQICAgIBBQMDBwQDCQQCVQUIBAQHAgMFAgEC/oAZEhEZGRESGQAAAAADAFUAAAOrA1UAMwBoAIkAABMiBgcOAQcOAQcOARURFBYXHgEXHgEXHgEzITI2Nz4BNz4BNz4BNRE0JicuAScuAScuASMFITIWFx4BFx4BFx4BFREUBgcOAQcOAQcOASMhIiYnLgEnLgEnLgE1ETQ2Nz4BNz4BNz4BMxMzFRQWMzI2PQEzMjY1NCYrATU0JiMiBh0BIyIGFRQWM9UNGAwLFQkJDgUFBQUFBQ4JCRULDBgNAlYNGAwLFQkJDgUFBQUFBQ4JCRULDBgN/aoCVgQIBAQHAwMFAQIBAQIBBQMDBwQECAT9qgQIBAQHAwMFAQIBAQIBBQMDBwQECASAgBkSEhmAERkZEYAZEhIZgBEZGREDVQUEBQ4JCRUMCxkN/asNGQsMFQkIDgUFBQUFBQ4JCBUMCxkNAlUNGQsMFQkJDgUEBVUCAQIFAwIHBAQIBf2rBAkDBAcDAwUBAgICAgEFAwMHBAMJBAJVBQgEBAcCAwUCAQL+gIASGRkSgBkSERmAEhkZEoAZERIZAAABAOIAjQMeAskAIAAAExcHBhQXFjI/ARcWMjc2NC8BNzY0JyYiDwEnJiIHBhQX4uLiDQ0MJAzi4gwkDA0N4uINDQwkDOLiDCQMDQ0CjeLiDSMMDQ3h4Q0NDCMN4uIMIw0MDOLiDAwNIwwAAAABAAAAAQAAa5n0y18PPPUACwQAAAAAANivOVsAAAAA2K85WwAAAAADqwNVAAAACAACAAAAAAAAAAEAAAPA/8AAAAQAAAAAAAOrAAEAAAAAAAAAAAAAAAAAAAALBAAAAAAAAAAAAAAAAgAAAAQAAWIEAAFiBAAA4gQAAOIEAABVBAAAVQQAAOIAAAAAAAoAFAAeAEQAagCqAOoBngJkApoAAQAAAAsAigADAAAAAAACAAAAAAAAAAAAAAAAAAAAAAAAAA4ArgABAAAAAAABAAcAAAABAAAAAAACAAcAYAABAAAAAAADAAcANgABAAAAAAAEAAcAdQABAAAAAAAFAAsAFQABAAAAAAAGAAcASwABAAAAAAAKABoAigADAAEECQABAA4ABwADAAEECQACAA4AZwADAAEECQADAA4APQADAAEECQAEAA4AfAADAAEECQAFABYAIAADAAEECQAGAA4AUgADAAEECQAKADQApGZjaWNvbnMAZgBjAGkAYwBvAG4Ac1ZlcnNpb24gMS4wAFYAZQByAHMAaQBvAG4AIAAxAC4AMGZjaWNvbnMAZgBjAGkAYwBvAG4Ac2ZjaWNvbnMAZgBjAGkAYwBvAG4Ac1JlZ3VsYXIAUgBlAGcAdQBsAGEAcmZjaWNvbnMAZgBjAGkAYwBvAG4Ac0ZvbnQgZ2VuZXJhdGVkIGJ5IEljb01vb24uAEYAbwBuAHQAIABnAGUAbgBlAHIAYQB0AGUAZAAgAGIAeQAgAEkAYwBvAE0AbwBvAG4ALgAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=") format(\'truetype\');\n  font-weight: normal;\n  font-style: normal;\n}\n\n.fc-icon {\n  /* added for fc */\n  display: inline-block;\n  width: 1em;\n  height: 1em;\n  text-align: center;\n  -webkit-user-select: none;\n     -moz-user-select: none;\n      -ms-user-select: none;\n          user-select: none;\n\n  /* use !important to prevent issues with browser extensions that change fonts */\n  font-family: \'fcicons\' !important;\n  speak: none;\n  font-style: normal;\n  font-weight: normal;\n  font-variant: normal;\n  text-transform: none;\n  line-height: 1;\n\n  /* Better Font Rendering =========== */\n  -webkit-font-smoothing: antialiased;\n  -moz-osx-font-smoothing: grayscale;\n}\n\n.fc-icon-chevron-left:before {\n  content: "\\e900";\n}\n\n.fc-icon-chevron-right:before {\n  content: "\\e901";\n}\n\n.fc-icon-chevrons-left:before {\n  content: "\\e902";\n}\n\n.fc-icon-chevrons-right:before {\n  content: "\\e903";\n}\n\n.fc-icon-minus-square:before {\n  content: "\\e904";\n}\n\n.fc-icon-plus-square:before {\n  content: "\\e905";\n}\n\n.fc-icon-x:before {\n  content: "\\e906";\n}\n/*\nLots taken from Flatly (MIT): https://bootswatch.com/4/flatly/bootstrap.css\n\nThese styles only apply when the standard-theme is activated.\nWhen it\'s NOT activated, the fc-button classes won\'t even be in the DOM.\n*/\n.fc {\n\n  /* reset */\n\n}\n.fc .fc-button {\n    border-radius: 0;\n    overflow: visible;\n    text-transform: none;\n    margin: 0;\n    font-family: inherit;\n    font-size: inherit;\n    line-height: inherit;\n  }\n.fc .fc-button:focus {\n    outline: 1px dotted;\n    outline: 5px auto -webkit-focus-ring-color;\n  }\n.fc .fc-button {\n    -webkit-appearance: button;\n  }\n.fc .fc-button:not(:disabled) {\n    cursor: pointer;\n  }\n.fc .fc-button::-moz-focus-inner {\n    padding: 0;\n    border-style: none;\n  }\n.fc {\n\n  /* theme */\n\n}\n.fc .fc-button {\n    display: inline-block;\n    font-weight: 400;\n    text-align: center;\n    vertical-align: middle;\n    -webkit-user-select: none;\n       -moz-user-select: none;\n        -ms-user-select: none;\n            user-select: none;\n    background-color: transparent;\n    border: 1px solid transparent;\n    padding: 0.4em 0.65em;\n    font-size: 1em;\n    line-height: 1.5;\n    border-radius: 0.25em;\n  }\n.fc .fc-button:hover {\n    text-decoration: none;\n  }\n.fc .fc-button:focus {\n    outline: 0;\n    box-shadow: 0 0 0 0.2rem rgba(44, 62, 80, 0.25);\n  }\n.fc .fc-button:disabled {\n    opacity: 0.65;\n  }\n.fc {\n\n  /* "primary" coloring */\n\n}\n.fc .fc-button-primary {\n    color: #fff;\n    color: var(--fc-button-text-color, #fff);\n    background-color: #2C3E50;\n    background-color: var(--fc-button-bg-color, #2C3E50);\n    border-color: #2C3E50;\n    border-color: var(--fc-button-border-color, #2C3E50);\n  }\n.fc .fc-button-primary:hover {\n    color: #fff;\n    color: var(--fc-button-text-color, #fff);\n    background-color: #1e2b37;\n    background-color: var(--fc-button-hover-bg-color, #1e2b37);\n    border-color: #1a252f;\n    border-color: var(--fc-button-hover-border-color, #1a252f);\n  }\n.fc .fc-button-primary:disabled { /* not DRY */\n    color: #fff;\n    color: var(--fc-button-text-color, #fff);\n    background-color: #2C3E50;\n    background-color: var(--fc-button-bg-color, #2C3E50);\n    border-color: #2C3E50;\n    border-color: var(--fc-button-border-color, #2C3E50); /* overrides :hover */\n  }\n.fc .fc-button-primary:focus {\n    box-shadow: 0 0 0 0.2rem rgba(76, 91, 106, 0.5);\n  }\n.fc .fc-button-primary:not(:disabled):active,\n  .fc .fc-button-primary:not(:disabled).fc-button-active {\n    color: #fff;\n    color: var(--fc-button-text-color, #fff);\n    background-color: #1a252f;\n    background-color: var(--fc-button-active-bg-color, #1a252f);\n    border-color: #151e27;\n    border-color: var(--fc-button-active-border-color, #151e27);\n  }\n.fc .fc-button-primary:not(:disabled):active:focus,\n  .fc .fc-button-primary:not(:disabled).fc-button-active:focus {\n    box-shadow: 0 0 0 0.2rem rgba(76, 91, 106, 0.5);\n  }\n.fc {\n\n  /* icons within buttons */\n\n}\n.fc .fc-button .fc-icon {\n    vertical-align: middle;\n    font-size: 1.5em; /* bump up the size (but don\'t make it bigger than line-height of button, which is 1.5em also) */\n  }\n.fc .fc-button-group {\n    position: relative;\n    display: inline-flex;\n    vertical-align: middle;\n  }\n.fc .fc-button-group > .fc-button {\n    position: relative;\n    flex: 1 1 auto;\n  }\n.fc .fc-button-group > .fc-button:hover {\n    z-index: 1;\n  }\n.fc .fc-button-group > .fc-button:focus,\n  .fc .fc-button-group > .fc-button:active,\n  .fc .fc-button-group > .fc-button.fc-button-active {\n    z-index: 1;\n  }\n.fc-direction-ltr .fc-button-group > .fc-button:not(:first-child) {\n    margin-left: -1px;\n    border-top-left-radius: 0;\n    border-bottom-left-radius: 0;\n  }\n.fc-direction-ltr .fc-button-group > .fc-button:not(:last-child) {\n    border-top-right-radius: 0;\n    border-bottom-right-radius: 0;\n  }\n.fc-direction-rtl .fc-button-group > .fc-button:not(:first-child) {\n    margin-right: -1px;\n    border-top-right-radius: 0;\n    border-bottom-right-radius: 0;\n  }\n.fc-direction-rtl .fc-button-group > .fc-button:not(:last-child) {\n    border-top-left-radius: 0;\n    border-bottom-left-radius: 0;\n  }\n.fc .fc-toolbar {\n    display: flex;\n    justify-content: space-between;\n    align-items: center;\n  }\n.fc .fc-toolbar.fc-header-toolbar {\n    margin-bottom: 1.5em;\n  }\n.fc .fc-toolbar.fc-footer-toolbar {\n    margin-top: 1.5em;\n  }\n.fc .fc-toolbar-title {\n    font-size: 1.75em;\n    margin: 0;\n  }\n.fc-direction-ltr .fc-toolbar > * > :not(:first-child) {\n    margin-left: .75em; /* space between */\n  }\n.fc-direction-rtl .fc-toolbar > * > :not(:first-child) {\n    margin-right: .75em; /* space between */\n  }\n.fc-direction-rtl .fc-toolbar-ltr { /* when the toolbar-chunk positioning system is explicitly left-to-right */\n    flex-direction: row-reverse;\n  }\n.fc .fc-scroller {\n    -webkit-overflow-scrolling: touch;\n    position: relative; /* for abs-positioned elements within */\n  }\n.fc .fc-scroller-liquid {\n    height: 100%;\n  }\n.fc .fc-scroller-liquid-absolute {\n    position: absolute;\n    top: 0;\n    right: 0;\n    left: 0;\n    bottom: 0;\n  }\n.fc .fc-scroller-harness {\n    position: relative;\n    overflow: hidden;\n    direction: ltr;\n      /* hack for chrome computing the scroller\'s right/left wrong for rtl. undone below... */\n      /* TODO: demonstrate in codepen */\n  }\n.fc .fc-scroller-harness-liquid {\n    height: 100%;\n  }\n.fc-direction-rtl .fc-scroller-harness > .fc-scroller { /* undo above hack */\n    direction: rtl;\n  }\n.fc-theme-standard .fc-scrollgrid {\n    border: 1px solid #ddd;\n    border: 1px solid var(--fc-border-color, #ddd); /* bootstrap does this. match */\n  }\n.fc .fc-scrollgrid,\n    .fc .fc-scrollgrid table { /* all tables (self included) */\n      width: 100%; /* because tables don\'t normally do this */\n      table-layout: fixed;\n    }\n.fc .fc-scrollgrid table { /* inner tables */\n      border-top-style: hidden;\n      border-left-style: hidden;\n      border-right-style: hidden;\n    }\n.fc .fc-scrollgrid {\n\n    border-collapse: separate;\n    border-right-width: 0;\n    border-bottom-width: 0;\n\n  }\n.fc .fc-scrollgrid-liquid {\n    height: 100%;\n  }\n.fc .fc-scrollgrid-section { /* a <tr> */\n    height: 1px /* better than 0, for firefox */\n\n  }\n.fc .fc-scrollgrid-section > td {\n      height: 1px; /* needs a height so inner div within grow. better than 0, for firefox */\n    }\n.fc .fc-scrollgrid-section table {\n      height: 1px;\n        /* for most browsers, if a height isn\'t set on the table, can\'t do liquid-height within cells */\n        /* serves as a min-height. harmless */\n    }\n.fc .fc-scrollgrid-section-liquid {\n    height: auto\n\n  }\n.fc .fc-scrollgrid-section-liquid > td {\n      height: 100%; /* better than `auto`, for firefox */\n    }\n.fc .fc-scrollgrid-section > * {\n    border-top-width: 0;\n    border-left-width: 0;\n  }\n.fc .fc-scrollgrid-section-header > *,\n  .fc .fc-scrollgrid-section-footer > * {\n    border-bottom-width: 0;\n  }\n.fc .fc-scrollgrid-section-body table,\n  .fc .fc-scrollgrid-section-footer table {\n    border-bottom-style: hidden; /* head keeps its bottom border tho */\n  }\n.fc {\n\n  /* stickiness */\n\n}\n.fc .fc-scrollgrid-section-sticky > * {\n    background: #fff;\n    background: var(--fc-page-bg-color, #fff);\n    position: -webkit-sticky;\n    position: sticky;\n    z-index: 2; /* TODO: var */\n    /* TODO: box-shadow when sticking */\n  }\n.fc .fc-scrollgrid-section-header.fc-scrollgrid-section-sticky > * {\n    top: 0; /* because border-sharing causes a gap at the top */\n      /* TODO: give safari -1. has bug */\n  }\n.fc .fc-scrollgrid-section-footer.fc-scrollgrid-section-sticky > * {\n    bottom: 0; /* known bug: bottom-stickiness doesn\'t work in safari */\n  }\n.fc .fc-scrollgrid-sticky-shim { /* for horizontal scrollbar */\n    height: 1px; /* needs height to create scrollbars */\n    margin-bottom: -1px;\n  }\n.fc-sticky { /* no .fc wrap because used as child of body */\n  position: -webkit-sticky;\n  position: sticky;\n}\n.fc .fc-view-harness {\n    flex-grow: 1; /* because this harness is WITHIN the .fc\'s flexbox */\n    position: relative;\n  }\n.fc {\n\n  /* when the harness controls the height, make the view liquid */\n\n}\n.fc .fc-view-harness-active > .fc-view {\n    position: absolute;\n    top: 0;\n    right: 0;\n    bottom: 0;\n    left: 0;\n  }\n.fc .fc-col-header-cell-cushion {\n    display: inline-block; /* x-browser for when sticky (when multi-tier header) */\n    padding: 2px 4px;\n  }\n.fc .fc-bg-event,\n  .fc .fc-non-business,\n  .fc .fc-highlight {\n    /* will always have a harness with position:relative/absolute, so absolutely expand */\n    position: absolute;\n    top: 0;\n    left: 0;\n    right: 0;\n    bottom: 0;\n  }\n.fc .fc-non-business {\n    background: rgba(215, 215, 215, 0.3);\n    background: var(--fc-non-business-color, rgba(215, 215, 215, 0.3));\n  }\n.fc .fc-bg-event {\n    background: rgb(143, 223, 130);\n    background: var(--fc-bg-event-color, rgb(143, 223, 130));\n    opacity: 0.3;\n    opacity: var(--fc-bg-event-opacity, 0.3)\n  }\n.fc .fc-bg-event .fc-event-title {\n      margin: .5em;\n      font-size: .85em;\n      font-size: var(--fc-small-font-size, .85em);\n      font-style: italic;\n    }\n.fc .fc-highlight {\n    background: rgba(188, 232, 241, 0.3);\n    background: var(--fc-highlight-color, rgba(188, 232, 241, 0.3));\n  }\n.fc .fc-cell-shaded,\n  .fc .fc-day-disabled {\n    background: rgba(208, 208, 208, 0.3);\n    background: var(--fc-neutral-bg-color, rgba(208, 208, 208, 0.3));\n  }\n/* link resets */\n/* ---------------------------------------------------------------------------------------------------- */\na.fc-event,\na.fc-event:hover {\n  text-decoration: none;\n}\n/* cursor */\n.fc-event[href],\n.fc-event.fc-event-draggable {\n  cursor: pointer;\n}\n/* event text content */\n/* ---------------------------------------------------------------------------------------------------- */\n.fc-event .fc-event-main {\n    position: relative;\n    z-index: 2;\n  }\n/* dragging */\n/* ---------------------------------------------------------------------------------------------------- */\n.fc-event-dragging:not(.fc-event-selected) { /* MOUSE */\n    opacity: 0.75;\n  }\n.fc-event-dragging.fc-event-selected { /* TOUCH */\n    box-shadow: 0 2px 7px rgba(0, 0, 0, 0.3);\n  }\n/* resizing */\n/* ---------------------------------------------------------------------------------------------------- */\n/* (subclasses should hone positioning for touch and non-touch) */\n.fc-event .fc-event-resizer {\n    display: none;\n    position: absolute;\n    z-index: 4;\n  }\n.fc-event:hover, /* MOUSE */\n.fc-event-selected { /* TOUCH */\n\n}\n.fc-event:hover .fc-event-resizer, .fc-event-selected .fc-event-resizer {\n    display: block;\n  }\n.fc-event-selected .fc-event-resizer {\n    border-radius: 4px;\n    border-radius: calc(var(--fc-event-resizer-dot-total-width, 8px) / 2);\n    border-width: 1px;\n    border-width: var(--fc-event-resizer-dot-border-width, 1px);\n    width: 8px;\n    width: var(--fc-event-resizer-dot-total-width, 8px);\n    height: 8px;\n    height: var(--fc-event-resizer-dot-total-width, 8px);\n    border-style: solid;\n    border-color: inherit;\n    background: #fff;\n    background: var(--fc-page-bg-color, #fff)\n\n    /* expand hit area */\n\n  }\n.fc-event-selected .fc-event-resizer:before {\n      content: \'\';\n      position: absolute;\n      top: -20px;\n      left: -20px;\n      right: -20px;\n      bottom: -20px;\n    }\n/* selecting (always TOUCH) */\n/* ---------------------------------------------------------------------------------------------------- */\n.fc-event-selected {\n  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2)\n\n  /* expand hit area (subclasses should expand) */\n\n}\n.fc-event-selected:before {\n    content: "";\n    position: absolute;\n    z-index: 3;\n    top: 0;\n    left: 0;\n    right: 0;\n    bottom: 0;\n  }\n.fc-event-selected {\n\n  /* dimmer effect */\n\n}\n.fc-event-selected:after {\n    content: "";\n    background: rgba(0, 0, 0, 0.25);\n    background: var(--fc-event-selected-overlay-color, rgba(0, 0, 0, 0.25));\n    position: absolute;\n    z-index: 1;\n\n    /* assume there\'s a border on all sides. overcome it. */\n    /* sometimes there\'s NOT a border, in which case the dimmer will go over */\n    /* an adjacent border, which looks fine. */\n    top: -1px;\n    left: -1px;\n    right: -1px;\n    bottom: -1px;\n  }\n/*\nA HORIZONTAL event\n*/\n.fc-h-event { /* allowed to be top-level */\n  display: block;\n  border: 1px solid #3788d8;\n  border: 1px solid var(--fc-event-border-color, #3788d8);\n  background-color: #3788d8;\n  background-color: var(--fc-event-bg-color, #3788d8)\n\n}\n.fc-h-event .fc-event-main {\n    color: #fff;\n    color: var(--fc-event-text-color, #fff);\n  }\n.fc-h-event .fc-event-main-frame {\n    display: flex; /* for make fc-event-title-container expand */\n  }\n.fc-h-event .fc-event-time {\n    max-width: 100%; /* clip overflow on this element */\n    overflow: hidden;\n  }\n.fc-h-event .fc-event-title-container { /* serves as a container for the sticky cushion */\n    flex-grow: 1;\n    flex-shrink: 1;\n    min-width: 0; /* important for allowing to shrink all the way */\n  }\n.fc-h-event .fc-event-title {\n    display: inline-block; /* need this to be sticky cross-browser */\n    vertical-align: top; /* for not messing up line-height */\n    left: 0;  /* for sticky */\n    right: 0; /* for sticky */\n    max-width: 100%; /* clip overflow on this element */\n    overflow: hidden;\n  }\n.fc-h-event.fc-event-selected:before {\n    /* expand hit area */\n    top: -10px;\n    bottom: -10px;\n  }\n/* adjust border and border-radius (if there is any) for non-start/end */\n.fc-direction-ltr .fc-daygrid-block-event:not(.fc-event-start),\n.fc-direction-rtl .fc-daygrid-block-event:not(.fc-event-end) {\n  border-top-left-radius: 0;\n  border-bottom-left-radius: 0;\n  border-left-width: 0;\n}\n.fc-direction-ltr .fc-daygrid-block-event:not(.fc-event-end),\n.fc-direction-rtl .fc-daygrid-block-event:not(.fc-event-start) {\n  border-top-right-radius: 0;\n  border-bottom-right-radius: 0;\n  border-right-width: 0;\n}\n/* resizers */\n.fc-h-event:not(.fc-event-selected) .fc-event-resizer {\n  top: 0;\n  bottom: 0;\n  width: 8px;\n  width: var(--fc-event-resizer-thickness, 8px);\n}\n.fc-direction-ltr .fc-h-event:not(.fc-event-selected) .fc-event-resizer-start,\n.fc-direction-rtl .fc-h-event:not(.fc-event-selected) .fc-event-resizer-end {\n  cursor: w-resize;\n  left: -4px;\n  left: calc(var(--fc-event-resizer-thickness, 8px) / -2);\n}\n.fc-direction-ltr .fc-h-event:not(.fc-event-selected) .fc-event-resizer-end,\n.fc-direction-rtl .fc-h-event:not(.fc-event-selected) .fc-event-resizer-start {\n  cursor: e-resize;\n  right: -4px;\n  right: calc(var(--fc-event-resizer-thickness, 8px) / -2);\n}\n/* resizers for TOUCH */\n.fc-h-event.fc-event-selected .fc-event-resizer {\n  top: 50%;\n  margin-top: -4px;\n  margin-top: calc(var(--fc-event-resizer-dot-total-width, 8px) / -2);\n}\n.fc-direction-ltr .fc-h-event.fc-event-selected .fc-event-resizer-start,\n.fc-direction-rtl .fc-h-event.fc-event-selected .fc-event-resizer-end {\n  left: -4px;\n  left: calc(var(--fc-event-resizer-dot-total-width, 8px) / -2);\n}\n.fc-direction-ltr .fc-h-event.fc-event-selected .fc-event-resizer-end,\n.fc-direction-rtl .fc-h-event.fc-event-selected .fc-event-resizer-start {\n  right: -4px;\n  right: calc(var(--fc-event-resizer-dot-total-width, 8px) / -2);\n}\n', ""]), t.a = o
    },
    137: function(e, t, n) {
        "use strict";
        var r = n(19),
            o = n.n(r)()((function(e) {
                return e[1]
            }));
        o.push([e.i, "\n\n  .fc-theme-bootstrap a:not([href]) {\n    color: inherit; /* natural color for navlinks */\n  }\n", ""]), t.a = o
    },
    138: function(e, t, n) {
        "use strict";
        var r = n(19),
            o = n.n(r)()((function(e) {
                return e[1]
            }));
        o.push([e.i, '\n:root {\n  --fc-daygrid-event-dot-width: 8px;\n}\n.fc .fc-popover {\n    position: fixed;\n    top: 0; /* for when not positioned yet */\n    box-shadow: 0 2px 6px rgba(0,0,0,.15);\n  }\n.fc .fc-popover-header {\n    display: flex;\n    flex-direction: row;\n    justify-content: space-between;\n    align-items: center;\n    padding: 3px 4px;\n  }\n.fc .fc-popover-title {\n    margin: 0 2px;\n  }\n.fc .fc-popover-close {\n    cursor: pointer;\n    opacity: 0.65;\n    font-size: 1.1em;\n  }\n.fc-theme-standard .fc-popover {\n    border: 1px solid #ddd;\n    border: 1px solid var(--fc-border-color, #ddd);\n    background: #fff;\n    background: var(--fc-page-bg-color, #fff);\n  }\n.fc-theme-standard .fc-popover-header {\n    background: rgba(208, 208, 208, 0.3);\n    background: var(--fc-neutral-bg-color, rgba(208, 208, 208, 0.3));\n  }\n/* help things clear margins of inner content */\n.fc-daygrid-day-frame,\n.fc-daygrid-day-events,\n.fc-daygrid-event-harness { /* for event top/bottom margins */\n}\n.fc-daygrid-day-frame:before, .fc-daygrid-day-events:before, .fc-daygrid-event-harness:before {\n  content: "";\n  clear: both;\n  display: table; }\n.fc-daygrid-day-frame:after, .fc-daygrid-day-events:after, .fc-daygrid-event-harness:after {\n  content: "";\n  clear: both;\n  display: table; }\n.fc .fc-daygrid-body { /* a <div> that wraps the table */\n    position: relative;\n    z-index: 1; /* container inner z-index\'s because <tr>s can\'t do it */\n  }\n.fc .fc-daygrid-day.fc-day-today {\n      background-color: rgba(255, 220, 40, 0.15);\n      background-color: var(--fc-today-bg-color, rgba(255, 220, 40, 0.15));\n    }\n.fc .fc-daygrid-day-frame {\n    position: relative;\n    min-height: 100%; /* seems to work better than `height` because sets height after rows/cells naturally do it */\n  }\n.fc {\n\n  /* cell top */\n\n}\n.fc .fc-daygrid-day-top {\n    display: flex;\n    flex-direction: row-reverse;\n  }\n.fc .fc-day-other .fc-daygrid-day-top {\n    opacity: 0.3;\n  }\n.fc {\n\n  /* day number (within cell top) */\n\n}\n.fc .fc-daygrid-day-number {\n    position: relative;\n    z-index: 4;\n    padding: 4px;\n  }\n.fc {\n\n  /* event container */\n\n}\n.fc .fc-daygrid-day-events {\n    margin-top: 1px; /* needs to be margin, not padding, so that available cell height can be computed */\n  }\n.fc {\n\n  /* positioning for balanced vs natural */\n\n}\n.fc .fc-daygrid-body-balanced .fc-daygrid-day-events {\n      position: absolute;\n      left: 0;\n      right: 0;\n    }\n.fc .fc-daygrid-body-unbalanced .fc-daygrid-day-events {\n      position: relative; /* for containing abs positioned event harnesses */\n      min-height: 2em; /* in addition to being a min-height during natural height, equalizes the heights a little bit */\n    }\n.fc .fc-daygrid-body-natural { /* can coexist with -unbalanced */\n  }\n.fc .fc-daygrid-body-natural .fc-daygrid-day-events {\n      margin-bottom: 1em;\n    }\n.fc {\n\n  /* event harness */\n\n}\n.fc .fc-daygrid-event-harness {\n    position: relative;\n  }\n.fc .fc-daygrid-event-harness-abs {\n    position: absolute;\n    top: 0; /* fallback coords for when cannot yet be computed */\n    left: 0; /* */\n    right: 0; /* */\n  }\n.fc .fc-daygrid-bg-harness {\n    position: absolute;\n    top: 0;\n    bottom: 0;\n  }\n.fc {\n\n  /* bg content */\n\n}\n.fc .fc-daygrid-day-bg .fc-non-business { z-index: 1 }\n.fc .fc-daygrid-day-bg .fc-bg-event { z-index: 2 }\n.fc .fc-daygrid-day-bg .fc-highlight { z-index: 3 }\n.fc {\n\n  /* events */\n\n}\n.fc .fc-daygrid-event {\n    z-index: 6;\n    margin-top: 1px;\n  }\n.fc .fc-daygrid-event.fc-event-mirror {\n    z-index: 7;\n  }\n.fc {\n\n  /* cell bottom (within day-events) */\n\n}\n.fc .fc-daygrid-day-bottom {\n    font-size: .85em;\n    margin: 2px 3px 0;\n  }\n.fc .fc-daygrid-more-link {\n    position: relative;\n    z-index: 4;\n    cursor: pointer;\n  }\n.fc {\n\n  /* week number (within frame) */\n\n}\n.fc .fc-daygrid-week-number {\n    position: absolute;\n    z-index: 5;\n    top: 0;\n    padding: 2px;\n    min-width: 1.5em;\n    text-align: center;\n    background-color: rgba(208, 208, 208, 0.3);\n    background-color: var(--fc-neutral-bg-color, rgba(208, 208, 208, 0.3));\n    color: #808080;\n    color: var(--fc-neutral-text-color, #808080);\n  }\n.fc {\n\n  /* popover */\n\n}\n.fc .fc-more-popover {\n    z-index: 8;\n  }\n.fc .fc-more-popover .fc-popover-body {\n    min-width: 220px;\n    padding: 10px;\n  }\n.fc-direction-ltr .fc-daygrid-event.fc-event-start,\n.fc-direction-rtl .fc-daygrid-event.fc-event-end {\n  margin-left: 2px;\n}\n.fc-direction-ltr .fc-daygrid-event.fc-event-end,\n.fc-direction-rtl .fc-daygrid-event.fc-event-start {\n  margin-right: 2px;\n}\n.fc-direction-ltr .fc-daygrid-week-number {\n    left: 0;\n    border-radius: 0 0 3px 0;\n  }\n.fc-direction-rtl .fc-daygrid-week-number {\n    right: 0;\n    border-radius: 0 0 0 3px;\n  }\n.fc-liquid-hack .fc-daygrid-day-frame {\n    position: static; /* will cause inner absolute stuff to expand to <td> */\n  }\n.fc-daygrid-event { /* make root-level, because will be dragged-and-dropped outside of a component root */\n  position: relative; /* for z-indexes assigned later */\n  white-space: nowrap;\n  border-radius: 3px; /* dot event needs this to when selected */\n  font-size: .85em;\n  font-size: var(--fc-small-font-size, .85em);\n}\n/* --- the rectangle ("block") style of event --- */\n.fc-daygrid-block-event .fc-event-time {\n    font-weight: bold;\n  }\n.fc-daygrid-block-event .fc-event-time,\n  .fc-daygrid-block-event .fc-event-title {\n    padding: 1px;\n  }\n/* --- the dot style of event --- */\n.fc-daygrid-dot-event {\n  display: flex;\n  align-items: center;\n  padding: 2px 0\n\n}\n.fc-daygrid-dot-event .fc-event-title {\n    flex-grow: 1;\n    flex-shrink: 1;\n    min-width: 0; /* important for allowing to shrink all the way */\n    overflow: hidden;\n    font-weight: bold;\n  }\n.fc-daygrid-dot-event:hover,\n  .fc-daygrid-dot-event.fc-event-mirror {\n    background: rgba(0, 0, 0, 0.1);\n  }\n.fc-daygrid-dot-event.fc-event-selected:before {\n    /* expand hit area */\n    top: -10px;\n    bottom: -10px;\n  }\n.fc-daygrid-event-dot { /* the actual dot */\n  margin: 0 4px;\n  box-sizing: content-box;\n  width: 0;\n  height: 0;\n  border: 4px solid #3788d8;\n  border: calc(var(--fc-daygrid-event-dot-width, 8px) / 2) solid var(--fc-event-border-color, #3788d8);\n  border-radius: 4px;\n  border-radius: calc(var(--fc-daygrid-event-dot-width, 8px) / 2);\n}\n/* --- spacing between time and title --- */\n.fc-direction-ltr .fc-daygrid-event .fc-event-time {\n    margin-right: 3px;\n  }\n.fc-direction-rtl .fc-daygrid-event .fc-event-time {\n    margin-left: 3px;\n  }\n', ""]), t.a = o
    },
    139: function(e, t, n) {
        "use strict";
        var r = n(19),
            o = n.n(r)()((function(e) {
                return e[1]
            }));
        o.push([e.i, '\n:root {\n  --fc-list-event-dot-width: 10px;\n  --fc-list-event-hover-bg-color: #f5f5f5;\n}\n.fc-theme-standard .fc-list {\n    border: 1px solid #ddd;\n    border: 1px solid var(--fc-border-color, #ddd);\n  }\n.fc {\n\n  /* message when no events */\n\n}\n.fc .fc-list-empty {\n    background-color: rgba(208, 208, 208, 0.3);\n    background-color: var(--fc-neutral-bg-color, rgba(208, 208, 208, 0.3));\n    height: 100%;\n    display: flex;\n    justify-content: center;\n    align-items: center; /* vertically aligns fc-list-empty-inner */\n  }\n.fc .fc-list-empty-cushion {\n    margin: 5em 0;\n  }\n.fc {\n\n  /* table within the scroller */\n  /* ---------------------------------------------------------------------------------------------------- */\n\n}\n.fc .fc-list-table {\n    width: 100%;\n    border-style: hidden; /* kill outer border on theme */\n  }\n.fc .fc-list-table tr > * {\n    border-left: 0;\n    border-right: 0;\n  }\n.fc .fc-list-sticky .fc-list-day > * { /* the cells */\n      position: -webkit-sticky;\n      position: sticky;\n      top: 0;\n      background: #fff;\n      background: var(--fc-page-bg-color, #fff); /* for when headers are styled to be transparent and sticky */\n    }\n.fc .fc-list-table th {\n    padding: 0; /* uses an inner-wrapper instead... */\n  }\n.fc .fc-list-table td,\n  .fc .fc-list-day-cushion {\n    padding: 8px 14px;\n  }\n.fc {\n\n\n  /* date heading rows */\n  /* ---------------------------------------------------------------------------------------------------- */\n\n}\n.fc .fc-list-day-cushion:after {\n  content: "";\n  clear: both;\n  display: table; /* clear floating */\n    }\n.fc-theme-standard .fc-list-day-cushion {\n    background-color: rgba(208, 208, 208, 0.3);\n    background-color: var(--fc-neutral-bg-color, rgba(208, 208, 208, 0.3));\n  }\n.fc-direction-ltr .fc-list-day-text,\n.fc-direction-rtl .fc-list-day-side-text {\n  float: left;\n}\n.fc-direction-ltr .fc-list-day-side-text,\n.fc-direction-rtl .fc-list-day-text {\n  float: right;\n}\n/* make the dot closer to the event title */\n.fc-direction-ltr .fc-list-table .fc-list-event-graphic { padding-right: 0 }\n.fc-direction-rtl .fc-list-table .fc-list-event-graphic { padding-left: 0 }\n.fc .fc-list-event.fc-event-forced-url {\n    cursor: pointer; /* whole row will seem clickable */\n  }\n.fc .fc-list-event:hover td {\n    background-color: #f5f5f5;\n    background-color: var(--fc-list-event-hover-bg-color, #f5f5f5);\n  }\n.fc {\n\n  /* shrink certain cols */\n\n}\n.fc .fc-list-event-graphic,\n  .fc .fc-list-event-time {\n    white-space: nowrap;\n    width: 1px;\n  }\n.fc .fc-list-event-dot {\n    display: inline-block;\n    box-sizing: content-box;\n    width: 0;\n    height: 0;\n    border: 5px solid #3788d8;\n    border: calc(var(--fc-list-event-dot-width, 10px) / 2) solid var(--fc-event-border-color, #3788d8);\n    border-radius: 5px;\n    border-radius: calc(var(--fc-list-event-dot-width, 10px) / 2);\n  }\n.fc {\n\n  /* reset <a> styling */\n\n}\n.fc .fc-list-event-title a {\n    color: inherit;\n    text-decoration: none;\n  }\n.fc {\n\n  /* underline link when hovering over any part of row */\n\n}\n.fc .fc-list-event.fc-event-forced-url:hover a {\n    text-decoration: underline;\n  }\n', ""]), t.a = o
    },
    140: function(e, t, n) {
        "use strict";
        var r = n(19),
            o = n.n(r)()((function(e) {
                return e[1]
            }));
        o.push([e.i, '\n/*\nA VERTICAL event\n*/\n\n.fc-v-event { /* allowed to be top-level */\n  display: block;\n  border: 1px solid #3788d8;\n  border: 1px solid var(--fc-event-border-color, #3788d8);\n  background-color: #3788d8;\n  background-color: var(--fc-event-bg-color, #3788d8)\n\n}\n\n.fc-v-event .fc-event-main {\n    color: #fff;\n    color: var(--fc-event-text-color, #fff);\n    height: 100%;\n  }\n\n.fc-v-event .fc-event-main-frame {\n    height: 100%;\n    display: flex;\n    flex-direction: column;\n  }\n\n.fc-v-event .fc-event-time {\n    flex-grow: 0;\n    flex-shrink: 0;\n    max-height: 100%;\n    overflow: hidden;\n  }\n\n.fc-v-event .fc-event-title-container { /* a container for the sticky cushion */\n    flex-grow: 1;\n    flex-shrink: 1;\n    min-height: 0; /* important for allowing to shrink all the way */\n  }\n\n.fc-v-event .fc-event-title { /* will have fc-sticky on it */\n    top: 0;\n    bottom: 0;\n    max-height: 100%; /* clip overflow */\n    overflow: hidden;\n  }\n\n.fc-v-event:not(.fc-event-start) {\n    border-top-width: 0;\n    border-top-left-radius: 0;\n    border-top-right-radius: 0;\n  }\n\n.fc-v-event:not(.fc-event-end) {\n    border-bottom-width: 0;\n    border-bottom-left-radius: 0;\n    border-bottom-right-radius: 0;\n  }\n\n.fc-v-event.fc-event-selected:before {\n    /* expand hit area */\n    left: -10px;\n    right: -10px;\n  }\n\n.fc-v-event {\n\n  /* resizer (mouse AND touch) */\n\n}\n\n.fc-v-event .fc-event-resizer-start {\n    cursor: n-resize;\n  }\n\n.fc-v-event .fc-event-resizer-end {\n    cursor: s-resize;\n  }\n\n.fc-v-event {\n\n  /* resizer for MOUSE */\n\n}\n\n.fc-v-event:not(.fc-event-selected) .fc-event-resizer {\n      height: 8px;\n      height: var(--fc-event-resizer-thickness, 8px);\n      left: 0;\n      right: 0;\n    }\n\n.fc-v-event:not(.fc-event-selected) .fc-event-resizer-start {\n      top: -4px;\n      top: calc(var(--fc-event-resizer-thickness, 8px) / -2);\n    }\n\n.fc-v-event:not(.fc-event-selected) .fc-event-resizer-end {\n      bottom: -4px;\n      bottom: calc(var(--fc-event-resizer-thickness, 8px) / -2);\n    }\n\n.fc-v-event {\n\n  /* resizer for TOUCH (when event is "selected") */\n\n}\n\n.fc-v-event.fc-event-selected .fc-event-resizer {\n      left: 50%;\n      margin-left: -4px;\n      margin-left: calc(var(--fc-event-resizer-dot-total-width, 8px) / -2);\n    }\n\n.fc-v-event.fc-event-selected .fc-event-resizer-start {\n      top: -4px;\n      top: calc(var(--fc-event-resizer-dot-total-width, 8px) / -2);\n    }\n\n.fc-v-event.fc-event-selected .fc-event-resizer-end {\n      bottom: -4px;\n      bottom: calc(var(--fc-event-resizer-dot-total-width, 8px) / -2);\n    }\n.fc .fc-timegrid .fc-daygrid-body { /* the all-day daygrid within the timegrid view */\n    z-index: 2; /* put above the timegrid-body so that more-popover is above everything. TODO: better solution */\n  }\n.fc .fc-timegrid-divider {\n    padding: 0 0 2px; /* browsers get confused when you set height. use padding instead */\n  }\n.fc .fc-timegrid-body {\n    position: relative;\n    z-index: 1; /* scope the z-indexes of slots and cols */\n    min-height: 100%; /* fill height always, even when slat table doesn\'t grow */\n  }\n.fc .fc-timegrid-axis-chunk { /* for advanced ScrollGrid */\n    position: relative /* offset parent for now-indicator-container */\n\n  }\n.fc .fc-timegrid-axis-chunk > table {\n      position: relative;\n      z-index: 1; /* above the now-indicator-container */\n    }\n.fc .fc-timegrid-slots {\n    position: relative;\n    z-index: 1;\n  }\n.fc .fc-timegrid-slot { /* a <td> */\n    height: 1.5em;\n    border-bottom: 0 /* each cell owns its top border */\n  }\n.fc .fc-timegrid-slot:empty:before {\n      content: \'\\00a0\'; /* make sure there\'s at least an empty space to create height for height syncing */\n    }\n.fc .fc-timegrid-slot-minor {\n    border-top-style: dotted;\n  }\n.fc .fc-timegrid-slot-label-cushion {\n    display: inline-block;\n    white-space: nowrap;\n  }\n.fc .fc-timegrid-slot-label {\n    vertical-align: middle; /* vertical align the slots */\n  }\n.fc {\n\n\n  /* slots AND axis cells (top-left corner of view including the "all-day" text) */\n\n}\n.fc .fc-timegrid-axis-cushion,\n  .fc .fc-timegrid-slot-label-cushion {\n    padding: 0 4px;\n  }\n.fc {\n\n\n  /* axis cells (top-left corner of view including the "all-day" text) */\n  /* vertical align is more complicated, uses flexbox */\n\n}\n.fc .fc-timegrid-axis-frame-liquid {\n    height: 100%; /* will need liquid-hack in FF */\n  }\n.fc .fc-timegrid-axis-frame {\n    overflow: hidden;\n    display: flex;\n    align-items: center; /* vertical align */\n    justify-content: flex-end; /* horizontal align. matches text-align below */\n  }\n.fc .fc-timegrid-axis-cushion {\n    max-width: 60px; /* limits the width of the "all-day" text */\n    flex-shrink: 0; /* allows text to expand how it normally would, regardless of constrained width */\n  }\n.fc-direction-ltr .fc-timegrid-slot-label-frame {\n    text-align: right;\n  }\n.fc-direction-rtl .fc-timegrid-slot-label-frame {\n    text-align: left;\n  }\n.fc-liquid-hack .fc-timegrid-axis-frame-liquid {\n  height: auto;\n  position: absolute;\n  top: 0;\n  right: 0;\n  bottom: 0;\n  left: 0;\n  }\n.fc .fc-timegrid-col.fc-day-today {\n      background-color: rgba(255, 220, 40, 0.15);\n      background-color: var(--fc-today-bg-color, rgba(255, 220, 40, 0.15));\n    }\n.fc .fc-timegrid-col-frame {\n    min-height: 100%; /* liquid-hack is below */\n    position: relative;\n  }\n.fc-liquid-hack .fc-timegrid-col-frame {\n  height: auto;\n  position: absolute;\n  top: 0;\n  right: 0;\n  bottom: 0;\n  left: 0;\n  }\n.fc-media-screen .fc-timegrid-cols {\n    position: absolute; /* no z-index. children will decide and go above slots */\n    top: 0;\n    left: 0;\n    right: 0;\n    bottom: 0\n  }\n.fc-media-screen .fc-timegrid-cols > table {\n      height: 100%;\n    }\n.fc-media-screen .fc-timegrid-col-bg,\n  .fc-media-screen .fc-timegrid-col-events,\n  .fc-media-screen .fc-timegrid-now-indicator-container {\n    position: absolute;\n    top: 0;\n    left: 0;\n    right: 0;\n  }\n.fc-media-screen .fc-timegrid-event-harness {\n    position: absolute; /* top/left/right/bottom will all be set by JS */\n  }\n.fc {\n\n  /* bg */\n\n}\n.fc .fc-timegrid-col-bg {\n    z-index: 2; /* TODO: kill */\n  }\n.fc .fc-timegrid-col-bg .fc-non-business { z-index: 1 }\n.fc .fc-timegrid-col-bg .fc-bg-event { z-index: 2 }\n.fc .fc-timegrid-col-bg .fc-highlight { z-index: 3 }\n.fc .fc-timegrid-bg-harness {\n    position: absolute; /* top/bottom will be set by JS */\n    left: 0;\n    right: 0;\n  }\n.fc {\n\n  /* fg events */\n  /* (the mirror segs are put into a separate container with same classname, */\n  /* and they must be after the normal seg container to appear at a higher z-index) */\n\n}\n.fc .fc-timegrid-col-events {\n    z-index: 3;\n    /* child event segs have z-indexes that are scoped within this div */\n  }\n.fc {\n\n  /* now indicator */\n\n}\n.fc .fc-timegrid-now-indicator-container {\n    bottom: 0;\n    overflow: hidden; /* don\'t let overflow of lines/arrows cause unnecessary scrolling */\n    /* z-index is set on the individual elements */\n  }\n.fc-direction-ltr .fc-timegrid-col-events {\n    margin: 0 2.5% 0 2px;\n  }\n.fc-direction-rtl .fc-timegrid-col-events {\n    margin: 0 2px 0 2.5%;\n  }\n.fc-timegrid-event-harness-inset .fc-timegrid-event,\n.fc-timegrid-event.fc-event-mirror {\n  box-shadow: 0px 0px 0px 1px #fff;\n  box-shadow: 0px 0px 0px 1px var(--fc-page-bg-color, #fff);\n}\n.fc-timegrid-event { /* events need to be root */\n\n  font-size: .85em;\n\n  font-size: var(--fc-small-font-size, .85em);\n  border-radius: 3px\n\n}\n.fc-timegrid-event .fc-event-main {\n    padding: 1px 1px 0;\n  }\n.fc-timegrid-event .fc-event-time {\n    white-space: nowrap;\n    font-size: .85em;\n    font-size: var(--fc-small-font-size, .85em);\n    margin-bottom: 1px;\n  }\n.fc-timegrid-event-condensed .fc-event-main-frame {\n    flex-direction: row;\n    overflow: hidden;\n  }\n.fc-timegrid-event-condensed .fc-event-time:after {\n    content: \'\\00a0-\\00a0\'; /* dash surrounded by non-breaking spaces */\n  }\n.fc-timegrid-event-condensed .fc-event-title {\n    font-size: .85em;\n    font-size: var(--fc-small-font-size, .85em)\n  }\n.fc-media-screen .fc-timegrid-event {\n    position: absolute; /* absolute WITHIN the harness */\n    top: 0;\n    bottom: 1px; /* stay away from bottom slot line */\n    left: 0;\n    right: 0;\n  }\n.fc {\n\n  /* line */\n\n}\n.fc .fc-timegrid-now-indicator-line {\n    position: absolute;\n    z-index: 4;\n    left: 0;\n    right: 0;\n    border-style: solid;\n    border-color: red;\n    border-color: var(--fc-now-indicator-color, red);\n    border-width: 1px 0 0;\n  }\n.fc {\n\n  /* arrow */\n\n}\n.fc .fc-timegrid-now-indicator-arrow {\n    position: absolute;\n    z-index: 4;\n    margin-top: -5px; /* vertically center on top coordinate */\n    border-style: solid;\n    border-color: red;\n    border-color: var(--fc-now-indicator-color, red);\n  }\n.fc-direction-ltr .fc-timegrid-now-indicator-arrow {\n    left: 0;\n\n    /* triangle pointing right. TODO: mixin */\n    border-width: 5px 0 5px 6px;\n    border-top-color: transparent;\n    border-bottom-color: transparent;\n  }\n.fc-direction-rtl .fc-timegrid-now-indicator-arrow {\n    right: 0;\n\n    /* triangle pointing left. TODO: mixin */\n    border-width: 5px 6px 5px 0;\n    border-top-color: transparent;\n    border-bottom-color: transparent;\n  }\n', ""]), t.a = o
    },
    141: function(e, t, n) {
        "use strict";
        var r = n(19),
            o = n.n(r)()((function(e) {
                return e[1]
            }));
        o.push([e.i, "\n\n  .fc .fc-timeline-body {\n    min-height: 100%;\n    position: relative;\n    z-index: 1; /* scope slots, bg, etc */\n  }\n/*\nvertical slots in both the header AND the body\n*/\n.fc .fc-timeline-slots {\n    position: absolute;\n    z-index: 1;\n    top: 0;\n    bottom: 0\n  }\n.fc .fc-timeline-slots > table {\n      height: 100%;\n    }\n.fc {\n\n  /* border for both header AND body cells */\n\n}\n.fc .fc-timeline-slot-minor {\n    border-style: dotted;\n  }\n.fc {\n\n  /* header cells (aka \"label\") */\n\n}\n.fc .fc-timeline-slot-frame {\n    display: flex;\n    align-items: center; /* vertical align */\n    justify-content: center; /* horizontal align */\n  }\n.fc .fc-timeline-header-row-chrono { /* a row of times */\n  }\n.fc .fc-timeline-header-row-chrono .fc-timeline-slot-frame {\n      justify-content: flex-start; /* horizontal align left or right */\n    }\n.fc .fc-timeline-slot-cushion {\n    padding: 4px 5px; /* TODO: unify with fc-col-header? */\n    white-space: nowrap;\n  }\n.fc {\n\n  /* NOTE: how does the top row of cells get horizontally centered? */\n  /* for the non-chrono-row, the fc-sticky system looks for text-align center, */\n  /* and it's a fluke that the default browser stylesheet already does this for <th> */\n  /* TODO: have StickyScrolling look at natural left coord to detect centeredness. */\n\n}\n/* only owns one side, so can do dotted */\n.fc-direction-ltr .fc-timeline-slot { border-right: 0 !important }\n.fc-direction-rtl .fc-timeline-slot { border-left: 0 !important }\n.fc .fc-timeline-now-indicator-container {\n    position: absolute;\n    z-index: 4;\n    top: 0;\n    bottom: 0;\n    left: 0;\n    right: 0;\n    width: 0;\n  }\n.fc .fc-timeline-now-indicator-arrow,\n  .fc .fc-timeline-now-indicator-line {\n    position: absolute;\n    top: 0;\n    border-style: solid;\n    border-color: red;\n    border-color: var(--fc-now-indicator-color, red);\n  }\n.fc .fc-timeline-now-indicator-arrow {\n    margin: 0 -6px; /* 5, then one more to counteract scroller's negative margins */\n\n    /* triangle pointing down. TODO: mixin */\n    border-width: 6px 5px 0 5px;\n    border-left-color: transparent;\n    border-right-color: transparent;\n  }\n.fc .fc-timeline-now-indicator-line {\n    margin: 0 -1px; /* counteract scroller's negative margins */\n    bottom: 0;\n    border-width: 0 0 0 1px;\n  }\n.fc {\n\n  /* container */\n\n}\n.fc .fc-timeline-events {\n    position: relative;\n    z-index: 3;\n    width: 0; /* for event positioning. will end up on correct side based on dir */\n  }\n.fc {\n\n  /* harness */\n\n}\n.fc .fc-timeline-event-harness {\n    position: absolute;\n    top: 0; /* for when when top can't be computed yet */\n    /* JS will set tht left/right */\n  }\n/* z-index, scoped within fc-timeline-events */\n.fc-timeline-event { z-index: 1 }\n.fc-timeline-event.fc-event-mirror { z-index: 2 }\n.fc-timeline-event {\n  position: relative; /* contains things. TODO: make part of fc-h-event and fc-v-event */\n  display: flex; /* for v-aligning start/end arrows and making fc-event-main stretch all the way */\n  align-items: center;\n  border-radius: 0;\n  padding: 2px 1px;\n  margin-bottom: 1px;\n  font-size: .85em;\n  font-size: var(--fc-small-font-size, .85em)\n\n  /* time and title spacing */\n  /* ---------------------------------------------------------------------------------------------------- */\n\n}\n.fc-timeline-event .fc-event-main {\n    flex-grow: 1;\n    flex-shrink: 1;\n    min-width: 0; /* important for allowing to shrink all the way */\n  }\n.fc-timeline-event .fc-event-time {\n    font-weight: bold;\n  }\n.fc-timeline-event .fc-event-time,\n  .fc-timeline-event .fc-event-title {\n    white-space: nowrap;\n    padding: 0 2px;\n  }\n/* move 1px away from slot line */\n.fc-direction-ltr .fc-timeline-event.fc-event-end { margin-right: 1px }\n.fc-direction-rtl .fc-timeline-event.fc-event-end { margin-left: 1px }\n/* make event beefier when overlap not allowed */\n.fc-timeline-overlap-disabled .fc-timeline-event {\n  padding-top: 5px;\n  padding-bottom: 5px;\n  margin-bottom: 0;\n}\n/* arrows indicating the event continues into past/future */\n/* ---------------------------------------------------------------------------------------------------- */\n/* part of the flexbox flow */\n.fc-timeline-event:not(.fc-event-start):before,\n.fc-timeline-event:not(.fc-event-end):after {\n  content: \"\";\n  flex-grow: 0;\n  flex-shrink: 0;\n  opacity: .5;\n\n  /* triangle. TODO: mixin */\n  width: 0;\n  height: 0;\n  margin: 0 1px;\n  border: 5px solid #000; /* TODO: var */\n  border-top-color: transparent;\n  border-bottom-color: transparent;\n}\n/* pointing left */\n.fc-direction-ltr .fc-timeline-event:not(.fc-event-start):before,\n.fc-direction-rtl .fc-timeline-event:not(.fc-event-end):after {\n  border-left: 0;\n}\n/* pointing right */\n.fc-direction-ltr .fc-timeline-event:not(.fc-event-end):after,\n.fc-direction-rtl .fc-timeline-event:not(.fc-event-start):before {\n  border-right: 0;\n}\n.fc .fc-timeline-bg { /* a container for bg content */\n    position: absolute;\n    z-index: 2;\n    top: 0;\n    bottom: 0;\n    width: 0;\n    left: 0; /* will take precedence when LTR */\n    right: 0; /* will take precedence when RTL */ /* TODO: kill */\n  }\n.fc .fc-timeline-bg .fc-non-business { z-index: 1 }\n.fc .fc-timeline-bg .fc-bg-event { z-index: 2 }\n.fc .fc-timeline-bg .fc-highlight { z-index: 3 }\n.fc .fc-timeline-bg-harness {\n    position: absolute;\n    top: 0;\n    bottom: 0;\n  }\n\n", ""]), t.a = o
    },
    18: function(e, t, n) {
        "use strict";
        var r, o = function() {
                return void 0 === r && (r = Boolean(window && document && document.all && !window.atob)), r
            },
            i = function() {
                var e = {};
                return function(t) {
                    if (void 0 === e[t]) {
                        var n = document.querySelector(t);
                        if (window.HTMLIFrameElement && n instanceof window.HTMLIFrameElement) try {
                            n = n.contentDocument.head
                        } catch (e) {
                            n = null
                        }
                        e[t] = n
                    }
                    return e[t]
                }
            }(),
            a = [];

        function s(e) {
            for (var t = -1, n = 0; n < a.length; n++)
                if (a[n].identifier === e) {
                    t = n;
                    break
                } return t
        }

        function l(e, t) {
            for (var n = {}, r = [], o = 0; o < e.length; o++) {
                var i = e[o],
                    l = t.base ? i[0] + t.base : i[0],
                    c = n[l] || 0,
                    u = "".concat(l, " ").concat(c);
                n[l] = c + 1;
                var d = s(u),
                    f = {
                        css: i[1],
                        media: i[2],
                        sourceMap: i[3]
                    }; - 1 !== d ? (a[d].references++, a[d].updater(f)) : a.push({
                    identifier: u,
                    updater: v(f, t),
                    references: 1
                }), r.push(u)
            }
            return r
        }

        function c(e) {
            var t = document.createElement("style"),
                r = e.attributes || {};
            if (void 0 === r.nonce) {
                var o = n.nc;
                o && (r.nonce = o)
            }
            if (Object.keys(r).forEach((function(e) {
                t.setAttribute(e, r[e])
            })), "function" == typeof e.insert) e.insert(t);
            else {
                var a = i(e.insert || "head");
                if (!a) throw new Error("Couldn't find a style target. This probably means that the value for the 'insert' parameter is invalid.");
                a.appendChild(t)
            }
            return t
        }
        var u, d = (u = [], function(e, t) {
            return u[e] = t, u.filter(Boolean).join("\n")
        });

        function f(e, t, n, r) {
            var o = n ? "" : r.media ? "@media ".concat(r.media, " {").concat(r.css, "}") : r.css;
            if (e.styleSheet) e.styleSheet.cssText = d(t, o);
            else {
                var i = document.createTextNode(o),
                    a = e.childNodes;
                a[t] && e.removeChild(a[t]), a.length ? e.insertBefore(i, a[t]) : e.appendChild(i)
            }
        }

        function p(e, t, n) {
            var r = n.css,
                o = n.media,
                i = n.sourceMap;
            if (o ? e.setAttribute("media", o) : e.removeAttribute("media"), i && "undefined" != typeof btoa && (r += "\n/*# sourceMappingURL=data:application/json;base64,".concat(btoa(unescape(encodeURIComponent(JSON.stringify(i)))), " */")), e.styleSheet) e.styleSheet.cssText = r;
            else {
                for (; e.firstChild;) e.removeChild(e.firstChild);
                e.appendChild(document.createTextNode(r))
            }
        }
        var h = null,
            g = 0;

        function v(e, t) {
            var n, r, o;
            if (t.singleton) {
                var i = g++;
                n = h || (h = c(t)), r = f.bind(null, n, i, !1), o = f.bind(null, n, i, !0)
            } else n = c(t), r = p.bind(null, n, t), o = function() {
                ! function(e) {
                    if (null === e.parentNode) return !1;
                    e.parentNode.removeChild(e)
                }(n)
            };
            return r(e),
                function(t) {
                    if (t) {
                        if (t.css === e.css && t.media === e.media && t.sourceMap === e.sourceMap) return;
                        r(e = t)
                    } else o()
                }
        }
        e.exports = function(e, t) {
            (t = t || {}).singleton || "boolean" == typeof t.singleton || (t.singleton = o());
            var n = l(e = e || [], t);
            return function(e) {
                if (e = e || [], "[object Array]" === Object.prototype.toString.call(e)) {
                    for (var r = 0; r < n.length; r++) {
                        var o = s(n[r]);
                        a[o].references--
                    }
                    for (var i = l(e, t), c = 0; c < n.length; c++) {
                        var u = s(n[c]);
                        0 === a[u].references && (a[u].updater(), a.splice(u, 1))
                    }
                    n = i
                }
            }
        }
    },
    19: function(e, t, n) {
        "use strict";
        e.exports = function(e) {
            var t = [];
            return t.toString = function() {
                return this.map((function(t) {
                    var n = e(t);
                    return t[2] ? "@media ".concat(t[2], " {").concat(n, "}") : n
                })).join("")
            }, t.i = function(e, n, r) {
                "string" == typeof e && (e = [
                    [null, e, ""]
                ]);
                var o = {};
                if (r)
                    for (var i = 0; i < this.length; i++) {
                        var a = this[i][0];
                        null != a && (o[a] = !0)
                    }
                for (var s = 0; s < e.length; s++) {
                    var l = [].concat(e[s]);
                    r && o[l[0]] || (n && (l[2] ? l[2] = "".concat(n, " and ").concat(l[2]) : l[2] = n), t.push(l))
                }
            }, t
        }
    },
    808: function(e, t, n) {
        "use strict";
        n.r(t), n.d(t, "Calendar", (function() {
            return Ki
        })), n.d(t, "calendarPlugins", (function() {
            return Jl
        }));
        /*! *****************************************************************************
		Copyright (c) Microsoft Corporation.

		Permission to use, copy, modify, and/or distribute this software for any
		purpose with or without fee is hereby granted.

		THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
		REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY
		AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT,
		INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM
		LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
		OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
		PERFORMANCE OF THIS SOFTWARE.
		***************************************************************************** */
        var r = function(e, t) {
            return (r = Object.setPrototypeOf || {
                    __proto__: []
                }
                instanceof Array && function(e, t) {
                    e.__proto__ = t
                } || function(e, t) {
                    for (var n in t) Object.prototype.hasOwnProperty.call(t, n) && (e[n] = t[n])
                })(e, t)
        };

        function o(e, t) {
            if ("function" != typeof t && null !== t) throw new TypeError("Class extends value " + String(t) + " is not a constructor or null");

            function n() {
                this.constructor = e
            }
            r(e, t), e.prototype = null === t ? Object.create(t) : (n.prototype = t.prototype, new n)
        }
        var i = function() {
            return (i = Object.assign || function(e) {
                for (var t, n = 1, r = arguments.length; n < r; n++)
                    for (var o in t = arguments[n]) Object.prototype.hasOwnProperty.call(t, o) && (e[o] = t[o]);
                return e
            }).apply(this, arguments)
        };
        Object.create;

        function a() {
            for (var e = 0, t = 0, n = arguments.length; t < n; t++) e += arguments[t].length;
            var r = Array(e),
                o = 0;
            for (t = 0; t < n; t++)
                for (var i = arguments[t], a = 0, s = i.length; a < s; a++, o++) r[o] = i[a];
            return r
        }
        Object.create;
        var s, l, c, u, d, f = {},
            p = [],
            h = /acit|ex(?:s|g|n|p|$)|rph|grid|ows|mnc|ntw|ine[ch]|zoo|^ord|itera/i;

        function g(e, t) {
            for (var n in t) e[n] = t[n];
            return e
        }

        function v(e) {
            var t = e.parentNode;
            t && t.removeChild(e)
        }

        function m(e, t, n) {
            var r, o, i, a = arguments,
                s = {};
            for (i in t) "key" == i ? r = t[i] : "ref" == i ? o = t[i] : s[i] = t[i];
            if (arguments.length > 3)
                for (n = [n], i = 3; i < arguments.length; i++) n.push(a[i]);
            if (null != n && (s.children = n), "function" == typeof e && null != e.defaultProps)
                for (i in e.defaultProps) void 0 === s[i] && (s[i] = e.defaultProps[i]);
            return y(e, s, r, o, null)
        }

        function y(e, t, n, r, o) {
            var i = {
                type: e,
                props: t,
                key: n,
                ref: r,
                __k: null,
                __: null,
                __b: 0,
                __e: null,
                __d: void 0,
                __c: null,
                __h: null,
                constructor: void 0,
                __v: null == o ? ++s.__v : o
            };
            return null != s.vnode && s.vnode(i), i
        }

        function b(e) {
            return e.children
        }

        function w(e, t) {
            this.props = e, this.context = t
        }

        function S(e, t) {
            if (null == t) return e.__ ? S(e.__, e.__.__k.indexOf(e) + 1) : null;
            for (var n; t < e.__k.length; t++)
                if (null != (n = e.__k[t]) && null != n.__e) return n.__e;
            return "function" == typeof e.type ? S(e) : null
        }

        function E(e) {
            var t, n;
            if (null != (e = e.__) && null != e.__c) {
                for (e.__e = e.__c.base = null, t = 0; t < e.__k.length; t++)
                    if (null != (n = e.__k[t]) && null != n.__e) {
                        e.__e = e.__c.base = n.__e;
                        break
                    } return E(e)
            }
        }

        function D(e) {
            (!e.__d && (e.__d = !0) && l.push(e) && !A.__r++ || u !== s.debounceRendering) && ((u = s.debounceRendering) || c)(A)
        }

        function A() {
            for (var e; A.__r = l.length;) e = l.sort((function(e, t) {
                return e.__v.__b - t.__v.__b
            })), l = [], e.some((function(e) {
                var t, n, r, o, i, a;
                e.__d && (i = (o = (t = e).__v).__e, (a = t.__P) && (n = [], (r = g({}, o)).__v = o.__v + 1, _(a, o, r, t.__n, void 0 !== a.ownerSVGElement, null != o.__h ? [i] : null, n, null == i ? S(o) : i, o.__h), N(n, o), o.__e != i && E(o)))
            }))
        }

        function C(e, t, n, r, o, i, a, s, l, c) {
            var u, d, h, g, v, m, w, E = r && r.__k || p,
                D = E.length;
            for (n.__k = [], u = 0; u < t.length; u++)
                if (null != (g = n.__k[u] = null == (g = t[u]) || "boolean" == typeof g ? null : "string" == typeof g || "number" == typeof g ? y(null, g, null, null, g) : Array.isArray(g) ? y(b, {
                    children: g
                }, null, null, null) : g.__b > 0 ? y(g.type, g.props, g.key, null, g.__v) : g)) {
                    if (g.__ = n, g.__b = n.__b + 1, null === (h = E[u]) || h && g.key == h.key && g.type === h.type) E[u] = void 0;
                    else
                        for (d = 0; d < D; d++) {
                            if ((h = E[d]) && g.key == h.key && g.type === h.type) {
                                E[d] = void 0;
                                break
                            }
                            h = null
                        }
                    _(e, g, h = h || f, o, i, a, s, l, c), v = g.__e, (d = g.ref) && h.ref != d && (w || (w = []), h.ref && w.push(h.ref, null, g), w.push(d, g.__c || v, g)), null != v ? (null == m && (m = v), "function" == typeof g.type && null != g.__k && g.__k === h.__k ? g.__d = l = R(g, l, e) : l = x(e, g, h, E, v, l), c || "option" !== n.type ? "function" == typeof n.type && (n.__d = l) : e.value = "") : l && h.__e == l && l.parentNode != e && (l = S(h))
                } for (n.__e = m, u = D; u--;) null != E[u] && ("function" == typeof n.type && null != E[u].__e && E[u].__e == n.__d && (n.__d = S(r, u + 1)), O(E[u], E[u]));
            if (w)
                for (u = 0; u < w.length; u++) H(w[u], w[++u], w[++u])
        }

        function R(e, t, n) {
            var r, o;
            for (r = 0; r < e.__k.length; r++)(o = e.__k[r]) && (o.__ = e, t = "function" == typeof o.type ? R(o, t, n) : x(n, o, o, e.__k, o.__e, t));
            return t
        }

        function x(e, t, n, r, o, i) {
            var a, s, l;
            if (void 0 !== t.__d) a = t.__d, t.__d = void 0;
            else if (null == n || o != i || null == o.parentNode) e: if (null == i || i.parentNode !== e) e.appendChild(o), a = null;
            else {
                for (s = i, l = 0;
                     (s = s.nextSibling) && l < r.length; l += 2)
                    if (s == o) break e;
                e.insertBefore(o, i), a = i
            } return void 0 !== a ? a : o.nextSibling
        }

        function k(e, t, n) {
            "-" === t[0] ? e.setProperty(t, n) : e[t] = null == n ? "" : "number" != typeof n || h.test(t) ? n : n + "px"
        }

        function T(e, t, n, r, o) {
            var i;
            e: if ("style" === t)
                if ("string" == typeof n) e.style.cssText = n;
                else {
                    if ("string" == typeof r && (e.style.cssText = r = ""), r)
                        for (t in r) n && t in n || k(e.style, t, "");
                    if (n)
                        for (t in n) r && n[t] === r[t] || k(e.style, t, n[t])
                }
            else if ("o" === t[0] && "n" === t[1]) i = t !== (t = t.replace(/Capture$/, "")), t = t.toLowerCase() in e ? t.toLowerCase().slice(2) : t.slice(2), e.l || (e.l = {}), e.l[t + i] = n, n ? r || e.addEventListener(t, i ? I : M, i) : e.removeEventListener(t, i ? I : M, i);
            else if ("dangerouslySetInnerHTML" !== t) {
                if (o) t = t.replace(/xlink[H:h]/, "h").replace(/sName$/, "s");
                else if ("href" !== t && "list" !== t && "form" !== t && "download" !== t && t in e) try {
                    e[t] = null == n ? "" : n;
                    break e
                } catch (e) {}
                "function" == typeof n || (null != n && (!1 !== n || "a" === t[0] && "r" === t[1]) ? e.setAttribute(t, n) : e.removeAttribute(t))
            }
        }

        function M(e) {
            this.l[e.type + !1](s.event ? s.event(e) : e)
        }

        function I(e) {
            this.l[e.type + !0](s.event ? s.event(e) : e)
        }

        function _(e, t, n, r, o, i, a, l, c) {
            var u, d, f, p, h, v, m, y, S, E, D, A = t.type;
            if (void 0 !== t.constructor) return null;
            null != n.__h && (c = n.__h, l = t.__e = n.__e, t.__h = null, i = [l]), (u = s.__b) && u(t);
            try {
                e: if ("function" == typeof A) {
                    if (y = t.props, S = (u = A.contextType) && r[u.__c], E = u ? S ? S.props.value : u.__ : r, n.__c ? m = (d = t.__c = n.__c).__ = d.__E : ("prototype" in A && A.prototype.render ? t.__c = d = new A(y, E) : (t.__c = d = new w(y, E), d.constructor = A, d.render = z), S && S.sub(d), d.props = y, d.state || (d.state = {}), d.context = E, d.__n = r, f = d.__d = !0, d.__h = []), null == d.__s && (d.__s = d.state), null != A.getDerivedStateFromProps && (d.__s == d.state && (d.__s = g({}, d.__s)), g(d.__s, A.getDerivedStateFromProps(y, d.__s))), p = d.props, h = d.state, f) null == A.getDerivedStateFromProps && null != d.componentWillMount && d.componentWillMount(), null != d.componentDidMount && d.__h.push(d.componentDidMount);
                    else {
                        if (null == A.getDerivedStateFromProps && y !== p && null != d.componentWillReceiveProps && d.componentWillReceiveProps(y, E), !d.__e && null != d.shouldComponentUpdate && !1 === d.shouldComponentUpdate(y, d.__s, E) || t.__v === n.__v) {
                            d.props = y, d.state = d.__s, t.__v !== n.__v && (d.__d = !1), d.__v = t, t.__e = n.__e, t.__k = n.__k, d.__h.length && a.push(d);
                            break e
                        }
                        null != d.componentWillUpdate && d.componentWillUpdate(y, d.__s, E), null != d.componentDidUpdate && d.__h.push((function() {
                            d.componentDidUpdate(p, h, v)
                        }))
                    }
                    d.context = E, d.props = y, d.state = d.__s, (u = s.__r) && u(t), d.__d = !1, d.__v = t, d.__P = e, u = d.render(d.props, d.state, d.context), d.state = d.__s, null != d.getChildContext && (r = g(g({}, r), d.getChildContext())), f || null == d.getSnapshotBeforeUpdate || (v = d.getSnapshotBeforeUpdate(p, h)), D = null != u && u.type === b && null == u.key ? u.props.children : u, C(e, Array.isArray(D) ? D : [D], t, n, r, o, i, a, l, c), d.base = t.__e, t.__h = null, d.__h.length && a.push(d), m && (d.__E = d.__ = null), d.__e = !1
                } else null == i && t.__v === n.__v ? (t.__k = n.__k, t.__e = n.__e) : t.__e = P(n.__e, t, n, r, o, i, a, c);
                (u = s.diffed) && u(t)
            }
            catch (e) {
                t.__v = null, (c || null != i) && (t.__e = l, t.__h = !!c, i[i.indexOf(l)] = null), s.__e(e, t, n)
            }
        }

        function N(e, t) {
            s.__c && s.__c(t, e), e.some((function(t) {
                try {
                    e = t.__h, t.__h = [], e.some((function(e) {
                        e.call(t)
                    }))
                } catch (e) {
                    s.__e(e, t.__v)
                }
            }))
        }

        function P(e, t, n, r, o, i, a, s) {
            var l, c, u, d, h = n.props,
                g = t.props,
                m = t.type,
                y = 0;
            if ("svg" === m && (o = !0), null != i)
                for (; y < i.length; y++)
                    if ((l = i[y]) && (l === e || (m ? l.localName == m : 3 == l.nodeType))) {
                        e = l, i[y] = null;
                        break
                    } if (null == e) {
                if (null === m) return document.createTextNode(g);
                e = o ? document.createElementNS("http://www.w3.org/2000/svg", m) : document.createElement(m, g.is && g), i = null, s = !1
            }
            if (null === m) h === g || s && e.data === g || (e.data = g);
            else {
                if (i = i && p.slice.call(e.childNodes), c = (h = n.props || f).dangerouslySetInnerHTML, u = g.dangerouslySetInnerHTML, !s) {
                    if (null != i)
                        for (h = {}, d = 0; d < e.attributes.length; d++) h[e.attributes[d].name] = e.attributes[d].value;
                    (u || c) && (u && (c && u.__html == c.__html || u.__html === e.innerHTML) || (e.innerHTML = u && u.__html || ""))
                }
                if (function(e, t, n, r, o) {
                    var i;
                    for (i in n) "children" === i || "key" === i || i in t || T(e, i, null, n[i], r);
                    for (i in t) o && "function" != typeof t[i] || "children" === i || "key" === i || "value" === i || "checked" === i || n[i] === t[i] || T(e, i, t[i], n[i], r)
                }(e, g, h, o, s), u) t.__k = [];
                else if (y = t.props.children, C(e, Array.isArray(y) ? y : [y], t, n, r, o && "foreignObject" !== m, i, a, e.firstChild, s), null != i)
                    for (y = i.length; y--;) null != i[y] && v(i[y]);
                s || ("value" in g && void 0 !== (y = g.value) && (y !== e.value || "progress" === m && !y) && T(e, "value", y, h.value, !1), "checked" in g && void 0 !== (y = g.checked) && y !== e.checked && T(e, "checked", y, h.checked, !1))
            }
            return e
        }

        function H(e, t, n) {
            try {
                "function" == typeof e ? e(t) : e.current = t
            } catch (e) {
                s.__e(e, n)
            }
        }

        function O(e, t, n) {
            var r, o, i;
            if (s.unmount && s.unmount(e), (r = e.ref) && (r.current && r.current !== e.__e || H(r, null, t)), n || "function" == typeof e.type || (n = null != (o = e.__e)), e.__e = e.__d = void 0, null != (r = e.__c)) {
                if (r.componentWillUnmount) try {
                    r.componentWillUnmount()
                } catch (e) {
                    s.__e(e, t)
                }
                r.base = r.__P = null
            }
            if (r = e.__k)
                for (i = 0; i < r.length; i++) r[i] && O(r[i], t, n);
            null != o && v(o)
        }

        function z(e, t, n) {
            return this.constructor(e, n)
        }

        function B(e, t, n) {
            var r, o, i;
            s.__ && s.__(e, t), o = (r = "function" == typeof n) ? null : n && n.__k || t.__k, i = [], _(t, e = (!r && n || t).__k = m(b, null, [e]), o || f, f, void 0 !== t.ownerSVGElement, !r && n ? [n] : o ? null : t.firstChild ? p.slice.call(t.childNodes) : null, i, !r && n ? n : o ? o.__e : t.firstChild, r), N(i, e)
        }
        s = {
            __e: function(e, t) {
                for (var n, r, o; t = t.__;)
                    if ((n = t.__c) && !n.__) try {
                        if ((r = n.constructor) && null != r.getDerivedStateFromError && (n.setState(r.getDerivedStateFromError(e)), o = n.__d), null != n.componentDidCatch && (n.componentDidCatch(e), o = n.__d), o) return n.__E = n
                    } catch (t) {
                        e = t
                    }
                throw e
            },
            __v: 0
        }, w.prototype.setState = function(e, t) {
            var n;
            n = null != this.__s && this.__s !== this.state ? this.__s : this.__s = g({}, this.state), "function" == typeof e && (e = e(g({}, n), this.props)), e && g(n, e), null != e && this.__v && (t && this.__h.push(t), D(this))
        }, w.prototype.forceUpdate = function(e) {
            this.__v && (this.__e = !0, e && this.__h.push(e), D(this))
        }, w.prototype.render = b, l = [], c = "function" == typeof Promise ? Promise.prototype.then.bind(Promise.resolve()) : setTimeout, A.__r = 0, d = 0;
        var W = "undefined" != typeof globalThis ? globalThis : window;
        W.FullCalendarVDom ? console.warn("FullCalendar VDOM already loaded") : W.FullCalendarVDom = {
            Component: w,
            createElement: m,
            render: B,
            createRef: function() {
                return {
                    current: null
                }
            },
            Fragment: b,
            createContext: function(e) {
                var t = function(e, t) {
                        var n = {
                            __c: t = "__cC" + d++,
                            __: e,
                            Consumer: function(e, t) {
                                return e.children(t)
                            },
                            Provider: function(e) {
                                var n, r;
                                return this.getChildContext || (n = [], (r = {})[t] = this, this.getChildContext = function() {
                                    return r
                                }, this.shouldComponentUpdate = function(e) {
                                    this.props.value !== e.value && n.some(D)
                                }, this.sub = function(e) {
                                    n.push(e);
                                    var t = e.componentWillUnmount;
                                    e.componentWillUnmount = function() {
                                        n.splice(n.indexOf(e), 1), t && t.call(e)
                                    }
                                }), e.children
                            }
                        };
                        return n.Provider.__ = n.Consumer.contextType = n
                    }(e),
                    n = t.Provider;
                return t.Provider = function() {
                    var e = this,
                        t = !this.getChildContext,
                        r = n.apply(this, arguments);
                    if (t) {
                        var o = [];
                        this.shouldComponentUpdate = function(t) {
                            e.props.value !== t.value && o.forEach((function(e) {
                                e.context = t.value, e.forceUpdate()
                            }))
                        }, this.sub = function(e) {
                            o.push(e);
                            var t = e.componentWillUnmount;
                            e.componentWillUnmount = function() {
                                o.splice(o.indexOf(e), 1), t && t.call(e)
                            }
                        }
                    }
                    return r
                }, t
            },
            flushToDom: function() {
                var e = s.debounceRendering,
                    t = [];
                s.debounceRendering = function(e) {
                    t.push(e)
                }, B(m(L, {}), document.createElement("div"));
                for (; t.length;) t.shift()();
                s.debounceRendering = e
            },
            unmountComponentAtNode: function(e) {
                B(null, e)
            }
        };
        var L = function(e) {
            function t() {
                return null !== e && e.apply(this, arguments) || this
            }
            return o(t, e), t.prototype.render = function() {
                return m("div", {})
            }, t.prototype.componentDidMount = function() {
                this.setState({})
            }, t
        }(w);
        var U = n(18),
            F = n.n(U),
            V = n(136),
            j = {
                insert: "head",
                singleton: !1
            };
        F()(V.a, j), V.a.locals;
        if ("undefined" == typeof FullCalendarVDom) throw new Error("Please import the top-level fullcalendar lib before attempting to import a plugin.");
        var G = FullCalendarVDom.Component,
            Y = FullCalendarVDom.createElement,
            q = FullCalendarVDom.render,
            Q = FullCalendarVDom.createRef,
            Z = FullCalendarVDom.Fragment,
            X = FullCalendarVDom.createContext,
            J = FullCalendarVDom.flushToDom,
            K = FullCalendarVDom.unmountComponentAtNode,
            $ = function() {
                function e(e, t) {
                    this.context = e, this.internalEventSource = t
                }
                return e.prototype.remove = function() {
                    this.context.dispatch({
                        type: "REMOVE_EVENT_SOURCE",
                        sourceId: this.internalEventSource.sourceId
                    })
                }, e.prototype.refetch = function() {
                    this.context.dispatch({
                        type: "FETCH_EVENT_SOURCES",
                        sourceIds: [this.internalEventSource.sourceId]
                    })
                }, Object.defineProperty(e.prototype, "id", {
                    get: function() {
                        return this.internalEventSource.publicId
                    },
                    enumerable: !1,
                    configurable: !0
                }), Object.defineProperty(e.prototype, "url", {
                    get: function() {
                        return this.internalEventSource.meta.url
                    },
                    enumerable: !1,
                    configurable: !0
                }), Object.defineProperty(e.prototype, "format", {
                    get: function() {
                        return this.internalEventSource.meta.format
                    },
                    enumerable: !1,
                    configurable: !0
                }), e
            }();

        function ee(e) {
            e.parentNode && e.parentNode.removeChild(e)
        }

        function te(e, t) {
            if (e.closest) return e.closest(t);
            if (!document.documentElement.contains(e)) return null;
            do {
                if (ne(e, t)) return e;
                e = e.parentElement || e.parentNode
            } while (null !== e && 1 === e.nodeType);
            return null
        }

        function ne(e, t) {
            return (e.matches || e.matchesSelector || e.msMatchesSelector).call(e, t)
        }

        function re(e, t) {
            for (var n = e instanceof HTMLElement ? [e] : e, r = [], o = 0; o < n.length; o += 1)
                for (var i = n[o].querySelectorAll(t), a = 0; a < i.length; a += 1) r.push(i[a]);
            return r
        }
        var oe = /(top|left|right|bottom|width|height)$/i;

        function ie(e, t) {
            for (var n in t) ae(e, n, t[n])
        }

        function ae(e, t, n) {
            null == n ? e.style[t] = "" : "number" == typeof n && oe.test(t) ? e.style[t] = n + "px" : e.style[t] = n
        }

        function se(e) {
            e.preventDefault()
        }

        function le(e, t) {
            return function(n) {
                var r = te(n.target, e);
                r && t.call(r, n, r)
            }
        }

        function ce(e, t, n, r) {
            var o = le(n, r);
            return e.addEventListener(t, o),
                function() {
                    e.removeEventListener(t, o)
                }
        }
        var ue = ["webkitTransitionEnd", "otransitionend", "oTransitionEnd", "msTransitionEnd", "transitionend"];
        var de = 0;

        function fe() {
            return String(de += 1)
        }

        function pe() {
            document.body.classList.add("fc-not-allowed")
        }

        function he() {
            document.body.classList.remove("fc-not-allowed")
        }

        function ge(e, t, n) {
            var r, o;
            for (r = 0; r < n.length; r += 1)
                if (o = ve(e, t, n[r])) return o;
            return 0
        }

        function ve(e, t, n) {
            return n.func ? n.func(e, t) : function(e, t) {
                if (!e && !t) return 0;
                if (null == t) return -1;
                if (null == e) return 1;
                if ("string" == typeof e || "string" == typeof t) return String(e).localeCompare(String(t));
                return e - t
            }(e[n.field], t[n.field]) * (n.order || 1)
        }

        function me(e, t) {
            var n = String(e);
            return "000".substr(0, t - n.length) + n
        }

        function ye(e, t) {
            return e - t
        }

        function be(e) {
            return e % 1 == 0
        }

        function we(e) {
            var t = e.querySelector(".fc-scrollgrid-shrink-frame"),
                n = e.querySelector(".fc-scrollgrid-shrink-cushion");
            if (!t) throw new Error("needs fc-scrollgrid-shrink-frame className");
            if (!n) throw new Error("needs fc-scrollgrid-shrink-cushion className");
            return e.getBoundingClientRect().width - t.getBoundingClientRect().width + n.getBoundingClientRect().width
        }
        var Se = ["sun", "mon", "tue", "wed", "thu", "fri", "sat"];

        function Ee(e, t) {
            var n = _e(e);
            return n[2] += 7 * t, Ne(n)
        }

        function De(e, t) {
            var n = _e(e);
            return n[2] += t, Ne(n)
        }

        function Ae(e, t) {
            var n = _e(e);
            return n[6] += t, Ne(n)
        }

        function Ce(e, t) {
            return (t.valueOf() - e.valueOf()) / 864e5
        }

        function Re(e, t) {
            return He(e) === He(t) ? Math.round(Ce(e, t)) : null
        }

        function xe(e) {
            return Ne([e.getUTCFullYear(), e.getUTCMonth(), e.getUTCDate()])
        }

        function ke(e, t, n, r) {
            var o = Ne([t, 0, 1 + Te(t, n, r)]),
                i = xe(e),
                a = Math.round(Ce(o, i));
            return Math.floor(a / 7) + 1
        }

        function Te(e, t, n) {
            var r = 7 + t - n;
            return -((7 + Ne([e, 0, r]).getUTCDay() - t) % 7) + r - 1
        }

        function Me(e) {
            return [e.getFullYear(), e.getMonth(), e.getDate(), e.getHours(), e.getMinutes(), e.getSeconds(), e.getMilliseconds()]
        }

        function Ie(e) {
            return new Date(e[0], e[1] || 0, null == e[2] ? 1 : e[2], e[3] || 0, e[4] || 0, e[5] || 0)
        }

        function _e(e) {
            return [e.getUTCFullYear(), e.getUTCMonth(), e.getUTCDate(), e.getUTCHours(), e.getUTCMinutes(), e.getUTCSeconds(), e.getUTCMilliseconds()]
        }

        function Ne(e) {
            return 1 === e.length && (e = e.concat([0])), new Date(Date.UTC.apply(Date, e))
        }

        function Pe(e) {
            return !isNaN(e.valueOf())
        }

        function He(e) {
            return 1e3 * e.getUTCHours() * 60 * 60 + 1e3 * e.getUTCMinutes() * 60 + 1e3 * e.getUTCSeconds() + e.getUTCMilliseconds()
        }

        function Oe(e, t, n, r) {
            return {
                instanceId: fe(),
                defId: e,
                range: t,
                forcedStartTzo: null == n ? null : n,
                forcedEndTzo: null == r ? null : r
            }
        }
        var ze = Object.prototype.hasOwnProperty;

        function Be(e, t) {
            var n = {};
            if (t)
                for (var r in t) {
                    for (var o = [], i = e.length - 1; i >= 0; i -= 1) {
                        var a = e[i][r];
                        if ("object" == typeof a && a) o.unshift(a);
                        else if (void 0 !== a) {
                            n[r] = a;
                            break
                        }
                    }
                    o.length && (n[r] = Be(o))
                }
            for (i = e.length - 1; i >= 0; i -= 1) {
                var s = e[i];
                for (var l in s) l in n || (n[l] = s[l])
            }
            return n
        }

        function We(e, t) {
            var n = {};
            for (var r in e) t(e[r], r) && (n[r] = e[r]);
            return n
        }

        function Le(e, t) {
            var n = {};
            for (var r in e) n[r] = t(e[r], r);
            return n
        }

        function Ue(e) {
            for (var t = {}, n = 0, r = e; n < r.length; n++) {
                t[r[n]] = !0
            }
            return t
        }

        function Fe(e) {
            var t = [];
            for (var n in e) t.push(e[n]);
            return t
        }

        function Ve(e, t) {
            if (e === t) return !0;
            for (var n in e)
                if (ze.call(e, n) && !(n in t)) return !1;
            for (var n in t)
                if (ze.call(t, n) && e[n] !== t[n]) return !1;
            return !0
        }

        function je(e, t) {
            var n = [];
            for (var r in e) ze.call(e, r) && (r in t || n.push(r));
            for (var r in t) ze.call(t, r) && e[r] !== t[r] && n.push(r);
            return n
        }

        function Ge(e, t, n) {
            if (void 0 === n && (n = {}), e === t) return !0;
            for (var r in t)
                if (!(r in e) || !Ye(e[r], t[r], n[r])) return !1;
            for (var r in e)
                if (!(r in t)) return !1;
            return !0
        }

        function Ye(e, t, n) {
            return e === t || !0 === n || !!n && n(e, t)
        }

        function qe(e, t, n, r) {
            void 0 === t && (t = 0), void 0 === r && (r = 1);
            var o = [];
            null == n && (n = Object.keys(e).length);
            for (var i = t; i < n; i += r) {
                var a = e[i];
                void 0 !== a && o.push(a)
            }
            return o
        }

        function Qe(e, t, n) {
            var r = n.dateEnv,
                o = n.pluginHooks,
                i = n.options,
                a = e.defs,
                s = e.instances;
            for (var l in s = We(s, (function(e) {
                return !a[e.defId].recurringDef
            })), a) {
                var c = a[l];
                if (c.recurringDef) {
                    var u = c.recurringDef.duration;
                    u || (u = c.allDay ? i.defaultAllDayEventDuration : i.defaultTimedEventDuration);
                    for (var d = 0, f = Ze(c, u, t, r, o.recurringTypes); d < f.length; d++) {
                        var p = f[d],
                            h = Oe(l, {
                                start: p,
                                end: r.add(p, u)
                            });
                        s[h.instanceId] = h
                    }
                }
            }
            return {
                defs: a,
                instances: s
            }
        }

        function Ze(e, t, n, r, o) {
            var i = o[e.recurringDef.typeId].expand(e.recurringDef.typeData, {
                start: r.subtract(n.start, t),
                end: n.end
            }, r);
            return e.allDay && (i = i.map(xe)), i
        }
        var Xe = ["years", "months", "days", "milliseconds"],
            Je = /^(-?)(?:(\d+)\.)?(\d+):(\d\d)(?::(\d\d)(?:\.(\d\d\d))?)?/;

        function Ke(e, t) {
            var n;
            return "string" == typeof e ? function(e) {
                var t = Je.exec(e);
                if (t) {
                    var n = t[1] ? -1 : 1;
                    return {
                        years: 0,
                        months: 0,
                        days: n * (t[2] ? parseInt(t[2], 10) : 0),
                        milliseconds: n * (60 * (t[3] ? parseInt(t[3], 10) : 0) * 60 * 1e3 + 60 * (t[4] ? parseInt(t[4], 10) : 0) * 1e3 + 1e3 * (t[5] ? parseInt(t[5], 10) : 0) + (t[6] ? parseInt(t[6], 10) : 0))
                    }
                }
                return null
            }(e) : "object" == typeof e && e ? $e(e) : "number" == typeof e ? $e(((n = {})[t || "milliseconds"] = e, n)) : null
        }

        function $e(e) {
            var t = {
                    years: e.years || e.year || 0,
                    months: e.months || e.month || 0,
                    days: e.days || e.day || 0,
                    milliseconds: 60 * (e.hours || e.hour || 0) * 60 * 1e3 + 60 * (e.minutes || e.minute || 0) * 1e3 + 1e3 * (e.seconds || e.second || 0) + (e.milliseconds || e.millisecond || e.ms || 0)
                },
                n = e.weeks || e.week;
            return n && (t.days += 7 * n, t.specifiedWeeks = !0), t
        }

        function et(e) {
            return e.years || e.months || e.milliseconds ? 0 : e.days
        }

        function tt(e, t) {
            return {
                years: e.years + t.years,
                months: e.months + t.months,
                days: e.days + t.days,
                milliseconds: e.milliseconds + t.milliseconds
            }
        }

        function nt(e, t) {
            return {
                years: e.years * t,
                months: e.months * t,
                days: e.days * t,
                milliseconds: e.milliseconds * t
            }
        }

        function rt(e) {
            return ot(e) / 864e5
        }

        function ot(e) {
            return 31536e6 * e.years + 2592e6 * e.months + 864e5 * e.days + e.milliseconds
        }

        function it(e, t) {
            for (var n = null, r = 0; r < Xe.length; r += 1) {
                var o = Xe[r];
                if (t[o]) {
                    var i = e[o] / t[o];
                    if (!be(i) || null !== n && n !== i) return null;
                    n = i
                } else if (e[o]) return null
            }
            return n
        }

        function at(e) {
            var t = e.milliseconds;
            if (t) {
                if (t % 1e3 != 0) return {
                    unit: "millisecond",
                    value: t
                };
                if (t % 6e4 != 0) return {
                    unit: "second",
                    value: t / 1e3
                };
                if (t % 36e5 != 0) return {
                    unit: "minute",
                    value: t / 6e4
                };
                if (t) return {
                    unit: "hour",
                    value: t / 36e5
                }
            }
            return e.days ? e.specifiedWeeks && e.days % 7 == 0 ? {
                unit: "week",
                value: e.days / 7
            } : {
                unit: "day",
                value: e.days
            } : e.months ? {
                unit: "month",
                value: e.months
            } : e.years ? {
                unit: "year",
                value: e.years
            } : {
                unit: "millisecond",
                value: 0
            }
        }

        function st(e) {
            return e.toISOString().replace(/T.*$/, "")
        }

        function lt(e, t) {
            void 0 === t && (t = !1);
            var n = e < 0 ? "-" : "+",
                r = Math.abs(e),
                o = Math.floor(r / 60),
                i = Math.round(r % 60);
            return t ? n + me(o, 2) + ":" + me(i, 2) : "GMT" + n + o + (i ? ":" + me(i, 2) : "")
        }

        function ct(e, t, n) {
            if (e === t) return !0;
            var r, o = e.length;
            if (o !== t.length) return !1;
            for (r = 0; r < o; r += 1)
                if (!(n ? n(e[r], t[r]) : e[r] === t[r])) return !1;
            return !0
        }

        function ut(e, t, n) {
            var r, o;
            return function() {
                for (var i = [], a = 0; a < arguments.length; a++) i[a] = arguments[a];
                if (r) {
                    if (!ct(r, i)) {
                        n && n(o);
                        var s = e.apply(this, i);
                        t && t(s, o) || (o = s)
                    }
                } else o = e.apply(this, i);
                return r = i, o
            }
        }

        function dt(e, t, n) {
            var r, o, i = this;
            return function(a) {
                if (r) {
                    if (!Ve(r, a)) {
                        n && n(o);
                        var s = e.call(i, a);
                        t && t(s, o) || (o = s)
                    }
                } else o = e.call(i, a);
                return r = a, o
            }
        }

        function ft(e, t, n) {
            var r = this,
                o = [],
                i = [];
            return function(a) {
                for (var s = o.length, l = a.length, c = 0; c < s; c += 1)
                    if (a[c]) {
                        if (!ct(o[c], a[c])) {
                            n && n(i[c]);
                            var u = e.apply(r, a[c]);
                            t && t(u, i[c]) || (i[c] = u)
                        }
                    } else n && n(i[c]);
                for (; c < l; c += 1) i[c] = e.apply(r, a[c]);
                return o = a, i.splice(l), i
            }
        }

        function pt(e, t, n) {
            var r = this,
                o = {},
                i = {};
            return function(a) {
                var s = {};
                for (var l in a)
                    if (i[l])
                        if (ct(o[l], a[l])) s[l] = i[l];
                        else {
                            n && n(i[l]);
                            var c = e.apply(r, a[l]);
                            s[l] = t && t(c, i[l]) ? i[l] : c
                        }
                    else s[l] = e.apply(r, a[l]);
                return o = a, i = s, s
            }
        }
        var ht = {
                week: 3,
                separator: 0,
                omitZeroMinute: 0,
                meridiem: 0,
                omitCommas: 0
            },
            gt = {
                timeZoneName: 7,
                era: 6,
                year: 5,
                month: 4,
                day: 2,
                weekday: 2,
                hour: 1,
                minute: 1,
                second: 1
            },
            vt = /\s*([ap])\.?m\.?/i,
            mt = /,/g,
            yt = /\s+/g,
            bt = /\u200e/g,
            wt = /UTC|GMT/,
            St = function() {
                function e(e) {
                    var t = {},
                        n = {},
                        r = 0;
                    for (var o in e) o in ht ? (n[o] = e[o], r = Math.max(ht[o], r)) : (t[o] = e[o], o in gt && (r = Math.max(gt[o], r)));
                    this.standardDateProps = t, this.extendedSettings = n, this.severity = r, this.buildFormattingFunc = ut(Et)
                }
                return e.prototype.format = function(e, t) {
                    return this.buildFormattingFunc(this.standardDateProps, this.extendedSettings, t)(e)
                }, e.prototype.formatRange = function(e, t, n, r) {
                    var o = this.standardDateProps,
                        i = this.extendedSettings,
                        a = function(e, t, n) {
                            if (n.getMarkerYear(e) !== n.getMarkerYear(t)) return 5;
                            if (n.getMarkerMonth(e) !== n.getMarkerMonth(t)) return 4;
                            if (n.getMarkerDay(e) !== n.getMarkerDay(t)) return 2;
                            if (He(e) !== He(t)) return 1;
                            return 0
                        }(e.marker, t.marker, n.calendarSystem);
                    if (!a) return this.format(e, n);
                    var s = a;
                    !(s > 1) || "numeric" !== o.year && "2-digit" !== o.year || "numeric" !== o.month && "2-digit" !== o.month || "numeric" !== o.day && "2-digit" !== o.day || (s = 1);
                    var l = this.format(e, n),
                        c = this.format(t, n);
                    if (l === c) return l;
                    var u = Et(function(e, t) {
                            var n = {};
                            for (var r in e)(!(r in gt) || gt[r] <= t) && (n[r] = e[r]);
                            return n
                        }(o, s), i, n),
                        d = u(e),
                        f = u(t),
                        p = function(e, t, n, r) {
                            var o = 0;
                            for (; o < e.length;) {
                                var i = e.indexOf(t, o);
                                if (-1 === i) break;
                                var a = e.substr(0, i);
                                o = i + t.length;
                                for (var s = e.substr(o), l = 0; l < n.length;) {
                                    var c = n.indexOf(r, l);
                                    if (-1 === c) break;
                                    var u = n.substr(0, c);
                                    l = c + r.length;
                                    var d = n.substr(l);
                                    if (a === u && s === d) return {
                                        before: a,
                                        after: s
                                    }
                                }
                            }
                            return null
                        }(l, d, c, f),
                        h = i.separator || r || n.defaultSeparator || "";
                    return p ? p.before + d + h + f + p.after : l + h + c
                }, e.prototype.getLargestUnit = function() {
                    switch (this.severity) {
                        case 7:
                        case 6:
                        case 5:
                            return "year";
                        case 4:
                            return "month";
                        case 3:
                            return "week";
                        case 2:
                            return "day";
                        default:
                            return "time"
                    }
                }, e
            }();

        function Et(e, t, n) {
            var r = Object.keys(e).length;
            return 1 === r && "short" === e.timeZoneName ? function(e) {
                return lt(e.timeZoneOffset)
            } : 0 === r && t.week ? function(e) {
                return function(e, t, n, r) {
                    var o = [];
                    "narrow" === r ? o.push(t) : "short" === r && o.push(t, " ");
                    o.push(n.simpleNumberFormat.format(e)), "rtl" === n.options.direction && o.reverse();
                    return o.join("")
                }(n.computeWeekNumber(e.marker), n.weekText, n.locale, t.week)
            } : function(e, t, n) {
                e = i({}, e), t = i({}, t),
                    function(e, t) {
                        e.timeZoneName && (e.hour || (e.hour = "2-digit"), e.minute || (e.minute = "2-digit"));
                        "long" === e.timeZoneName && (e.timeZoneName = "short");
                        t.omitZeroMinute && (e.second || e.millisecond) && delete t.omitZeroMinute
                    }(e, t), e.timeZone = "UTC";
                var r, o = new Intl.DateTimeFormat(n.locale.codes, e);
                if (t.omitZeroMinute) {
                    var a = i({}, e);
                    delete a.minute, r = new Intl.DateTimeFormat(n.locale.codes, a)
                }
                return function(i) {
                    var a = i.marker;
                    return function(e, t, n, r, o) {
                        e = e.replace(bt, ""), "short" === n.timeZoneName && (e = function(e, t) {
                            var n = !1;
                            e = e.replace(wt, (function() {
                                return n = !0, t
                            })), n || (e += " " + t);
                            return e
                        }(e, "UTC" === o.timeZone || null == t.timeZoneOffset ? "UTC" : lt(t.timeZoneOffset)));
                        r.omitCommas && (e = e.replace(mt, "").trim());
                        r.omitZeroMinute && (e = e.replace(":00", ""));
                        !1 === r.meridiem ? e = e.replace(vt, "").trim() : "narrow" === r.meridiem ? e = e.replace(vt, (function(e, t) {
                            return t.toLocaleLowerCase()
                        })) : "short" === r.meridiem ? e = e.replace(vt, (function(e, t) {
                            return t.toLocaleLowerCase() + "m"
                        })) : "lowercase" === r.meridiem && (e = e.replace(vt, (function(e) {
                            return e.toLocaleLowerCase()
                        })));
                        return e = (e = e.replace(yt, " ")).trim()
                    }((r && !a.getUTCMinutes() ? r : o).format(a), i, e, t, n)
                }
            }(e, t, n)
        }

        function Dt(e, t) {
            var n = t.markerToArray(e.marker);
            return {
                marker: e.marker,
                timeZoneOffset: e.timeZoneOffset,
                array: n,
                year: n[0],
                month: n[1],
                day: n[2],
                hour: n[3],
                minute: n[4],
                second: n[5],
                millisecond: n[6]
            }
        }

        function At(e, t, n, r) {
            var o = Dt(e, n.calendarSystem);
            return {
                date: o,
                start: o,
                end: t ? Dt(t, n.calendarSystem) : null,
                timeZone: n.timeZone,
                localeCodes: n.locale.codes,
                defaultSeparator: r || n.defaultSeparator
            }
        }
        var Ct = function() {
                function e(e) {
                    this.cmdStr = e
                }
                return e.prototype.format = function(e, t, n) {
                    return t.cmdFormatter(this.cmdStr, At(e, null, t, n))
                }, e.prototype.formatRange = function(e, t, n, r) {
                    return n.cmdFormatter(this.cmdStr, At(e, t, n, r))
                }, e
            }(),
            Rt = function() {
                function e(e) {
                    this.func = e
                }
                return e.prototype.format = function(e, t, n) {
                    return this.func(At(e, null, t, n))
                }, e.prototype.formatRange = function(e, t, n, r) {
                    return this.func(At(e, t, n, r))
                }, e
            }();

        function xt(e) {
            return "object" == typeof e && e ? new St(e) : "string" == typeof e ? new Ct(e) : "function" == typeof e ? new Rt(e) : null
        }
        var kt = {
                navLinkDayClick: zt,
                navLinkWeekClick: zt,
                duration: Ke,
                bootstrapFontAwesome: zt,
                buttonIcons: zt,
                customButtons: zt,
                defaultAllDayEventDuration: Ke,
                defaultTimedEventDuration: Ke,
                nextDayThreshold: Ke,
                scrollTime: Ke,
                slotMinTime: Ke,
                slotMaxTime: Ke,
                dayPopoverFormat: xt,
                slotDuration: Ke,
                snapDuration: Ke,
                headerToolbar: zt,
                footerToolbar: zt,
                defaultRangeSeparator: String,
                titleRangeSeparator: String,
                forceEventDuration: Boolean,
                dayHeaders: Boolean,
                dayHeaderFormat: xt,
                dayHeaderClassNames: zt,
                dayHeaderContent: zt,
                dayHeaderDidMount: zt,
                dayHeaderWillUnmount: zt,
                dayCellClassNames: zt,
                dayCellContent: zt,
                dayCellDidMount: zt,
                dayCellWillUnmount: zt,
                initialView: String,
                aspectRatio: Number,
                weekends: Boolean,
                weekNumberCalculation: zt,
                weekNumbers: Boolean,
                weekNumberClassNames: zt,
                weekNumberContent: zt,
                weekNumberDidMount: zt,
                weekNumberWillUnmount: zt,
                editable: Boolean,
                viewClassNames: zt,
                viewDidMount: zt,
                viewWillUnmount: zt,
                nowIndicator: Boolean,
                nowIndicatorClassNames: zt,
                nowIndicatorContent: zt,
                nowIndicatorDidMount: zt,
                nowIndicatorWillUnmount: zt,
                showNonCurrentDates: Boolean,
                lazyFetching: Boolean,
                startParam: String,
                endParam: String,
                timeZoneParam: String,
                timeZone: String,
                locales: zt,
                locale: zt,
                themeSystem: String,
                dragRevertDuration: Number,
                dragScroll: Boolean,
                allDayMaintainDuration: Boolean,
                unselectAuto: Boolean,
                dropAccept: zt,
                eventOrder: function(e) {
                    var t, n, r = [],
                        o = [];
                    for ("string" == typeof e ? o = e.split(/\s*,\s*/) : "function" == typeof e ? o = [e] : Array.isArray(e) && (o = e), t = 0; t < o.length; t += 1) "string" == typeof(n = o[t]) ? r.push("-" === n.charAt(0) ? {
                        field: n.substring(1),
                        order: -1
                    } : {
                        field: n,
                        order: 1
                    }) : "function" == typeof n && r.push({
                        func: n
                    });
                    return r
                },
                handleWindowResize: Boolean,
                windowResizeDelay: Number,
                longPressDelay: Number,
                eventDragMinDistance: Number,
                expandRows: Boolean,
                height: zt,
                contentHeight: zt,
                direction: String,
                weekNumberFormat: xt,
                eventResizableFromStart: Boolean,
                displayEventTime: Boolean,
                displayEventEnd: Boolean,
                weekText: String,
                progressiveEventRendering: Boolean,
                businessHours: zt,
                initialDate: zt,
                now: zt,
                eventDataTransform: zt,
                stickyHeaderDates: zt,
                stickyFooterScrollbar: zt,
                viewHeight: zt,
                defaultAllDay: Boolean,
                eventSourceFailure: zt,
                eventSourceSuccess: zt,
                eventDisplay: String,
                eventStartEditable: Boolean,
                eventDurationEditable: Boolean,
                eventOverlap: zt,
                eventConstraint: zt,
                eventAllow: zt,
                eventBackgroundColor: String,
                eventBorderColor: String,
                eventTextColor: String,
                eventColor: String,
                eventClassNames: zt,
                eventContent: zt,
                eventDidMount: zt,
                eventWillUnmount: zt,
                selectConstraint: zt,
                selectOverlap: zt,
                selectAllow: zt,
                droppable: Boolean,
                unselectCancel: String,
                slotLabelFormat: zt,
                slotLaneClassNames: zt,
                slotLaneContent: zt,
                slotLaneDidMount: zt,
                slotLaneWillUnmount: zt,
                slotLabelClassNames: zt,
                slotLabelContent: zt,
                slotLabelDidMount: zt,
                slotLabelWillUnmount: zt,
                dayMaxEvents: zt,
                dayMaxEventRows: zt,
                dayMinWidth: Number,
                slotLabelInterval: Ke,
                allDayText: String,
                allDayClassNames: zt,
                allDayContent: zt,
                allDayDidMount: zt,
                allDayWillUnmount: zt,
                slotMinWidth: Number,
                navLinks: Boolean,
                eventTimeFormat: xt,
                rerenderDelay: Number,
                moreLinkText: zt,
                selectMinDistance: Number,
                selectable: Boolean,
                selectLongPressDelay: Number,
                eventLongPressDelay: Number,
                selectMirror: Boolean,
                eventMinHeight: Number,
                slotEventOverlap: Boolean,
                plugins: zt,
                firstDay: Number,
                dayCount: Number,
                dateAlignment: String,
                dateIncrement: Ke,
                hiddenDays: zt,
                monthMode: Boolean,
                fixedWeekCount: Boolean,
                validRange: zt,
                visibleRange: zt,
                titleFormat: zt,
                noEventsText: String
            },
            Tt = {
                eventDisplay: "auto",
                defaultRangeSeparator: " - ",
                titleRangeSeparator: " – ",
                defaultTimedEventDuration: "01:00:00",
                defaultAllDayEventDuration: {
                    day: 1
                },
                forceEventDuration: !1,
                nextDayThreshold: "00:00:00",
                dayHeaders: !0,
                initialView: "",
                aspectRatio: 1.35,
                headerToolbar: {
                    start: "title",
                    center: "",
                    end: "today prev,next"
                },
                weekends: !0,
                weekNumbers: !1,
                weekNumberCalculation: "local",
                editable: !1,
                nowIndicator: !1,
                scrollTime: "06:00:00",
                slotMinTime: "00:00:00",
                slotMaxTime: "24:00:00",
                showNonCurrentDates: !0,
                lazyFetching: !0,
                startParam: "start",
                endParam: "end",
                timeZoneParam: "timeZone",
                timeZone: "local",
                locales: [],
                locale: "",
                themeSystem: "standard",
                dragRevertDuration: 500,
                dragScroll: !0,
                allDayMaintainDuration: !1,
                unselectAuto: !0,
                dropAccept: "*",
                eventOrder: "start,-duration,allDay,title",
                dayPopoverFormat: {
                    month: "long",
                    day: "numeric",
                    year: "numeric"
                },
                handleWindowResize: !0,
                windowResizeDelay: 100,
                longPressDelay: 1e3,
                eventDragMinDistance: 5,
                expandRows: !1,
                navLinks: !1,
                selectable: !1
            },
            Mt = {
                datesSet: zt,
                eventsSet: zt,
                eventAdd: zt,
                eventChange: zt,
                eventRemove: zt,
                windowResize: zt,
                eventClick: zt,
                eventMouseEnter: zt,
                eventMouseLeave: zt,
                select: zt,
                unselect: zt,
                loading: zt,
                _unmount: zt,
                _beforeprint: zt,
                _afterprint: zt,
                _noEventDrop: zt,
                _noEventResize: zt,
                _resize: zt,
                _scrollRequest: zt
            },
            It = {
                buttonText: zt,
                views: zt,
                plugins: zt,
                initialEvents: zt,
                events: zt,
                eventSources: zt
            },
            _t = {
                headerToolbar: Nt,
                footerToolbar: Nt,
                buttonText: Nt,
                buttonIcons: Nt
            };

        function Nt(e, t) {
            return "object" == typeof e && "object" == typeof t && e && t ? Ve(e, t) : e === t
        }
        var Pt = {
            type: String,
            component: zt,
            buttonText: String,
            buttonTextKey: String,
            dateProfileGeneratorClass: zt,
            usesMinMaxTime: Boolean,
            classNames: zt,
            content: zt,
            didMount: zt,
            willUnmount: zt
        };

        function Ht(e) {
            return Be(e, _t)
        }

        function Ot(e, t) {
            var n = {},
                r = {};
            for (var o in t) o in e && (n[o] = t[o](e[o]));
            for (var o in e) o in t || (r[o] = e[o]);
            return {
                refined: n,
                extra: r
            }
        }

        function zt(e) {
            return e
        }

        function Bt(e, t, n, r) {
            for (var o = {
                defs: {},
                instances: {}
            }, i = en(n), a = 0, s = e; a < s.length; a++) {
                var l = Kt(s[a], t, n, r, i);
                l && Wt(l, o)
            }
            return o
        }

        function Wt(e, t) {
            return void 0 === t && (t = {
                defs: {},
                instances: {}
            }), t.defs[e.def.defId] = e.def, e.instance && (t.instances[e.instance.instanceId] = e.instance), t
        }

        function Lt(e, t) {
            var n = e.instances[t];
            if (n) {
                var r = e.defs[n.defId],
                    o = Ft(e, (function(e) {
                        return t = r, n = e, Boolean(t.groupId && t.groupId === n.groupId);
                        var t, n
                    }));
                return o.defs[r.defId] = r, o.instances[n.instanceId] = n, o
            }
            return {
                defs: {},
                instances: {}
            }
        }

        function Ut(e, t) {
            return {
                defs: i(i({}, e.defs), t.defs),
                instances: i(i({}, e.instances), t.instances)
            }
        }

        function Ft(e, t) {
            var n = We(e.defs, t),
                r = We(e.instances, (function(e) {
                    return n[e.defId]
                }));
            return {
                defs: n,
                instances: r
            }
        }

        function Vt(e) {
            return Array.isArray(e) ? e : "string" == typeof e ? e.split(/\s+/) : []
        }
        var jt = {
                display: String,
                editable: Boolean,
                startEditable: Boolean,
                durationEditable: Boolean,
                constraint: zt,
                overlap: zt,
                allow: zt,
                className: Vt,
                classNames: Vt,
                color: String,
                backgroundColor: String,
                borderColor: String,
                textColor: String
            },
            Gt = {
                display: null,
                startEditable: null,
                durationEditable: null,
                constraints: [],
                overlap: null,
                allows: [],
                backgroundColor: "",
                borderColor: "",
                textColor: "",
                classNames: []
            };

        function Yt(e, t) {
            var n = function(e, t) {
                return Array.isArray(e) ? Bt(e, null, t, !0) : "object" == typeof e && e ? Bt([e], null, t, !0) : null != e ? String(e) : null
            }(e.constraint, t);
            return {
                display: e.display || null,
                startEditable: null != e.startEditable ? e.startEditable : e.editable,
                durationEditable: null != e.durationEditable ? e.durationEditable : e.editable,
                constraints: null != n ? [n] : [],
                overlap: null != e.overlap ? e.overlap : null,
                allows: null != e.allow ? [e.allow] : [],
                backgroundColor: e.backgroundColor || e.color || "",
                borderColor: e.borderColor || e.color || "",
                textColor: e.textColor || "",
                classNames: (e.className || []).concat(e.classNames || [])
            }
        }

        function qt(e) {
            return e.reduce(Qt, Gt)
        }

        function Qt(e, t) {
            return {
                display: null != t.display ? t.display : e.display,
                startEditable: null != t.startEditable ? t.startEditable : e.startEditable,
                durationEditable: null != t.durationEditable ? t.durationEditable : e.durationEditable,
                constraints: e.constraints.concat(t.constraints),
                overlap: "boolean" == typeof t.overlap ? t.overlap : e.overlap,
                allows: e.allows.concat(t.allows),
                backgroundColor: t.backgroundColor || e.backgroundColor,
                borderColor: t.borderColor || e.borderColor,
                textColor: t.textColor || e.textColor,
                classNames: e.classNames.concat(t.classNames)
            }
        }
        var Zt = {
                id: String,
                groupId: String,
                title: String,
                url: String
            },
            Xt = {
                start: zt,
                end: zt,
                date: zt,
                allDay: Boolean
            },
            Jt = i(i(i({}, Zt), Xt), {
                extendedProps: zt
            });

        function Kt(e, t, n, r, o) {
            void 0 === o && (o = en(n));
            var i = $t(e, n, o),
                a = i.refined,
                s = i.extra,
                l = function(e, t) {
                    var n = null;
                    e && (n = e.defaultAllDay);
                    null == n && (n = t.options.defaultAllDay);
                    return n
                }(t, n),
                c = function(e, t, n, r) {
                    for (var o = 0; o < r.length; o += 1) {
                        var i = r[o].parse(e, n);
                        if (i) {
                            var a = e.allDay;
                            return null == a && null == (a = t) && null == (a = i.allDayGuess) && (a = !1), {
                                allDay: a,
                                duration: i.duration,
                                typeData: i.typeData,
                                typeId: o
                            }
                        }
                    }
                    return null
                }(a, l, n.dateEnv, n.pluginHooks.recurringTypes);
            if (c) return (u = tn(a, s, t ? t.sourceId : "", c.allDay, Boolean(c.duration), n)).recurringDef = {
                typeId: c.typeId,
                typeData: c.typeData,
                duration: c.duration
            }, {
                def: u,
                instance: null
            };
            var u, d = function(e, t, n, r) {
                var o, i, a = e.allDay,
                    s = null,
                    l = !1,
                    c = null,
                    u = null != e.start ? e.start : e.date;
                if (o = n.dateEnv.createMarkerMeta(u)) s = o.marker;
                else if (!r) return null;
                null != e.end && (i = n.dateEnv.createMarkerMeta(e.end));
                null == a && (a = null != t ? t : (!o || o.isTimeUnspecified) && (!i || i.isTimeUnspecified));
                a && s && (s = xe(s));
                i && (c = i.marker, a && (c = xe(c)), s && c <= s && (c = null));
                c ? l = !0 : r || (l = n.options.forceEventDuration || !1, c = n.dateEnv.add(s, a ? n.options.defaultAllDayEventDuration : n.options.defaultTimedEventDuration));
                return {
                    allDay: a,
                    hasEnd: l,
                    range: {
                        start: s,
                        end: c
                    },
                    forcedStartTzo: o ? o.forcedTzo : null,
                    forcedEndTzo: i ? i.forcedTzo : null
                }
            }(a, l, n, r);
            return d ? {
                def: u = tn(a, s, t ? t.sourceId : "", d.allDay, d.hasEnd, n),
                instance: Oe(u.defId, d.range, d.forcedStartTzo, d.forcedEndTzo)
            } : null
        }

        function $t(e, t, n) {
            return void 0 === n && (n = en(t)), Ot(e, n)
        }

        function en(e) {
            return i(i(i({}, jt), Jt), e.pluginHooks.eventRefiners)
        }

        function tn(e, t, n, r, o, a) {
            for (var s = {
                title: e.title || "",
                groupId: e.groupId || "",
                publicId: e.id || "",
                url: e.url || "",
                recurringDef: null,
                defId: fe(),
                sourceId: n,
                allDay: r,
                hasEnd: o,
                ui: Yt(e, a),
                extendedProps: i(i({}, e.extendedProps || {}), t)
            }, l = 0, c = a.pluginHooks.eventDefMemberAdders; l < c.length; l++) {
                var u = c[l];
                i(s, u(e))
            }
            return Object.freeze(s.ui.classNames), Object.freeze(s.extendedProps), s
        }

        function nn(e) {
            var t = Math.floor(Ce(e.start, e.end)) || 1,
                n = xe(e.start);
            return {
                start: n,
                end: De(n, t)
            }
        }

        function rn(e, t) {
            void 0 === t && (t = Ke(0));
            var n = null,
                r = null;
            if (e.end) {
                r = xe(e.end);
                var o = e.end.valueOf() - r.valueOf();
                o && o >= ot(t) && (r = De(r, 1))
            }
            return e.start && (n = xe(e.start), r && r <= n && (r = De(n, 1))), {
                start: n,
                end: r
            }
        }

        function on(e, t, n, r) {
            return "year" === r ? Ke(n.diffWholeYears(e, t), "year") : "month" === r ? Ke(n.diffWholeMonths(e, t), "month") : (i = t, a = xe(o = e), s = xe(i), {
                years: 0,
                months: 0,
                days: Math.round(Ce(a, s)),
                milliseconds: i.valueOf() - s.valueOf() - (o.valueOf() - a.valueOf())
            });
            var o, i, a, s
        }

        function an(e, t) {
            var n, r, o = [],
                i = t.start;
            for (e.sort(sn), n = 0; n < e.length; n += 1)(r = e[n]).start > i && o.push({
                start: i,
                end: r.start
            }), r.end > i && (i = r.end);
            return i < t.end && o.push({
                start: i,
                end: t.end
            }), o
        }

        function sn(e, t) {
            return e.start.valueOf() - t.start.valueOf()
        }

        function ln(e, t) {
            var n = e.start,
                r = e.end,
                o = null;
            return null !== t.start && (n = null === n ? t.start : new Date(Math.max(n.valueOf(), t.start.valueOf()))), null != t.end && (r = null === r ? t.end : new Date(Math.min(r.valueOf(), t.end.valueOf()))), (null === n || null === r || n < r) && (o = {
                start: n,
                end: r
            }), o
        }

        function cn(e, t) {
            return (null === e.end || null === t.start || e.end > t.start) && (null === e.start || null === t.end || e.start < t.end)
        }

        function un(e, t) {
            return (null === e.start || null !== t.start && t.start >= e.start) && (null === e.end || null !== t.end && t.end <= e.end)
        }

        function dn(e, t) {
            return (null === e.start || t >= e.start) && (null === e.end || t < e.end)
        }

        function fn(e, t, n, r) {
            var o = {},
                i = {},
                a = {},
                s = [],
                l = [],
                c = gn(e.defs, t);
            for (var u in e.defs) {
                "inverse-background" === (p = c[(w = e.defs[u]).defId]).display && (w.groupId ? (o[w.groupId] = [], a[w.groupId] || (a[w.groupId] = w)) : i[u] = [])
            }
            for (var d in e.instances) {
                var f = e.instances[d],
                    p = c[(w = e.defs[f.defId]).defId],
                    h = f.range,
                    g = !w.allDay && r ? rn(h, r) : h,
                    v = ln(g, n);
                v && ("inverse-background" === p.display ? w.groupId ? o[w.groupId].push(v) : i[f.defId].push(v) : "none" !== p.display && ("background" === p.display ? s : l).push({
                    def: w,
                    ui: p,
                    instance: f,
                    range: v,
                    isStart: g.start && g.start.valueOf() === v.start.valueOf(),
                    isEnd: g.end && g.end.valueOf() === v.end.valueOf()
                }))
            }
            for (var m in o)
                for (var y = 0, b = an(o[m], n); y < b.length; y++) {
                    var w, S = b[y];
                    p = c[(w = a[m]).defId];
                    s.push({
                        def: w,
                        ui: p,
                        instance: null,
                        range: S,
                        isStart: !1,
                        isEnd: !1
                    })
                }
            for (var u in i)
                for (var E = 0, D = an(i[u], n); E < D.length; E++) {
                    S = D[E];
                    s.push({
                        def: e.defs[u],
                        ui: c[u],
                        instance: null,
                        range: S,
                        isStart: !1,
                        isEnd: !1
                    })
                }
            return {
                bg: s,
                fg: l
            }
        }

        function pn(e, t) {
            e.fcSeg = t
        }

        function hn(e) {
            return e.fcSeg || e.parentNode.fcSeg || null
        }

        function gn(e, t) {
            return Le(e, (function(e) {
                return vn(e, t)
            }))
        }

        function vn(e, t) {
            var n = [];
            return t[""] && n.push(t[""]), t[e.defId] && n.push(t[e.defId]), n.push(e.ui), qt(n)
        }

        function mn(e, t) {
            var n = e.map(yn);
            return n.sort((function(e, n) {
                return ge(e, n, t)
            })), n.map((function(e) {
                return e._seg
            }))
        }

        function yn(e) {
            var t = e.eventRange,
                n = t.def,
                r = t.instance ? t.instance.range : t.range,
                o = r.start ? r.start.valueOf() : 0,
                a = r.end ? r.end.valueOf() : 0;
            return i(i(i({}, n.extendedProps), n), {
                id: n.publicId,
                start: o,
                end: a,
                duration: a - o,
                allDay: Number(n.allDay),
                _seg: e
            })
        }

        function bn(e, t) {
            for (var n = t.pluginHooks.isDraggableTransformers, r = e.eventRange, o = r.def, i = r.ui, a = i.startEditable, s = 0, l = n; s < l.length; s++) {
                a = (0, l[s])(a, o, i, t)
            }
            return a
        }

        function wn(e, t) {
            return e.isStart && e.eventRange.ui.durationEditable && t.options.eventResizableFromStart
        }

        function Sn(e, t) {
            return e.isEnd && e.eventRange.ui.durationEditable
        }

        function En(e, t, n, r, o, i, a) {
            var s = n.dateEnv,
                l = n.options,
                c = l.displayEventTime,
                u = l.displayEventEnd,
                d = e.eventRange.def,
                f = e.eventRange.instance;
            if (null == c && (c = !1 !== r), null == u && (u = !1 !== o), c && !d.allDay && (e.isStart || e.isEnd)) {
                var p = i || (e.isStart ? f.range.start : e.start || e.eventRange.range.start),
                    h = a || (e.isEnd ? f.range.end : e.end || e.eventRange.range.end);
                return u && d.hasEnd ? s.formatRange(p, h, t, {
                    forcedStartTzo: i ? null : f.forcedStartTzo,
                    forcedEndTzo: a ? null : f.forcedEndTzo
                }) : s.format(p, t, {
                    forcedTzo: i ? null : f.forcedStartTzo
                })
            }
            return ""
        }

        function Dn(e, t, n) {
            var r = e.eventRange.range;
            return {
                isPast: r.end < (n || t.start),
                isFuture: r.start >= (n || t.end),
                isToday: t && dn(t, r.start)
            }
        }

        function An(e) {
            return e.instance ? e.instance.instanceId : e.def.defId + ":" + e.range.start.toISOString()
        }
        var Cn = {
            start: zt,
            end: zt,
            allDay: Boolean
        };

        function Rn(e, t, n) {
            var r = function(e, t) {
                    var n = Ot(e, Cn),
                        r = n.refined,
                        o = n.extra,
                        a = r.start ? t.createMarkerMeta(r.start) : null,
                        s = r.end ? t.createMarkerMeta(r.end) : null,
                        l = r.allDay;
                    null == l && (l = a && a.isTimeUnspecified && (!s || s.isTimeUnspecified));
                    return i({
                        range: {
                            start: a ? a.marker : null,
                            end: s ? s.marker : null
                        },
                        allDay: l
                    }, o)
                }(e, t),
                o = r.range;
            if (!o.start) return null;
            if (!o.end) {
                if (null == n) return null;
                o.end = t.add(o.start, n)
            }
            return r
        }

        function xn(e, t, n) {
            return i(i({}, kn(e, t, n)), {
                timeZone: t.timeZone
            })
        }

        function kn(e, t, n) {
            return {
                start: t.toDate(e.start),
                end: t.toDate(e.end),
                startStr: t.formatIso(e.start, {
                    omitTime: n
                }),
                endStr: t.formatIso(e.end, {
                    omitTime: n
                })
            }
        }

        function Tn(e, t, n) {
            var r = $t({
                    editable: !1
                }, n),
                o = tn(r.refined, r.extra, "", e.allDay, !0, n);
            return {
                def: o,
                ui: vn(o, t),
                instance: Oe(o.defId, e.range),
                range: e.range,
                isStart: !0,
                isEnd: !0
            }
        }

        function Mn(e, t, n) {
            n.emitter.trigger("select", i(i({}, In(e, n)), {
                jsEvent: t ? t.origEvent : null,
                view: n.viewApi || n.calendarApi.view
            }))
        }

        function In(e, t) {
            for (var n, r, o = {}, a = 0, s = t.pluginHooks.dateSpanTransforms; a < s.length; a++) {
                var l = s[a];
                i(o, l(e, t))
            }
            return i(o, (n = e, r = t.dateEnv, i(i({}, kn(n.range, r, n.allDay)), {
                allDay: n.allDay
            }))), o
        }

        function _n(e, t, n) {
            var r = n.dateEnv,
                o = n.options,
                i = t;
            return e ? (i = xe(i), i = r.add(i, o.defaultAllDayEventDuration)) : i = r.add(i, o.defaultTimedEventDuration), i
        }

        function Nn(e, t, n, r) {
            var o = gn(e.defs, t),
                i = {
                    defs: {},
                    instances: {}
                };
            for (var a in e.defs) {
                var s = e.defs[a];
                i.defs[a] = Pn(s, o[a], n, r)
            }
            for (var l in e.instances) {
                var c = e.instances[l];
                s = i.defs[c.defId];
                i.instances[l] = Hn(c, s, o[c.defId], n, r)
            }
            return i
        }

        function Pn(e, t, n, r) {
            var o = n.standardProps || {};
            null == o.hasEnd && t.durationEditable && (n.startDelta || n.endDelta) && (o.hasEnd = !0);
            var a = i(i(i({}, e), o), {
                ui: i(i({}, e.ui), o.ui)
            });
            n.extendedProps && (a.extendedProps = i(i({}, a.extendedProps), n.extendedProps));
            for (var s = 0, l = r.pluginHooks.eventDefMutationAppliers; s < l.length; s++) {
                (0, l[s])(a, n, r)
            }
            return !a.hasEnd && r.options.forceEventDuration && (a.hasEnd = !0), a
        }

        function Hn(e, t, n, r, o) {
            var a = o.dateEnv,
                s = r.standardProps && !0 === r.standardProps.allDay,
                l = r.standardProps && !1 === r.standardProps.hasEnd,
                c = i({}, e);
            return s && (c.range = nn(c.range)), r.datesDelta && n.startEditable && (c.range = {
                start: a.add(c.range.start, r.datesDelta),
                end: a.add(c.range.end, r.datesDelta)
            }), r.startDelta && n.durationEditable && (c.range = {
                start: a.add(c.range.start, r.startDelta),
                end: c.range.end
            }), r.endDelta && n.durationEditable && (c.range = {
                start: c.range.start,
                end: a.add(c.range.end, r.endDelta)
            }), l && (c.range = {
                start: c.range.start,
                end: _n(t.allDay, c.range.start, o)
            }), t.allDay && (c.range = {
                start: xe(c.range.start),
                end: xe(c.range.end)
            }), c.range.end < c.range.start && (c.range.end = _n(t.allDay, c.range.start, o)), c
        }
        var On = function() {
                function e(e, t, n) {
                    this.type = e, this.getCurrentData = t, this.dateEnv = n
                }
                return Object.defineProperty(e.prototype, "calendar", {
                    get: function() {
                        return this.getCurrentData().calendarApi
                    },
                    enumerable: !1,
                    configurable: !0
                }), Object.defineProperty(e.prototype, "title", {
                    get: function() {
                        return this.getCurrentData().viewTitle
                    },
                    enumerable: !1,
                    configurable: !0
                }), Object.defineProperty(e.prototype, "activeStart", {
                    get: function() {
                        return this.dateEnv.toDate(this.getCurrentData().dateProfile.activeRange.start)
                    },
                    enumerable: !1,
                    configurable: !0
                }), Object.defineProperty(e.prototype, "activeEnd", {
                    get: function() {
                        return this.dateEnv.toDate(this.getCurrentData().dateProfile.activeRange.end)
                    },
                    enumerable: !1,
                    configurable: !0
                }), Object.defineProperty(e.prototype, "currentStart", {
                    get: function() {
                        return this.dateEnv.toDate(this.getCurrentData().dateProfile.currentRange.start)
                    },
                    enumerable: !1,
                    configurable: !0
                }), Object.defineProperty(e.prototype, "currentEnd", {
                    get: function() {
                        return this.dateEnv.toDate(this.getCurrentData().dateProfile.currentRange.end)
                    },
                    enumerable: !1,
                    configurable: !0
                }), e.prototype.getOption = function(e) {
                    return this.getCurrentData().options[e]
                }, e
            }(),
            zn = {
                id: String,
                defaultAllDay: Boolean,
                url: String,
                format: String,
                events: zt,
                eventDataTransform: zt,
                success: zt,
                failure: zt
            };

        function Bn(e, t, n) {
            var r;
            if (void 0 === n && (n = Wn(t)), "string" == typeof e ? r = {
                url: e
            } : "function" == typeof e || Array.isArray(e) ? r = {
                events: e
            } : "object" == typeof e && e && (r = e), r) {
                var o = Ot(r, n),
                    i = o.refined,
                    a = o.extra,
                    s = function(e, t) {
                        for (var n = t.pluginHooks.eventSourceDefs, r = n.length - 1; r >= 0; r -= 1) {
                            var o = n[r].parseMeta(e);
                            if (o) return {
                                sourceDefId: r,
                                meta: o
                            }
                        }
                        return null
                    }(i, t);
                if (s) return {
                    _raw: e,
                    isFetching: !1,
                    latestFetchId: "",
                    fetchRange: null,
                    defaultAllDay: i.defaultAllDay,
                    eventDataTransform: i.eventDataTransform,
                    success: i.success,
                    failure: i.failure,
                    publicId: i.id || "",
                    sourceId: fe(),
                    sourceDefId: s.sourceDefId,
                    meta: s.meta,
                    ui: Yt(i, t),
                    extendedProps: a
                }
            }
            return null
        }

        function Wn(e) {
            return i(i(i({}, jt), zn), e.pluginHooks.eventSourceRefiners)
        }

        function Ln(e, t) {
            return "function" == typeof e && (e = e()), null == e ? t.createNowMarker() : t.createMarker(e)
        }
        var Un = function() {
                function e() {}
                return e.prototype.getCurrentData = function() {
                    return this.currentDataManager.getCurrentData()
                }, e.prototype.dispatch = function(e) {
                    return this.currentDataManager.dispatch(e)
                }, Object.defineProperty(e.prototype, "view", {
                    get: function() {
                        return this.getCurrentData().viewApi
                    },
                    enumerable: !1,
                    configurable: !0
                }), e.prototype.batchRendering = function(e) {
                    e()
                }, e.prototype.updateSize = function() {
                    this.trigger("_resize", !0)
                }, e.prototype.setOption = function(e, t) {
                    this.dispatch({
                        type: "SET_OPTION",
                        optionName: e,
                        rawOptionValue: t
                    })
                }, e.prototype.getOption = function(e) {
                    return this.currentDataManager.currentCalendarOptionsInput[e]
                }, e.prototype.getAvailableLocaleCodes = function() {
                    return Object.keys(this.getCurrentData().availableRawLocales)
                }, e.prototype.on = function(e, t) {
                    var n = this.currentDataManager;
                    n.currentCalendarOptionsRefiners[e] ? n.emitter.on(e, t) : console.warn("Unknown listener name '" + e + "'")
                }, e.prototype.off = function(e, t) {
                    this.currentDataManager.emitter.off(e, t)
                }, e.prototype.trigger = function(e) {
                    for (var t, n = [], r = 1; r < arguments.length; r++) n[r - 1] = arguments[r];
                    (t = this.currentDataManager.emitter).trigger.apply(t, a([e], n))
                }, e.prototype.changeView = function(e, t) {
                    var n = this;
                    this.batchRendering((function() {
                        if (n.unselect(), t)
                            if (t.start && t.end) n.dispatch({
                                type: "CHANGE_VIEW_TYPE",
                                viewType: e
                            }), n.dispatch({
                                type: "SET_OPTION",
                                optionName: "visibleRange",
                                rawOptionValue: t
                            });
                            else {
                                var r = n.getCurrentData().dateEnv;
                                n.dispatch({
                                    type: "CHANGE_VIEW_TYPE",
                                    viewType: e,
                                    dateMarker: r.createMarker(t)
                                })
                            }
                        else n.dispatch({
                            type: "CHANGE_VIEW_TYPE",
                            viewType: e
                        })
                    }))
                }, e.prototype.zoomTo = function(e, t) {
                    var n;
                    t = t || "day", n = this.getCurrentData().viewSpecs[t] || this.getUnitViewSpec(t), this.unselect(), n ? this.dispatch({
                        type: "CHANGE_VIEW_TYPE",
                        viewType: n.type,
                        dateMarker: e
                    }) : this.dispatch({
                        type: "CHANGE_DATE",
                        dateMarker: e
                    })
                }, e.prototype.getUnitViewSpec = function(e) {
                    var t, n, r = this.getCurrentData(),
                        o = r.viewSpecs,
                        i = r.toolbarConfig,
                        a = [].concat(i.viewsWithButtons);
                    for (var s in o) a.push(s);
                    for (t = 0; t < a.length; t += 1)
                        if ((n = o[a[t]]) && n.singleUnit === e) return n;
                    return null
                }, e.prototype.prev = function() {
                    this.unselect(), this.dispatch({
                        type: "PREV"
                    })
                }, e.prototype.next = function() {
                    this.unselect(), this.dispatch({
                        type: "NEXT"
                    })
                }, e.prototype.prevYear = function() {
                    var e = this.getCurrentData();
                    this.unselect(), this.dispatch({
                        type: "CHANGE_DATE",
                        dateMarker: e.dateEnv.addYears(e.currentDate, -1)
                    })
                }, e.prototype.nextYear = function() {
                    var e = this.getCurrentData();
                    this.unselect(), this.dispatch({
                        type: "CHANGE_DATE",
                        dateMarker: e.dateEnv.addYears(e.currentDate, 1)
                    })
                }, e.prototype.today = function() {
                    var e = this.getCurrentData();
                    this.unselect(), this.dispatch({
                        type: "CHANGE_DATE",
                        dateMarker: Ln(e.calendarOptions.now, e.dateEnv)
                    })
                }, e.prototype.gotoDate = function(e) {
                    var t = this.getCurrentData();
                    this.unselect(), this.dispatch({
                        type: "CHANGE_DATE",
                        dateMarker: t.dateEnv.createMarker(e)
                    })
                }, e.prototype.incrementDate = function(e) {
                    var t = this.getCurrentData(),
                        n = Ke(e);
                    n && (this.unselect(), this.dispatch({
                        type: "CHANGE_DATE",
                        dateMarker: t.dateEnv.add(t.currentDate, n)
                    }))
                }, e.prototype.getDate = function() {
                    var e = this.getCurrentData();
                    return e.dateEnv.toDate(e.currentDate)
                }, e.prototype.formatDate = function(e, t) {
                    var n = this.getCurrentData().dateEnv;
                    return n.format(n.createMarker(e), xt(t))
                }, e.prototype.formatRange = function(e, t, n) {
                    var r = this.getCurrentData().dateEnv;
                    return r.formatRange(r.createMarker(e), r.createMarker(t), xt(n), n)
                }, e.prototype.formatIso = function(e, t) {
                    var n = this.getCurrentData().dateEnv;
                    return n.formatIso(n.createMarker(e), {
                        omitTime: t
                    })
                }, e.prototype.select = function(e, t) {
                    var n;
                    n = null == t ? null != e.start ? e : {
                        start: e,
                        end: null
                    } : {
                        start: e,
                        end: t
                    };
                    var r = this.getCurrentData(),
                        o = Rn(n, r.dateEnv, Ke({
                            days: 1
                        }));
                    o && (this.dispatch({
                        type: "SELECT_DATES",
                        selection: o
                    }), Mn(o, null, r))
                }, e.prototype.unselect = function(e) {
                    var t = this.getCurrentData();
                    t.dateSelection && (this.dispatch({
                        type: "UNSELECT_DATES"
                    }), function(e, t) {
                        t.emitter.trigger("unselect", {
                            jsEvent: e ? e.origEvent : null,
                            view: t.viewApi || t.calendarApi.view
                        })
                    }(e, t))
                }, e.prototype.addEvent = function(e, t) {
                    if (e instanceof Fn) {
                        var n = e._def,
                            r = e._instance;
                        return this.getCurrentData().eventStore.defs[n.defId] || (this.dispatch({
                            type: "ADD_EVENTS",
                            eventStore: Wt({
                                def: n,
                                instance: r
                            })
                        }), this.triggerEventAdd(e)), e
                    }
                    var o, i = this.getCurrentData();
                    if (t instanceof $) o = t.internalEventSource;
                    else if ("boolean" == typeof t) t && (o = Fe(i.eventSources)[0]);
                    else if (null != t) {
                        var a = this.getEventSourceById(t);
                        if (!a) return console.warn('Could not find an event source with ID "' + t + '"'), null;
                        o = a.internalEventSource
                    }
                    var s = Kt(e, o, i, !1);
                    if (s) {
                        var l = new Fn(i, s.def, s.def.recurringDef ? null : s.instance);
                        return this.dispatch({
                            type: "ADD_EVENTS",
                            eventStore: Wt(s)
                        }), this.triggerEventAdd(l), l
                    }
                    return null
                }, e.prototype.triggerEventAdd = function(e) {
                    var t = this;
                    this.getCurrentData().emitter.trigger("eventAdd", {
                        event: e,
                        relatedEvents: [],
                        revert: function() {
                            t.dispatch({
                                type: "REMOVE_EVENTS",
                                eventStore: Vn(e)
                            })
                        }
                    })
                }, e.prototype.getEventById = function(e) {
                    var t = this.getCurrentData(),
                        n = t.eventStore,
                        r = n.defs,
                        o = n.instances;
                    for (var i in e = String(e), r) {
                        var a = r[i];
                        if (a.publicId === e) {
                            if (a.recurringDef) return new Fn(t, a, null);
                            for (var s in o) {
                                var l = o[s];
                                if (l.defId === a.defId) return new Fn(t, a, l)
                            }
                        }
                    }
                    return null
                }, e.prototype.getEvents = function() {
                    var e = this.getCurrentData();
                    return jn(e.eventStore, e)
                }, e.prototype.removeAllEvents = function() {
                    this.dispatch({
                        type: "REMOVE_ALL_EVENTS"
                    })
                }, e.prototype.getEventSources = function() {
                    var e = this.getCurrentData(),
                        t = e.eventSources,
                        n = [];
                    for (var r in t) n.push(new $(e, t[r]));
                    return n
                }, e.prototype.getEventSourceById = function(e) {
                    var t = this.getCurrentData(),
                        n = t.eventSources;
                    for (var r in e = String(e), n)
                        if (n[r].publicId === e) return new $(t, n[r]);
                    return null
                }, e.prototype.addEventSource = function(e) {
                    var t = this.getCurrentData();
                    if (e instanceof $) return t.eventSources[e.internalEventSource.sourceId] || this.dispatch({
                        type: "ADD_EVENT_SOURCES",
                        sources: [e.internalEventSource]
                    }), e;
                    var n = Bn(e, t);
                    return n ? (this.dispatch({
                        type: "ADD_EVENT_SOURCES",
                        sources: [n]
                    }), new $(t, n)) : null
                }, e.prototype.removeAllEventSources = function() {
                    this.dispatch({
                        type: "REMOVE_ALL_EVENT_SOURCES"
                    })
                }, e.prototype.refetchEvents = function() {
                    this.dispatch({
                        type: "FETCH_EVENT_SOURCES"
                    })
                }, e.prototype.scrollToTime = function(e) {
                    var t = Ke(e);
                    t && this.trigger("_scrollRequest", {
                        time: t
                    })
                }, e
            }(),
            Fn = function() {
                function e(e, t, n) {
                    this._context = e, this._def = t, this._instance = n || null
                }
                return e.prototype.setProp = function(e, t) {
                    var n, r;
                    if (e in Xt) console.warn("Could not set date-related prop 'name'. Use one of the date-related methods instead.");
                    else if (e in Zt) t = Zt[e](t), this.mutate({
                        standardProps: (n = {}, n[e] = t, n)
                    });
                    else if (e in jt) {
                        var o = jt[e](t);
                        "color" === e ? o = {
                            backgroundColor: t,
                            borderColor: t
                        } : "editable" === e ? o = {
                            startEditable: t,
                            durationEditable: t
                        } : ((r = {})[e] = t, o = r), this.mutate({
                            standardProps: {
                                ui: o
                            }
                        })
                    } else console.warn("Could not set prop '" + e + "'. Use setExtendedProp instead.")
                }, e.prototype.setExtendedProp = function(e, t) {
                    var n;
                    this.mutate({
                        extendedProps: (n = {}, n[e] = t, n)
                    })
                }, e.prototype.setStart = function(e, t) {
                    void 0 === t && (t = {});
                    var n = this._context.dateEnv,
                        r = n.createMarker(e);
                    if (r && this._instance) {
                        var o = on(this._instance.range.start, r, n, t.granularity);
                        t.maintainDuration ? this.mutate({
                            datesDelta: o
                        }) : this.mutate({
                            startDelta: o
                        })
                    }
                }, e.prototype.setEnd = function(e, t) {
                    void 0 === t && (t = {});
                    var n, r = this._context.dateEnv;
                    if ((null == e || (n = r.createMarker(e))) && this._instance)
                        if (n) {
                            var o = on(this._instance.range.end, n, r, t.granularity);
                            this.mutate({
                                endDelta: o
                            })
                        } else this.mutate({
                            standardProps: {
                                hasEnd: !1
                            }
                        })
                }, e.prototype.setDates = function(e, t, n) {
                    void 0 === n && (n = {});
                    var r, o, i, a = this._context.dateEnv,
                        s = {
                            allDay: n.allDay
                        },
                        l = a.createMarker(e);
                    if (l && ((null == t || (r = a.createMarker(t))) && this._instance)) {
                        var c = this._instance.range;
                        !0 === n.allDay && (c = nn(c));
                        var u = on(c.start, l, a, n.granularity);
                        if (r) {
                            var d = on(c.end, r, a, n.granularity);
                            i = d, (o = u).years === i.years && o.months === i.months && o.days === i.days && o.milliseconds === i.milliseconds ? this.mutate({
                                datesDelta: u,
                                standardProps: s
                            }) : this.mutate({
                                startDelta: u,
                                endDelta: d,
                                standardProps: s
                            })
                        } else s.hasEnd = !1, this.mutate({
                            datesDelta: u,
                            standardProps: s
                        })
                    }
                }, e.prototype.moveStart = function(e) {
                    var t = Ke(e);
                    t && this.mutate({
                        startDelta: t
                    })
                }, e.prototype.moveEnd = function(e) {
                    var t = Ke(e);
                    t && this.mutate({
                        endDelta: t
                    })
                }, e.prototype.moveDates = function(e) {
                    var t = Ke(e);
                    t && this.mutate({
                        datesDelta: t
                    })
                }, e.prototype.setAllDay = function(e, t) {
                    void 0 === t && (t = {});
                    var n = {
                            allDay: e
                        },
                        r = t.maintainDuration;
                    null == r && (r = this._context.options.allDayMaintainDuration), this._def.allDay !== e && (n.hasEnd = r), this.mutate({
                        standardProps: n
                    })
                }, e.prototype.formatRange = function(e) {
                    var t = this._context.dateEnv,
                        n = this._instance,
                        r = xt(e);
                    return this._def.hasEnd ? t.formatRange(n.range.start, n.range.end, r, {
                        forcedStartTzo: n.forcedStartTzo,
                        forcedEndTzo: n.forcedEndTzo
                    }) : t.format(n.range.start, r, {
                        forcedTzo: n.forcedStartTzo
                    })
                }, e.prototype.mutate = function(t) {
                    var n = this._instance;
                    if (n) {
                        var r = this._def,
                            o = this._context,
                            i = o.getCurrentData().eventStore,
                            a = Lt(i, n.instanceId);
                        a = Nn(a, {
                            "": {
                                display: "",
                                startEditable: !0,
                                durationEditable: !0,
                                constraints: [],
                                overlap: null,
                                allows: [],
                                backgroundColor: "",
                                borderColor: "",
                                textColor: "",
                                classNames: []
                            }
                        }, t, o);
                        var s = new e(o, r, n);
                        this._def = a.defs[r.defId], this._instance = a.instances[n.instanceId], o.dispatch({
                            type: "MERGE_EVENTS",
                            eventStore: a
                        }), o.emitter.trigger("eventChange", {
                            oldEvent: s,
                            event: this,
                            relatedEvents: jn(a, o, n),
                            revert: function() {
                                o.dispatch({
                                    type: "RESET_EVENTS",
                                    eventStore: i
                                })
                            }
                        })
                    }
                }, e.prototype.remove = function() {
                    var e = this._context,
                        t = Vn(this);
                    e.dispatch({
                        type: "REMOVE_EVENTS",
                        eventStore: t
                    }), e.emitter.trigger("eventRemove", {
                        event: this,
                        relatedEvents: [],
                        revert: function() {
                            e.dispatch({
                                type: "MERGE_EVENTS",
                                eventStore: t
                            })
                        }
                    })
                }, Object.defineProperty(e.prototype, "source", {
                    get: function() {
                        var e = this._def.sourceId;
                        return e ? new $(this._context, this._context.getCurrentData().eventSources[e]) : null
                    },
                    enumerable: !1,
                    configurable: !0
                }), Object.defineProperty(e.prototype, "start", {
                    get: function() {
                        return this._instance ? this._context.dateEnv.toDate(this._instance.range.start) : null
                    },
                    enumerable: !1,
                    configurable: !0
                }), Object.defineProperty(e.prototype, "end", {
                    get: function() {
                        return this._instance && this._def.hasEnd ? this._context.dateEnv.toDate(this._instance.range.end) : null
                    },
                    enumerable: !1,
                    configurable: !0
                }), Object.defineProperty(e.prototype, "startStr", {
                    get: function() {
                        var e = this._instance;
                        return e ? this._context.dateEnv.formatIso(e.range.start, {
                            omitTime: this._def.allDay,
                            forcedTzo: e.forcedStartTzo
                        }) : ""
                    },
                    enumerable: !1,
                    configurable: !0
                }), Object.defineProperty(e.prototype, "endStr", {
                    get: function() {
                        var e = this._instance;
                        return e && this._def.hasEnd ? this._context.dateEnv.formatIso(e.range.end, {
                            omitTime: this._def.allDay,
                            forcedTzo: e.forcedEndTzo
                        }) : ""
                    },
                    enumerable: !1,
                    configurable: !0
                }), Object.defineProperty(e.prototype, "id", {
                    get: function() {
                        return this._def.publicId
                    },
                    enumerable: !1,
                    configurable: !0
                }), Object.defineProperty(e.prototype, "groupId", {
                    get: function() {
                        return this._def.groupId
                    },
                    enumerable: !1,
                    configurable: !0
                }), Object.defineProperty(e.prototype, "allDay", {
                    get: function() {
                        return this._def.allDay
                    },
                    enumerable: !1,
                    configurable: !0
                }), Object.defineProperty(e.prototype, "title", {
                    get: function() {
                        return this._def.title
                    },
                    enumerable: !1,
                    configurable: !0
                }), Object.defineProperty(e.prototype, "url", {
                    get: function() {
                        return this._def.url
                    },
                    enumerable: !1,
                    configurable: !0
                }), Object.defineProperty(e.prototype, "display", {
                    get: function() {
                        return this._def.ui.display || "auto"
                    },
                    enumerable: !1,
                    configurable: !0
                }), Object.defineProperty(e.prototype, "startEditable", {
                    get: function() {
                        return this._def.ui.startEditable
                    },
                    enumerable: !1,
                    configurable: !0
                }), Object.defineProperty(e.prototype, "durationEditable", {
                    get: function() {
                        return this._def.ui.durationEditable
                    },
                    enumerable: !1,
                    configurable: !0
                }), Object.defineProperty(e.prototype, "constraint", {
                    get: function() {
                        return this._def.ui.constraints[0] || null
                    },
                    enumerable: !1,
                    configurable: !0
                }), Object.defineProperty(e.prototype, "overlap", {
                    get: function() {
                        return this._def.ui.overlap
                    },
                    enumerable: !1,
                    configurable: !0
                }), Object.defineProperty(e.prototype, "allow", {
                    get: function() {
                        return this._def.ui.allows[0] || null
                    },
                    enumerable: !1,
                    configurable: !0
                }), Object.defineProperty(e.prototype, "backgroundColor", {
                    get: function() {
                        return this._def.ui.backgroundColor
                    },
                    enumerable: !1,
                    configurable: !0
                }), Object.defineProperty(e.prototype, "borderColor", {
                    get: function() {
                        return this._def.ui.borderColor
                    },
                    enumerable: !1,
                    configurable: !0
                }), Object.defineProperty(e.prototype, "textColor", {
                    get: function() {
                        return this._def.ui.textColor
                    },
                    enumerable: !1,
                    configurable: !0
                }), Object.defineProperty(e.prototype, "classNames", {
                    get: function() {
                        return this._def.ui.classNames
                    },
                    enumerable: !1,
                    configurable: !0
                }), Object.defineProperty(e.prototype, "extendedProps", {
                    get: function() {
                        return this._def.extendedProps
                    },
                    enumerable: !1,
                    configurable: !0
                }), e.prototype.toPlainObject = function(e) {
                    void 0 === e && (e = {});
                    var t = this._def,
                        n = t.ui,
                        r = this.startStr,
                        o = this.endStr,
                        a = {};
                    return t.title && (a.title = t.title), r && (a.start = r), o && (a.end = o), t.publicId && (a.id = t.publicId), t.groupId && (a.groupId = t.groupId), t.url && (a.url = t.url), n.display && "auto" !== n.display && (a.display = n.display), e.collapseColor && n.backgroundColor && n.backgroundColor === n.borderColor ? a.color = n.backgroundColor : (n.backgroundColor && (a.backgroundColor = n.backgroundColor), n.borderColor && (a.borderColor = n.borderColor)), n.textColor && (a.textColor = n.textColor), n.classNames.length && (a.classNames = n.classNames), Object.keys(t.extendedProps).length && (e.collapseExtendedProps ? i(a, t.extendedProps) : a.extendedProps = t.extendedProps), a
                }, e.prototype.toJSON = function() {
                    return this.toPlainObject()
                }, e
            }();

        function Vn(e) {
            var t, n, r = e._def,
                o = e._instance;
            return {
                defs: (t = {}, t[r.defId] = r, t),
                instances: o ? (n = {}, n[o.instanceId] = o, n) : {}
            }
        }

        function jn(e, t, n) {
            var r = e.defs,
                o = e.instances,
                i = [],
                a = n ? n.instanceId : "";
            for (var s in o) {
                var l = o[s],
                    c = r[l.defId];
                l.instanceId !== a && i.push(new Fn(t, c, l))
            }
            return i
        }
        var Gn = {};
        var Yn, qn = function() {
            function e() {}
            return e.prototype.getMarkerYear = function(e) {
                return e.getUTCFullYear()
            }, e.prototype.getMarkerMonth = function(e) {
                return e.getUTCMonth()
            }, e.prototype.getMarkerDay = function(e) {
                return e.getUTCDate()
            }, e.prototype.arrayToMarker = function(e) {
                return Ne(e)
            }, e.prototype.markerToArray = function(e) {
                return _e(e)
            }, e
        }();
        Yn = qn, Gn["gregory"] = Yn;
        var Qn = /^\s*(\d{4})(-?(\d{2})(-?(\d{2})([T ](\d{2}):?(\d{2})(:?(\d{2})(\.(\d+))?)?(Z|(([-+])(\d{2})(:?(\d{2}))?))?)?)?)?$/;
        var Zn = function() {
                function e(e) {
                    var t = this.timeZone = e.timeZone,
                        n = "local" !== t && "UTC" !== t;
                    e.namedTimeZoneImpl && n && (this.namedTimeZoneImpl = new e.namedTimeZoneImpl(t)), this.canComputeOffset = Boolean(!n || this.namedTimeZoneImpl), this.calendarSystem = function(e) {
                        return new Gn[e]
                    }(e.calendarSystem), this.locale = e.locale, this.weekDow = e.locale.week.dow, this.weekDoy = e.locale.week.doy, "ISO" === e.weekNumberCalculation && (this.weekDow = 1, this.weekDoy = 4), "number" == typeof e.firstDay && (this.weekDow = e.firstDay), "function" == typeof e.weekNumberCalculation && (this.weekNumberFunc = e.weekNumberCalculation), this.weekText = null != e.weekText ? e.weekText : e.locale.options.weekText, this.cmdFormatter = e.cmdFormatter, this.defaultSeparator = e.defaultSeparator
                }
                return e.prototype.createMarker = function(e) {
                    var t = this.createMarkerMeta(e);
                    return null === t ? null : t.marker
                }, e.prototype.createNowMarker = function() {
                    return this.canComputeOffset ? this.timestampToMarker((new Date).valueOf()) : Ne(Me(new Date))
                }, e.prototype.createMarkerMeta = function(e) {
                    if ("string" == typeof e) return this.parse(e);
                    var t = null;
                    return "number" == typeof e ? t = this.timestampToMarker(e) : e instanceof Date ? (e = e.valueOf(), isNaN(e) || (t = this.timestampToMarker(e))) : Array.isArray(e) && (t = Ne(e)), null !== t && Pe(t) ? {
                        marker: t,
                        isTimeUnspecified: !1,
                        forcedTzo: null
                    } : null
                }, e.prototype.parse = function(e) {
                    var t = function(e) {
                        var t = Qn.exec(e);
                        if (t) {
                            var n = new Date(Date.UTC(Number(t[1]), t[3] ? Number(t[3]) - 1 : 0, Number(t[5] || 1), Number(t[7] || 0), Number(t[8] || 0), Number(t[10] || 0), t[12] ? 1e3 * Number("0." + t[12]) : 0));
                            if (Pe(n)) {
                                var r = null;
                                return t[13] && (r = ("-" === t[15] ? -1 : 1) * (60 * Number(t[16] || 0) + Number(t[18] || 0))), {
                                    marker: n,
                                    isTimeUnspecified: !t[6],
                                    timeZoneOffset: r
                                }
                            }
                        }
                        return null
                    }(e);
                    if (null === t) return null;
                    var n = t.marker,
                        r = null;
                    return null !== t.timeZoneOffset && (this.canComputeOffset ? n = this.timestampToMarker(n.valueOf() - 60 * t.timeZoneOffset * 1e3) : r = t.timeZoneOffset), {
                        marker: n,
                        isTimeUnspecified: t.isTimeUnspecified,
                        forcedTzo: r
                    }
                }, e.prototype.getYear = function(e) {
                    return this.calendarSystem.getMarkerYear(e)
                }, e.prototype.getMonth = function(e) {
                    return this.calendarSystem.getMarkerMonth(e)
                }, e.prototype.add = function(e, t) {
                    var n = this.calendarSystem.markerToArray(e);
                    return n[0] += t.years, n[1] += t.months, n[2] += t.days, n[6] += t.milliseconds, this.calendarSystem.arrayToMarker(n)
                }, e.prototype.subtract = function(e, t) {
                    var n = this.calendarSystem.markerToArray(e);
                    return n[0] -= t.years, n[1] -= t.months, n[2] -= t.days, n[6] -= t.milliseconds, this.calendarSystem.arrayToMarker(n)
                }, e.prototype.addYears = function(e, t) {
                    var n = this.calendarSystem.markerToArray(e);
                    return n[0] += t, this.calendarSystem.arrayToMarker(n)
                }, e.prototype.addMonths = function(e, t) {
                    var n = this.calendarSystem.markerToArray(e);
                    return n[1] += t, this.calendarSystem.arrayToMarker(n)
                }, e.prototype.diffWholeYears = function(e, t) {
                    var n = this.calendarSystem;
                    return He(e) === He(t) && n.getMarkerDay(e) === n.getMarkerDay(t) && n.getMarkerMonth(e) === n.getMarkerMonth(t) ? n.getMarkerYear(t) - n.getMarkerYear(e) : null
                }, e.prototype.diffWholeMonths = function(e, t) {
                    var n = this.calendarSystem;
                    return He(e) === He(t) && n.getMarkerDay(e) === n.getMarkerDay(t) ? n.getMarkerMonth(t) - n.getMarkerMonth(e) + 12 * (n.getMarkerYear(t) - n.getMarkerYear(e)) : null
                }, e.prototype.greatestWholeUnit = function(e, t) {
                    var n = this.diffWholeYears(e, t);
                    return null !== n ? {
                        unit: "year",
                        value: n
                    } : null !== (n = this.diffWholeMonths(e, t)) ? {
                        unit: "month",
                        value: n
                    } : null !== (n = function(e, t) {
                        var n = Re(e, t);
                        return null !== n && n % 7 == 0 ? n / 7 : null
                    }(e, t)) ? {
                        unit: "week",
                        value: n
                    } : null !== (n = Re(e, t)) ? {
                        unit: "day",
                        value: n
                    } : be(n = function(e, t) {
                        return (t.valueOf() - e.valueOf()) / 36e5
                    }(e, t)) ? {
                        unit: "hour",
                        value: n
                    } : be(n = function(e, t) {
                        return (t.valueOf() - e.valueOf()) / 6e4
                    }(e, t)) ? {
                        unit: "minute",
                        value: n
                    } : be(n = function(e, t) {
                        return (t.valueOf() - e.valueOf()) / 1e3
                    }(e, t)) ? {
                        unit: "second",
                        value: n
                    } : {
                        unit: "millisecond",
                        value: t.valueOf() - e.valueOf()
                    }
                }, e.prototype.countDurationsBetween = function(e, t, n) {
                    var r;
                    return n.years && null !== (r = this.diffWholeYears(e, t)) ? r / (rt(n) / 365) : n.months && null !== (r = this.diffWholeMonths(e, t)) ? r / function(e) {
                        return rt(e) / 30
                    }(n) : n.days && null !== (r = Re(e, t)) ? r / rt(n) : (t.valueOf() - e.valueOf()) / ot(n)
                }, e.prototype.startOf = function(e, t) {
                    return "year" === t ? this.startOfYear(e) : "month" === t ? this.startOfMonth(e) : "week" === t ? this.startOfWeek(e) : "day" === t ? xe(e) : "hour" === t ? function(e) {
                        return Ne([e.getUTCFullYear(), e.getUTCMonth(), e.getUTCDate(), e.getUTCHours()])
                    }(e) : "minute" === t ? function(e) {
                        return Ne([e.getUTCFullYear(), e.getUTCMonth(), e.getUTCDate(), e.getUTCHours(), e.getUTCMinutes()])
                    }(e) : "second" === t ? function(e) {
                        return Ne([e.getUTCFullYear(), e.getUTCMonth(), e.getUTCDate(), e.getUTCHours(), e.getUTCMinutes(), e.getUTCSeconds()])
                    }(e) : null
                }, e.prototype.startOfYear = function(e) {
                    return this.calendarSystem.arrayToMarker([this.calendarSystem.getMarkerYear(e)])
                }, e.prototype.startOfMonth = function(e) {
                    return this.calendarSystem.arrayToMarker([this.calendarSystem.getMarkerYear(e), this.calendarSystem.getMarkerMonth(e)])
                }, e.prototype.startOfWeek = function(e) {
                    return this.calendarSystem.arrayToMarker([this.calendarSystem.getMarkerYear(e), this.calendarSystem.getMarkerMonth(e), e.getUTCDate() - (e.getUTCDay() - this.weekDow + 7) % 7])
                }, e.prototype.computeWeekNumber = function(e) {
                    return this.weekNumberFunc ? this.weekNumberFunc(this.toDate(e)) : function(e, t, n) {
                        var r = e.getUTCFullYear(),
                            o = ke(e, r, t, n);
                        if (o < 1) return ke(e, r - 1, t, n);
                        var i = ke(e, r + 1, t, n);
                        return i >= 1 ? Math.min(o, i) : o
                    }(e, this.weekDow, this.weekDoy)
                }, e.prototype.format = function(e, t, n) {
                    return void 0 === n && (n = {}), t.format({
                        marker: e,
                        timeZoneOffset: null != n.forcedTzo ? n.forcedTzo : this.offsetForMarker(e)
                    }, this)
                }, e.prototype.formatRange = function(e, t, n, r) {
                    return void 0 === r && (r = {}), r.isEndExclusive && (t = Ae(t, -1)), n.formatRange({
                        marker: e,
                        timeZoneOffset: null != r.forcedStartTzo ? r.forcedStartTzo : this.offsetForMarker(e)
                    }, {
                        marker: t,
                        timeZoneOffset: null != r.forcedEndTzo ? r.forcedEndTzo : this.offsetForMarker(t)
                    }, this, r.defaultSeparator)
                }, e.prototype.formatIso = function(e, t) {
                    void 0 === t && (t = {});
                    var n = null;
                    return t.omitTimeZoneOffset || (n = null != t.forcedTzo ? t.forcedTzo : this.offsetForMarker(e)),
                        function(e, t, n) {
                            void 0 === n && (n = !1);
                            var r = e.toISOString();
                            return r = r.replace(".000", ""), n && (r = r.replace("T00:00:00Z", "")), r.length > 10 && (null == t ? r = r.replace("Z", "") : 0 !== t && (r = r.replace("Z", lt(t, !0)))), r
                        }(e, n, t.omitTime)
                }, e.prototype.timestampToMarker = function(e) {
                    return "local" === this.timeZone ? Ne(Me(new Date(e))) : "UTC" !== this.timeZone && this.namedTimeZoneImpl ? Ne(this.namedTimeZoneImpl.timestampToArray(e)) : new Date(e)
                }, e.prototype.offsetForMarker = function(e) {
                    return "local" === this.timeZone ? -Ie(_e(e)).getTimezoneOffset() : "UTC" === this.timeZone ? 0 : this.namedTimeZoneImpl ? this.namedTimeZoneImpl.offsetForArray(_e(e)) : null
                }, e.prototype.toDate = function(e, t) {
                    return "local" === this.timeZone ? Ie(_e(e)) : "UTC" === this.timeZone ? new Date(e.valueOf()) : this.namedTimeZoneImpl ? new Date(e.valueOf() - 1e3 * this.namedTimeZoneImpl.offsetForArray(_e(e)) * 60) : new Date(e.valueOf() - (t || 0))
                }, e
            }(),
            Xn = [],
            Jn = {
                code: "en",
                week: {
                    dow: 0,
                    doy: 4
                },
                direction: "ltr",
                buttonText: {
                    prev: "prev",
                    next: "next",
                    prevYear: "prev year",
                    nextYear: "next year",
                    year: "year",
                    today: "today",
                    month: "month",
                    week: "week",
                    day: "day",
                    list: "list"
                },
                weekText: "W",
                allDayText: "all-day",
                moreLinkText: "more",
                noEventsText: "No events to display"
            };

        function Kn(e) {
            for (var t = e.length > 0 ? e[0].code : "en", n = Xn.concat(e), r = {
                en: Jn
            }, o = 0, i = n; o < i.length; o++) {
                var a = i[o];
                r[a.code] = a
            }
            return {
                map: r,
                defaultCode: t
            }
        }

        function $n(e, t) {
            return "object" != typeof e || Array.isArray(e) ? function(e, t) {
                var n = [].concat(e || []),
                    r = function(e, t) {
                        for (var n = 0; n < e.length; n += 1)
                            for (var r = e[n].toLocaleLowerCase().split("-"), o = r.length; o > 0; o -= 1) {
                                var i = r.slice(0, o).join("-");
                                if (t[i]) return t[i]
                            }
                        return null
                    }(n, t) || Jn;
                return er(e, n, r)
            }(e, t) : er(e.code, [e.code], e)
        }

        function er(e, t, n) {
            var r = Be([Jn, n], ["buttonText"]);
            delete r.code;
            var o = r.week;
            return delete r.week, {
                codeArg: e,
                codes: t,
                week: o,
                simpleNumberFormat: new Intl.NumberFormat(e),
                options: r
            }
        }
        var tr, nr = {
            startTime: "09:00",
            endTime: "17:00",
            daysOfWeek: [1, 2, 3, 4, 5],
            display: "inverse-background",
            classNames: "fc-non-business",
            groupId: "_businessHours"
        };

        function rr(e, t) {
            return Bt(function(e) {
                var t;
                t = !0 === e ? [{}] : Array.isArray(e) ? e.filter((function(e) {
                    return e.daysOfWeek
                })) : "object" == typeof e && e ? [e] : [];
                return t = t.map((function(e) {
                    return i(i({}, nr), e)
                }))
            }(e), null, t)
        }

        function or(e, t) {
            return e.left >= t.left && e.left < t.right && e.top >= t.top && e.top < t.bottom
        }

        function ir(e, t, n) {
            return {
                left: e.left + t,
                right: e.right + t,
                top: e.top + n,
                bottom: e.bottom + n
            }
        }

        function ar() {
            return null == tr && (tr = function() {
                if ("undefined" == typeof document) return !0;
                var e = document.createElement("div");
                e.style.position = "absolute", e.style.top = "0px", e.style.left = "0px", e.innerHTML = "<table><tr><td><div></div></td></tr></table>", e.querySelector("table").style.height = "100px", e.querySelector("div").style.height = "100%", document.body.appendChild(e);
                var t = e.querySelector("div").offsetHeight > 0;
                return document.body.removeChild(e), t
            }()), tr
        }
        var sr = {
                defs: {},
                instances: {}
            },
            lr = function() {
                function e() {
                    this.getKeysForEventDefs = ut(this._getKeysForEventDefs), this.splitDateSelection = ut(this._splitDateSpan), this.splitEventStore = ut(this._splitEventStore), this.splitIndividualUi = ut(this._splitIndividualUi), this.splitEventDrag = ut(this._splitInteraction), this.splitEventResize = ut(this._splitInteraction), this.eventUiBuilders = {}
                }
                return e.prototype.splitProps = function(e) {
                    var t = this,
                        n = this.getKeyInfo(e),
                        r = this.getKeysForEventDefs(e.eventStore),
                        o = this.splitDateSelection(e.dateSelection),
                        i = this.splitIndividualUi(e.eventUiBases, r),
                        a = this.splitEventStore(e.eventStore, r),
                        s = this.splitEventDrag(e.eventDrag),
                        l = this.splitEventResize(e.eventResize),
                        c = {};
                    for (var u in this.eventUiBuilders = Le(n, (function(e, n) {
                        return t.eventUiBuilders[n] || ut(cr)
                    })), n) {
                        var d = n[u],
                            f = a[u] || sr,
                            p = this.eventUiBuilders[u];
                        c[u] = {
                            businessHours: d.businessHours || e.businessHours,
                            dateSelection: o[u] || null,
                            eventStore: f,
                            eventUiBases: p(e.eventUiBases[""], d.ui, i[u]),
                            eventSelection: f.instances[e.eventSelection] ? e.eventSelection : "",
                            eventDrag: s[u] || null,
                            eventResize: l[u] || null
                        }
                    }
                    return c
                }, e.prototype._splitDateSpan = function(e) {
                    var t = {};
                    if (e)
                        for (var n = 0, r = this.getKeysForDateSpan(e); n < r.length; n++) {
                            t[r[n]] = e
                        }
                    return t
                }, e.prototype._getKeysForEventDefs = function(e) {
                    var t = this;
                    return Le(e.defs, (function(e) {
                        return t.getKeysForEventDef(e)
                    }))
                }, e.prototype._splitEventStore = function(e, t) {
                    var n = e.defs,
                        r = e.instances,
                        o = {};
                    for (var i in n)
                        for (var a = 0, s = t[i]; a < s.length; a++) {
                            o[f = s[a]] || (o[f] = {
                                defs: {},
                                instances: {}
                            }), o[f].defs[i] = n[i]
                        }
                    for (var l in r)
                        for (var c = r[l], u = 0, d = t[c.defId]; u < d.length; u++) {
                            var f;
                            o[f = d[u]] && (o[f].instances[l] = c)
                        }
                    return o
                }, e.prototype._splitIndividualUi = function(e, t) {
                    var n = {};
                    for (var r in e)
                        if (r)
                            for (var o = 0, i = t[r]; o < i.length; o++) {
                                var a = i[o];
                                n[a] || (n[a] = {}), n[a][r] = e[r]
                            }
                    return n
                }, e.prototype._splitInteraction = function(e) {
                    var t = {};
                    if (e) {
                        var n = this._splitEventStore(e.affectedEvents, this._getKeysForEventDefs(e.affectedEvents)),
                            r = this._getKeysForEventDefs(e.mutatedEvents),
                            o = this._splitEventStore(e.mutatedEvents, r),
                            i = function(r) {
                                t[r] || (t[r] = {
                                    affectedEvents: n[r] || sr,
                                    mutatedEvents: o[r] || sr,
                                    isEvent: e.isEvent
                                })
                            };
                        for (var a in n) i(a);
                        for (var a in o) i(a)
                    }
                    return t
                }, e
            }();

        function cr(e, t, n) {
            var r = [];
            e && r.push(e), t && r.push(t);
            var o = {
                "": qt(r)
            };
            return n && i(o, n), o
        }

        function ur(e, t, n, r) {
            return {
                dow: e.getUTCDay(),
                isDisabled: Boolean(r && !dn(r.activeRange, e)),
                isOther: Boolean(r && !dn(r.currentRange, e)),
                isToday: Boolean(t && dn(t, e)),
                isPast: Boolean(n ? e < n : !!t && e < t.start),
                isFuture: Boolean(n ? e > n : !!t && e >= t.end)
            }
        }

        function dr(e, t) {
            var n = ["fc-day", "fc-day-" + Se[e.dow]];
            return e.isDisabled ? n.push("fc-day-disabled") : (e.isToday && (n.push("fc-day-today"), n.push(t.getClass("today"))), e.isPast && n.push("fc-day-past"), e.isFuture && n.push("fc-day-future"), e.isOther && n.push("fc-day-other")), n
        }

        function fr(e, t) {
            var n = ["fc-slot", "fc-slot-" + Se[e.dow]];
            return e.isDisabled ? n.push("fc-slot-disabled") : (e.isToday && (n.push("fc-slot-today"), n.push(t.getClass("today"))), e.isPast && n.push("fc-slot-past"), e.isFuture && n.push("fc-slot-future")), n
        }

        function pr(e, t) {
            return void 0 === t && (t = "day"), JSON.stringify({
                date: st(e),
                type: t
            })
        }
        var hr, gr = null;

        function vr() {
            return null === gr && (gr = function() {
                var e = document.createElement("div");
                ie(e, {
                    position: "absolute",
                    top: -1e3,
                    left: 0,
                    border: 0,
                    padding: 0,
                    overflow: "scroll",
                    direction: "rtl"
                }), e.innerHTML = "<div></div>", document.body.appendChild(e);
                var t = e.firstChild.getBoundingClientRect().left > e.getBoundingClientRect().left;
                return ee(e), t
            }()), gr
        }

        function mr() {
            return hr || (hr = function() {
                var e = document.createElement("div");
                e.style.overflow = "scroll", e.style.position = "absolute", e.style.top = "-9999px", e.style.left = "-9999px", document.body.appendChild(e);
                var t = yr(e);
                return document.body.removeChild(e), t
            }()), hr
        }

        function yr(e) {
            return {
                x: e.offsetHeight - e.clientHeight,
                y: e.offsetWidth - e.clientWidth
            }
        }

        function br(e, t) {
            void 0 === t && (t = !1);
            var n = window.getComputedStyle(e),
                r = parseInt(n.borderLeftWidth, 10) || 0,
                o = parseInt(n.borderRightWidth, 10) || 0,
                i = parseInt(n.borderTopWidth, 10) || 0,
                a = parseInt(n.borderBottomWidth, 10) || 0,
                s = yr(e),
                l = s.y - r - o,
                c = {
                    borderLeft: r,
                    borderRight: o,
                    borderTop: i,
                    borderBottom: a,
                    scrollbarBottom: s.x - i - a,
                    scrollbarLeft: 0,
                    scrollbarRight: 0
                };
            return vr() && "rtl" === n.direction ? c.scrollbarLeft = l : c.scrollbarRight = l, t && (c.paddingLeft = parseInt(n.paddingLeft, 10) || 0, c.paddingRight = parseInt(n.paddingRight, 10) || 0, c.paddingTop = parseInt(n.paddingTop, 10) || 0, c.paddingBottom = parseInt(n.paddingBottom, 10) || 0), c
        }

        function wr(e, t, n) {
            void 0 === t && (t = !1);
            var r = n ? e.getBoundingClientRect() : Sr(e),
                o = br(e, t),
                i = {
                    left: r.left + o.borderLeft + o.scrollbarLeft,
                    right: r.right - o.borderRight - o.scrollbarRight,
                    top: r.top + o.borderTop,
                    bottom: r.bottom - o.borderBottom - o.scrollbarBottom
                };
            return t && (i.left += o.paddingLeft, i.right -= o.paddingRight, i.top += o.paddingTop, i.bottom -= o.paddingBottom), i
        }

        function Sr(e) {
            var t = e.getBoundingClientRect();
            return {
                left: t.left + window.pageXOffset,
                top: t.top + window.pageYOffset,
                right: t.right + window.pageXOffset,
                bottom: t.bottom + window.pageYOffset
            }
        }
        var Er = function() {
            function e() {
                this.handlers = {}, this.thisContext = null
            }
            return e.prototype.setThisContext = function(e) {
                this.thisContext = e
            }, e.prototype.setOptions = function(e) {
                this.options = e
            }, e.prototype.on = function(e, t) {
                ! function(e, t, n) {
                    (e[t] || (e[t] = [])).push(n)
                }(this.handlers, e, t)
            }, e.prototype.off = function(e, t) {
                ! function(e, t, n) {
                    n ? e[t] && (e[t] = e[t].filter((function(e) {
                        return e !== n
                    }))) : delete e[t]
                }(this.handlers, e, t)
            }, e.prototype.trigger = function(e) {
                for (var t = [], n = 1; n < arguments.length; n++) t[n - 1] = arguments[n];
                for (var r = this.handlers[e] || [], o = this.options && this.options[e], i = [].concat(o || [], r), a = 0, s = i; a < s.length; a++) {
                    var l = s[a];
                    l.apply(this.thisContext, t)
                }
            }, e.prototype.hasHandlers = function(e) {
                return this.handlers[e] && this.handlers[e].length || this.options && this.options[e]
            }, e
        }();
        var Dr = function() {
                function e(e, t, n, r) {
                    this.els = t;
                    var o = this.originClientRect = e.getBoundingClientRect();
                    n && this.buildElHorizontals(o.left), r && this.buildElVerticals(o.top)
                }
                return e.prototype.buildElHorizontals = function(e) {
                    for (var t = [], n = [], r = 0, o = this.els; r < o.length; r++) {
                        var i = o[r].getBoundingClientRect();
                        t.push(i.left - e), n.push(i.right - e)
                    }
                    this.lefts = t, this.rights = n
                }, e.prototype.buildElVerticals = function(e) {
                    for (var t = [], n = [], r = 0, o = this.els; r < o.length; r++) {
                        var i = o[r].getBoundingClientRect();
                        t.push(i.top - e), n.push(i.bottom - e)
                    }
                    this.tops = t, this.bottoms = n
                }, e.prototype.leftToIndex = function(e) {
                    var t, n = this.lefts,
                        r = this.rights,
                        o = n.length;
                    for (t = 0; t < o; t += 1)
                        if (e >= n[t] && e < r[t]) return t
                }, e.prototype.topToIndex = function(e) {
                    var t, n = this.tops,
                        r = this.bottoms,
                        o = n.length;
                    for (t = 0; t < o; t += 1)
                        if (e >= n[t] && e < r[t]) return t
                }, e.prototype.getWidth = function(e) {
                    return this.rights[e] - this.lefts[e]
                }, e.prototype.getHeight = function(e) {
                    return this.bottoms[e] - this.tops[e]
                }, e
            }(),
            Ar = function() {
                function e() {}
                return e.prototype.getMaxScrollTop = function() {
                    return this.getScrollHeight() - this.getClientHeight()
                }, e.prototype.getMaxScrollLeft = function() {
                    return this.getScrollWidth() - this.getClientWidth()
                }, e.prototype.canScrollVertically = function() {
                    return this.getMaxScrollTop() > 0
                }, e.prototype.canScrollHorizontally = function() {
                    return this.getMaxScrollLeft() > 0
                }, e.prototype.canScrollUp = function() {
                    return this.getScrollTop() > 0
                }, e.prototype.canScrollDown = function() {
                    return this.getScrollTop() < this.getMaxScrollTop()
                }, e.prototype.canScrollLeft = function() {
                    return this.getScrollLeft() > 0
                }, e.prototype.canScrollRight = function() {
                    return this.getScrollLeft() < this.getMaxScrollLeft()
                }, e
            }(),
            Cr = function(e) {
                function t(t) {
                    var n = e.call(this) || this;
                    return n.el = t, n
                }
                return o(t, e), t.prototype.getScrollTop = function() {
                    return this.el.scrollTop
                }, t.prototype.getScrollLeft = function() {
                    return this.el.scrollLeft
                }, t.prototype.setScrollTop = function(e) {
                    this.el.scrollTop = e
                }, t.prototype.setScrollLeft = function(e) {
                    this.el.scrollLeft = e
                }, t.prototype.getScrollWidth = function() {
                    return this.el.scrollWidth
                }, t.prototype.getScrollHeight = function() {
                    return this.el.scrollHeight
                }, t.prototype.getClientHeight = function() {
                    return this.el.clientHeight
                }, t.prototype.getClientWidth = function() {
                    return this.el.clientWidth
                }, t
            }(Ar),
            Rr = function(e) {
                function t() {
                    return null !== e && e.apply(this, arguments) || this
                }
                return o(t, e), t.prototype.getScrollTop = function() {
                    return window.pageYOffset
                }, t.prototype.getScrollLeft = function() {
                    return window.pageXOffset
                }, t.prototype.setScrollTop = function(e) {
                    window.scroll(window.pageXOffset, e)
                }, t.prototype.setScrollLeft = function(e) {
                    window.scroll(e, window.pageYOffset)
                }, t.prototype.getScrollWidth = function() {
                    return document.documentElement.scrollWidth
                }, t.prototype.getScrollHeight = function() {
                    return document.documentElement.scrollHeight
                }, t.prototype.getClientHeight = function() {
                    return document.documentElement.clientHeight
                }, t.prototype.getClientWidth = function() {
                    return document.documentElement.clientWidth
                }, t
            }(Ar),
            xr = function() {
                function e(e) {
                    this.iconOverrideOption && this.setIconOverride(e[this.iconOverrideOption])
                }
                return e.prototype.setIconOverride = function(e) {
                    var t, n;
                    if ("object" == typeof e && e) {
                        for (n in t = i({}, this.iconClasses), e) t[n] = this.applyIconOverridePrefix(e[n]);
                        this.iconClasses = t
                    } else !1 === e && (this.iconClasses = {})
                }, e.prototype.applyIconOverridePrefix = function(e) {
                    var t = this.iconOverridePrefix;
                    return t && 0 !== e.indexOf(t) && (e = t + e), e
                }, e.prototype.getClass = function(e) {
                    return this.classes[e] || ""
                }, e.prototype.getIconClass = function(e, t) {
                    var n;
                    return (n = t && this.rtlIconClasses && this.rtlIconClasses[e] || this.iconClasses[e]) ? this.baseIconClass + " " + n : ""
                }, e.prototype.getCustomButtonIconClass = function(e) {
                    var t;
                    return this.iconOverrideCustomButtonOption && (t = e[this.iconOverrideCustomButtonOption]) ? this.baseIconClass + " " + this.applyIconOverridePrefix(t) : ""
                }, e
            }();
        xr.prototype.classes = {}, xr.prototype.iconClasses = {}, xr.prototype.baseIconClass = "", xr.prototype.iconOverridePrefix = "";
        var kr = function() {
                function e(e, t, n) {
                    var r = this;
                    this.execFunc = e, this.emitter = t, this.scrollTime = n, this.handleScrollRequest = function(e) {
                        r.queuedRequest = i({}, r.queuedRequest || {}, e), r.drain()
                    }, t.on("_scrollRequest", this.handleScrollRequest), this.fireInitialScroll()
                }
                return e.prototype.detach = function() {
                    this.emitter.off("_scrollRequest", this.handleScrollRequest)
                }, e.prototype.update = function(e) {
                    e ? this.fireInitialScroll() : this.drain()
                }, e.prototype.fireInitialScroll = function() {
                    this.handleScrollRequest({
                        time: this.scrollTime
                    })
                }, e.prototype.drain = function() {
                    this.queuedRequest && this.execFunc(this.queuedRequest) && (this.queuedRequest = null)
                }, e
            }(),
            Tr = X({});

        function Mr(e, t, n, r, o, i, a, s, l, c, u, d, f) {
            return {
                dateEnv: o,
                options: n,
                pluginHooks: a,
                emitter: c,
                dispatch: s,
                getCurrentData: l,
                calendarApi: u,
                viewSpec: e,
                viewApi: t,
                dateProfileGenerator: r,
                theme: i,
                isRtl: "rtl" === n.direction,
                addResizeHandler: function(e) {
                    c.on("_resize", e)
                },
                removeResizeHandler: function(e) {
                    c.off("_resize", e)
                },
                createScrollResponder: function(e) {
                    return new kr(e, c, Ke(n.scrollTime))
                },
                registerInteractiveComponent: d,
                unregisterInteractiveComponent: f
            }
        }
        var Ir = function(e) {
            function t() {
                return null !== e && e.apply(this, arguments) || this
            }
            return o(t, e), t.prototype.shouldComponentUpdate = function(e, t) {
                return this.debug && console.log(je(e, this.props), je(t, this.state)), !Ge(this.props, e, this.propEquality) || !Ge(this.state, t, this.stateEquality)
            }, t.addPropsEquality = Nr, t.addStateEquality = Pr, t.contextType = Tr, t
        }(G);
        Ir.prototype.propEquality = {}, Ir.prototype.stateEquality = {};
        var _r = function(e) {
            function t() {
                return null !== e && e.apply(this, arguments) || this
            }
            return o(t, e), t.contextType = Tr, t
        }(Ir);

        function Nr(e) {
            var t = Object.create(this.prototype.propEquality);
            i(t, e), this.prototype.propEquality = t
        }

        function Pr(e) {
            var t = Object.create(this.prototype.stateEquality);
            i(t, e), this.prototype.stateEquality = t
        }

        function Hr(e, t) {
            "function" == typeof e ? e(t) : e && (e.current = t)
        }

        function Or(e, t, n, r, o) {
            switch (t.type) {
                case "RECEIVE_EVENTS":
                    return function(e, t, n, r, o, i) {
                        if (t && n === t.latestFetchId) {
                            var a = Bt(function(e, t, n) {
                                var r = n.options.eventDataTransform,
                                    o = t ? t.eventDataTransform : null;
                                o && (e = zr(e, o));
                                r && (e = zr(e, r));
                                return e
                            }(o, t, i), t, i);
                            return r && (a = Qe(a, r, i)), Ut(Br(e, t.sourceId), a)
                        }
                        return e
                    }(e, n[t.sourceId], t.fetchId, t.fetchRange, t.rawEvents, o);
                case "ADD_EVENTS":
                    return function(e, t, n, r) {
                        n && (t = Qe(t, n, r));
                        return Ut(e, t)
                    }(e, t.eventStore, r ? r.activeRange : null, o);
                case "RESET_EVENTS":
                    return t.eventStore;
                case "MERGE_EVENTS":
                    return Ut(e, t.eventStore);
                case "PREV":
                case "NEXT":
                case "CHANGE_DATE":
                case "CHANGE_VIEW_TYPE":
                    return r ? Qe(e, r.activeRange, o) : e;
                case "REMOVE_EVENTS":
                    return function(e, t) {
                        var n = e.defs,
                            r = e.instances,
                            o = {},
                            i = {};
                        for (var a in n) t.defs[a] || (o[a] = n[a]);
                        for (var s in r) !t.instances[s] && o[r[s].defId] && (i[s] = r[s]);
                        return {
                            defs: o,
                            instances: i
                        }
                    }(e, t.eventStore);
                case "REMOVE_EVENT_SOURCE":
                    return Br(e, t.sourceId);
                case "REMOVE_ALL_EVENT_SOURCES":
                    return Ft(e, (function(e) {
                        return !e.sourceId
                    }));
                case "REMOVE_ALL_EVENTS":
                    return {
                        defs: {}, instances: {}
                    };
                default:
                    return e
            }
        }

        function zr(e, t) {
            var n;
            if (t) {
                n = [];
                for (var r = 0, o = e; r < o.length; r++) {
                    var i = o[r],
                        a = t(i);
                    a ? n.push(a) : null == a && n.push(i)
                }
            } else n = e;
            return n
        }

        function Br(e, t) {
            return Ft(e, (function(e) {
                return e.sourceId !== t
            }))
        }

        function Wr(e, t) {
            return Lr({
                eventDrag: e
            }, t)
        }

        function Lr(e, t) {
            var n = t.getCurrentData(),
                r = i({
                    businessHours: n.businessHours,
                    dateSelection: "",
                    eventStore: n.eventStore,
                    eventUiBases: n.eventUiBases,
                    eventSelection: "",
                    eventDrag: null,
                    eventResize: null
                }, e);
            return (t.pluginHooks.isPropsValid || Ur)(r, t)
        }

        function Ur(e, t, n, r) {
            return void 0 === n && (n = {}), !(e.eventDrag && ! function(e, t, n, r) {
                var o = t.getCurrentData(),
                    a = e.eventDrag,
                    s = a.mutatedEvents,
                    l = s.defs,
                    c = s.instances,
                    u = gn(l, a.isEvent ? e.eventUiBases : {
                        "": o.selectionConfig
                    });
                r && (u = Le(u, r));
                var d = (g = e.eventStore, v = a.affectedEvents.instances, {
                        defs: g.defs,
                        instances: We(g.instances, (function(e) {
                            return !v[e.instanceId]
                        }))
                    }),
                    f = d.defs,
                    p = d.instances,
                    h = gn(f, e.eventUiBases);
                var g, v;
                for (var m in c) {
                    var y = c[m],
                        b = y.range,
                        w = u[y.defId],
                        S = l[y.defId];
                    if (!Fr(w.constraints, b, d, e.businessHours, t)) return !1;
                    var E = t.options.eventOverlap,
                        D = "function" == typeof E ? E : null;
                    for (var A in p) {
                        var C = p[A];
                        if (cn(b, C.range)) {
                            if (!1 === h[C.defId].overlap && a.isEvent) return !1;
                            if (!1 === w.overlap) return !1;
                            if (D && !D(new Fn(t, f[C.defId], C), new Fn(t, S, y))) return !1
                        }
                    }
                    for (var R = o.eventStore, x = 0, k = w.allows; x < k.length; x++) {
                        var T = k[x],
                            M = i(i({}, n), {
                                range: y.range,
                                allDay: S.allDay
                            }),
                            I = R.defs[S.defId],
                            _ = R.instances[m],
                            N = void 0;
                        if (N = I ? new Fn(t, I, _) : new Fn(t, S), !T(In(M, t), N)) return !1
                    }
                }
                return !0
            }(e, t, n, r)) && !(e.dateSelection && ! function(e, t, n, r) {
                var o = e.eventStore,
                    a = o.defs,
                    s = o.instances,
                    l = e.dateSelection,
                    c = l.range,
                    u = t.getCurrentData().selectionConfig;
                r && (u = r(u));
                if (!Fr(u.constraints, c, o, e.businessHours, t)) return !1;
                var d = t.options.selectOverlap,
                    f = "function" == typeof d ? d : null;
                for (var p in s) {
                    var h = s[p];
                    if (cn(c, h.range)) {
                        if (!1 === u.overlap) return !1;
                        if (f && !f(new Fn(t, a[h.defId], h), null)) return !1
                    }
                }
                for (var g = 0, v = u.allows; g < v.length; g++) {
                    var m = v[g],
                        y = i(i({}, n), l);
                    if (!m(In(y, t), null)) return !1
                }
                return !0
            }(e, t, n, r))
        }

        function Fr(e, t, n, r, o) {
            for (var i = 0, a = e; i < a.length; i++) {
                if (!Gr(Vr(a[i], t, n, r, o), t)) return !1
            }
            return !0
        }

        function Vr(e, t, n, r, o) {
            return "businessHours" === e ? jr(Qe(r, t, o)) : "string" == typeof e ? jr(Ft(n, (function(t) {
                return t.groupId === e
            }))) : "object" == typeof e && e ? jr(Qe(e, t, o)) : []
        }

        function jr(e) {
            var t = e.instances,
                n = [];
            for (var r in t) n.push(t[r].range);
            return n
        }

        function Gr(e, t) {
            for (var n = 0, r = e; n < r.length; n++) {
                if (un(r[n], t)) return !0
            }
            return !1
        }
        var Yr = function(e) {
            function t() {
                var t = null !== e && e.apply(this, arguments) || this;
                return t.uid = fe(), t
            }
            return o(t, e), t.prototype.prepareHits = function() {}, t.prototype.queryHit = function(e, t, n, r) {
                return null
            }, t.prototype.isInteractionValid = function(e) {
                var t = this.props.dateProfile,
                    n = e.mutatedEvents.instances;
                if (t)
                    for (var r in n)
                        if (!un(t.validRange, n[r].range)) return !1;
                return Wr(e, this.context)
            }, t.prototype.isDateSelectionValid = function(e) {
                var t, n, r = this.props.dateProfile;
                return !(r && !un(r.validRange, e.range)) && (t = e, n = this.context, Lr({
                    dateSelection: t
                }, n))
            }, t.prototype.isValidSegDownEl = function(e) {
                return !this.props.eventDrag && !this.props.eventResize && !te(e, ".fc-event-mirror")
            }, t.prototype.isValidDateDownEl = function(e) {
                return !(te(e, ".fc-event:not(.fc-bg-event)") || te(e, ".fc-daygrid-more-link") || te(e, "a[data-navlink]") || te(e, ".fc-popover"))
            }, t
        }(_r);

        function qr(e) {
            return {
                id: fe(),
                deps: e.deps || [],
                reducers: e.reducers || [],
                isLoadingFuncs: e.isLoadingFuncs || [],
                contextInit: [].concat(e.contextInit || []),
                eventRefiners: e.eventRefiners || {},
                eventDefMemberAdders: e.eventDefMemberAdders || [],
                eventSourceRefiners: e.eventSourceRefiners || {},
                isDraggableTransformers: e.isDraggableTransformers || [],
                eventDragMutationMassagers: e.eventDragMutationMassagers || [],
                eventDefMutationAppliers: e.eventDefMutationAppliers || [],
                dateSelectionTransformers: e.dateSelectionTransformers || [],
                datePointTransforms: e.datePointTransforms || [],
                dateSpanTransforms: e.dateSpanTransforms || [],
                views: e.views || {},
                viewPropsTransformers: e.viewPropsTransformers || [],
                isPropsValid: e.isPropsValid || null,
                externalDefTransforms: e.externalDefTransforms || [],
                eventResizeJoinTransforms: e.eventResizeJoinTransforms || [],
                viewContainerAppends: e.viewContainerAppends || [],
                eventDropTransformers: e.eventDropTransformers || [],
                componentInteractions: e.componentInteractions || [],
                calendarInteractions: e.calendarInteractions || [],
                themeClasses: e.themeClasses || {},
                eventSourceDefs: e.eventSourceDefs || [],
                cmdFormatter: e.cmdFormatter,
                recurringTypes: e.recurringTypes || [],
                namedTimeZonedImpl: e.namedTimeZonedImpl,
                initialView: e.initialView || "",
                elementDraggingImpl: e.elementDraggingImpl,
                optionChangeHandlers: e.optionChangeHandlers || {},
                scrollGridImpl: e.scrollGridImpl || null,
                contentTypeHandlers: e.contentTypeHandlers || {},
                listenerRefiners: e.listenerRefiners || {},
                optionRefiners: e.optionRefiners || {},
                propSetHandlers: e.propSetHandlers || {}
            }
        }

        function Qr() {
            var e, t = [],
                n = [];
            return function(r, o) {
                return e && ct(r, t) && ct(o, n) || (e = function(e, t) {
                    var n = {},
                        r = {
                            reducers: [],
                            isLoadingFuncs: [],
                            contextInit: [],
                            eventRefiners: {},
                            eventDefMemberAdders: [],
                            eventSourceRefiners: {},
                            isDraggableTransformers: [],
                            eventDragMutationMassagers: [],
                            eventDefMutationAppliers: [],
                            dateSelectionTransformers: [],
                            datePointTransforms: [],
                            dateSpanTransforms: [],
                            views: {},
                            viewPropsTransformers: [],
                            isPropsValid: null,
                            externalDefTransforms: [],
                            eventResizeJoinTransforms: [],
                            viewContainerAppends: [],
                            eventDropTransformers: [],
                            componentInteractions: [],
                            calendarInteractions: [],
                            themeClasses: {},
                            eventSourceDefs: [],
                            cmdFormatter: null,
                            recurringTypes: [],
                            namedTimeZonedImpl: null,
                            initialView: "",
                            elementDraggingImpl: null,
                            optionChangeHandlers: {},
                            scrollGridImpl: null,
                            contentTypeHandlers: {},
                            listenerRefiners: {},
                            optionRefiners: {},
                            propSetHandlers: {}
                        };

                    function o(e) {
                        for (var t = 0, a = e; t < a.length; t++) {
                            var s = a[t];
                            n[s.id] || (n[s.id] = !0, o(s.deps), c = s, r = {
                                reducers: (l = r).reducers.concat(c.reducers),
                                isLoadingFuncs: l.isLoadingFuncs.concat(c.isLoadingFuncs),
                                contextInit: l.contextInit.concat(c.contextInit),
                                eventRefiners: i(i({}, l.eventRefiners), c.eventRefiners),
                                eventDefMemberAdders: l.eventDefMemberAdders.concat(c.eventDefMemberAdders),
                                eventSourceRefiners: i(i({}, l.eventSourceRefiners), c.eventSourceRefiners),
                                isDraggableTransformers: l.isDraggableTransformers.concat(c.isDraggableTransformers),
                                eventDragMutationMassagers: l.eventDragMutationMassagers.concat(c.eventDragMutationMassagers),
                                eventDefMutationAppliers: l.eventDefMutationAppliers.concat(c.eventDefMutationAppliers),
                                dateSelectionTransformers: l.dateSelectionTransformers.concat(c.dateSelectionTransformers),
                                datePointTransforms: l.datePointTransforms.concat(c.datePointTransforms),
                                dateSpanTransforms: l.dateSpanTransforms.concat(c.dateSpanTransforms),
                                views: i(i({}, l.views), c.views),
                                viewPropsTransformers: l.viewPropsTransformers.concat(c.viewPropsTransformers),
                                isPropsValid: c.isPropsValid || l.isPropsValid,
                                externalDefTransforms: l.externalDefTransforms.concat(c.externalDefTransforms),
                                eventResizeJoinTransforms: l.eventResizeJoinTransforms.concat(c.eventResizeJoinTransforms),
                                viewContainerAppends: l.viewContainerAppends.concat(c.viewContainerAppends),
                                eventDropTransformers: l.eventDropTransformers.concat(c.eventDropTransformers),
                                calendarInteractions: l.calendarInteractions.concat(c.calendarInteractions),
                                componentInteractions: l.componentInteractions.concat(c.componentInteractions),
                                themeClasses: i(i({}, l.themeClasses), c.themeClasses),
                                eventSourceDefs: l.eventSourceDefs.concat(c.eventSourceDefs),
                                cmdFormatter: c.cmdFormatter || l.cmdFormatter,
                                recurringTypes: l.recurringTypes.concat(c.recurringTypes),
                                namedTimeZonedImpl: c.namedTimeZonedImpl || l.namedTimeZonedImpl,
                                initialView: l.initialView || c.initialView,
                                elementDraggingImpl: l.elementDraggingImpl || c.elementDraggingImpl,
                                optionChangeHandlers: i(i({}, l.optionChangeHandlers), c.optionChangeHandlers),
                                scrollGridImpl: c.scrollGridImpl || l.scrollGridImpl,
                                contentTypeHandlers: i(i({}, l.contentTypeHandlers), c.contentTypeHandlers),
                                listenerRefiners: i(i({}, l.listenerRefiners), c.listenerRefiners),
                                optionRefiners: i(i({}, l.optionRefiners), c.optionRefiners),
                                propSetHandlers: i(i({}, l.propSetHandlers), c.propSetHandlers)
                            })
                        }
                        var l, c
                    }
                    return e && o(e), o(t), r
                }(r, o)), t = r, n = o, e
            }
        }
        var Zr = function(e) {
            function t() {
                return null !== e && e.apply(this, arguments) || this
            }
            return o(t, e), t
        }(xr);

        function Xr(e, t, n, r) {
            if (t[e]) return t[e];
            var o = function(e, t, n, r) {
                var o = n[e],
                    a = r[e],
                    s = function(e) {
                        return o && null !== o[e] ? o[e] : a && null !== a[e] ? a[e] : null
                    },
                    l = s("component"),
                    c = s("superType"),
                    u = null;
                if (c) {
                    if (c === e) throw new Error("Can't have a custom view type that references itself");
                    u = Xr(c, t, n, r)
                }!l && u && (l = u.component);
                if (!l) return null;
                return {
                    type: e,
                    component: l,
                    defaults: i(i({}, u ? u.defaults : {}), o ? o.rawOptions : {}),
                    overrides: i(i({}, u ? u.overrides : {}), a ? a.rawOptions : {})
                }
            }(e, t, n, r);
            return o && (t[e] = o), o
        }
        Zr.prototype.classes = {
            root: "fc-theme-standard",
            tableCellShaded: "fc-cell-shaded",
            buttonGroup: "fc-button-group",
            button: "fc-button fc-button-primary",
            buttonActive: "fc-button-active"
        }, Zr.prototype.baseIconClass = "fc-icon", Zr.prototype.iconClasses = {
            close: "fc-icon-x",
            prev: "fc-icon-chevron-left",
            next: "fc-icon-chevron-right",
            prevYear: "fc-icon-chevrons-left",
            nextYear: "fc-icon-chevrons-right"
        }, Zr.prototype.rtlIconClasses = {
            prev: "fc-icon-chevron-right",
            next: "fc-icon-chevron-left",
            prevYear: "fc-icon-chevrons-right",
            nextYear: "fc-icon-chevrons-left"
        }, Zr.prototype.iconOverrideOption = "buttonIcons", Zr.prototype.iconOverrideCustomButtonOption = "icon", Zr.prototype.iconOverridePrefix = "fc-icon-";
        var Jr = function(e) {
                function t() {
                    var t = null !== e && e.apply(this, arguments) || this;
                    return t.rootElRef = Q(), t.handleRootEl = function(e) {
                        Hr(t.rootElRef, e), t.props.elRef && Hr(t.props.elRef, e)
                    }, t
                }
                return o(t, e), t.prototype.render = function() {
                    var e = this,
                        t = this.props,
                        n = t.hookProps;
                    return Y(to, {
                        hookProps: n,
                        didMount: t.didMount,
                        willUnmount: t.willUnmount,
                        elRef: this.handleRootEl
                    }, (function(r) {
                        return Y($r, {
                            hookProps: n,
                            content: t.content,
                            defaultContent: t.defaultContent,
                            backupElRef: e.rootElRef
                        }, (function(e, o) {
                            return t.children(r, ro(t.classNames, n), e, o)
                        }))
                    }))
                }, t
            }(_r),
            Kr = X(0);

        function $r(e) {
            return Y(Kr.Consumer, null, (function(t) {
                return Y(eo, i({
                    renderId: t
                }, e))
            }))
        }
        var eo = function(e) {
                function t() {
                    var t = null !== e && e.apply(this, arguments) || this;
                    return t.innerElRef = Q(), t
                }
                return o(t, e), t.prototype.render = function() {
                    return this.props.children(this.innerElRef, this.renderInnerContent())
                }, t.prototype.componentDidMount = function() {
                    this.updateCustomContent()
                }, t.prototype.componentDidUpdate = function() {
                    this.updateCustomContent()
                }, t.prototype.componentWillUnmount = function() {
                    this.customContentInfo && this.customContentInfo.destroy && this.customContentInfo.destroy()
                }, t.prototype.renderInnerContent = function() {
                    var e = this.context.pluginHooks.contentTypeHandlers,
                        t = this.props,
                        n = this.customContentInfo,
                        r = oo(t.content, t.hookProps),
                        o = null;
                    if (void 0 === r && (r = oo(t.defaultContent, t.hookProps)), void 0 !== r) {
                        if (n) n.contentVal = r[n.contentKey];
                        else if ("object" == typeof r)
                            for (var a in e)
                                if (void 0 !== r[a]) {
                                    var s = e[a]();
                                    n = this.customContentInfo = i({
                                        contentKey: a,
                                        contentVal: r[a]
                                    }, s);
                                    break
                                } o = n ? [] : r
                    }
                    return o
                }, t.prototype.updateCustomContent = function() {
                    this.customContentInfo && this.customContentInfo.render(this.innerElRef.current || this.props.backupElRef.current, this.customContentInfo.contentVal)
                }, t
            }(_r),
            to = function(e) {
                function t() {
                    var t = null !== e && e.apply(this, arguments) || this;
                    return t.handleRootEl = function(e) {
                        t.rootEl = e, t.props.elRef && Hr(t.props.elRef, e)
                    }, t
                }
                return o(t, e), t.prototype.render = function() {
                    return this.props.children(this.handleRootEl)
                }, t.prototype.componentDidMount = function() {
                    var e = this.props.didMount;
                    e && e(i(i({}, this.props.hookProps), {
                        el: this.rootEl
                    }))
                }, t.prototype.componentWillUnmount = function() {
                    var e = this.props.willUnmount;
                    e && e(i(i({}, this.props.hookProps), {
                        el: this.rootEl
                    }))
                }, t
            }(_r);

        function no() {
            var e, t, n = [];
            return function(r, o) {
                return t && Ve(t, o) && r === e || (e = r, t = o, n = ro(r, o)), n
            }
        }

        function ro(e, t) {
            return "function" == typeof e && (e = e(t)), Vt(e)
        }

        function oo(e, t) {
            return "function" == typeof e ? e(t, Y) : e
        }
        var io = function(e) {
            function t() {
                var t = null !== e && e.apply(this, arguments) || this;
                return t.normalizeClassNames = no(), t
            }
            return o(t, e), t.prototype.render = function() {
                var e = this.props,
                    t = this.context,
                    n = t.options,
                    r = {
                        view: t.viewApi
                    },
                    o = this.normalizeClassNames(n.viewClassNames, r);
                return Y(to, {
                    hookProps: r,
                    didMount: n.viewDidMount,
                    willUnmount: n.viewWillUnmount,
                    elRef: e.elRef
                }, (function(t) {
                    return e.children(t, ["fc-" + e.viewSpec.type + "-view", "fc-view"].concat(o))
                }))
            }, t
        }(_r);

        function ao(e) {
            return Le(e, so)
        }

        function so(e) {
            var t, n = "function" == typeof e ? {
                    component: e
                } : e,
                r = n.component;
            return n.content && (t = n, r = function(e) {
                return Y(Tr.Consumer, null, (function(n) {
                    return Y(io, {
                        viewSpec: n.viewSpec
                    }, (function(r, o) {
                        var a = i(i({}, e), {
                            nextDayThreshold: n.options.nextDayThreshold
                        });
                        return Y(Jr, {
                            hookProps: a,
                            classNames: t.classNames,
                            content: t.content,
                            didMount: t.didMount,
                            willUnmount: t.willUnmount,
                            elRef: r
                        }, (function(e, t, n, r) {
                            return Y("div", {
                                className: o.concat(t).join(" "),
                                ref: e
                            }, r)
                        }))
                    }))
                }))
            }), {
                superType: n.type,
                component: r,
                rawOptions: n
            }
        }

        function lo(e, t, n, r) {
            var o = ao(e),
                a = ao(t.views);
            return Le(function(e, t) {
                var n, r = {};
                for (n in e) Xr(n, r, e, t);
                for (n in t) Xr(n, r, e, t);
                return r
            }(o, a), (function(e) {
                return function(e, t, n, r, o) {
                    var a = e.overrides.duration || e.defaults.duration || r.duration || n.duration,
                        s = null,
                        l = "",
                        c = "",
                        u = {};
                    if (a && (s = function(e) {
                        var t = JSON.stringify(e),
                            n = co[t];
                        void 0 === n && (n = Ke(e), co[t] = n);
                        return n
                    }(a))) {
                        var d = at(s);
                        l = d.unit, 1 === d.value && (c = l, u = t[l] ? t[l].rawOptions : {})
                    }
                    var f = function(t) {
                        var n = t.buttonText || {},
                            r = e.defaults.buttonTextKey;
                        return null != r && null != n[r] ? n[r] : null != n[e.type] ? n[e.type] : null != n[c] ? n[c] : null
                    };
                    return {
                        type: e.type,
                        component: e.component,
                        duration: s,
                        durationUnit: l,
                        singleUnit: c,
                        optionDefaults: e.defaults,
                        optionOverrides: i(i({}, u), e.overrides),
                        buttonTextOverride: f(r) || f(n) || e.overrides.buttonText,
                        buttonTextDefault: f(o) || e.defaults.buttonText || f(Tt) || e.type
                    }
                }(e, a, t, n, r)
            }))
        }
        var co = {};
        var uo = function() {
            function e(e) {
                this.props = e, this.nowDate = Ln(e.nowInput, e.dateEnv), this.initHiddenDays()
            }
            return e.prototype.buildPrev = function(e, t, n) {
                var r = this.props.dateEnv,
                    o = r.subtract(r.startOf(t, e.currentRangeUnit), e.dateIncrement);
                return this.build(o, -1, n)
            }, e.prototype.buildNext = function(e, t, n) {
                var r = this.props.dateEnv,
                    o = r.add(r.startOf(t, e.currentRangeUnit), e.dateIncrement);
                return this.build(o, 1, n)
            }, e.prototype.build = function(e, t, n) {
                void 0 === n && (n = !0);
                var r, o, i, a, s, l, c, u, d = this.props;
                return r = this.buildValidRange(), r = this.trimHiddenDays(r), n && (c = e, e = null != (u = r).start && c < u.start ? u.start : null != u.end && c >= u.end ? new Date(u.end.valueOf() - 1) : c), o = this.buildCurrentRangeInfo(e, t), i = /^(year|month|week|day)$/.test(o.unit), a = this.buildRenderRange(this.trimHiddenDays(o.range), o.unit, i), s = a = this.trimHiddenDays(a), d.showNonCurrentDates || (s = ln(s, o.range)), s = ln(s = this.adjustActiveRange(s), r), l = cn(o.range, r), {
                    validRange: r,
                    currentRange: o.range,
                    currentRangeUnit: o.unit,
                    isRangeAllDay: i,
                    activeRange: s,
                    renderRange: a,
                    slotMinTime: d.slotMinTime,
                    slotMaxTime: d.slotMaxTime,
                    isValid: l,
                    dateIncrement: this.buildDateIncrement(o.duration)
                }
            }, e.prototype.buildValidRange = function() {
                var e = this.props.validRangeInput,
                    t = "function" == typeof e ? e.call(this.props.calendarApi, this.nowDate) : e;
                return this.refineRange(t) || {
                    start: null,
                    end: null
                }
            }, e.prototype.buildCurrentRangeInfo = function(e, t) {
                var n, r = this.props,
                    o = null,
                    i = null,
                    a = null;
                return r.duration ? (o = r.duration, i = r.durationUnit, a = this.buildRangeFromDuration(e, t, o, i)) : (n = this.props.dayCount) ? (i = "day", a = this.buildRangeFromDayCount(e, t, n)) : (a = this.buildCustomVisibleRange(e)) ? i = r.dateEnv.greatestWholeUnit(a.start, a.end).unit : (i = at(o = this.getFallbackDuration()).unit, a = this.buildRangeFromDuration(e, t, o, i)), {
                    duration: o,
                    unit: i,
                    range: a
                }
            }, e.prototype.getFallbackDuration = function() {
                return Ke({
                    day: 1
                })
            }, e.prototype.adjustActiveRange = function(e) {
                var t = this.props,
                    n = t.dateEnv,
                    r = t.usesMinMaxTime,
                    o = t.slotMinTime,
                    i = t.slotMaxTime,
                    a = e.start,
                    s = e.end;
                return r && (rt(o) < 0 && (a = xe(a), a = n.add(a, o)), rt(i) > 1 && (s = De(s = xe(s), -1), s = n.add(s, i))), {
                    start: a,
                    end: s
                }
            }, e.prototype.buildRangeFromDuration = function(e, t, n, r) {
                var o, i, a, s = this.props,
                    l = s.dateEnv,
                    c = s.dateAlignment;
                if (!c) {
                    var u = this.props.dateIncrement;
                    c = u && ot(u) < ot(n) ? at(u).unit : r
                }

                function d() {
                    o = l.startOf(e, c), i = l.add(o, n), a = {
                        start: o,
                        end: i
                    }
                }
                return rt(n) <= 1 && this.isHiddenDay(o) && (o = xe(o = this.skipHiddenDays(o, t))), d(), this.trimHiddenDays(a) || (e = this.skipHiddenDays(e, t), d()), a
            }, e.prototype.buildRangeFromDayCount = function(e, t, n) {
                var r, o = this.props,
                    i = o.dateEnv,
                    a = o.dateAlignment,
                    s = 0,
                    l = e;
                a && (l = i.startOf(l, a)), l = xe(l), r = l = this.skipHiddenDays(l, t);
                do {
                    r = De(r, 1), this.isHiddenDay(r) || (s += 1)
                } while (s < n);
                return {
                    start: l,
                    end: r
                }
            }, e.prototype.buildCustomVisibleRange = function(e) {
                var t = this.props,
                    n = t.visibleRangeInput,
                    r = "function" == typeof n ? n.call(t.calendarApi, t.dateEnv.toDate(e)) : n,
                    o = this.refineRange(r);
                return !o || null != o.start && null != o.end ? o : null
            }, e.prototype.buildRenderRange = function(e, t, n) {
                return e
            }, e.prototype.buildDateIncrement = function(e) {
                var t, n = this.props.dateIncrement;
                return n || ((t = this.props.dateAlignment) ? Ke(1, t) : e || Ke({
                    days: 1
                }))
            }, e.prototype.refineRange = function(e) {
                if (e) {
                    var t = (n = e, r = this.props.dateEnv, o = null, i = null, n.start && (o = r.createMarker(n.start)), n.end && (i = r.createMarker(n.end)), o || i ? o && i && i < o ? null : {
                        start: o,
                        end: i
                    } : null);
                    return t && (t = rn(t)), t
                }
                var n, r, o, i;
                return null
            }, e.prototype.initHiddenDays = function() {
                var e, t = this.props.hiddenDays || [],
                    n = [],
                    r = 0;
                for (!1 === this.props.weekends && t.push(0, 6), e = 0; e < 7; e += 1)(n[e] = -1 !== t.indexOf(e)) || (r += 1);
                if (!r) throw new Error("invalid hiddenDays");
                this.isHiddenDayHash = n
            }, e.prototype.trimHiddenDays = function(e) {
                var t = e.start,
                    n = e.end;
                return t && (t = this.skipHiddenDays(t)), n && (n = this.skipHiddenDays(n, -1, !0)), null == t || null == n || t < n ? {
                    start: t,
                    end: n
                } : null
            }, e.prototype.isHiddenDay = function(e) {
                return e instanceof Date && (e = e.getUTCDay()), this.isHiddenDayHash[e]
            }, e.prototype.skipHiddenDays = function(e, t, n) {
                for (void 0 === t && (t = 1), void 0 === n && (n = !1); this.isHiddenDayHash[(e.getUTCDay() + (n ? t : 0) + 7) % 7];) e = De(e, t);
                return e
            }, e
        }();

        function fo(e, t, n) {
            var r = t ? t.activeRange : null;
            return go({}, function(e, t) {
                var n = Wn(t),
                    r = [].concat(e.eventSources || []),
                    o = [];
                e.initialEvents && r.unshift(e.initialEvents);
                e.events && r.unshift(e.events);
                for (var i = 0, a = r; i < a.length; i++) {
                    var s = Bn(a[i], t, n);
                    s && o.push(s)
                }
                return o
            }(e, n), r, n)
        }

        function po(e, t, n, r) {
            var o, a, s = n ? n.activeRange : null;
            switch (t.type) {
                case "ADD_EVENT_SOURCES":
                    return go(e, t.sources, s, r);
                case "REMOVE_EVENT_SOURCE":
                    return o = e, a = t.sourceId, We(o, (function(e) {
                        return e.sourceId !== a
                    }));
                case "PREV":
                case "NEXT":
                case "CHANGE_DATE":
                case "CHANGE_VIEW_TYPE":
                    return n ? vo(e, s, r) : e;
                case "FETCH_EVENT_SOURCES":
                    return mo(e, t.sourceIds ? Ue(t.sourceIds) : bo(e, r), s, r);
                case "RECEIVE_EVENTS":
                case "RECEIVE_EVENT_ERROR":
                    return function(e, t, n, r) {
                        var o, a = e[t];
                        if (a && n === a.latestFetchId) return i(i({}, e), ((o = {})[t] = i(i({}, a), {
                            isFetching: !1,
                            fetchRange: r
                        }), o));
                        return e
                    }(e, t.sourceId, t.fetchId, t.fetchRange);
                case "REMOVE_ALL_EVENT_SOURCES":
                    return {};
                default:
                    return e
            }
        }

        function ho(e) {
            for (var t in e)
                if (e[t].isFetching) return !0;
            return !1
        }

        function go(e, t, n, r) {
            for (var o = {}, a = 0, s = t; a < s.length; a++) {
                var l = s[a];
                o[l.sourceId] = l
            }
            return n && (o = vo(o, n, r)), i(i({}, e), o)
        }

        function vo(e, t, n) {
            return mo(e, We(e, (function(e) {
                return function(e, t, n) {
                    if (!wo(e, n)) return !e.latestFetchId;
                    return !n.options.lazyFetching || !e.fetchRange || e.isFetching || t.start < e.fetchRange.start || t.end > e.fetchRange.end
                }(e, t, n)
            })), t, n)
        }

        function mo(e, t, n, r) {
            var o = {};
            for (var i in e) {
                var a = e[i];
                t[i] ? o[i] = yo(a, n, r) : o[i] = a
            }
            return o
        }

        function yo(e, t, n) {
            var r = n.options,
                o = n.calendarApi,
                a = n.pluginHooks.eventSourceDefs[e.sourceDefId],
                s = fe();
            return a.fetch({
                eventSource: e,
                range: t,
                context: n
            }, (function(i) {
                var a = i.rawEvents;
                r.eventSourceSuccess && (a = r.eventSourceSuccess.call(o, a, i.xhr) || a), e.success && (a = e.success.call(o, a, i.xhr) || a), n.dispatch({
                    type: "RECEIVE_EVENTS",
                    sourceId: e.sourceId,
                    fetchId: s,
                    fetchRange: t,
                    rawEvents: a
                })
            }), (function(i) {
                console.warn(i.message, i), r.eventSourceFailure && r.eventSourceFailure.call(o, i), e.failure && e.failure(i), n.dispatch({
                    type: "RECEIVE_EVENT_ERROR",
                    sourceId: e.sourceId,
                    fetchId: s,
                    fetchRange: t,
                    error: i
                })
            })), i(i({}, e), {
                isFetching: !0,
                latestFetchId: s
            })
        }

        function bo(e, t) {
            return We(e, (function(e) {
                return wo(e, t)
            }))
        }

        function wo(e, t) {
            return !t.pluginHooks.eventSourceDefs[e.sourceDefId].ignoreRange
        }

        function So(e, t) {
            switch (t.type) {
                case "UNSELECT_DATES":
                    return null;
                case "SELECT_DATES":
                    return t.selection;
                default:
                    return e
            }
        }

        function Eo(e, t) {
            switch (t.type) {
                case "UNSELECT_EVENT":
                    return "";
                case "SELECT_EVENT":
                    return t.eventInstanceId;
                default:
                    return e
            }
        }

        function Do(e, t) {
            var n;
            switch (t.type) {
                case "UNSET_EVENT_DRAG":
                    return null;
                case "SET_EVENT_DRAG":
                    return {
                        affectedEvents: (n = t.state).affectedEvents, mutatedEvents: n.mutatedEvents, isEvent: n.isEvent
                    };
                default:
                    return e
            }
        }

        function Ao(e, t) {
            var n;
            switch (t.type) {
                case "UNSET_EVENT_RESIZE":
                    return null;
                case "SET_EVENT_RESIZE":
                    return {
                        affectedEvents: (n = t.state).affectedEvents, mutatedEvents: n.mutatedEvents, isEvent: n.isEvent
                    };
                default:
                    return e
            }
        }

        function Co(e, t, n, r, o) {
            var i = [];
            return {
                headerToolbar: e.headerToolbar ? Ro(e.headerToolbar, e, t, n, r, o, i) : null,
                footerToolbar: e.footerToolbar ? Ro(e.footerToolbar, e, t, n, r, o, i) : null,
                viewsWithButtons: i
            }
        }

        function Ro(e, t, n, r, o, i, a) {
            return Le(e, (function(e) {
                return function(e, t, n, r, o, i, a) {
                    var s = "rtl" === t.direction,
                        l = t.customButtons || {},
                        c = n.buttonText || {},
                        u = t.buttonText || {};
                    return (e ? e.split(" ") : []).map((function(e) {
                        return e.split(",").map((function(e) {
                            return "title" === e ? {
                                buttonName: e
                            } : ((t = l[e]) ? (d = function(e) {
                                t.click && t.click.call(e.target, e, e.target)
                            }, (f = r.getCustomButtonIconClass(t)) || (f = r.getIconClass(e, s)) || (p = t.text)) : (n = o[e]) ? (a.push(e), d = function() {
                                i.changeView(e)
                            }, (p = n.buttonTextOverride) || (f = r.getIconClass(e, s)) || (p = n.buttonTextDefault)) : i[e] && (d = function() {
                                i[e]()
                            }, (p = c[e]) || (f = r.getIconClass(e, s)) || (p = u[e])), {
                                buttonName: e,
                                buttonClick: d,
                                buttonIcon: f,
                                buttonText: p
                            });
                            var t, n, d, f, p
                        }))
                    }))
                }(e, t, n, r, o, i, a)
            }))
        }

        function xo(e, t, n, r, o) {
            var i = null;
            "GET" === (e = e.toUpperCase()) ? t = function(e, t) {
                return e + (-1 === e.indexOf("?") ? "?" : "&") + ko(t)
            }(t, n): i = ko(n);
            var a = new XMLHttpRequest;
            a.open(e, t, !0), "GET" !== e && a.setRequestHeader("Content-Type", "application/x-www-form-urlencoded"), a.onload = function() {
                if (a.status >= 200 && a.status < 400) {
                    var e = !1,
                        t = void 0;
                    try {
                        t = JSON.parse(a.responseText), e = !0
                    } catch (e) {}
                    e ? r(t, a) : o("Failure parsing JSON", a)
                } else o("Request failed", a)
            }, a.onerror = function() {
                o("Request failed", a)
            }, a.send(i)
        }

        function ko(e) {
            var t = [];
            for (var n in e) t.push(encodeURIComponent(n) + "=" + encodeURIComponent(e[n]));
            return t.join("&")
        }

        function To(e, t) {
            for (var n = Fe(t.getCurrentData().eventSources), r = [], o = 0, i = e; o < i.length; o++) {
                for (var a = i[o], s = !1, l = 0; l < n.length; l += 1)
                    if (n[l]._raw === a) {
                        n.splice(l, 1), s = !0;
                        break
                    } s || r.push(a)
            }
            for (var c = 0, u = n; c < u.length; c++) {
                var d = u[c];
                t.dispatch({
                    type: "REMOVE_EVENT_SOURCE",
                    sourceId: d.sourceId
                })
            }
            for (var f = 0, p = r; f < p.length; f++) {
                var h = p[f];
                t.calendarApi.addEventSource(h)
            }
        }
        var Mo = [qr({
            eventSourceDefs: [{
                ignoreRange: !0,
                parseMeta: function(e) {
                    return Array.isArray(e.events) ? e.events : null
                },
                fetch: function(e, t) {
                    t({
                        rawEvents: e.eventSource.meta
                    })
                }
            }]
        }), qr({
            eventSourceDefs: [{
                parseMeta: function(e) {
                    return "function" == typeof e.events ? e.events : null
                },
                fetch: function(e, t, n) {
                    var r = e.context.dateEnv;
                    ! function(e, t, n) {
                        var r = !1,
                            o = function() {
                                r || (r = !0, t.apply(this, arguments))
                            },
                            i = function() {
                                r || (r = !0, n && n.apply(this, arguments))
                            },
                            a = e(o, i);
                        a && "function" == typeof a.then && a.then(o, i)
                    }(e.eventSource.meta.bind(null, xn(e.range, r)), (function(e) {
                        t({
                            rawEvents: e
                        })
                    }), n)
                }
            }]
        }), qr({
            eventSourceRefiners: {
                method: String,
                extraParams: zt,
                startParam: String,
                endParam: String,
                timeZoneParam: String
            },
            eventSourceDefs: [{
                parseMeta: function(e) {
                    return !e.url || "json" !== e.format && e.format ? null : {
                        url: e.url,
                        format: "json",
                        method: (e.method || "GET").toUpperCase(),
                        extraParams: e.extraParams,
                        startParam: e.startParam,
                        endParam: e.endParam,
                        timeZoneParam: e.timeZoneParam
                    }
                },
                fetch: function(e, t, n) {
                    var r = e.eventSource.meta,
                        o = function(e, t, n) {
                            var r, o, a, s, l = n.dateEnv,
                                c = n.options,
                                u = {};
                            null == (r = e.startParam) && (r = c.startParam);
                            null == (o = e.endParam) && (o = c.endParam);
                            null == (a = e.timeZoneParam) && (a = c.timeZoneParam);
                            s = "function" == typeof e.extraParams ? e.extraParams() : e.extraParams || {};
                            i(u, s), u[r] = l.formatIso(t.start), u[o] = l.formatIso(t.end), "local" !== l.timeZone && (u[a] = l.timeZone);
                            return u
                        }(r, e.range, e.context);
                    xo(r.method, r.url, o, (function(e, n) {
                        t({
                            rawEvents: e,
                            xhr: n
                        })
                    }), (function(e, t) {
                        n({
                            message: e,
                            xhr: t
                        })
                    }))
                }
            }]
        }), qr({
            recurringTypes: [{
                parse: function(e, t) {
                    if (e.daysOfWeek || e.startTime || e.endTime || e.startRecur || e.endRecur) {
                        var n = {
                                daysOfWeek: e.daysOfWeek || null,
                                startTime: e.startTime || null,
                                endTime: e.endTime || null,
                                startRecur: e.startRecur ? t.createMarker(e.startRecur) : null,
                                endRecur: e.endRecur ? t.createMarker(e.endRecur) : null
                            },
                            r = void 0;
                        return e.duration && (r = e.duration), !r && e.startTime && e.endTime && (o = e.endTime, i = e.startTime, r = {
                            years: o.years - i.years,
                            months: o.months - i.months,
                            days: o.days - i.days,
                            milliseconds: o.milliseconds - i.milliseconds
                        }), {
                            allDayGuess: Boolean(!e.startTime && !e.endTime),
                            duration: r,
                            typeData: n
                        }
                    }
                    var o, i;
                    return null
                },
                expand: function(e, t, n) {
                    var r = ln(t, {
                        start: e.startRecur,
                        end: e.endRecur
                    });
                    return r ? function(e, t, n, r) {
                        var o = e ? Ue(e) : null,
                            i = xe(n.start),
                            a = n.end,
                            s = [];
                        for (; i < a;) {
                            var l = void 0;
                            o && !o[i.getUTCDay()] || (l = t ? r.add(i, t) : i, s.push(l)), i = De(i, 1)
                        }
                        return s
                    }(e.daysOfWeek, e.startTime, r, n) : []
                }
            }],
            eventRefiners: {
                daysOfWeek: zt,
                startTime: Ke,
                endTime: Ke,
                duration: Ke,
                startRecur: zt,
                endRecur: zt
            }
        }), qr({
            optionChangeHandlers: {
                events: function(e, t) {
                    To([e], t)
                },
                eventSources: To
            }
        }), qr({
            isLoadingFuncs: [function(e) {
                return ho(e.eventSources)
            }],
            contentTypeHandlers: {
                html: function() {
                    return {
                        render: Io
                    }
                },
                domNodes: function() {
                    return {
                        render: _o
                    }
                }
            },
            propSetHandlers: {
                dateProfile: function(e, t) {
                    t.emitter.trigger("datesSet", i(i({}, xn(e.activeRange, t.dateEnv)), {
                        view: t.viewApi
                    }))
                },
                eventStore: function(e, t) {
                    var n = t.emitter;
                    n.hasHandlers("eventsSet") && n.trigger("eventsSet", jn(e, t))
                }
            }
        })];

        function Io(e, t) {
            e.innerHTML = t
        }

        function _o(e, t) {
            var n = Array.prototype.slice.call(e.childNodes),
                r = Array.prototype.slice.call(t);
            if (!ct(n, r)) {
                for (var o = 0, i = r; o < i.length; o++) {
                    var a = i[o];
                    e.appendChild(a)
                }
                n.forEach(ee)
            }
        }
        var No = function() {
                function e(e) {
                    this.drainedOption = e, this.isRunning = !1, this.isDirty = !1, this.pauseDepths = {}, this.timeoutId = 0
                }
                return e.prototype.request = function(e) {
                    this.isDirty = !0, this.isPaused() || (this.clearTimeout(), null == e ? this.tryDrain() : this.timeoutId = setTimeout(this.tryDrain.bind(this), e))
                }, e.prototype.pause = function(e) {
                    void 0 === e && (e = "");
                    var t = this.pauseDepths;
                    t[e] = (t[e] || 0) + 1, this.clearTimeout()
                }, e.prototype.resume = function(e, t) {
                    void 0 === e && (e = "");
                    var n = this.pauseDepths;
                    if (e in n) {
                        if (t) delete n[e];
                        else n[e] -= 1, n[e] <= 0 && delete n[e];
                        this.tryDrain()
                    }
                }, e.prototype.isPaused = function() {
                    return Object.keys(this.pauseDepths).length
                }, e.prototype.tryDrain = function() {
                    if (!this.isRunning && !this.isPaused()) {
                        for (this.isRunning = !0; this.isDirty;) this.isDirty = !1, this.drained();
                        this.isRunning = !1
                    }
                }, e.prototype.clear = function() {
                    this.clearTimeout(), this.isDirty = !1, this.pauseDepths = {}
                }, e.prototype.clearTimeout = function() {
                    this.timeoutId && (clearTimeout(this.timeoutId), this.timeoutId = 0)
                }, e.prototype.drained = function() {
                    this.drainedOption && this.drainedOption()
                }, e
            }(),
            Po = function() {
                function e(e, t) {
                    this.runTaskOption = e, this.drainedOption = t, this.queue = [], this.delayedRunner = new No(this.drain.bind(this))
                }
                return e.prototype.request = function(e, t) {
                    this.queue.push(e), this.delayedRunner.request(t)
                }, e.prototype.pause = function(e) {
                    this.delayedRunner.pause(e)
                }, e.prototype.resume = function(e, t) {
                    this.delayedRunner.resume(e, t)
                }, e.prototype.drain = function() {
                    for (var e = this.queue; e.length;) {
                        for (var t = [], n = void 0; n = e.shift();) this.runTask(n), t.push(n);
                        this.drained(t)
                    }
                }, e.prototype.runTask = function(e) {
                    this.runTaskOption && this.runTaskOption(e)
                }, e.prototype.drained = function(e) {
                    this.drainedOption && this.drainedOption(e)
                }, e
            }();

        function Ho(e, t, n) {
            var r;
            return r = /^(year|month)$/.test(e.currentRangeUnit) ? e.currentRange : e.activeRange, n.formatRange(r.start, r.end, xt(t.titleFormat || function(e) {
                var t = e.currentRangeUnit;
                if ("year" === t) return {
                    year: "numeric"
                };
                if ("month" === t) return {
                    year: "numeric",
                    month: "long"
                };
                var n = Re(e.currentRange.start, e.currentRange.end);
                if (null !== n && n > 1) return {
                    year: "numeric",
                    month: "short",
                    day: "numeric"
                };
                return {
                    year: "numeric",
                    month: "long",
                    day: "numeric"
                }
            }(e)), {
                isEndExclusive: e.isRangeAllDay,
                defaultSeparator: t.titleRangeSeparator
            })
        }
        var Oo = function() {
            function e(e) {
                var t = this;
                this.computeOptionsData = ut(this._computeOptionsData), this.computeCurrentViewData = ut(this._computeCurrentViewData), this.organizeRawLocales = ut(Kn), this.buildLocale = ut($n), this.buildPluginHooks = Qr(), this.buildDateEnv = ut(zo), this.buildTheme = ut(Bo), this.parseToolbars = ut(Co), this.buildViewSpecs = ut(lo), this.buildDateProfileGenerator = dt(Wo), this.buildViewApi = ut(Lo), this.buildViewUiProps = dt(Vo), this.buildEventUiBySource = ut(Uo, Ve), this.buildEventUiBases = ut(Fo), this.parseContextBusinessHours = dt(Go), this.buildTitle = ut(Ho), this.emitter = new Er, this.actionRunner = new Po(this._handleAction.bind(this), this.updateData.bind(this)), this.currentCalendarOptionsInput = {}, this.currentCalendarOptionsRefined = {}, this.currentViewOptionsInput = {}, this.currentViewOptionsRefined = {}, this.currentCalendarOptionsRefiners = {}, this.getCurrentData = function() {
                    return t.data
                }, this.dispatch = function(e) {
                    t.actionRunner.request(e)
                }, this.props = e, this.actionRunner.pause();
                var n = {},
                    r = this.computeOptionsData(e.optionOverrides, n, e.calendarApi),
                    o = r.calendarOptions.initialView || r.pluginHooks.initialView,
                    a = this.computeCurrentViewData(o, r, e.optionOverrides, n);
                e.calendarApi.currentDataManager = this, this.emitter.setThisContext(e.calendarApi), this.emitter.setOptions(a.options);
                var s, l, c, u = (s = r.calendarOptions, l = r.dateEnv, null != (c = s.initialDate) ? l.createMarker(c) : Ln(s.now, l)),
                    d = a.dateProfileGenerator.build(u);
                dn(d.activeRange, u) || (u = d.currentRange.start);
                for (var f = {
                    dateEnv: r.dateEnv,
                    options: r.calendarOptions,
                    pluginHooks: r.pluginHooks,
                    calendarApi: e.calendarApi,
                    dispatch: this.dispatch,
                    emitter: this.emitter,
                    getCurrentData: this.getCurrentData
                }, p = 0, h = r.pluginHooks.contextInit; p < h.length; p++) {
                    (0, h[p])(f)
                }
                for (var g = fo(r.calendarOptions, d, f), v = {
                    dynamicOptionOverrides: n,
                    currentViewType: o,
                    currentDate: u,
                    dateProfile: d,
                    businessHours: this.parseContextBusinessHours(f),
                    eventSources: g,
                    eventUiBases: {},
                    eventStore: {
                        defs: {},
                        instances: {}
                    },
                    renderableEventStore: {
                        defs: {},
                        instances: {}
                    },
                    dateSelection: null,
                    eventSelection: "",
                    eventDrag: null,
                    eventResize: null,
                    selectionConfig: this.buildViewUiProps(f).selectionConfig
                }, m = i(i({}, f), v), y = 0, b = r.pluginHooks.reducers; y < b.length; y++) {
                    var w = b[y];
                    i(v, w(null, null, m))
                }
                jo(v, f) && this.emitter.trigger("loading", !0), this.state = v, this.updateData(), this.actionRunner.resume()
            }
            return e.prototype.resetOptions = function(e, t) {
                var n = this.props;
                n.optionOverrides = t ? i(i({}, n.optionOverrides), e) : e, this.actionRunner.request({
                    type: "NOTHING"
                })
            }, e.prototype._handleAction = function(e) {
                var t = this.props,
                    n = this.state,
                    r = this.emitter,
                    o = function(e, t) {
                        var n;
                        switch (t.type) {
                            case "SET_OPTION":
                                return i(i({}, e), ((n = {})[t.optionName] = t.rawOptionValue, n));
                            default:
                                return e
                        }
                    }(n.dynamicOptionOverrides, e),
                    a = this.computeOptionsData(t.optionOverrides, o, t.calendarApi),
                    s = function(e, t) {
                        switch (t.type) {
                            case "CHANGE_VIEW_TYPE":
                                e = t.viewType
                        }
                        return e
                    }(n.currentViewType, e),
                    l = this.computeCurrentViewData(s, a, t.optionOverrides, o);
                t.calendarApi.currentDataManager = this, r.setThisContext(t.calendarApi), r.setOptions(l.options);
                var c = {
                        dateEnv: a.dateEnv,
                        options: a.calendarOptions,
                        pluginHooks: a.pluginHooks,
                        calendarApi: t.calendarApi,
                        dispatch: this.dispatch,
                        emitter: r,
                        getCurrentData: this.getCurrentData
                    },
                    u = n.currentDate,
                    d = n.dateProfile;
                this.data && this.data.dateProfileGenerator !== l.dateProfileGenerator && (d = l.dateProfileGenerator.build(u)), d = function(e, t, n, r) {
                    var o;
                    switch (t.type) {
                        case "CHANGE_VIEW_TYPE":
                            return r.build(t.dateMarker || n);
                        case "CHANGE_DATE":
                            if (!e.activeRange || !dn(e.currentRange, t.dateMarker)) return r.build(t.dateMarker);
                            break;
                        case "PREV":
                            if ((o = r.buildPrev(e, n)).isValid) return o;
                            break;
                        case "NEXT":
                            if ((o = r.buildNext(e, n)).isValid) return o
                    }
                    return e
                }(d, e, u = function(e, t) {
                    switch (t.type) {
                        case "CHANGE_DATE":
                            return t.dateMarker;
                        default:
                            return e
                    }
                }(u, e), l.dateProfileGenerator), dn(d.currentRange, u) || (u = d.currentRange.start);
                for (var f = po(n.eventSources, e, d, c), p = Or(n.eventStore, e, f, d, c), h = ho(f) && !l.options.progressiveEventRendering && n.renderableEventStore || p, g = this.buildViewUiProps(c), v = g.eventUiSingleBase, m = g.selectionConfig, y = this.buildEventUiBySource(f), b = {
                    dynamicOptionOverrides: o,
                    currentViewType: s,
                    currentDate: u,
                    dateProfile: d,
                    eventSources: f,
                    eventStore: p,
                    renderableEventStore: h,
                    selectionConfig: m,
                    eventUiBases: this.buildEventUiBases(h.defs, v, y),
                    businessHours: this.parseContextBusinessHours(c),
                    dateSelection: So(n.dateSelection, e),
                    eventSelection: Eo(n.eventSelection, e),
                    eventDrag: Do(n.eventDrag, e),
                    eventResize: Ao(n.eventResize, e)
                }, w = i(i({}, c), b), S = 0, E = a.pluginHooks.reducers; S < E.length; S++) {
                    var D = E[S];
                    i(b, D(n, e, w))
                }
                var A = jo(n, c),
                    C = jo(b, c);
                !A && C ? r.trigger("loading", !0) : A && !C && r.trigger("loading", !1), this.state = b, t.onAction && t.onAction(e)
            }, e.prototype.updateData = function() {
                var e, t, n, r, o, a, s, l, c, u = this.props,
                    d = this.state,
                    f = this.data,
                    p = this.computeOptionsData(u.optionOverrides, d.dynamicOptionOverrides, u.calendarApi),
                    h = this.computeCurrentViewData(d.currentViewType, p, u.optionOverrides, d.dynamicOptionOverrides),
                    g = this.data = i(i(i({
                        viewTitle: this.buildTitle(d.dateProfile, h.options, p.dateEnv),
                        calendarApi: u.calendarApi,
                        dispatch: this.dispatch,
                        emitter: this.emitter,
                        getCurrentData: this.getCurrentData
                    }, p), h), d),
                    v = p.pluginHooks.optionChangeHandlers,
                    m = f && f.calendarOptions,
                    y = p.calendarOptions;
                if (m && m !== y)
                    for (var b in m.timeZone !== y.timeZone && (d.eventSources = g.eventSources = (a = g.eventSources, s = d.dateProfile, l = g, c = s ? s.activeRange : null, mo(a, bo(a, l), c, l)), d.eventStore = g.eventStore = (e = g.eventStore, t = f.dateEnv, n = g.dateEnv, r = e.defs, o = Le(e.instances, (function(e) {
                        var o = r[e.defId];
                        return o.allDay || o.recurringDef ? e : i(i({}, e), {
                            range: {
                                start: n.createMarker(t.toDate(e.range.start, e.forcedStartTzo)),
                                end: n.createMarker(t.toDate(e.range.end, e.forcedEndTzo))
                            },
                            forcedStartTzo: n.canComputeOffset ? null : e.forcedStartTzo,
                            forcedEndTzo: n.canComputeOffset ? null : e.forcedEndTzo
                        })
                    })), {
                        defs: r,
                        instances: o
                    })), v) m[b] !== y[b] && v[b](y[b], g);
                u.onData && u.onData(g)
            }, e.prototype._computeOptionsData = function(e, t, n) {
                var r = this.processRawCalendarOptions(e, t),
                    o = r.refinedOptions,
                    i = r.pluginHooks,
                    a = r.localeDefaults,
                    s = r.availableLocaleData;
                Yo(r.extra);
                var l = this.buildDateEnv(o.timeZone, o.locale, o.weekNumberCalculation, o.firstDay, o.weekText, i, s, o.defaultRangeSeparator),
                    c = this.buildViewSpecs(i.views, e, t, a),
                    u = this.buildTheme(o, i);
                return {
                    calendarOptions: o,
                    pluginHooks: i,
                    dateEnv: l,
                    viewSpecs: c,
                    theme: u,
                    toolbarConfig: this.parseToolbars(o, e, u, c, n),
                    localeDefaults: a,
                    availableRawLocales: s.map
                }
            }, e.prototype.processRawCalendarOptions = function(e, t) {
                var n = Ht([Tt, e, t]),
                    r = n.locales,
                    o = n.locale,
                    a = this.organizeRawLocales(r),
                    s = a.map,
                    l = this.buildLocale(o || a.defaultCode, s).options,
                    c = this.buildPluginHooks(e.plugins || [], Mo),
                    u = this.currentCalendarOptionsRefiners = i(i(i(i(i({}, kt), Mt), It), c.listenerRefiners), c.optionRefiners),
                    d = {},
                    f = Ht([Tt, l, e, t]),
                    p = {},
                    h = this.currentCalendarOptionsInput,
                    g = this.currentCalendarOptionsRefined,
                    v = !1;
                for (var m in f) "plugins" !== m && (f[m] === h[m] || _t[m] && m in h && _t[m](h[m], f[m]) ? p[m] = g[m] : u[m] ? (p[m] = u[m](f[m]), v = !0) : d[m] = h[m]);
                return v && (this.currentCalendarOptionsInput = f, this.currentCalendarOptionsRefined = p), {
                    rawOptions: this.currentCalendarOptionsInput,
                    refinedOptions: this.currentCalendarOptionsRefined,
                    pluginHooks: c,
                    availableLocaleData: a,
                    localeDefaults: l,
                    extra: d
                }
            }, e.prototype._computeCurrentViewData = function(e, t, n, r) {
                var o = t.viewSpecs[e];
                if (!o) throw new Error('viewType "' + e + "\" is not available. Please make sure you've loaded all neccessary plugins");
                var i = this.processRawViewOptions(o, t.pluginHooks, t.localeDefaults, n, r),
                    a = i.refinedOptions;
                return Yo(i.extra), {
                    viewSpec: o,
                    options: a,
                    dateProfileGenerator: this.buildDateProfileGenerator({
                        dateProfileGeneratorClass: o.optionDefaults.dateProfileGeneratorClass,
                        duration: o.duration,
                        durationUnit: o.durationUnit,
                        usesMinMaxTime: o.optionDefaults.usesMinMaxTime,
                        dateEnv: t.dateEnv,
                        calendarApi: this.props.calendarApi,
                        slotMinTime: a.slotMinTime,
                        slotMaxTime: a.slotMaxTime,
                        showNonCurrentDates: a.showNonCurrentDates,
                        dayCount: a.dayCount,
                        dateAlignment: a.dateAlignment,
                        dateIncrement: a.dateIncrement,
                        hiddenDays: a.hiddenDays,
                        weekends: a.weekends,
                        nowInput: a.now,
                        validRangeInput: a.validRange,
                        visibleRangeInput: a.visibleRange,
                        monthMode: a.monthMode,
                        fixedWeekCount: a.fixedWeekCount
                    }),
                    viewApi: this.buildViewApi(e, this.getCurrentData, t.dateEnv)
                }
            }, e.prototype.processRawViewOptions = function(e, t, n, r, o) {
                var a = Ht([Tt, e.optionDefaults, n, r, e.optionOverrides, o]),
                    s = i(i(i(i(i(i({}, kt), Mt), It), Pt), t.listenerRefiners), t.optionRefiners),
                    l = {},
                    c = this.currentViewOptionsInput,
                    u = this.currentViewOptionsRefined,
                    d = !1,
                    f = {};
                for (var p in a) a[p] === c[p] ? l[p] = u[p] : (a[p] === this.currentCalendarOptionsInput[p] ? p in this.currentCalendarOptionsRefined && (l[p] = this.currentCalendarOptionsRefined[p]) : s[p] ? l[p] = s[p](a[p]) : f[p] = a[p], d = !0);
                return d && (this.currentViewOptionsInput = a, this.currentViewOptionsRefined = l), {
                    rawOptions: this.currentViewOptionsInput,
                    refinedOptions: this.currentViewOptionsRefined,
                    extra: f
                }
            }, e
        }();

        function zo(e, t, n, r, o, i, a, s) {
            var l = $n(t || a.defaultCode, a.map);
            return new Zn({
                calendarSystem: "gregory",
                timeZone: e,
                namedTimeZoneImpl: i.namedTimeZonedImpl,
                locale: l,
                weekNumberCalculation: n,
                firstDay: r,
                weekText: o,
                cmdFormatter: i.cmdFormatter,
                defaultSeparator: s
            })
        }

        function Bo(e, t) {
            return new(t.themeClasses[e.themeSystem] || Zr)(e)
        }

        function Wo(e) {
            return new(e.dateProfileGeneratorClass || uo)(e)
        }

        function Lo(e, t, n) {
            return new On(e, t, n)
        }

        function Uo(e) {
            return Le(e, (function(e) {
                return e.ui
            }))
        }

        function Fo(e, t, n) {
            var r = {
                "": t
            };
            for (var o in e) {
                var i = e[o];
                i.sourceId && n[i.sourceId] && (r[o] = n[i.sourceId])
            }
            return r
        }

        function Vo(e) {
            var t = e.options;
            return {
                eventUiSingleBase: Yt({
                    display: t.eventDisplay,
                    editable: t.editable,
                    startEditable: t.eventStartEditable,
                    durationEditable: t.eventDurationEditable,
                    constraint: t.eventConstraint,
                    overlap: "boolean" == typeof t.eventOverlap ? t.eventOverlap : void 0,
                    allow: t.eventAllow,
                    backgroundColor: t.eventBackgroundColor,
                    borderColor: t.eventBorderColor,
                    textColor: t.eventTextColor,
                    color: t.eventColor
                }, e),
                selectionConfig: Yt({
                    constraint: t.selectConstraint,
                    overlap: "boolean" == typeof t.selectOverlap ? t.selectOverlap : void 0,
                    allow: t.selectAllow
                }, e)
            }
        }

        function jo(e, t) {
            for (var n = 0, r = t.pluginHooks.isLoadingFuncs; n < r.length; n++) {
                if ((0, r[n])(e)) return !0
            }
            return !1
        }

        function Go(e) {
            return rr(e.options.businessHours, e)
        }

        function Yo(e, t) {
            for (var n in e) console.warn("Unknown option '" + n + "'" + (t ? " for view '" + t + "'" : ""))
        }! function(e) {
            function t(t) {
                var n = e.call(this, t) || this;
                return n.handleData = function(e) {
                    n.dataManager ? n.setState(e) : n.state = e
                }, n.dataManager = new Oo({
                    optionOverrides: t.optionOverrides,
                    calendarApi: t.calendarApi,
                    onData: n.handleData
                }), n
            }
            o(t, e), t.prototype.render = function() {
                return this.props.children(this.state)
            }, t.prototype.componentDidUpdate = function(e) {
                var t = this.props.optionOverrides;
                t !== e.optionOverrides && this.dataManager.resetOptions(t)
            }
        }(G);
        var qo = function() {
            function e(e) {
                this.component = e.component
            }
            return e.prototype.destroy = function() {}, e
        }();

        function Qo(e, t) {
            return {
                component: e,
                el: t.el,
                useEventCenter: null == t.useEventCenter || t.useEventCenter
            }
        }

        function Zo(e) {
            var t;
            return (t = {})[e.component.uid] = e, t
        }
        var Xo = {},
            Jo = function() {
                function e(e, t) {
                    this.emitter = new Er
                }
                return e.prototype.destroy = function() {}, e.prototype.setMirrorIsVisible = function(e) {}, e.prototype.setMirrorNeedsRevert = function(e) {}, e.prototype.setAutoScrollEnabled = function(e) {}, e
            }(),
            Ko = {},
            $o = {
                startTime: Ke,
                duration: Ke,
                create: Boolean,
                sourceId: String
            };

        function ei(e) {
            var t = Ot(e, $o),
                n = t.refined,
                r = t.extra;
            return {
                startTime: n.startTime || null,
                duration: n.duration || null,
                create: null == n.create || n.create,
                sourceId: n.sourceId,
                leftoverProps: r
            }
        }
        var ti = function(e) {
                function t() {
                    return null !== e && e.apply(this, arguments) || this
                }
                return o(t, e), t.prototype.render = function() {
                    var e = this,
                        t = this.props.widgetGroups.map((function(t) {
                            return e.renderWidgetGroup(t)
                        }));
                    return Y.apply(void 0, a(["div", {
                        className: "fc-toolbar-chunk"
                    }], t))
                }, t.prototype.renderWidgetGroup = function(e) {
                    for (var t = this.props, n = this.context.theme, r = [], o = !0, s = 0, l = e; s < l.length; s++) {
                        var c = l[s],
                            u = c.buttonName,
                            d = c.buttonClick,
                            f = c.buttonText,
                            p = c.buttonIcon;
                        if ("title" === u) o = !1, r.push(Y("h2", {
                            className: "fc-toolbar-title"
                        }, t.title));
                        else {
                            var h = p ? {
                                    "aria-label": u
                                } : {},
                                g = ["fc-" + u + "-button", n.getClass("button")];
                            u === t.activeButton && g.push(n.getClass("buttonActive"));
                            var v = !t.isTodayEnabled && "today" === u || !t.isPrevEnabled && "prev" === u || !t.isNextEnabled && "next" === u;
                            r.push(Y("button", i({
                                disabled: v,
                                className: g.join(" "),
                                onClick: d,
                                type: "button"
                            }, h), f || (p ? Y("span", {
                                className: p
                            }) : "")))
                        }
                    }
                    if (r.length > 1) {
                        var m = o && n.getClass("buttonGroup") || "";
                        return Y.apply(void 0, a(["div", {
                            className: m
                        }], r))
                    }
                    return r[0]
                }, t
            }(_r),
            ni = function(e) {
                function t() {
                    return null !== e && e.apply(this, arguments) || this
                }
                return o(t, e), t.prototype.render = function() {
                    var e, t, n = this.props,
                        r = n.model,
                        o = n.extraClassName,
                        i = !1,
                        a = r.center;
                    return r.left ? (i = !0, e = r.left) : e = r.start, r.right ? (i = !0, t = r.right) : t = r.end, Y("div", {
                        className: [o || "", "fc-toolbar", i ? "fc-toolbar-ltr" : ""].join(" ")
                    }, this.renderSection("start", e || []), this.renderSection("center", a || []), this.renderSection("end", t || []))
                }, t.prototype.renderSection = function(e, t) {
                    var n = this.props;
                    return Y(ti, {
                        key: e,
                        widgetGroups: t,
                        title: n.title,
                        activeButton: n.activeButton,
                        isTodayEnabled: n.isTodayEnabled,
                        isPrevEnabled: n.isPrevEnabled,
                        isNextEnabled: n.isNextEnabled
                    })
                }, t
            }(_r),
            ri = function(e) {
                function t() {
                    var t = null !== e && e.apply(this, arguments) || this;
                    return t.state = {
                        availableWidth: null
                    }, t.handleEl = function(e) {
                        t.el = e, Hr(t.props.elRef, e), t.updateAvailableWidth()
                    }, t.handleResize = function() {
                        t.updateAvailableWidth()
                    }, t
                }
                return o(t, e), t.prototype.render = function() {
                    var e = this.props,
                        t = this.state,
                        n = e.aspectRatio,
                        r = ["fc-view-harness", n || e.liquid || e.height ? "fc-view-harness-active" : "fc-view-harness-passive"],
                        o = "",
                        i = "";
                    return n ? null !== t.availableWidth ? o = t.availableWidth / n : i = 1 / n * 100 + "%" : o = e.height || "", Y("div", {
                        ref: this.handleEl,
                        onClick: e.onClick,
                        className: r.join(" "),
                        style: {
                            height: o,
                            paddingBottom: i
                        }
                    }, e.children)
                }, t.prototype.componentDidMount = function() {
                    this.context.addResizeHandler(this.handleResize)
                }, t.prototype.componentWillUnmount = function() {
                    this.context.removeResizeHandler(this.handleResize)
                }, t.prototype.updateAvailableWidth = function() {
                    this.el && this.props.aspectRatio && this.setState({
                        availableWidth: this.el.offsetWidth
                    })
                }, t
            }(_r),
            oi = function(e) {
                function t(t) {
                    var n = e.call(this, t) || this;
                    return n.handleSegClick = function(e, t) {
                        var r = n.component,
                            o = r.context,
                            i = hn(t);
                        if (i && r.isValidSegDownEl(e.target)) {
                            var a = te(e.target, ".fc-event-forced-url"),
                                s = a ? a.querySelector("a[href]").href : "";
                            o.emitter.trigger("eventClick", {
                                el: t,
                                event: new Fn(r.context, i.eventRange.def, i.eventRange.instance),
                                jsEvent: e,
                                view: o.viewApi
                            }), s && !e.defaultPrevented && (window.location.href = s)
                        }
                    }, n.destroy = ce(t.el, "click", ".fc-event", n.handleSegClick), n
                }
                return o(t, e), t
            }(qo),
            ii = function(e) {
                function t(t) {
                    var n, r, o, i, a, s = e.call(this, t) || this;
                    return s.handleEventElRemove = function(e) {
                        e === s.currentSegEl && s.handleSegLeave(null, s.currentSegEl)
                    }, s.handleSegEnter = function(e, t) {
                        hn(t) && (s.currentSegEl = t, s.triggerEvent("eventMouseEnter", e, t))
                    }, s.handleSegLeave = function(e, t) {
                        s.currentSegEl && (s.currentSegEl = null, s.triggerEvent("eventMouseLeave", e, t))
                    }, s.removeHoverListeners = (n = t.el, r = ".fc-event", o = s.handleSegEnter, i = s.handleSegLeave, ce(n, "mouseover", r, (function(e, t) {
                        if (t !== a) {
                            a = t, o(e, t);
                            var n = function(e) {
                                a = null, i(e, t), t.removeEventListener("mouseleave", n)
                            };
                            t.addEventListener("mouseleave", n)
                        }
                    }))), s
                }
                return o(t, e), t.prototype.destroy = function() {
                    this.removeHoverListeners()
                }, t.prototype.triggerEvent = function(e, t, n) {
                    var r = this.component,
                        o = r.context,
                        i = hn(n);
                    t && !r.isValidSegDownEl(t.target) || o.emitter.trigger(e, {
                        el: n,
                        event: new Fn(o, i.eventRange.def, i.eventRange.instance),
                        jsEvent: t,
                        view: o.viewApi
                    })
                }, t
            }(qo),
            ai = function(e) {
                function t() {
                    var t = null !== e && e.apply(this, arguments) || this;
                    return t.buildViewContext = ut(Mr), t.buildViewPropTransformers = ut(li), t.buildToolbarProps = ut(si), t.handleNavLinkClick = le("a[data-navlink]", t._handleNavLinkClick.bind(t)), t.headerRef = Q(), t.footerRef = Q(), t.interactionsStore = {}, t.registerInteractiveComponent = function(e, n) {
                        var r = Qo(e, n),
                            o = [oi, ii].concat(t.props.pluginHooks.componentInteractions).map((function(e) {
                                return new e(r)
                            }));
                        t.interactionsStore[e.uid] = o, Xo[e.uid] = r
                    }, t.unregisterInteractiveComponent = function(e) {
                        for (var n = 0, r = t.interactionsStore[e.uid]; n < r.length; n++) {
                            r[n].destroy()
                        }
                        delete t.interactionsStore[e.uid], delete Xo[e.uid]
                    }, t.resizeRunner = new No((function() {
                        t.props.emitter.trigger("_resize", !0), t.props.emitter.trigger("windowResize", {
                            view: t.props.viewApi
                        })
                    })), t.handleWindowResize = function(e) {
                        var n = t.props.options;
                        n.handleWindowResize && e.target === window && t.resizeRunner.request(n.windowResizeDelay)
                    }, t
                }
                return o(t, e), t.prototype.render = function() {
                    var e, t = this.props,
                        n = t.toolbarConfig,
                        r = t.options,
                        o = this.buildToolbarProps(t.viewSpec, t.dateProfile, t.dateProfileGenerator, t.currentDate, Ln(t.options.now, t.dateEnv), t.viewTitle),
                        a = !1,
                        s = "";
                    t.isHeightAuto || t.forPrint ? s = "" : null != r.height ? a = !0 : null != r.contentHeight ? s = r.contentHeight : e = Math.max(r.aspectRatio, .5);
                    var l = this.buildViewContext(t.viewSpec, t.viewApi, t.options, t.dateProfileGenerator, t.dateEnv, t.theme, t.pluginHooks, t.dispatch, t.getCurrentData, t.emitter, t.calendarApi, this.registerInteractiveComponent, this.unregisterInteractiveComponent);
                    return Y(Tr.Provider, {
                        value: l
                    }, n.headerToolbar && Y(ni, i({
                        ref: this.headerRef,
                        extraClassName: "fc-header-toolbar",
                        model: n.headerToolbar
                    }, o)), Y(ri, {
                        liquid: a,
                        height: s,
                        aspectRatio: e,
                        onClick: this.handleNavLinkClick
                    }, this.renderView(t), this.buildAppendContent()), n.footerToolbar && Y(ni, i({
                        ref: this.footerRef,
                        extraClassName: "fc-footer-toolbar",
                        model: n.footerToolbar
                    }, o)))
                }, t.prototype.componentDidMount = function() {
                    var e = this.props;
                    this.calendarInteractions = e.pluginHooks.calendarInteractions.map((function(t) {
                        return new t(e)
                    })), window.addEventListener("resize", this.handleWindowResize);
                    var t = e.pluginHooks.propSetHandlers;
                    for (var n in t) t[n](e[n], e)
                }, t.prototype.componentDidUpdate = function(e) {
                    var t = this.props,
                        n = t.pluginHooks.propSetHandlers;
                    for (var r in n) t[r] !== e[r] && n[r](t[r], t)
                }, t.prototype.componentWillUnmount = function() {
                    window.removeEventListener("resize", this.handleWindowResize), this.resizeRunner.clear();
                    for (var e = 0, t = this.calendarInteractions; e < t.length; e++) {
                        t[e].destroy()
                    }
                    this.props.emitter.trigger("_unmount")
                }, t.prototype._handleNavLinkClick = function(e, t) {
                    var n = this.props,
                        r = n.dateEnv,
                        o = n.options,
                        i = n.calendarApi,
                        a = t.getAttribute("data-navlink");
                    a = a ? JSON.parse(a) : {};
                    var s = r.createMarker(a.date),
                        l = a.type,
                        c = "day" === l ? o.navLinkDayClick : "week" === l ? o.navLinkWeekClick : null;
                    "function" == typeof c ? c.call(i, r.toDate(s), e) : ("string" == typeof c && (l = c), i.zoomTo(s, l))
                }, t.prototype.buildAppendContent = function() {
                    var e = this.props,
                        t = e.pluginHooks.viewContainerAppends.map((function(t) {
                            return t(e)
                        }));
                    return Y.apply(void 0, a([Z, {}], t))
                }, t.prototype.renderView = function(e) {
                    for (var t = e.pluginHooks, n = e.viewSpec, r = {
                        dateProfile: e.dateProfile,
                        businessHours: e.businessHours,
                        eventStore: e.renderableEventStore,
                        eventUiBases: e.eventUiBases,
                        dateSelection: e.dateSelection,
                        eventSelection: e.eventSelection,
                        eventDrag: e.eventDrag,
                        eventResize: e.eventResize,
                        isHeightAuto: e.isHeightAuto,
                        forPrint: e.forPrint
                    }, o = 0, a = this.buildViewPropTransformers(t.viewPropsTransformers); o < a.length; o++) {
                        var s = a[o];
                        i(r, s.transform(r, e))
                    }
                    var l = n.component;
                    return Y(l, i({}, r))
                }, t
            }(Ir);

        function si(e, t, n, r, o, i) {
            var a = n.build(o, void 0, !1),
                s = n.buildPrev(t, r, !1),
                l = n.buildNext(t, r, !1);
            return {
                title: i,
                activeButton: e.type,
                isTodayEnabled: a.isValid && !dn(t.currentRange, o),
                isPrevEnabled: s.isValid,
                isNextEnabled: l.isValid
            }
        }

        function li(e) {
            return e.map((function(e) {
                return new e
            }))
        }
        var ci = function(e) {
            function t() {
                var t = null !== e && e.apply(this, arguments) || this;
                return t.state = {
                    forPrint: !1
                }, t.handleBeforePrint = function() {
                    t.setState({
                        forPrint: !0
                    })
                }, t.handleAfterPrint = function() {
                    t.setState({
                        forPrint: !1
                    })
                }, t
            }
            return o(t, e), t.prototype.render = function() {
                var e = this.props,
                    t = e.options,
                    n = this.state.forPrint,
                    r = n || "auto" === t.height || "auto" === t.contentHeight,
                    o = r || null == t.height ? "" : t.height,
                    i = ["fc", n ? "fc-media-print" : "fc-media-screen", "fc-direction-" + t.direction, e.theme.getClass("root")];
                return ar() || i.push("fc-liquid-hack"), e.children(i, o, r, n)
            }, t.prototype.componentDidMount = function() {
                var e = this.props.emitter;
                e.on("_beforeprint", this.handleBeforePrint), e.on("_afterprint", this.handleAfterPrint)
            }, t.prototype.componentWillUnmount = function() {
                var e = this.props.emitter;
                e.off("_beforeprint", this.handleBeforePrint), e.off("_afterprint", this.handleAfterPrint)
            }, t
        }(_r);
        var ui = "fc-col-header-cell";

        function di(e) {
            return e.text
        }
        var fi = function(e) {
                function t() {
                    return null !== e && e.apply(this, arguments) || this
                }
                return o(t, e), t.prototype.render = function() {
                    var e = this.context,
                        t = e.dateEnv,
                        n = e.options,
                        r = e.theme,
                        o = e.viewApi,
                        a = this.props,
                        s = a.date,
                        l = a.dateProfile,
                        c = ur(s, a.todayRange, null, l),
                        u = [ui].concat(dr(c, r)),
                        d = t.format(s, a.dayHeaderFormat),
                        f = n.navLinks && !c.isDisabled && a.colCnt > 1 ? {
                            "data-navlink": pr(s),
                            tabIndex: 0
                        } : {},
                        p = i(i(i({
                            date: t.toDate(s),
                            view: o
                        }, a.extraHookProps), {
                            text: d
                        }), c);
                    return Y(Jr, {
                        hookProps: p,
                        classNames: n.dayHeaderClassNames,
                        content: n.dayHeaderContent,
                        defaultContent: di,
                        didMount: n.dayHeaderDidMount,
                        willUnmount: n.dayHeaderWillUnmount
                    }, (function(e, t, n, r) {
                        return Y("th", i({
                            ref: e,
                            className: u.concat(t).join(" "),
                            "data-date": c.isDisabled ? void 0 : st(s),
                            colSpan: a.colSpan
                        }, a.extraDataAttrs), Y("div", {
                            className: "fc-scrollgrid-sync-inner"
                        }, !c.isDisabled && Y("a", i({
                            ref: n,
                            className: ["fc-col-header-cell-cushion", a.isSticky ? "fc-sticky" : ""].join(" ")
                        }, f), r)))
                    }))
                }, t
            }(_r),
            pi = function(e) {
                function t() {
                    return null !== e && e.apply(this, arguments) || this
                }
                return o(t, e), t.prototype.render = function() {
                    var e = this.props,
                        t = this.context,
                        n = t.dateEnv,
                        r = t.theme,
                        o = t.viewApi,
                        a = t.options,
                        s = De(new Date(2592e5), e.dow),
                        l = {
                            dow: e.dow,
                            isDisabled: !1,
                            isFuture: !1,
                            isPast: !1,
                            isToday: !1,
                            isOther: !1
                        },
                        c = [ui].concat(dr(l, r), e.extraClassNames || []),
                        u = n.format(s, e.dayHeaderFormat),
                        d = i(i(i(i({
                            date: s
                        }, l), {
                            view: o
                        }), e.extraHookProps), {
                            text: u
                        });
                    return Y(Jr, {
                        hookProps: d,
                        classNames: a.dayHeaderClassNames,
                        content: a.dayHeaderContent,
                        defaultContent: di,
                        didMount: a.dayHeaderDidMount,
                        willUnmount: a.dayHeaderWillUnmount
                    }, (function(t, n, r, o) {
                        return Y("th", i({
                            ref: t,
                            className: c.concat(n).join(" "),
                            colSpan: e.colSpan
                        }, e.extraDataAttrs), Y("div", {
                            className: "fc-scrollgrid-sync-inner"
                        }, Y("a", {
                            className: ["fc-col-header-cell-cushion", e.isSticky ? "fc-sticky" : ""].join(" "),
                            ref: r
                        }, o)))
                    }))
                }, t
            }(_r),
            hi = function(e) {
                function t(t, n) {
                    var r = e.call(this, t, n) || this;
                    return r.initialNowDate = Ln(n.options.now, n.dateEnv), r.initialNowQueriedMs = (new Date).valueOf(), r.state = r.computeTiming().currentState, r
                }
                return o(t, e), t.prototype.render = function() {
                    var e = this.props,
                        t = this.state;
                    return e.children(t.nowDate, t.todayRange)
                }, t.prototype.componentDidMount = function() {
                    this.setTimeout()
                }, t.prototype.componentDidUpdate = function(e) {
                    e.unit !== this.props.unit && (this.clearTimeout(), this.setTimeout())
                }, t.prototype.componentWillUnmount = function() {
                    this.clearTimeout()
                }, t.prototype.computeTiming = function() {
                    var e = this.props,
                        t = this.context,
                        n = Ae(this.initialNowDate, (new Date).valueOf() - this.initialNowQueriedMs),
                        r = t.dateEnv.startOf(n, e.unit),
                        o = t.dateEnv.add(r, Ke(1, e.unit)),
                        i = o.valueOf() - n.valueOf();
                    return i = Math.min(864e5, i), {
                        currentState: {
                            nowDate: r,
                            todayRange: gi(r)
                        },
                        nextState: {
                            nowDate: o,
                            todayRange: gi(o)
                        },
                        waitMs: i
                    }
                }, t.prototype.setTimeout = function() {
                    var e = this,
                        t = this.computeTiming(),
                        n = t.nextState,
                        r = t.waitMs;
                    this.timeoutId = setTimeout((function() {
                        e.setState(n, (function() {
                            e.setTimeout()
                        }))
                    }), r)
                }, t.prototype.clearTimeout = function() {
                    this.timeoutId && clearTimeout(this.timeoutId)
                }, t.contextType = Tr, t
            }(G);

        function gi(e) {
            var t = xe(e);
            return {
                start: t,
                end: De(t, 1)
            }
        }
        var vi = function(e) {
            function t() {
                var t = null !== e && e.apply(this, arguments) || this;
                return t.createDayHeaderFormatter = ut(mi), t
            }
            return o(t, e), t.prototype.render = function() {
                var e = this.context,
                    t = this.props,
                    n = t.dates,
                    r = t.dateProfile,
                    o = t.datesRepDistinctDays,
                    i = t.renderIntro,
                    a = this.createDayHeaderFormatter(e.options.dayHeaderFormat, o, n.length);
                return Y(hi, {
                    unit: "day"
                }, (function(e, t) {
                    return Y("tr", null, i && i("day"), n.map((function(e) {
                        return o ? Y(fi, {
                            key: e.toISOString(),
                            date: e,
                            dateProfile: r,
                            todayRange: t,
                            colCnt: n.length,
                            dayHeaderFormat: a
                        }) : Y(pi, {
                            key: e.getUTCDay(),
                            dow: e.getUTCDay(),
                            dayHeaderFormat: a
                        })
                    })))
                }))
            }, t
        }(_r);

        function mi(e, t, n) {
            return e || function(e, t) {
                return xt(!e || t > 10 ? {
                    weekday: "short"
                } : t > 1 ? {
                    weekday: "short",
                    month: "numeric",
                    day: "numeric",
                    omitCommas: !0
                } : {
                    weekday: "long"
                })
            }(t, n)
        }
        var yi = function() {
                function e(e, t) {
                    for (var n = e.start, r = e.end, o = [], i = [], a = -1; n < r;) t.isHiddenDay(n) ? o.push(a + .5) : (a += 1, o.push(a), i.push(n)), n = De(n, 1);
                    this.dates = i, this.indices = o, this.cnt = i.length
                }
                return e.prototype.sliceRange = function(e) {
                    var t = this.getDateDayIndex(e.start),
                        n = this.getDateDayIndex(De(e.end, -1)),
                        r = Math.max(0, t),
                        o = Math.min(this.cnt - 1, n);
                    return (r = Math.ceil(r)) <= (o = Math.floor(o)) ? {
                        firstIndex: r,
                        lastIndex: o,
                        isStart: t === r,
                        isEnd: n === o
                    } : null
                }, e.prototype.getDateDayIndex = function(e) {
                    var t = this.indices,
                        n = Math.floor(Ce(this.dates[0], e));
                    return n < 0 ? t[0] - 1 : n >= t.length ? t[t.length - 1] + 1 : t[n]
                }, e
            }(),
            bi = function() {
                function e(e, t) {
                    var n, r, o, i = e.dates;
                    if (t) {
                        for (r = i[0].getUTCDay(), n = 1; n < i.length && i[n].getUTCDay() !== r; n += 1);
                        o = Math.ceil(i.length / n)
                    } else o = 1, n = i.length;
                    this.rowCnt = o, this.colCnt = n, this.daySeries = e, this.cells = this.buildCells(), this.headerDates = this.buildHeaderDates()
                }
                return e.prototype.buildCells = function() {
                    for (var e = [], t = 0; t < this.rowCnt; t += 1) {
                        for (var n = [], r = 0; r < this.colCnt; r += 1) n.push(this.buildCell(t, r));
                        e.push(n)
                    }
                    return e
                }, e.prototype.buildCell = function(e, t) {
                    var n = this.daySeries.dates[e * this.colCnt + t];
                    return {
                        key: n.toISOString(),
                        date: n
                    }
                }, e.prototype.buildHeaderDates = function() {
                    for (var e = [], t = 0; t < this.colCnt; t += 1) e.push(this.cells[0][t].date);
                    return e
                }, e.prototype.sliceRange = function(e) {
                    var t = this.colCnt,
                        n = this.daySeries.sliceRange(e),
                        r = [];
                    if (n)
                        for (var o = n.firstIndex, i = n.lastIndex, a = o; a <= i;) {
                            var s = Math.floor(a / t),
                                l = Math.min((s + 1) * t, i + 1);
                            r.push({
                                row: s,
                                firstCol: a % t,
                                lastCol: (l - 1) % t,
                                isStart: n.isStart && a === o,
                                isEnd: n.isEnd && l - 1 === i
                            }), a = l
                        }
                    return r
                }, e
            }(),
            wi = function() {
                function e() {
                    this.sliceBusinessHours = ut(this._sliceBusinessHours), this.sliceDateSelection = ut(this._sliceDateSpan), this.sliceEventStore = ut(this._sliceEventStore), this.sliceEventDrag = ut(this._sliceInteraction), this.sliceEventResize = ut(this._sliceInteraction), this.forceDayIfListItem = !1
                }
                return e.prototype.sliceProps = function(e, t, n, r) {
                    for (var o = [], i = 4; i < arguments.length; i++) o[i - 4] = arguments[i];
                    var s = e.eventUiBases,
                        l = this.sliceEventStore.apply(this, a([e.eventStore, s, t, n], o));
                    return {
                        dateSelectionSegs: this.sliceDateSelection.apply(this, a([e.dateSelection, s, r], o)),
                        businessHourSegs: this.sliceBusinessHours.apply(this, a([e.businessHours, t, n, r], o)),
                        fgEventSegs: l.fg,
                        bgEventSegs: l.bg,
                        eventDrag: this.sliceEventDrag.apply(this, a([e.eventDrag, s, t, n], o)),
                        eventResize: this.sliceEventResize.apply(this, a([e.eventResize, s, t, n], o)),
                        eventSelection: e.eventSelection
                    }
                }, e.prototype.sliceNowDate = function(e, t) {
                    for (var n = [], r = 2; r < arguments.length; r++) n[r - 2] = arguments[r];
                    return this._sliceDateSpan.apply(this, a([{
                        range: {
                            start: e,
                            end: Ae(e, 1)
                        },
                        allDay: !1
                    }, {}, t], n))
                }, e.prototype._sliceBusinessHours = function(e, t, n, r) {
                    for (var o = [], i = 4; i < arguments.length; i++) o[i - 4] = arguments[i];
                    return e ? this._sliceEventStore.apply(this, a([Qe(e, Si(t, Boolean(n)), r), {}, t, n], o)).bg : []
                }, e.prototype._sliceEventStore = function(e, t, n, r) {
                    for (var o = [], i = 4; i < arguments.length; i++) o[i - 4] = arguments[i];
                    if (e) {
                        var a = fn(e, t, Si(n, Boolean(r)), r);
                        return {
                            bg: this.sliceEventRanges(a.bg, o),
                            fg: this.sliceEventRanges(a.fg, o)
                        }
                    }
                    return {
                        bg: [],
                        fg: []
                    }
                }, e.prototype._sliceInteraction = function(e, t, n, r) {
                    for (var o = [], i = 4; i < arguments.length; i++) o[i - 4] = arguments[i];
                    if (!e) return null;
                    var a = fn(e.mutatedEvents, t, Si(n, Boolean(r)), r);
                    return {
                        segs: this.sliceEventRanges(a.fg, o),
                        affectedInstances: e.affectedEvents.instances,
                        isEvent: e.isEvent
                    }
                }, e.prototype._sliceDateSpan = function(e, t, n) {
                    for (var r = [], o = 3; o < arguments.length; o++) r[o - 3] = arguments[o];
                    if (!e) return [];
                    for (var i = Tn(e, t, n), s = this.sliceRange.apply(this, a([e.range], r)), l = 0, c = s; l < c.length; l++) {
                        var u = c[l];
                        u.eventRange = i
                    }
                    return s
                }, e.prototype.sliceEventRanges = function(e, t) {
                    for (var n = [], r = 0, o = e; r < o.length; r++) {
                        var i = o[r];
                        n.push.apply(n, this.sliceEventRange(i, t))
                    }
                    return n
                }, e.prototype.sliceEventRange = function(e, t) {
                    var n = e.range;
                    this.forceDayIfListItem && "list-item" === e.ui.display && (n = {
                        start: n.start,
                        end: De(n.start, 1)
                    });
                    for (var r = this.sliceRange.apply(this, a([n], t)), o = 0, i = r; o < i.length; o++) {
                        var s = i[o];
                        s.eventRange = e, s.isStart = e.isStart && s.isStart, s.isEnd = e.isEnd && s.isEnd
                    }
                    return r
                }, e
            }();

        function Si(e, t) {
            var n = e.activeRange;
            return t ? n : {
                start: Ae(n.start, e.slotMinTime.milliseconds),
                end: Ae(n.end, e.slotMaxTime.milliseconds - 864e5)
            }
        }
        var Ei = /^(visible|hidden)$/,
            Di = function(e) {
                function t() {
                    var t = null !== e && e.apply(this, arguments) || this;
                    return t.handleEl = function(e) {
                        t.el = e, Hr(t.props.elRef, e)
                    }, t
                }
                return o(t, e), t.prototype.render = function() {
                    var e = this.props,
                        t = e.liquid,
                        n = e.liquidIsAbsolute,
                        r = t && n,
                        o = ["fc-scroller"];
                    return t && (n ? o.push("fc-scroller-liquid-absolute") : o.push("fc-scroller-liquid")), Y("div", {
                        ref: this.handleEl,
                        className: o.join(" "),
                        style: {
                            overflowX: e.overflowX,
                            overflowY: e.overflowY,
                            left: r && -(e.overcomeLeft || 0) || "",
                            right: r && -(e.overcomeRight || 0) || "",
                            bottom: r && -(e.overcomeBottom || 0) || "",
                            marginLeft: !r && -(e.overcomeLeft || 0) || "",
                            marginRight: !r && -(e.overcomeRight || 0) || "",
                            marginBottom: !r && -(e.overcomeBottom || 0) || "",
                            maxHeight: e.maxHeight || ""
                        }
                    }, e.children)
                }, t.prototype.needsXScrolling = function() {
                    if (Ei.test(this.props.overflowX)) return !1;
                    for (var e = this.el, t = this.el.getBoundingClientRect().width - this.getYScrollbarWidth(), n = e.children, r = 0; r < n.length; r += 1) {
                        if (n[r].getBoundingClientRect().width > t) return !0
                    }
                    return !1
                }, t.prototype.needsYScrolling = function() {
                    if (Ei.test(this.props.overflowY)) return !1;
                    for (var e = this.el, t = this.el.getBoundingClientRect().height - this.getXScrollbarWidth(), n = e.children, r = 0; r < n.length; r += 1) {
                        if (n[r].getBoundingClientRect().height > t) return !0
                    }
                    return !1
                }, t.prototype.getXScrollbarWidth = function() {
                    return Ei.test(this.props.overflowX) ? 0 : this.el.offsetHeight - this.el.clientHeight
                }, t.prototype.getYScrollbarWidth = function() {
                    return Ei.test(this.props.overflowY) ? 0 : this.el.offsetWidth - this.el.clientWidth
                }, t
            }(_r),
            Ai = function() {
                function e(e) {
                    var t = this;
                    this.masterCallback = e, this.currentMap = {}, this.depths = {}, this.callbackMap = {}, this.handleValue = function(e, n) {
                        var r = t,
                            o = r.depths,
                            i = r.currentMap,
                            a = !1,
                            s = !1;
                        null !== e ? (a = n in i, i[n] = e, o[n] = (o[n] || 0) + 1, s = !0) : (o[n] -= 1, o[n] || (delete i[n], delete t.callbackMap[n], a = !0)), t.masterCallback && (a && t.masterCallback(null, String(n)), s && t.masterCallback(e, String(n)))
                    }
                }
                return e.prototype.createRef = function(e) {
                    var t = this,
                        n = this.callbackMap[e];
                    return n || (n = this.callbackMap[e] = function(n) {
                        t.handleValue(n, String(e))
                    }), n
                }, e.prototype.collect = function(e, t, n) {
                    return qe(this.currentMap, e, t, n)
                }, e.prototype.getAll = function() {
                    return Fe(this.currentMap)
                }, e
            }();

        function Ci(e) {
            for (var t = 0, n = 0, r = re(e, ".fc-scrollgrid-shrink"); n < r.length; n++) {
                var o = r[n];
                t = Math.max(t, we(o))
            }
            return Math.ceil(t)
        }

        function Ri(e, t) {
            return e.liquid && t.liquid
        }

        function xi(e, t) {
            return null != t.maxHeight || Ri(e, t)
        }

        function ki(e, t, n) {
            var r = n.expandRows;
            return "function" == typeof t.content ? t.content(n) : Y("table", {
                className: [t.tableClassName, e.syncRowHeights ? "fc-scrollgrid-sync-table" : ""].join(" "),
                style: {
                    minWidth: n.tableMinWidth,
                    width: n.clientWidth,
                    height: r ? n.clientHeight : ""
                }
            }, n.tableColGroupNode, Y("tbody", {}, "function" == typeof t.rowContent ? t.rowContent(n) : t.rowContent))
        }

        function Ti(e, t) {
            return ct(e, t, Ve)
        }

        function Mi(e, t) {
            for (var n = [], r = 0, o = e; r < o.length; r++)
                for (var i = o[r], s = i.span || 1, l = 0; l < s; l += 1) n.push(Y("col", {
                    style: {
                        width: "shrink" === i.width ? Ii(t) : i.width || "",
                        minWidth: i.minWidth || ""
                    }
                }));
            return Y.apply(void 0, a(["colgroup", {}], n))
        }

        function Ii(e) {
            return null == e ? 4 : e
        }

        function _i(e) {
            for (var t = 0, n = e; t < n.length; t++) {
                if ("shrink" === n[t].width) return !0
            }
            return !1
        }

        function Ni(e, t) {
            var n = ["fc-scrollgrid", t.theme.getClass("table")];
            return e && n.push("fc-scrollgrid-liquid"), n
        }

        function Pi(e, t) {
            var n = ["fc-scrollgrid-section", "fc-scrollgrid-section-" + e.type, e.className];
            return t && e.liquid && null == e.maxHeight && n.push("fc-scrollgrid-section-liquid"), e.isSticky && n.push("fc-scrollgrid-section-sticky"), n
        }

        function Hi(e) {
            return Y("div", {
                className: "fc-scrollgrid-sticky-shim",
                style: {
                    width: e.clientWidth,
                    minWidth: e.tableMinWidth
                }
            })
        }

        function Oi(e) {
            var t = e.stickyHeaderDates;
            return null != t && "auto" !== t || (t = "auto" === e.height || "auto" === e.viewHeight), t
        }

        function zi(e) {
            var t = e.stickyFooterScrollbar;
            return null != t && "auto" !== t || (t = "auto" === e.height || "auto" === e.viewHeight), t
        }
        var Bi = function(e) {
            function t() {
                var t = null !== e && e.apply(this, arguments) || this;
                return t.processCols = ut((function(e) {
                    return e
                }), Ti), t.renderMicroColGroup = ut(Mi), t.scrollerRefs = new Ai, t.scrollerElRefs = new Ai(t._handleScrollerEl.bind(t)), t.state = {
                    shrinkWidth: null,
                    forceYScrollbars: !1,
                    scrollerClientWidths: {},
                    scrollerClientHeights: {}
                }, t.handleSizing = function() {
                    t.setState(i({
                        shrinkWidth: t.computeShrinkWidth()
                    }, t.computeScrollerDims()))
                }, t
            }
            return o(t, e), t.prototype.render = function() {
                for (var e, t = this.props, n = this.state, r = this.context, o = t.sections || [], i = this.processCols(t.cols), s = this.renderMicroColGroup(i, n.shrinkWidth), l = Ni(t.liquid, r), c = o.length, u = 0, d = [], f = [], p = []; u < c && "header" === (e = o[u]).type;) d.push(this.renderSection(e, s)), u += 1;
                for (; u < c && "body" === (e = o[u]).type;) f.push(this.renderSection(e, s)), u += 1;
                for (; u < c && "footer" === (e = o[u]).type;) p.push(this.renderSection(e, s)), u += 1;
                var h = !ar();
                return Y("table", {
                    className: l.join(" "),
                    style: {
                        height: t.height
                    }
                }, Boolean(!h && d.length) && Y.apply(void 0, a(["thead", {}], d)), Boolean(!h && f.length) && Y.apply(void 0, a(["tbody", {}], f)), Boolean(!h && p.length) && Y.apply(void 0, a(["tfoot", {}], p)), h && Y.apply(void 0, a(["tbody", {}], d, f, p)))
            }, t.prototype.renderSection = function(e, t) {
                return "outerContent" in e ? Y(Z, {
                    key: e.key
                }, e.outerContent) : Y("tr", {
                    key: e.key,
                    className: Pi(e, this.props.liquid).join(" ")
                }, this.renderChunkTd(e, t, e.chunk))
            }, t.prototype.renderChunkTd = function(e, t, n) {
                if ("outerContent" in n) return n.outerContent;
                var r = this.props,
                    o = this.state,
                    i = o.forceYScrollbars,
                    a = o.scrollerClientWidths,
                    s = o.scrollerClientHeights,
                    l = xi(r, e),
                    c = Ri(r, e),
                    u = r.liquid ? i ? "scroll" : l ? "auto" : "hidden" : "visible",
                    d = e.key,
                    f = ki(e, n, {
                        tableColGroupNode: t,
                        tableMinWidth: "",
                        clientWidth: void 0 !== a[d] ? a[d] : null,
                        clientHeight: void 0 !== s[d] ? s[d] : null,
                        expandRows: e.expandRows,
                        syncRowHeights: !1,
                        rowSyncHeights: [],
                        reportRowHeightChange: function() {}
                    });
                return Y("td", {
                    ref: n.elRef
                }, Y("div", {
                    className: "fc-scroller-harness" + (c ? " fc-scroller-harness-liquid" : "")
                }, Y(Di, {
                    ref: this.scrollerRefs.createRef(d),
                    elRef: this.scrollerElRefs.createRef(d),
                    overflowY: u,
                    overflowX: r.liquid ? "hidden" : "visible",
                    maxHeight: e.maxHeight,
                    liquid: c,
                    liquidIsAbsolute: !0
                }, f)))
            }, t.prototype._handleScrollerEl = function(e, t) {
                var n = function(e, t) {
                    for (var n = 0, r = e; n < r.length; n++) {
                        var o = r[n];
                        if (o.key === t) return o
                    }
                    return null
                }(this.props.sections, t);
                n && Hr(n.chunk.scrollerElRef, e)
            }, t.prototype.componentDidMount = function() {
                this.handleSizing(), this.context.addResizeHandler(this.handleSizing)
            }, t.prototype.componentDidUpdate = function() {
                this.handleSizing()
            }, t.prototype.componentWillUnmount = function() {
                this.context.removeResizeHandler(this.handleSizing)
            }, t.prototype.computeShrinkWidth = function() {
                return _i(this.props.cols) ? Ci(this.scrollerElRefs.getAll()) : 0
            }, t.prototype.computeScrollerDims = function() {
                var e = mr(),
                    t = this.scrollerRefs,
                    n = this.scrollerElRefs,
                    r = !1,
                    o = {},
                    i = {};
                for (var a in t.currentMap) {
                    var s = t.currentMap[a];
                    if (s && s.needsYScrolling()) {
                        r = !0;
                        break
                    }
                }
                for (var l = 0, c = this.props.sections; l < c.length; l++) {
                    a = c[l].key;
                    var u = n.currentMap[a];
                    if (u) {
                        var d = u.parentNode;
                        o[a] = Math.floor(d.getBoundingClientRect().width - (r ? e.y : 0)), i[a] = Math.floor(d.getBoundingClientRect().height)
                    }
                }
                return {
                    forceYScrollbars: r,
                    scrollerClientWidths: o,
                    scrollerClientHeights: i
                }
            }, t
        }(_r);
        Bi.addStateEquality({
            scrollerClientWidths: Ve,
            scrollerClientHeights: Ve
        });
        var Wi = function(e) {
                function t() {
                    var t = null !== e && e.apply(this, arguments) || this;
                    return t.elRef = Q(), t
                }
                return o(t, e), t.prototype.render = function() {
                    var e = this.props,
                        t = this.context,
                        n = t.options,
                        r = e.seg,
                        o = r.eventRange,
                        i = o.ui,
                        a = {
                            event: new Fn(t, o.def, o.instance),
                            view: t.viewApi,
                            timeText: e.timeText,
                            textColor: i.textColor,
                            backgroundColor: i.backgroundColor,
                            borderColor: i.borderColor,
                            isDraggable: !e.disableDragging && bn(r, t),
                            isStartResizable: !e.disableResizing && wn(r, t),
                            isEndResizable: !e.disableResizing && Sn(r),
                            isMirror: Boolean(e.isDragging || e.isResizing || e.isDateSelecting),
                            isStart: Boolean(r.isStart),
                            isEnd: Boolean(r.isEnd),
                            isPast: Boolean(e.isPast),
                            isFuture: Boolean(e.isFuture),
                            isToday: Boolean(e.isToday),
                            isSelected: Boolean(e.isSelected),
                            isDragging: Boolean(e.isDragging),
                            isResizing: Boolean(e.isResizing)
                        },
                        s = function(e) {
                            var t = ["fc-event"];
                            return e.isMirror && t.push("fc-event-mirror"), e.isDraggable && t.push("fc-event-draggable"), (e.isStartResizable || e.isEndResizable) && t.push("fc-event-resizable"), e.isDragging && t.push("fc-event-dragging"), e.isResizing && t.push("fc-event-resizing"), e.isSelected && t.push("fc-event-selected"), e.isStart && t.push("fc-event-start"), e.isEnd && t.push("fc-event-end"), e.isPast && t.push("fc-event-past"), e.isToday && t.push("fc-event-today"), e.isFuture && t.push("fc-event-future"), t
                        }(a).concat(i.classNames);
                    return Y(Jr, {
                        hookProps: a,
                        classNames: n.eventClassNames,
                        content: n.eventContent,
                        defaultContent: e.defaultContent,
                        didMount: n.eventDidMount,
                        willUnmount: n.eventWillUnmount,
                        elRef: this.elRef
                    }, (function(t, n, r, o) {
                        return e.children(t, s.concat(n), r, o, a)
                    }))
                }, t.prototype.componentDidMount = function() {
                    pn(this.elRef.current, this.props.seg)
                }, t.prototype.componentDidUpdate = function(e) {
                    var t = this.props.seg;
                    t !== e.seg && pn(this.elRef.current, t)
                }, t
            }(_r),
            Li = function(e) {
                function t() {
                    return null !== e && e.apply(this, arguments) || this
                }
                return o(t, e), t.prototype.render = function() {
                    var e = this.props,
                        t = this.context,
                        n = e.seg,
                        r = t.options.eventTimeFormat || e.defaultTimeFormat,
                        o = En(n, r, t, e.defaultDisplayEventTime, e.defaultDisplayEventEnd);
                    return Y(Wi, {
                        seg: n,
                        timeText: o,
                        disableDragging: e.disableDragging,
                        disableResizing: e.disableResizing,
                        defaultContent: e.defaultContent || Ui,
                        isDragging: e.isDragging,
                        isResizing: e.isResizing,
                        isDateSelecting: e.isDateSelecting,
                        isSelected: e.isSelected,
                        isPast: e.isPast,
                        isFuture: e.isFuture,
                        isToday: e.isToday
                    }, (function(t, r, o, a, s) {
                        return Y("a", i({
                            className: e.extraClassNames.concat(r).join(" "),
                            style: {
                                borderColor: s.borderColor,
                                backgroundColor: s.backgroundColor
                            },
                            ref: t
                        }, function(e) {
                            var t = e.eventRange.def.url;
                            return t ? {
                                href: t
                            } : {}
                        }(n)), Y("div", {
                            className: "fc-event-main",
                            ref: o,
                            style: {
                                color: s.textColor
                            }
                        }, a), s.isStartResizable && Y("div", {
                            className: "fc-event-resizer fc-event-resizer-start"
                        }), s.isEndResizable && Y("div", {
                            className: "fc-event-resizer fc-event-resizer-end"
                        }))
                    }))
                }, t
            }(_r);

        function Ui(e) {
            return Y("div", {
                className: "fc-event-main-frame"
            }, e.timeText && Y("div", {
                className: "fc-event-time"
            }, e.timeText), Y("div", {
                className: "fc-event-title-container"
            }, Y("div", {
                className: "fc-event-title fc-sticky"
            }, e.event.title || Y(Z, null, " "))))
        }
        var Fi = function(e) {
                return Y(Tr.Consumer, null, (function(t) {
                    var n = t.options,
                        r = {
                            isAxis: e.isAxis,
                            date: t.dateEnv.toDate(e.date),
                            view: t.viewApi
                        };
                    return Y(Jr, {
                        hookProps: r,
                        classNames: n.nowIndicatorClassNames,
                        content: n.nowIndicatorContent,
                        didMount: n.nowIndicatorDidMount,
                        willUnmount: n.nowIndicatorWillUnmount
                    }, e.children)
                }))
            },
            Vi = xt({
                day: "numeric"
            }),
            ji = function(e) {
                function t() {
                    return null !== e && e.apply(this, arguments) || this
                }
                return o(t, e), t.prototype.render = function() {
                    var e = this.props,
                        t = this.context,
                        n = t.options,
                        r = Gi({
                            date: e.date,
                            dateProfile: e.dateProfile,
                            todayRange: e.todayRange,
                            showDayNumber: e.showDayNumber,
                            extraProps: e.extraHookProps,
                            viewApi: t.viewApi,
                            dateEnv: t.dateEnv
                        });
                    return Y($r, {
                        hookProps: r,
                        content: n.dayCellContent,
                        defaultContent: e.defaultContent
                    }, e.children)
                }, t
            }(_r);

        function Gi(e) {
            var t = e.date,
                n = e.dateEnv,
                r = ur(t, e.todayRange, null, e.dateProfile);
            return i(i(i({
                date: n.toDate(t),
                view: e.viewApi
            }, r), {
                dayNumberText: e.showDayNumber ? n.format(t, Vi) : ""
            }), e.extraProps)
        }
        var Yi = function(e) {
            function t() {
                var t = null !== e && e.apply(this, arguments) || this;
                return t.refineHookProps = dt(Gi), t.normalizeClassNames = no(), t
            }
            return o(t, e), t.prototype.render = function() {
                var e = this.props,
                    t = this.context,
                    n = t.options,
                    r = this.refineHookProps({
                        date: e.date,
                        dateProfile: e.dateProfile,
                        todayRange: e.todayRange,
                        showDayNumber: e.showDayNumber,
                        extraProps: e.extraHookProps,
                        viewApi: t.viewApi,
                        dateEnv: t.dateEnv
                    }),
                    o = dr(r, t.theme).concat(r.isDisabled ? [] : this.normalizeClassNames(n.dayCellClassNames, r)),
                    i = r.isDisabled ? {} : {
                        "data-date": st(e.date)
                    };
                return Y(to, {
                    hookProps: r,
                    didMount: n.dayCellDidMount,
                    willUnmount: n.dayCellWillUnmount,
                    elRef: e.elRef
                }, (function(t) {
                    return e.children(t, o, i, r.isDisabled)
                }))
            }, t
        }(_r);

        function qi(e) {
            return Y("div", {
                className: "fc-" + e
            })
        }
        var Qi = function(e) {
            return Y(Wi, {
                defaultContent: Zi,
                seg: e.seg,
                timeText: "",
                disableDragging: !0,
                disableResizing: !0,
                isDragging: !1,
                isResizing: !1,
                isDateSelecting: !1,
                isSelected: !1,
                isPast: e.isPast,
                isFuture: e.isFuture,
                isToday: e.isToday
            }, (function(e, t, n, r, o) {
                return Y("div", {
                    ref: e,
                    className: ["fc-bg-event"].concat(t).join(" "),
                    style: {
                        backgroundColor: o.backgroundColor
                    }
                }, r)
            }))
        };

        function Zi(e) {
            return e.event.title && Y("div", {
                className: "fc-event-title"
            }, e.event.title)
        }
        var Xi = function(e) {
            return Y(Tr.Consumer, null, (function(t) {
                var n = t.dateEnv,
                    r = t.options,
                    o = e.date,
                    i = r.weekNumberFormat || e.defaultFormat,
                    a = n.computeWeekNumber(o),
                    s = n.format(o, i);
                return Y(Jr, {
                    hookProps: {
                        num: a,
                        text: s,
                        date: o
                    },
                    classNames: r.weekNumberClassNames,
                    content: r.weekNumberContent,
                    defaultContent: Ji,
                    didMount: r.weekNumberDidMount,
                    willUnmount: r.weekNumberWillUnmount
                }, e.children)
            }))
        };

        function Ji(e) {
            return e.text
        }
        var Ki = function(e) {
                function t(t, n) {
                    void 0 === n && (n = {});
                    var r = e.call(this) || this;
                    return r.isRendering = !1, r.isRendered = !1, r.currentClassNames = [], r.customContentRenderId = 0, r.handleAction = function(e) {
                        switch (e.type) {
                            case "SET_EVENT_DRAG":
                            case "SET_EVENT_RESIZE":
                                r.renderRunner.tryDrain()
                        }
                    }, r.handleData = function(e) {
                        r.currentData = e, r.renderRunner.request(e.calendarOptions.rerenderDelay)
                    }, r.handleRenderRequest = function() {
                        if (r.isRendering) {
                            r.isRendered = !0;
                            var e = r.currentData;
                            q(Y(ci, {
                                options: e.calendarOptions,
                                theme: e.theme,
                                emitter: e.emitter
                            }, (function(t, n, o, a) {
                                return r.setClassNames(t), r.setHeight(n), Y(Kr.Provider, {
                                    value: r.customContentRenderId
                                }, Y(ai, i({
                                    isHeightAuto: o,
                                    forPrint: a
                                }, e)))
                            })), r.el)
                        } else r.isRendered && (r.isRendered = !1, K(r.el), r.setClassNames([]), r.setHeight(""));
                        J()
                    }, r.el = t, r.renderRunner = new No(r.handleRenderRequest), new Oo({
                        optionOverrides: n,
                        calendarApi: r,
                        onAction: r.handleAction,
                        onData: r.handleData
                    }), r
                }
                return o(t, e), Object.defineProperty(t.prototype, "view", {
                    get: function() {
                        return this.currentData.viewApi
                    },
                    enumerable: !1,
                    configurable: !0
                }), t.prototype.render = function() {
                    var e = this.isRendering;
                    e ? this.customContentRenderId += 1 : this.isRendering = !0, this.renderRunner.request(), e && this.updateSize()
                }, t.prototype.destroy = function() {
                    this.isRendering && (this.isRendering = !1, this.renderRunner.request())
                }, t.prototype.updateSize = function() {
                    e.prototype.updateSize.call(this), J()
                }, t.prototype.batchRendering = function(e) {
                    this.renderRunner.pause("batchRendering"), e(), this.renderRunner.resume("batchRendering")
                }, t.prototype.pauseRendering = function() {
                    this.renderRunner.pause("pauseRendering")
                }, t.prototype.resumeRendering = function() {
                    this.renderRunner.resume("pauseRendering", !0)
                }, t.prototype.resetOptions = function(e, t) {
                    this.currentDataManager.resetOptions(e, t)
                }, t.prototype.setClassNames = function(e) {
                    if (!ct(e, this.currentClassNames)) {
                        for (var t = this.el.classList, n = 0, r = this.currentClassNames; n < r.length; n++) {
                            var o = r[n];
                            t.remove(o)
                        }
                        for (var i = 0, a = e; i < a.length; i++) {
                            o = a[i];
                            t.add(o)
                        }
                        this.currentClassNames = e
                    }
                }, t.prototype.setHeight = function(e) {
                    ae(this.el, "height", e)
                }, t
            }(Un),
            $i = n(137),
            ea = {
                insert: "head",
                singleton: !1
            },
            ta = (F()($i.a, ea), $i.a.locals, function(e) {
                function t() {
                    return null !== e && e.apply(this, arguments) || this
                }
                return o(t, e), t
            }(xr));
        /*!
		FullCalendar v5.5.1
		Docs & License: https://fullcalendar.io/
		(c) 2020 Adam Shaw
		*/
        ta.prototype.classes = {
            root: "fc-theme-bootstrap",
            table: "table-bordered",
            tableCellShaded: "table-active",
            buttonGroup: "btn-group",
            button: "btn btn-primary",
            buttonActive: "active",
            popover: "popover",
            popoverHeader: "popover-header",
            popoverContent: "popover-body"
        }, ta.prototype.baseIconClass = "fa", ta.prototype.iconClasses = {
            close: "fa-times",
            prev: "fa-chevron-left",
            next: "fa-chevron-right",
            prevYear: "fa-angle-double-left",
            nextYear: "fa-angle-double-right"
        }, ta.prototype.rtlIconClasses = {
            prev: "fa-chevron-right",
            next: "fa-chevron-left",
            prevYear: "fa-angle-double-right",
            nextYear: "fa-angle-double-left"
        }, ta.prototype.iconOverrideOption = "bootstrapFontAwesome", ta.prototype.iconOverrideCustomButtonOption = "bootstrapFontAwesome", ta.prototype.iconOverridePrefix = "fa-";
        var na = qr({
                themeClasses: {
                    bootstrap: ta
                }
            }),
            ra = n(138),
            oa = {
                insert: "head",
                singleton: !1
            },
            ia = (F()(ra.a, oa), ra.a.locals, function(e) {
                function t() {
                    var t = null !== e && e.apply(this, arguments) || this;
                    return t.headerElRef = Q(), t
                }
                return o(t, e), t.prototype.renderSimpleLayout = function(e, t) {
                    var n = this.props,
                        r = this.context,
                        o = [],
                        i = Oi(r.options);
                    return e && o.push({
                        type: "header",
                        key: "header",
                        isSticky: i,
                        chunk: {
                            elRef: this.headerElRef,
                            tableClassName: "fc-col-header",
                            rowContent: e
                        }
                    }), o.push({
                        type: "body",
                        key: "body",
                        liquid: !0,
                        chunk: {
                            content: t
                        }
                    }), Y(io, {
                        viewSpec: r.viewSpec
                    }, (function(e, t) {
                        return Y("div", {
                            ref: e,
                            className: ["fc-daygrid"].concat(t).join(" ")
                        }, Y(Bi, {
                            liquid: !n.isHeightAuto && !n.forPrint,
                            cols: [],
                            sections: o
                        }))
                    }))
                }, t.prototype.renderHScrollLayout = function(e, t, n, r) {
                    var o = this.context.pluginHooks.scrollGridImpl;
                    if (!o) throw new Error("No ScrollGrid implementation");
                    var i = this.props,
                        a = this.context,
                        s = !i.forPrint && Oi(a.options),
                        l = !i.forPrint && zi(a.options),
                        c = [];
                    return e && c.push({
                        type: "header",
                        key: "header",
                        isSticky: s,
                        chunks: [{
                            key: "main",
                            elRef: this.headerElRef,
                            tableClassName: "fc-col-header",
                            rowContent: e
                        }]
                    }), c.push({
                        type: "body",
                        key: "body",
                        liquid: !0,
                        chunks: [{
                            key: "main",
                            content: t
                        }]
                    }), l && c.push({
                        type: "footer",
                        key: "footer",
                        isSticky: !0,
                        chunks: [{
                            key: "main",
                            content: Hi
                        }]
                    }), Y(io, {
                        viewSpec: a.viewSpec
                    }, (function(e, t) {
                        return Y("div", {
                            ref: e,
                            className: ["fc-daygrid"].concat(t).join(" ")
                        }, Y(o, {
                            liquid: !i.isHeightAuto && !i.forPrint,
                            colGroups: [{
                                cols: [{
                                    span: n,
                                    minWidth: r
                                }]
                            }],
                            sections: c
                        }))
                    }))
                }, t
            }(Yr));

        function aa(e, t) {
            for (var n = [], r = 0; r < t; r += 1) n[r] = [];
            for (var o = 0, i = e; o < i.length; o++) {
                var a = i[o];
                n[a.row].push(a)
            }
            return n
        }

        function sa(e, t) {
            for (var n = [], r = 0; r < t; r += 1) n[r] = [];
            for (var o = 0, i = e; o < i.length; o++) {
                var a = i[o];
                n[a.firstCol].push(a)
            }
            return n
        }

        function la(e, t) {
            var n = [];
            if (e) {
                for (a = 0; a < t; a += 1) n[a] = {
                    affectedInstances: e.affectedInstances,
                    isEvent: e.isEvent,
                    segs: []
                };
                for (var r = 0, o = e.segs; r < o.length; r++) {
                    var i = o[r];
                    n[i.row].segs.push(i)
                }
            } else
                for (var a = 0; a < t; a += 1) n[a] = null;
            return n
        }
        var ca = function(e) {
            function t() {
                return null !== e && e.apply(this, arguments) || this
            }
            return o(t, e), t.prototype.render = function() {
                var e = this.props,
                    t = this.context.options.navLinks ? {
                        "data-navlink": pr(e.date),
                        tabIndex: 0
                    } : {};
                return Y(ji, {
                    date: e.date,
                    dateProfile: e.dateProfile,
                    todayRange: e.todayRange,
                    showDayNumber: e.showDayNumber,
                    extraHookProps: e.extraHookProps,
                    defaultContent: ua
                }, (function(n, r) {
                    return (r || e.forceDayTop) && Y("div", {
                        className: "fc-daygrid-day-top",
                        ref: n
                    }, Y("a", i({
                        className: "fc-daygrid-day-number"
                    }, t), r || Y(Z, null, " ")))
                }))
            }, t
        }(_r);

        function ua(e) {
            return e.dayNumberText
        }
        var da = xt({
                week: "narrow"
            }),
            fa = function(e) {
                function t() {
                    var t = null !== e && e.apply(this, arguments) || this;
                    return t.handleRootEl = function(e) {
                        t.rootEl = e, Hr(t.props.elRef, e)
                    }, t.handleMoreLinkClick = function(e) {
                        var n = t.props;
                        if (n.onMoreClick) {
                            var r = n.segsByEachCol,
                                o = r.filter((function(e) {
                                    return n.segIsHidden[e.eventRange.instance.instanceId]
                                }));
                            n.onMoreClick({
                                date: n.date,
                                allSegs: r,
                                hiddenSegs: o,
                                moreCnt: n.moreCnt,
                                dayEl: t.rootEl,
                                ev: e
                            })
                        }
                    }, t
                }
                return o(t, e), t.prototype.render = function() {
                    var e = this,
                        t = this.context,
                        n = t.options,
                        r = t.viewApi,
                        o = this.props,
                        a = o.date,
                        s = o.dateProfile,
                        l = {
                            num: o.moreCnt,
                            text: o.buildMoreLinkText(o.moreCnt),
                            view: r
                        },
                        c = n.navLinks ? {
                            "data-navlink": pr(a, "week"),
                            tabIndex: 0
                        } : {};
                    return Y(Yi, {
                        date: a,
                        dateProfile: s,
                        todayRange: o.todayRange,
                        showDayNumber: o.showDayNumber,
                        extraHookProps: o.extraHookProps,
                        elRef: this.handleRootEl
                    }, (function(t, r, u, d) {
                        return Y("td", i({
                            ref: t,
                            className: ["fc-daygrid-day"].concat(r, o.extraClassNames || []).join(" ")
                        }, u, o.extraDataAttrs), Y("div", {
                            className: "fc-daygrid-day-frame fc-scrollgrid-sync-inner",
                            ref: o.innerElRef
                        }, o.showWeekNumber && Y(Xi, {
                            date: a,
                            defaultFormat: da
                        }, (function(e, t, n, r) {
                            return Y("a", i({
                                ref: e,
                                className: ["fc-daygrid-week-number"].concat(t).join(" ")
                            }, c), r)
                        })), !d && Y(ca, {
                            date: a,
                            dateProfile: s,
                            showDayNumber: o.showDayNumber,
                            forceDayTop: o.forceDayTop,
                            todayRange: o.todayRange,
                            extraHookProps: o.extraHookProps
                        }), Y("div", {
                            className: "fc-daygrid-day-events",
                            ref: o.fgContentElRef,
                            style: {
                                paddingBottom: o.fgPaddingBottom
                            }
                        }, o.fgContent, Boolean(o.moreCnt) && Y("div", {
                            className: "fc-daygrid-day-bottom",
                            style: {
                                marginTop: o.moreMarginTop
                            }
                        }, Y(Jr, {
                            hookProps: l,
                            classNames: n.moreLinkClassNames,
                            content: n.moreLinkContent,
                            defaultContent: pa,
                            didMount: n.moreLinkDidMount,
                            willUnmount: n.moreLinkWillUnmount
                        }, (function(t, n, r, o) {
                            return Y("a", {
                                ref: t,
                                className: ["fc-daygrid-more-link"].concat(n).join(" "),
                                onClick: e.handleMoreLinkClick
                            }, o)
                        })))), Y("div", {
                            className: "fc-daygrid-day-bg"
                        }, o.bgContent)))
                    }))
                }, t
            }(Yr);

        function pa(e) {
            return e.text
        }
        fa.addPropsEquality({
            onMoreClick: !0
        });
        var ha = xt({
            hour: "numeric",
            minute: "2-digit",
            omitZeroMinute: !0,
            meridiem: "narrow"
        });

        function ga(e) {
            var t = e.eventRange.ui.display;
            return "list-item" === t || "auto" === t && !e.eventRange.def.allDay && e.firstCol === e.lastCol && e.isStart && e.isEnd
        }
        var va = function(e) {
            function t() {
                return null !== e && e.apply(this, arguments) || this
            }
            return o(t, e), t.prototype.render = function() {
                var e = this.props,
                    t = this.context,
                    n = t.options.eventTimeFormat || ha,
                    r = En(e.seg, n, t, !0, e.defaultDisplayEventEnd);
                return Y(Wi, {
                    seg: e.seg,
                    timeText: r,
                    defaultContent: ma,
                    isDragging: e.isDragging,
                    isResizing: !1,
                    isDateSelecting: !1,
                    isSelected: e.isSelected,
                    isPast: e.isPast,
                    isFuture: e.isFuture,
                    isToday: e.isToday
                }, (function(t, n, r, o) {
                    return Y("a", i({
                        className: ["fc-daygrid-event", "fc-daygrid-dot-event"].concat(n).join(" "),
                        ref: t
                    }, (a = e.seg, (s = a.eventRange.def.url) ? {
                        href: s
                    } : {})), o);
                    var a, s
                }))
            }, t
        }(_r);

        function ma(e) {
            return Y(Z, null, Y("div", {
                className: "fc-daygrid-event-dot",
                style: {
                    borderColor: e.borderColor || e.backgroundColor
                }
            }), e.timeText && Y("div", {
                className: "fc-event-time"
            }, e.timeText), Y("div", {
                className: "fc-event-title"
            }, e.event.title || Y(Z, null, " ")))
        }
        var ya = function(e) {
            function t() {
                return null !== e && e.apply(this, arguments) || this
            }
            return o(t, e), t.prototype.render = function() {
                var e = this.props;
                return Y(Li, i({}, e, {
                    extraClassNames: ["fc-daygrid-event", "fc-daygrid-block-event", "fc-h-event"],
                    defaultTimeFormat: ha,
                    defaultDisplayEventEnd: e.defaultDisplayEventEnd,
                    disableResizing: !e.seg.eventRange.def.allDay
                }))
            }, t
        }(_r);

        function ba(e, t, n, r, o, a, s, l) {
            for (var c = [], u = [], d = {}, f = {}, p = {}, h = {}, g = {}, v = 0; v < s; v += 1) c.push([]), u.push(0);
            for (var m = 0, y = t = mn(t, l); m < y.length; m++) {
                R(A = y[m], o[A.eventRange.instance.instanceId + ":" + A.firstCol] || 0)
            }!0 === n || !0 === r ? function(e, t, n, r) {
                Sa(e, t, n, !0, (function(e) {
                    return e.bottom <= r
                }))
            }(u, d, c, a) : "number" == typeof n ? function(e, t, n, r) {
                Sa(e, t, n, !1, (function(e, t) {
                    return t < r
                }))
            }(u, d, c, n) : "number" == typeof r && function(e, t, n, r) {
                Sa(e, t, n, !0, (function(e, t) {
                    return t < r
                }))
            }(u, d, c, r);
            for (var b = 0; b < s; b += 1) {
                for (var w = 0, S = 0, E = 0, D = c[b]; E < D.length; E++) {
                    var A, C = D[E];
                    d[(A = C.seg).eventRange.instance.instanceId] || (f[A.eventRange.instance.instanceId] = C.top, A.firstCol === A.lastCol && A.isStart && A.isEnd ? (p[A.eventRange.instance.instanceId] = C.top - w, S = 0, w = C.bottom) : S = C.bottom - w)
                }
                S && (u[b] ? h[b] = S : g[b] = S)
            }

            function R(e, t) {
                if (!x(e, t, 0))
                    for (var n = e.firstCol; n <= e.lastCol; n += 1)
                        for (var r = 0, o = c[n]; r < o.length; r++) {
                            if (x(e, t, o[r].bottom)) return
                        }
            }

            function x(e, t, n) {
                if (function(e, t, n) {
                    for (var r = e.firstCol; r <= e.lastCol; r += 1)
                        for (var o = 0, i = c[r]; o < i.length; o++) {
                            var a = i[o];
                            if (n < a.bottom && n + t > a.top) return !1
                        }
                    return !0
                }(e, t, n)) {
                    for (var r = e.firstCol; r <= e.lastCol; r += 1) {
                        for (var o = c[r], i = 0; i < o.length && n >= o[i].top;) i += 1;
                        o.splice(i, 0, {
                            seg: e,
                            top: n,
                            bottom: n + t
                        })
                    }
                    return !0
                }
                return !1
            }
            for (var k in o) o[k] || (d[k.split(":")[0]] = !0);
            return {
                segsByFirstCol: c.map(wa),
                segsByEachCol: c.map((function(t, n) {
                    var r = function(e) {
                        for (var t = [], n = 0, r = e; n < r.length; n++) {
                            var o = r[n];
                            t.push(o.seg)
                        }
                        return t
                    }(t);
                    return r = function(e, t, n) {
                        for (var r = t, o = De(r, 1), a = {
                            start: r,
                            end: o
                        }, s = [], l = 0, c = e; l < c.length; l++) {
                            var u = c[l],
                                d = u.eventRange,
                                f = d.range,
                                p = ln(f, a);
                            p && s.push(i(i({}, u), {
                                firstCol: n,
                                lastCol: n,
                                eventRange: {
                                    def: d.def,
                                    ui: i(i({}, d.ui), {
                                        durationEditable: !1
                                    }),
                                    instance: d.instance,
                                    range: p
                                },
                                isStart: u.isStart && p.start.valueOf() === f.start.valueOf(),
                                isEnd: u.isEnd && p.end.valueOf() === f.end.valueOf()
                            }))
                        }
                        return s
                    }(r, e[n].date, n)
                })),
                segIsHidden: d,
                segTops: f,
                segMarginTops: p,
                moreCnts: u,
                moreTops: h,
                paddingBottoms: g
            }
        }

        function wa(e, t) {
            for (var n = [], r = 0, o = e; r < o.length; r++) {
                var i = o[r];
                i.seg.firstCol === t && n.push(i.seg)
            }
            return n
        }

        function Sa(e, t, n, r, o) {
            for (var i = e.length, a = {}, s = [], l = 0; l < i; l += 1) s.push([]);
            for (l = 0; l < i; l += 1)
                for (var c = 0, u = 0, d = n[l]; u < d.length; u++) {
                    var f = d[u];
                    o(f, c) ? p(f) : h(f, c, r), f.top !== f.bottom && (c += 1)
                }

            function p(e) {
                var t = e.seg,
                    n = t.eventRange.instance.instanceId;
                if (!a[n]) {
                    a[n] = !0;
                    for (var r = t.firstCol; r <= t.lastCol; r += 1) {
                        for (var o = s[r], i = 0; i < o.length && e.top >= o[i].top;) i += 1;
                        o.splice(i, 0, e)
                    }
                }
            }

            function h(n, r, o) {
                var i = n.seg,
                    a = i.eventRange.instance.instanceId;
                if (!t[a]) {
                    t[a] = !0;
                    for (var l = i.firstCol; l <= i.lastCol; l += 1) {
                        e[l] += 1;
                        var c = e[l];
                        if (o && 1 === c && r > 0)
                            for (var u = r - 1; s[l].length > u;) h(s[l].pop(), s[l].length, !1)
                    }
                }
            }
        }
        var Ea = function(e) {
            function t() {
                var t = null !== e && e.apply(this, arguments) || this;
                return t.cellElRefs = new Ai, t.frameElRefs = new Ai, t.fgElRefs = new Ai, t.segHarnessRefs = new Ai, t.rootElRef = Q(), t.state = {
                    framePositions: null,
                    maxContentHeight: null,
                    segHeights: {}
                }, t
            }
            return o(t, e), t.prototype.render = function() {
                var e = this,
                    t = this.props,
                    n = this.state,
                    r = this.context,
                    o = t.cells.length,
                    a = sa(t.businessHourSegs, o),
                    s = sa(t.bgEventSegs, o),
                    l = sa(this.getHighlightSegs(), o),
                    c = sa(this.getMirrorSegs(), o),
                    u = ba(t.cells, t.fgEventSegs, t.dayMaxEvents, t.dayMaxEventRows, n.segHeights, n.maxContentHeight, o, r.options.eventOrder),
                    d = u.paddingBottoms,
                    f = u.segsByFirstCol,
                    p = u.segsByEachCol,
                    h = u.segIsHidden,
                    g = u.segTops,
                    v = u.segMarginTops,
                    m = u.moreCnts,
                    y = u.moreTops,
                    b = t.eventDrag && t.eventDrag.affectedInstances || t.eventResize && t.eventResize.affectedInstances || {};
                return Y("tr", {
                    ref: this.rootElRef
                }, t.renderIntro && t.renderIntro(), t.cells.map((function(n, r) {
                    var o = e.renderFgSegs(f[r], h, g, v, b, t.todayRange),
                        u = e.renderFgSegs(c[r], {}, g, {}, {}, t.todayRange, Boolean(t.eventDrag), Boolean(t.eventResize), !1);
                    return Y(fa, {
                        key: n.key,
                        elRef: e.cellElRefs.createRef(n.key),
                        innerElRef: e.frameElRefs.createRef(n.key),
                        dateProfile: t.dateProfile,
                        date: n.date,
                        showDayNumber: t.showDayNumbers,
                        showWeekNumber: t.showWeekNumbers && 0 === r,
                        forceDayTop: t.showWeekNumbers,
                        todayRange: t.todayRange,
                        extraHookProps: n.extraHookProps,
                        extraDataAttrs: n.extraDataAttrs,
                        extraClassNames: n.extraClassNames,
                        moreCnt: m[r],
                        buildMoreLinkText: t.buildMoreLinkText,
                        onMoreClick: function(e) {
                            t.onMoreClick(i(i({}, e), {
                                fromCol: r
                            }))
                        },
                        segIsHidden: h,
                        moreMarginTop: y[r],
                        segsByEachCol: p[r],
                        fgPaddingBottom: d[r],
                        fgContentElRef: e.fgElRefs.createRef(n.key),
                        fgContent: Y(Z, null, Y(Z, null, o), Y(Z, null, u)),
                        bgContent: Y(Z, null, e.renderFillSegs(l[r], "highlight"), e.renderFillSegs(a[r], "non-business"), e.renderFillSegs(s[r], "bg-event"))
                    })
                })))
            }, t.prototype.componentDidMount = function() {
                this.updateSizing(!0)
            }, t.prototype.componentDidUpdate = function(e, t) {
                var n = this.props;
                this.updateSizing(!Ve(e, n))
            }, t.prototype.getHighlightSegs = function() {
                var e = this.props;
                return e.eventDrag && e.eventDrag.segs.length ? e.eventDrag.segs : e.eventResize && e.eventResize.segs.length ? e.eventResize.segs : e.dateSelectionSegs
            }, t.prototype.getMirrorSegs = function() {
                var e = this.props;
                return e.eventResize && e.eventResize.segs.length ? e.eventResize.segs : []
            }, t.prototype.renderFgSegs = function(e, t, n, r, o, a, s, l, c) {
                var u = this.context,
                    d = this.props.eventSelection,
                    f = this.state.framePositions,
                    p = 1 === this.props.cells.length,
                    h = [];
                if (f)
                    for (var g = 0, v = e; g < v.length; g++) {
                        var m = v[g],
                            y = m.eventRange.instance.instanceId,
                            b = s || l || c,
                            w = o[y],
                            S = t[y] || w,
                            E = t[y] || b || m.firstCol !== m.lastCol || !m.isStart || !m.isEnd,
                            D = void 0,
                            A = void 0,
                            C = void 0,
                            R = void 0;
                        E ? (A = n[y], u.isRtl ? (R = 0, C = f.lefts[m.lastCol] - f.lefts[m.firstCol]) : (C = 0, R = f.rights[m.firstCol] - f.rights[m.lastCol])) : D = r[y], h.push(Y("div", {
                            className: "fc-daygrid-event-harness" + (E ? " fc-daygrid-event-harness-abs" : ""),
                            key: y,
                            ref: b ? null : this.segHarnessRefs.createRef(y + ":" + m.firstCol),
                            style: {
                                visibility: S ? "hidden" : "",
                                marginTop: D || "",
                                top: A || "",
                                left: C || "",
                                right: R || ""
                            }
                        }, ga(m) ? Y(va, i({
                            seg: m,
                            isDragging: s,
                            isSelected: y === d,
                            defaultDisplayEventEnd: p
                        }, Dn(m, a))) : Y(ya, i({
                            seg: m,
                            isDragging: s,
                            isResizing: l,
                            isDateSelecting: c,
                            isSelected: y === d,
                            defaultDisplayEventEnd: p
                        }, Dn(m, a)))))
                    }
                return h
            }, t.prototype.renderFillSegs = function(e, t) {
                var n = this.context.isRtl,
                    r = this.props.todayRange,
                    o = this.state.framePositions,
                    s = [];
                if (o)
                    for (var l = 0, c = e; l < c.length; l++) {
                        var u = c[l],
                            d = n ? {
                                right: 0,
                                left: o.lefts[u.lastCol] - o.lefts[u.firstCol]
                            } : {
                                left: 0,
                                right: o.rights[u.firstCol] - o.rights[u.lastCol]
                            };
                        s.push(Y("div", {
                            key: An(u.eventRange),
                            className: "fc-daygrid-bg-harness",
                            style: d
                        }, "bg-event" === t ? Y(Qi, i({
                            seg: u
                        }, Dn(u, r))) : qi(t)))
                    }
                return Y.apply(void 0, a([Z, {}], s))
            }, t.prototype.updateSizing = function(e) {
                var t = this.props,
                    n = this.frameElRefs;
                if (null !== t.clientWidth) {
                    if (e) {
                        var r = t.cells.map((function(e) {
                            return n.currentMap[e.key]
                        }));
                        if (r.length) {
                            var o = this.rootElRef.current;
                            this.setState({
                                framePositions: new Dr(o, r, !0, !1)
                            })
                        }
                    }
                    var i = !0 === t.dayMaxEvents || !0 === t.dayMaxEventRows;
                    this.setState({
                        segHeights: this.computeSegHeights(),
                        maxContentHeight: i ? this.computeMaxContentHeight() : null
                    })
                }
            }, t.prototype.computeSegHeights = function() {
                return Le(this.segHarnessRefs.currentMap, (function(e) {
                    return e.getBoundingClientRect().height
                }))
            }, t.prototype.computeMaxContentHeight = function() {
                var e = this.props.cells[0].key,
                    t = this.cellElRefs.currentMap[e],
                    n = this.fgElRefs.currentMap[e];
                return t.getBoundingClientRect().bottom - n.getBoundingClientRect().top
            }, t.prototype.getCellEls = function() {
                var e = this.cellElRefs.currentMap;
                return this.props.cells.map((function(t) {
                    return e[t.key]
                }))
            }, t
        }(Yr);
        Ea.addPropsEquality({
            onMoreClick: !0
        }), Ea.addStateEquality({
            segHeights: Ve
        });
        var Da = function(e) {
                function t() {
                    var t = null !== e && e.apply(this, arguments) || this;
                    return t.repositioner = new No(t.updateSize.bind(t)), t.handleRootEl = function(e) {
                        t.rootEl = e, t.props.elRef && Hr(t.props.elRef, e)
                    }, t.handleDocumentMousedown = function(e) {
                        var n = t.props.onClose;
                        n && !t.rootEl.contains(e.target) && n()
                    }, t.handleDocumentScroll = function() {
                        t.repositioner.request(10)
                    }, t.handleCloseClick = function() {
                        var e = t.props.onClose;
                        e && e()
                    }, t
                }
                return o(t, e), t.prototype.render = function() {
                    var e = this.context.theme,
                        t = this.props,
                        n = ["fc-popover", e.getClass("popover")].concat(t.extraClassNames || []);
                    return Y("div", i({
                        className: n.join(" ")
                    }, t.extraAttrs, {
                        ref: this.handleRootEl
                    }), Y("div", {
                        className: "fc-popover-header " + e.getClass("popoverHeader")
                    }, Y("span", {
                        className: "fc-popover-title"
                    }, t.title), Y("span", {
                        className: "fc-popover-close " + e.getIconClass("close"),
                        onClick: this.handleCloseClick
                    })), Y("div", {
                        className: "fc-popover-body " + e.getClass("popoverContent")
                    }, t.children))
                }, t.prototype.componentDidMount = function() {
                    document.addEventListener("mousedown", this.handleDocumentMousedown), document.addEventListener("scroll", this.handleDocumentScroll), this.updateSize()
                }, t.prototype.componentWillUnmount = function() {
                    document.removeEventListener("mousedown", this.handleDocumentMousedown), document.removeEventListener("scroll", this.handleDocumentScroll)
                }, t.prototype.updateSize = function() {
                    var e = this.props,
                        t = e.alignmentEl,
                        n = e.topAlignmentEl,
                        r = this.rootEl;
                    if (r) {
                        var o, i = r.getBoundingClientRect(),
                            a = t.getBoundingClientRect(),
                            s = n ? n.getBoundingClientRect().top : a.top;
                        s = Math.min(s, window.innerHeight - i.height - 10), s = Math.max(s, 10), o = this.context.isRtl ? a.right - i.width : a.left, o = Math.min(o, window.innerWidth - i.width - 10), ie(r, {
                            top: s,
                            left: o = Math.max(o, 10)
                        })
                    }
                }, t
            }(_r),
            Aa = function(e) {
                function t() {
                    var t = null !== e && e.apply(this, arguments) || this;
                    return t.rootElRef = Q(), t
                }
                return o(t, e), t.prototype.render = function() {
                    var e = this.context,
                        t = e.options,
                        n = e.dateEnv,
                        r = this.props,
                        o = r.date,
                        a = r.hiddenInstances,
                        s = r.todayRange,
                        l = r.dateProfile,
                        c = r.selectedInstanceId,
                        u = n.format(o, t.dayPopoverFormat);
                    return Y(Yi, {
                        date: o,
                        dateProfile: l,
                        todayRange: s,
                        elRef: this.rootElRef
                    }, (function(e, t, n) {
                        return Y(Da, {
                            elRef: e,
                            title: u,
                            extraClassNames: ["fc-more-popover"].concat(t),
                            extraAttrs: n,
                            onClose: r.onCloseClick,
                            alignmentEl: r.alignmentEl,
                            topAlignmentEl: r.topAlignmentEl
                        }, Y(ji, {
                            date: o,
                            dateProfile: l,
                            todayRange: s
                        }, (function(e, t) {
                            return t && Y("div", {
                                className: "fc-more-popover-misc",
                                ref: e
                            }, t)
                        })), r.segs.map((function(e) {
                            var t = e.eventRange.instance.instanceId;
                            return Y("div", {
                                className: "fc-daygrid-event-harness",
                                key: t,
                                style: {
                                    visibility: a[t] ? "hidden" : ""
                                }
                            }, ga(e) ? Y(va, i({
                                seg: e,
                                isDragging: !1,
                                isSelected: t === c,
                                defaultDisplayEventEnd: !1
                            }, Dn(e, s))) : Y(ya, i({
                                seg: e,
                                isDragging: !1,
                                isResizing: !1,
                                isDateSelecting: !1,
                                isSelected: t === c,
                                defaultDisplayEventEnd: !1
                            }, Dn(e, s))))
                        })))
                    }))
                }, t.prototype.positionToHit = function(e, t, n) {
                    var r = this.rootElRef.current;
                    if (!n || !r) return null;
                    var o = n.getBoundingClientRect(),
                        i = r.getBoundingClientRect(),
                        a = i.left - o.left,
                        s = i.top - o.top,
                        l = e - a,
                        c = t - s,
                        u = this.props.date;
                    return l >= 0 && l < i.width && c >= 0 && c < i.height ? {
                        dateSpan: {
                            allDay: !0,
                            range: {
                                start: u,
                                end: De(u, 1)
                            }
                        },
                        dayEl: r,
                        relativeRect: {
                            left: a,
                            top: s,
                            right: i.width,
                            bottom: i.height
                        },
                        layer: 1
                    } : null
                }, t
            }(Yr),
            Ca = function(e) {
                function t() {
                    var t = null !== e && e.apply(this, arguments) || this;
                    return t.splitBusinessHourSegs = ut(aa), t.splitBgEventSegs = ut(aa), t.splitFgEventSegs = ut(aa), t.splitDateSelectionSegs = ut(aa), t.splitEventDrag = ut(la), t.splitEventResize = ut(la), t.buildBuildMoreLinkText = ut(Ra), t.morePopoverRef = Q(), t.rowRefs = new Ai, t.state = {
                        morePopoverState: null
                    }, t.handleRootEl = function(e) {
                        t.rootEl = e, Hr(t.props.elRef, e)
                    }, t.handleMoreLinkClick = function(e) {
                        var n = t.context,
                            r = n.dateEnv,
                            o = n.options.moreLinkClick;

                        function a(e) {
                            var t = e.eventRange,
                                o = t.def,
                                i = t.instance,
                                a = t.range;
                            return {
                                event: new Fn(n, o, i),
                                start: r.toDate(a.start),
                                end: r.toDate(a.end),
                                isStart: e.isStart,
                                isEnd: e.isEnd
                            }
                        }
                        "function" == typeof o && (o = o({
                            date: r.toDate(e.date),
                            allDay: !0,
                            allSegs: e.allSegs.map(a),
                            hiddenSegs: e.hiddenSegs.map(a),
                            jsEvent: e.ev,
                            view: n.viewApi
                        })), o && "popover" !== o ? "string" == typeof o && n.calendarApi.zoomTo(e.date, o) : t.setState({
                            morePopoverState: i(i({}, e), {
                                currentFgEventSegs: t.props.fgEventSegs,
                                fromRow: e.fromRow,
                                fromCol: e.fromCol
                            })
                        })
                    }, t.handleMorePopoverClose = function() {
                        t.setState({
                            morePopoverState: null
                        })
                    }, t
                }
                return o(t, e), t.prototype.render = function() {
                    var e = this,
                        t = this.props,
                        n = t.dateProfile,
                        r = t.dayMaxEventRows,
                        o = t.dayMaxEvents,
                        a = t.expandRows,
                        s = this.state.morePopoverState,
                        l = t.cells.length,
                        c = this.splitBusinessHourSegs(t.businessHourSegs, l),
                        u = this.splitBgEventSegs(t.bgEventSegs, l),
                        d = this.splitFgEventSegs(t.fgEventSegs, l),
                        f = this.splitDateSelectionSegs(t.dateSelectionSegs, l),
                        p = this.splitEventDrag(t.eventDrag, l),
                        h = this.splitEventResize(t.eventResize, l),
                        g = this.buildBuildMoreLinkText(this.context.options.moreLinkText),
                        v = !0 === o || !0 === r;
                    return v && !a && (v = !1, r = null, o = null), Y("div", {
                        className: ["fc-daygrid-body", v ? "fc-daygrid-body-balanced" : "fc-daygrid-body-unbalanced", a ? "" : "fc-daygrid-body-natural"].join(" "),
                        ref: this.handleRootEl,
                        style: {
                            width: t.clientWidth,
                            minWidth: t.tableMinWidth
                        }
                    }, Y(hi, {
                        unit: "day"
                    }, (function(v, m) {
                        return Y(Z, null, Y("table", {
                            className: "fc-scrollgrid-sync-table",
                            style: {
                                width: t.clientWidth,
                                minWidth: t.tableMinWidth,
                                height: a ? t.clientHeight : ""
                            }
                        }, t.colGroupNode, Y("tbody", null, t.cells.map((function(a, s) {
                            return Y(Ea, {
                                ref: e.rowRefs.createRef(s),
                                key: a.length ? a[0].date.toISOString() : s,
                                showDayNumbers: l > 1,
                                showWeekNumbers: t.showWeekNumbers,
                                todayRange: m,
                                dateProfile: n,
                                cells: a,
                                renderIntro: t.renderRowIntro,
                                businessHourSegs: c[s],
                                eventSelection: t.eventSelection,
                                bgEventSegs: u[s].filter(xa),
                                fgEventSegs: d[s],
                                dateSelectionSegs: f[s],
                                eventDrag: p[s],
                                eventResize: h[s],
                                dayMaxEvents: o,
                                dayMaxEventRows: r,
                                clientWidth: t.clientWidth,
                                clientHeight: t.clientHeight,
                                buildMoreLinkText: g,
                                onMoreClick: function(t) {
                                    e.handleMoreLinkClick(i(i({}, t), {
                                        fromRow: s
                                    }))
                                }
                            })
                        })))), !t.forPrint && s && s.currentFgEventSegs === t.fgEventSegs && Y(Aa, {
                            ref: e.morePopoverRef,
                            date: s.date,
                            dateProfile: n,
                            segs: s.allSegs,
                            alignmentEl: s.dayEl,
                            topAlignmentEl: 1 === l ? t.headerAlignElRef.current : null,
                            onCloseClick: e.handleMorePopoverClose,
                            selectedInstanceId: t.eventSelection,
                            hiddenInstances: (t.eventDrag ? t.eventDrag.affectedInstances : null) || (t.eventResize ? t.eventResize.affectedInstances : null) || {},
                            todayRange: m
                        }))
                    })))
                }, t.prototype.prepareHits = function() {
                    this.rowPositions = new Dr(this.rootEl, this.rowRefs.collect().map((function(e) {
                        return e.getCellEls()[0]
                    })), !1, !0), this.colPositions = new Dr(this.rootEl, this.rowRefs.currentMap[0].getCellEls(), !0, !1)
                }, t.prototype.positionToHit = function(e, t) {
                    var n = this.morePopoverRef.current,
                        r = n ? n.positionToHit(e, t, this.rootEl) : null,
                        o = this.state.morePopoverState;
                    if (r) return i({
                        row: o.fromRow,
                        col: o.fromCol
                    }, r);
                    var a = this.colPositions,
                        s = this.rowPositions,
                        l = a.leftToIndex(e),
                        c = s.topToIndex(t);
                    return null != c && null != l ? {
                        row: c,
                        col: l,
                        dateSpan: {
                            range: this.getCellRange(c, l),
                            allDay: !0
                        },
                        dayEl: this.getCellEl(c, l),
                        relativeRect: {
                            left: a.lefts[l],
                            right: a.rights[l],
                            top: s.tops[c],
                            bottom: s.bottoms[c]
                        }
                    } : null
                }, t.prototype.getCellEl = function(e, t) {
                    return this.rowRefs.currentMap[e].getCellEls()[t]
                }, t.prototype.getCellRange = function(e, t) {
                    var n = this.props.cells[e][t].date;
                    return {
                        start: n,
                        end: De(n, 1)
                    }
                }, t
            }(Yr);

        function Ra(e) {
            return "function" == typeof e ? e : function(t) {
                return "+" + t + " " + e
            }
        }

        function xa(e) {
            return e.eventRange.def.allDay
        }
        var ka = function(e) {
                function t() {
                    var t = null !== e && e.apply(this, arguments) || this;
                    return t.forceDayIfListItem = !0, t
                }
                return o(t, e), t.prototype.sliceRange = function(e, t) {
                    return t.sliceRange(e)
                }, t
            }(wi),
            Ta = function(e) {
                function t() {
                    var t = null !== e && e.apply(this, arguments) || this;
                    return t.slicer = new ka, t.tableRef = Q(), t.handleRootEl = function(e) {
                        e ? t.context.registerInteractiveComponent(t, {
                            el: e
                        }) : t.context.unregisterInteractiveComponent(t)
                    }, t
                }
                return o(t, e), t.prototype.render = function() {
                    var e = this.props,
                        t = this.context;
                    return Y(Ca, i({
                        ref: this.tableRef,
                        elRef: this.handleRootEl
                    }, this.slicer.sliceProps(e, e.dateProfile, e.nextDayThreshold, t, e.dayTableModel), {
                        dateProfile: e.dateProfile,
                        cells: e.dayTableModel.cells,
                        colGroupNode: e.colGroupNode,
                        tableMinWidth: e.tableMinWidth,
                        renderRowIntro: e.renderRowIntro,
                        dayMaxEvents: e.dayMaxEvents,
                        dayMaxEventRows: e.dayMaxEventRows,
                        showWeekNumbers: e.showWeekNumbers,
                        expandRows: e.expandRows,
                        headerAlignElRef: e.headerAlignElRef,
                        clientWidth: e.clientWidth,
                        clientHeight: e.clientHeight,
                        forPrint: e.forPrint
                    }))
                }, t.prototype.prepareHits = function() {
                    this.tableRef.current.prepareHits()
                }, t.prototype.queryHit = function(e, t) {
                    var n = this.tableRef.current.positionToHit(e, t);
                    return n ? {
                        component: this,
                        dateSpan: n.dateSpan,
                        dayEl: n.dayEl,
                        rect: {
                            left: n.relativeRect.left,
                            right: n.relativeRect.right,
                            top: n.relativeRect.top,
                            bottom: n.relativeRect.bottom
                        },
                        layer: 0
                    } : null
                }, t
            }(Yr);

        function Ma(e, t) {
            var n = new yi(e.renderRange, t);
            return new bi(n, /year|month|week/.test(e.currentRangeUnit))
        }
        var Ia = qr({
            initialView: "dayGridMonth",
            optionRefiners: {
                moreLinkClick: zt,
                moreLinkClassNames: zt,
                moreLinkContent: zt,
                moreLinkDidMount: zt,
                moreLinkWillUnmount: zt
            },
            views: {
                dayGrid: {
                    component: function(e) {
                        function t() {
                            var t = null !== e && e.apply(this, arguments) || this;
                            return t.buildDayTableModel = ut(Ma), t.headerRef = Q(), t.tableRef = Q(), t
                        }
                        return o(t, e), t.prototype.render = function() {
                            var e = this,
                                t = this.context,
                                n = t.options,
                                r = t.dateProfileGenerator,
                                o = this.props,
                                i = this.buildDayTableModel(o.dateProfile, r),
                                a = n.dayHeaders && Y(vi, {
                                    ref: this.headerRef,
                                    dateProfile: o.dateProfile,
                                    dates: i.headerDates,
                                    datesRepDistinctDays: 1 === i.rowCnt
                                }),
                                s = function(t) {
                                    return Y(Ta, {
                                        ref: e.tableRef,
                                        dateProfile: o.dateProfile,
                                        dayTableModel: i,
                                        businessHours: o.businessHours,
                                        dateSelection: o.dateSelection,
                                        eventStore: o.eventStore,
                                        eventUiBases: o.eventUiBases,
                                        eventSelection: o.eventSelection,
                                        eventDrag: o.eventDrag,
                                        eventResize: o.eventResize,
                                        nextDayThreshold: n.nextDayThreshold,
                                        colGroupNode: t.tableColGroupNode,
                                        tableMinWidth: t.tableMinWidth,
                                        dayMaxEvents: n.dayMaxEvents,
                                        dayMaxEventRows: n.dayMaxEventRows,
                                        showWeekNumbers: n.weekNumbers,
                                        expandRows: !o.isHeightAuto,
                                        headerAlignElRef: e.headerElRef,
                                        clientWidth: t.clientWidth,
                                        clientHeight: t.clientHeight,
                                        forPrint: o.forPrint
                                    })
                                };
                            return n.dayMinWidth ? this.renderHScrollLayout(a, s, i.colCnt, n.dayMinWidth) : this.renderSimpleLayout(a, s)
                        }, t
                    }(ia),
                    dateProfileGeneratorClass: function(e) {
                        function t() {
                            return null !== e && e.apply(this, arguments) || this
                        }
                        return o(t, e), t.prototype.buildRenderRange = function(t, n, r) {
                            var o, i = this.props.dateEnv,
                                a = e.prototype.buildRenderRange.call(this, t, n, r),
                                s = a.start,
                                l = a.end;
                            (/^(year|month)$/.test(n) && (s = i.startOfWeek(s), (o = i.startOfWeek(l)).valueOf() !== l.valueOf() && (l = Ee(o, 1))), this.props.monthMode && this.props.fixedWeekCount) && (l = Ee(l, 6 - Math.ceil(Ce(s, l) / 7)));
                            return {
                                start: s,
                                end: l
                            }
                        }, t
                    }(uo)
                },
                dayGridDay: {
                    type: "dayGrid",
                    duration: {
                        days: 1
                    }
                },
                dayGridWeek: {
                    type: "dayGrid",
                    duration: {
                        weeks: 1
                    }
                },
                dayGridMonth: {
                    type: "dayGrid",
                    duration: {
                        months: 1
                    },
                    monthMode: !0,
                    fixedWeekCount: !0
                }
            }
        });
        /*!
		FullCalendar v5.5.0
		Docs & License: https://fullcalendar.io/
		(c) 2020 Adam Shaw
		*/
        Ko.touchMouseIgnoreWait = 500;
        var _a = 0,
            Na = 0,
            Pa = !1,
            Ha = function() {
                function e(e) {
                    var t = this;
                    this.subjectEl = null, this.selector = "", this.handleSelector = "", this.shouldIgnoreMove = !1, this.shouldWatchScroll = !0, this.isDragging = !1, this.isTouchDragging = !1, this.wasTouchScroll = !1, this.handleMouseDown = function(e) {
                        if (!t.shouldIgnoreMouse() && function(e) {
                            return 0 === e.button && !e.ctrlKey
                        }(e) && t.tryStart(e)) {
                            var n = t.createEventFromMouse(e, !0);
                            t.emitter.trigger("pointerdown", n), t.initScrollWatch(n), t.shouldIgnoreMove || document.addEventListener("mousemove", t.handleMouseMove), document.addEventListener("mouseup", t.handleMouseUp)
                        }
                    }, this.handleMouseMove = function(e) {
                        var n = t.createEventFromMouse(e);
                        t.recordCoords(n), t.emitter.trigger("pointermove", n)
                    }, this.handleMouseUp = function(e) {
                        document.removeEventListener("mousemove", t.handleMouseMove), document.removeEventListener("mouseup", t.handleMouseUp), t.emitter.trigger("pointerup", t.createEventFromMouse(e)), t.cleanup()
                    }, this.handleTouchStart = function(e) {
                        if (t.tryStart(e)) {
                            t.isTouchDragging = !0;
                            var n = t.createEventFromTouch(e, !0);
                            t.emitter.trigger("pointerdown", n), t.initScrollWatch(n);
                            var r = e.target;
                            t.shouldIgnoreMove || r.addEventListener("touchmove", t.handleTouchMove), r.addEventListener("touchend", t.handleTouchEnd), r.addEventListener("touchcancel", t.handleTouchEnd), window.addEventListener("scroll", t.handleTouchScroll, !0)
                        }
                    }, this.handleTouchMove = function(e) {
                        var n = t.createEventFromTouch(e);
                        t.recordCoords(n), t.emitter.trigger("pointermove", n)
                    }, this.handleTouchEnd = function(e) {
                        if (t.isDragging) {
                            var n = e.target;
                            n.removeEventListener("touchmove", t.handleTouchMove), n.removeEventListener("touchend", t.handleTouchEnd), n.removeEventListener("touchcancel", t.handleTouchEnd), window.removeEventListener("scroll", t.handleTouchScroll, !0), t.emitter.trigger("pointerup", t.createEventFromTouch(e)), t.cleanup(), t.isTouchDragging = !1, _a += 1, setTimeout((function() {
                                _a -= 1
                            }), Ko.touchMouseIgnoreWait)
                        }
                    }, this.handleTouchScroll = function() {
                        t.wasTouchScroll = !0
                    }, this.handleScroll = function(e) {
                        if (!t.shouldIgnoreMove) {
                            var n = window.pageXOffset - t.prevScrollX + t.prevPageX,
                                r = window.pageYOffset - t.prevScrollY + t.prevPageY;
                            t.emitter.trigger("pointermove", {
                                origEvent: e,
                                isTouch: t.isTouchDragging,
                                subjectEl: t.subjectEl,
                                pageX: n,
                                pageY: r,
                                deltaX: n - t.origPageX,
                                deltaY: r - t.origPageY
                            })
                        }
                    }, this.containerEl = e, this.emitter = new Er, e.addEventListener("mousedown", this.handleMouseDown), e.addEventListener("touchstart", this.handleTouchStart, {
                        passive: !0
                    }), 1 === (Na += 1) && window.addEventListener("touchmove", Oa, {
                        passive: !1
                    })
                }
                return e.prototype.destroy = function() {
                    this.containerEl.removeEventListener("mousedown", this.handleMouseDown), this.containerEl.removeEventListener("touchstart", this.handleTouchStart, {
                        passive: !0
                    }), (Na -= 1) || window.removeEventListener("touchmove", Oa, {
                        passive: !1
                    })
                }, e.prototype.tryStart = function(e) {
                    var t = this.querySubjectEl(e),
                        n = e.target;
                    return !(!t || this.handleSelector && !te(n, this.handleSelector)) && (this.subjectEl = t, this.isDragging = !0, this.wasTouchScroll = !1, !0)
                }, e.prototype.cleanup = function() {
                    Pa = !1, this.isDragging = !1, this.subjectEl = null, this.destroyScrollWatch()
                }, e.prototype.querySubjectEl = function(e) {
                    return this.selector ? te(e.target, this.selector) : this.containerEl
                }, e.prototype.shouldIgnoreMouse = function() {
                    return _a || this.isTouchDragging
                }, e.prototype.cancelTouchScroll = function() {
                    this.isDragging && (Pa = !0)
                }, e.prototype.initScrollWatch = function(e) {
                    this.shouldWatchScroll && (this.recordCoords(e), window.addEventListener("scroll", this.handleScroll, !0))
                }, e.prototype.recordCoords = function(e) {
                    this.shouldWatchScroll && (this.prevPageX = e.pageX, this.prevPageY = e.pageY, this.prevScrollX = window.pageXOffset, this.prevScrollY = window.pageYOffset)
                }, e.prototype.destroyScrollWatch = function() {
                    this.shouldWatchScroll && window.removeEventListener("scroll", this.handleScroll, !0)
                }, e.prototype.createEventFromMouse = function(e, t) {
                    var n = 0,
                        r = 0;
                    return t ? (this.origPageX = e.pageX, this.origPageY = e.pageY) : (n = e.pageX - this.origPageX, r = e.pageY - this.origPageY), {
                        origEvent: e,
                        isTouch: !1,
                        subjectEl: this.subjectEl,
                        pageX: e.pageX,
                        pageY: e.pageY,
                        deltaX: n,
                        deltaY: r
                    }
                }, e.prototype.createEventFromTouch = function(e, t) {
                    var n, r, o = e.touches,
                        i = 0,
                        a = 0;
                    return o && o.length ? (n = o[0].pageX, r = o[0].pageY) : (n = e.pageX, r = e.pageY), t ? (this.origPageX = n, this.origPageY = r) : (i = n - this.origPageX, a = r - this.origPageY), {
                        origEvent: e,
                        isTouch: !0,
                        subjectEl: this.subjectEl,
                        pageX: n,
                        pageY: r,
                        deltaX: i,
                        deltaY: a
                    }
                }, e
            }();

        function Oa(e) {
            Pa && e.preventDefault()
        }
        var za = function() {
                function e() {
                    this.isVisible = !1, this.sourceEl = null, this.mirrorEl = null, this.sourceElRect = null, this.parentNode = document.body, this.zIndex = 9999, this.revertDuration = 0
                }
                return e.prototype.start = function(e, t, n) {
                    this.sourceEl = e, this.sourceElRect = this.sourceEl.getBoundingClientRect(), this.origScreenX = t - window.pageXOffset, this.origScreenY = n - window.pageYOffset, this.deltaX = 0, this.deltaY = 0, this.updateElPosition()
                }, e.prototype.handleMove = function(e, t) {
                    this.deltaX = e - window.pageXOffset - this.origScreenX, this.deltaY = t - window.pageYOffset - this.origScreenY, this.updateElPosition()
                }, e.prototype.setIsVisible = function(e) {
                    e ? this.isVisible || (this.mirrorEl && (this.mirrorEl.style.display = ""), this.isVisible = e, this.updateElPosition()) : this.isVisible && (this.mirrorEl && (this.mirrorEl.style.display = "none"), this.isVisible = e)
                }, e.prototype.stop = function(e, t) {
                    var n = this,
                        r = function() {
                            n.cleanup(), t()
                        };
                    e && this.mirrorEl && this.isVisible && this.revertDuration && (this.deltaX || this.deltaY) ? this.doRevertAnimation(r, this.revertDuration) : setTimeout(r, 0)
                }, e.prototype.doRevertAnimation = function(e, t) {
                    var n = this.mirrorEl,
                        r = this.sourceEl.getBoundingClientRect();
                    n.style.transition = "top " + t + "ms,left " + t + "ms", ie(n, {
                        left: r.left,
                        top: r.top
                    }),
                        function(e, t) {
                            var n = function(r) {
                                t(r), ue.forEach((function(t) {
                                    e.removeEventListener(t, n)
                                }))
                            };
                            ue.forEach((function(t) {
                                e.addEventListener(t, n)
                            }))
                        }(n, (function() {
                            n.style.transition = "", e()
                        }))
                }, e.prototype.cleanup = function() {
                    this.mirrorEl && (ee(this.mirrorEl), this.mirrorEl = null), this.sourceEl = null
                }, e.prototype.updateElPosition = function() {
                    this.sourceEl && this.isVisible && ie(this.getMirrorEl(), {
                        left: this.sourceElRect.left + this.deltaX,
                        top: this.sourceElRect.top + this.deltaY
                    })
                }, e.prototype.getMirrorEl = function() {
                    var e = this.sourceElRect,
                        t = this.mirrorEl;
                    return t || ((t = this.mirrorEl = this.sourceEl.cloneNode(!0)).classList.add("fc-unselectable"), t.classList.add("fc-event-dragging"), ie(t, {
                        position: "fixed",
                        zIndex: this.zIndex,
                        visibility: "",
                        boxSizing: "border-box",
                        width: e.right - e.left,
                        height: e.bottom - e.top,
                        right: "auto",
                        bottom: "auto",
                        margin: 0
                    }), this.parentNode.appendChild(t)), t
                }, e
            }(),
            Ba = function(e) {
                function t(t, n) {
                    var r = e.call(this) || this;
                    return r.handleScroll = function() {
                        r.scrollTop = r.scrollController.getScrollTop(), r.scrollLeft = r.scrollController.getScrollLeft(), r.handleScrollChange()
                    }, r.scrollController = t, r.doesListening = n, r.scrollTop = r.origScrollTop = t.getScrollTop(), r.scrollLeft = r.origScrollLeft = t.getScrollLeft(), r.scrollWidth = t.getScrollWidth(), r.scrollHeight = t.getScrollHeight(), r.clientWidth = t.getClientWidth(), r.clientHeight = t.getClientHeight(), r.clientRect = r.computeClientRect(), r.doesListening && r.getEventTarget().addEventListener("scroll", r.handleScroll), r
                }
                return o(t, e), t.prototype.destroy = function() {
                    this.doesListening && this.getEventTarget().removeEventListener("scroll", this.handleScroll)
                }, t.prototype.getScrollTop = function() {
                    return this.scrollTop
                }, t.prototype.getScrollLeft = function() {
                    return this.scrollLeft
                }, t.prototype.setScrollTop = function(e) {
                    this.scrollController.setScrollTop(e), this.doesListening || (this.scrollTop = Math.max(Math.min(e, this.getMaxScrollTop()), 0), this.handleScrollChange())
                }, t.prototype.setScrollLeft = function(e) {
                    this.scrollController.setScrollLeft(e), this.doesListening || (this.scrollLeft = Math.max(Math.min(e, this.getMaxScrollLeft()), 0), this.handleScrollChange())
                }, t.prototype.getClientWidth = function() {
                    return this.clientWidth
                }, t.prototype.getClientHeight = function() {
                    return this.clientHeight
                }, t.prototype.getScrollWidth = function() {
                    return this.scrollWidth
                }, t.prototype.getScrollHeight = function() {
                    return this.scrollHeight
                }, t.prototype.handleScrollChange = function() {}, t
            }(Ar),
            Wa = function(e) {
                function t(t, n) {
                    return e.call(this, new Cr(t), n) || this
                }
                return o(t, e), t.prototype.getEventTarget = function() {
                    return this.scrollController.el
                }, t.prototype.computeClientRect = function() {
                    return wr(this.scrollController.el)
                }, t
            }(Ba),
            La = function(e) {
                function t(t) {
                    return e.call(this, new Rr, t) || this
                }
                return o(t, e), t.prototype.getEventTarget = function() {
                    return window
                }, t.prototype.computeClientRect = function() {
                    return {
                        left: this.scrollLeft,
                        right: this.scrollLeft + this.clientWidth,
                        top: this.scrollTop,
                        bottom: this.scrollTop + this.clientHeight
                    }
                }, t.prototype.handleScrollChange = function() {
                    this.clientRect = this.computeClientRect()
                }, t
            }(Ba),
            Ua = "function" == typeof performance ? performance.now : Date.now,
            Fa = function() {
                function e() {
                    var e = this;
                    this.isEnabled = !0, this.scrollQuery = [window, ".fc-scroller"], this.edgeThreshold = 50, this.maxVelocity = 300, this.pointerScreenX = null, this.pointerScreenY = null, this.isAnimating = !1, this.scrollCaches = null, this.everMovedUp = !1, this.everMovedDown = !1, this.everMovedLeft = !1, this.everMovedRight = !1, this.animate = function() {
                        if (e.isAnimating) {
                            var t = e.computeBestEdge(e.pointerScreenX + window.pageXOffset, e.pointerScreenY + window.pageYOffset);
                            if (t) {
                                var n = Ua();
                                e.handleSide(t, (n - e.msSinceRequest) / 1e3), e.requestAnimation(n)
                            } else e.isAnimating = !1
                        }
                    }
                }
                return e.prototype.start = function(e, t) {
                    this.isEnabled && (this.scrollCaches = this.buildCaches(), this.pointerScreenX = null, this.pointerScreenY = null, this.everMovedUp = !1, this.everMovedDown = !1, this.everMovedLeft = !1, this.everMovedRight = !1, this.handleMove(e, t))
                }, e.prototype.handleMove = function(e, t) {
                    if (this.isEnabled) {
                        var n = e - window.pageXOffset,
                            r = t - window.pageYOffset,
                            o = null === this.pointerScreenY ? 0 : r - this.pointerScreenY,
                            i = null === this.pointerScreenX ? 0 : n - this.pointerScreenX;
                        o < 0 ? this.everMovedUp = !0 : o > 0 && (this.everMovedDown = !0), i < 0 ? this.everMovedLeft = !0 : i > 0 && (this.everMovedRight = !0), this.pointerScreenX = n, this.pointerScreenY = r, this.isAnimating || (this.isAnimating = !0, this.requestAnimation(Ua()))
                    }
                }, e.prototype.stop = function() {
                    if (this.isEnabled) {
                        this.isAnimating = !1;
                        for (var e = 0, t = this.scrollCaches; e < t.length; e++) {
                            t[e].destroy()
                        }
                        this.scrollCaches = null
                    }
                }, e.prototype.requestAnimation = function(e) {
                    this.msSinceRequest = e, requestAnimationFrame(this.animate)
                }, e.prototype.handleSide = function(e, t) {
                    var n = e.scrollCache,
                        r = this.edgeThreshold,
                        o = r - e.distance,
                        i = o * o / (r * r) * this.maxVelocity * t,
                        a = 1;
                    switch (e.name) {
                        case "left":
                            a = -1;
                        case "right":
                            n.setScrollLeft(n.getScrollLeft() + i * a);
                            break;
                        case "top":
                            a = -1;
                        case "bottom":
                            n.setScrollTop(n.getScrollTop() + i * a)
                    }
                }, e.prototype.computeBestEdge = function(e, t) {
                    for (var n = this.edgeThreshold, r = null, o = 0, i = this.scrollCaches; o < i.length; o++) {
                        var a = i[o],
                            s = a.clientRect,
                            l = e - s.left,
                            c = s.right - e,
                            u = t - s.top,
                            d = s.bottom - t;
                        l >= 0 && c >= 0 && u >= 0 && d >= 0 && (u <= n && this.everMovedUp && a.canScrollUp() && (!r || r.distance > u) && (r = {
                            scrollCache: a,
                            name: "top",
                            distance: u
                        }), d <= n && this.everMovedDown && a.canScrollDown() && (!r || r.distance > d) && (r = {
                            scrollCache: a,
                            name: "bottom",
                            distance: d
                        }), l <= n && this.everMovedLeft && a.canScrollLeft() && (!r || r.distance > l) && (r = {
                            scrollCache: a,
                            name: "left",
                            distance: l
                        }), c <= n && this.everMovedRight && a.canScrollRight() && (!r || r.distance > c) && (r = {
                            scrollCache: a,
                            name: "right",
                            distance: c
                        }))
                    }
                    return r
                }, e.prototype.buildCaches = function() {
                    return this.queryScrollEls().map((function(e) {
                        return e === window ? new La(!1) : new Wa(e, !1)
                    }))
                }, e.prototype.queryScrollEls = function() {
                    for (var e = [], t = 0, n = this.scrollQuery; t < n.length; t++) {
                        var r = n[t];
                        "object" == typeof r ? e.push(r) : e.push.apply(e, Array.prototype.slice.call(document.querySelectorAll(r)))
                    }
                    return e
                }, e
            }(),
            Va = function(e) {
                function t(t, n) {
                    var r = e.call(this, t) || this;
                    r.delay = null, r.minDistance = 0, r.touchScrollAllowed = !0, r.mirrorNeedsRevert = !1, r.isInteracting = !1, r.isDragging = !1, r.isDelayEnded = !1, r.isDistanceSurpassed = !1, r.delayTimeoutId = null, r.onPointerDown = function(e) {
                        var t;
                        r.isDragging || (r.isInteracting = !0, r.isDelayEnded = !1, r.isDistanceSurpassed = !1, (t = document.body).classList.add("fc-unselectable"), t.addEventListener("selectstart", se), function(e) {
                            e.addEventListener("contextmenu", se)
                        }(document.body), e.isTouch || e.origEvent.preventDefault(), r.emitter.trigger("pointerdown", e), r.isInteracting && !r.pointer.shouldIgnoreMove && (r.mirror.setIsVisible(!1), r.mirror.start(e.subjectEl, e.pageX, e.pageY), r.startDelay(e), r.minDistance || r.handleDistanceSurpassed(e)))
                    }, r.onPointerMove = function(e) {
                        if (r.isInteracting) {
                            if (r.emitter.trigger("pointermove", e), !r.isDistanceSurpassed) {
                                var t = r.minDistance,
                                    n = e.deltaX,
                                    o = e.deltaY;
                                n * n + o * o >= t * t && r.handleDistanceSurpassed(e)
                            }
                            r.isDragging && ("scroll" !== e.origEvent.type && (r.mirror.handleMove(e.pageX, e.pageY), r.autoScroller.handleMove(e.pageX, e.pageY)), r.emitter.trigger("dragmove", e))
                        }
                    }, r.onPointerUp = function(e) {
                        var t;
                        r.isInteracting && (r.isInteracting = !1, (t = document.body).classList.remove("fc-unselectable"), t.removeEventListener("selectstart", se), function(e) {
                            e.removeEventListener("contextmenu", se)
                        }(document.body), r.emitter.trigger("pointerup", e), r.isDragging && (r.autoScroller.stop(), r.tryStopDrag(e)), r.delayTimeoutId && (clearTimeout(r.delayTimeoutId), r.delayTimeoutId = null))
                    };
                    var o = r.pointer = new Ha(t);
                    return o.emitter.on("pointerdown", r.onPointerDown), o.emitter.on("pointermove", r.onPointerMove), o.emitter.on("pointerup", r.onPointerUp), n && (o.selector = n), r.mirror = new za, r.autoScroller = new Fa, r
                }
                return o(t, e), t.prototype.destroy = function() {
                    this.pointer.destroy(), this.onPointerUp({})
                }, t.prototype.startDelay = function(e) {
                    var t = this;
                    "number" == typeof this.delay ? this.delayTimeoutId = setTimeout((function() {
                        t.delayTimeoutId = null, t.handleDelayEnd(e)
                    }), this.delay) : this.handleDelayEnd(e)
                }, t.prototype.handleDelayEnd = function(e) {
                    this.isDelayEnded = !0, this.tryStartDrag(e)
                }, t.prototype.handleDistanceSurpassed = function(e) {
                    this.isDistanceSurpassed = !0, this.tryStartDrag(e)
                }, t.prototype.tryStartDrag = function(e) {
                    this.isDelayEnded && this.isDistanceSurpassed && (this.pointer.wasTouchScroll && !this.touchScrollAllowed || (this.isDragging = !0, this.mirrorNeedsRevert = !1, this.autoScroller.start(e.pageX, e.pageY), this.emitter.trigger("dragstart", e), !1 === this.touchScrollAllowed && this.pointer.cancelTouchScroll()))
                }, t.prototype.tryStopDrag = function(e) {
                    this.mirror.stop(this.mirrorNeedsRevert, this.stopDrag.bind(this, e))
                }, t.prototype.stopDrag = function(e) {
                    this.isDragging = !1, this.emitter.trigger("dragend", e)
                }, t.prototype.setIgnoreMove = function(e) {
                    this.pointer.shouldIgnoreMove = e
                }, t.prototype.setMirrorIsVisible = function(e) {
                    this.mirror.setIsVisible(e)
                }, t.prototype.setMirrorNeedsRevert = function(e) {
                    this.mirrorNeedsRevert = e
                }, t.prototype.setAutoScrollEnabled = function(e) {
                    this.autoScroller.isEnabled = e
                }, t
            }(Jo),
            ja = function() {
                function e(e) {
                    this.origRect = Sr(e), this.scrollCaches = function(e) {
                        for (var t = []; e instanceof HTMLElement;) {
                            var n = window.getComputedStyle(e);
                            if ("fixed" === n.position) break;
                            /(auto|scroll)/.test(n.overflow + n.overflowY + n.overflowX) && t.push(e), e = e.parentNode
                        }
                        return t
                    }(e).map((function(e) {
                        return new Wa(e, !0)
                    }))
                }
                return e.prototype.destroy = function() {
                    for (var e = 0, t = this.scrollCaches; e < t.length; e++) {
                        t[e].destroy()
                    }
                }, e.prototype.computeLeft = function() {
                    for (var e = this.origRect.left, t = 0, n = this.scrollCaches; t < n.length; t++) {
                        var r = n[t];
                        e += r.origScrollLeft - r.getScrollLeft()
                    }
                    return e
                }, e.prototype.computeTop = function() {
                    for (var e = this.origRect.top, t = 0, n = this.scrollCaches; t < n.length; t++) {
                        var r = n[t];
                        e += r.origScrollTop - r.getScrollTop()
                    }
                    return e
                }, e.prototype.isWithinClipping = function(e, t) {
                    for (var n, r, o = {
                        left: e,
                        top: t
                    }, i = 0, a = this.scrollCaches; i < a.length; i++) {
                        var s = a[i];
                        if (n = s.getEventTarget(), r = void 0, "HTML" !== (r = n.tagName) && "BODY" !== r && !or(o, s.clientRect)) return !1
                    }
                    return !0
                }, e
            }();
        var Ga = function() {
            function e(e, t) {
                var n = this;
                this.useSubjectCenter = !1, this.requireInitial = !0, this.initialHit = null, this.movingHit = null, this.finalHit = null, this.handlePointerDown = function(e) {
                    var t = n.dragging;
                    n.initialHit = null, n.movingHit = null, n.finalHit = null, n.prepareHits(), n.processFirstCoord(e), n.initialHit || !n.requireInitial ? (t.setIgnoreMove(!1), n.emitter.trigger("pointerdown", e)) : t.setIgnoreMove(!0)
                }, this.handleDragStart = function(e) {
                    n.emitter.trigger("dragstart", e), n.handleMove(e, !0)
                }, this.handleDragMove = function(e) {
                    n.emitter.trigger("dragmove", e), n.handleMove(e)
                }, this.handlePointerUp = function(e) {
                    n.releaseHits(), n.emitter.trigger("pointerup", e)
                }, this.handleDragEnd = function(e) {
                    n.movingHit && n.emitter.trigger("hitupdate", null, !0, e), n.finalHit = n.movingHit, n.movingHit = null, n.emitter.trigger("dragend", e)
                }, this.droppableStore = t, e.emitter.on("pointerdown", this.handlePointerDown), e.emitter.on("dragstart", this.handleDragStart), e.emitter.on("dragmove", this.handleDragMove), e.emitter.on("pointerup", this.handlePointerUp), e.emitter.on("dragend", this.handleDragEnd), this.dragging = e, this.emitter = new Er
            }
            return e.prototype.processFirstCoord = function(e) {
                var t, n, r, o = {
                        left: e.pageX,
                        top: e.pageY
                    },
                    i = o,
                    a = e.subjectEl;
                a !== document && (t = Sr(a), n = i, r = t, i = {
                    left: Math.min(Math.max(n.left, r.left), r.right),
                    top: Math.min(Math.max(n.top, r.top), r.bottom)
                });
                var s, l, c, u, d, f = this.initialHit = this.queryHitForOffset(i.left, i.top);
                if (f) {
                    if (this.useSubjectCenter && t) {
                        var p = (c = t, u = f.rect, (d = {
                            left: Math.max(c.left, u.left),
                            right: Math.min(c.right, u.right),
                            top: Math.max(c.top, u.top),
                            bottom: Math.min(c.bottom, u.bottom)
                        }).left < d.right && d.top < d.bottom && d);
                        p && (i = function(e) {
                            return {
                                left: (e.left + e.right) / 2,
                                top: (e.top + e.bottom) / 2
                            }
                        }(p))
                    }
                    this.coordAdjust = (l = o, {
                        left: (s = i).left - l.left,
                        top: s.top - l.top
                    })
                } else this.coordAdjust = {
                    left: 0,
                    top: 0
                }
            }, e.prototype.handleMove = function(e, t) {
                var n = this.queryHitForOffset(e.pageX + this.coordAdjust.left, e.pageY + this.coordAdjust.top);
                !t && Ya(this.movingHit, n) || (this.movingHit = n, this.emitter.trigger("hitupdate", n, !1, e))
            }, e.prototype.prepareHits = function() {
                this.offsetTrackers = Le(this.droppableStore, (function(e) {
                    return e.component.prepareHits(), new ja(e.el)
                }))
            }, e.prototype.releaseHits = function() {
                var e = this.offsetTrackers;
                for (var t in e) e[t].destroy();
                this.offsetTrackers = {}
            }, e.prototype.queryHitForOffset = function(e, t) {
                var n = this.droppableStore,
                    r = this.offsetTrackers,
                    o = null;
                for (var i in n) {
                    var a = n[i].component,
                        s = r[i];
                    if (s && s.isWithinClipping(e, t)) {
                        var l = s.computeLeft(),
                            c = s.computeTop(),
                            u = e - l,
                            d = t - c,
                            f = s.origRect,
                            p = f.right - f.left,
                            h = f.bottom - f.top;
                        if (u >= 0 && u < p && d >= 0 && d < h) {
                            var g = a.queryHit(u, d, p, h),
                                v = a.context.getCurrentData().dateProfile;
                            g && un(v.activeRange, g.dateSpan.range) && (!o || g.layer > o.layer) && (g.rect.left += l, g.rect.right += l, g.rect.top += c, g.rect.bottom += c, o = g)
                        }
                    }
                }
                return o
            }, e
        }();

        function Ya(e, t) {
            return !e && !t || Boolean(e) === Boolean(t) && (n = e.dateSpan, r = t.dateSpan, o = n.range, i = r.range, (null === o.start ? null : o.start.valueOf()) === (null === i.start ? null : i.start.valueOf()) && (null === o.end ? null : o.end.valueOf()) === (null === i.end ? null : i.end.valueOf()) && n.allDay === r.allDay && function(e, t) {
                for (var n in t)
                    if ("range" !== n && "allDay" !== n && e[n] !== t[n]) return !1;
                for (var n in e)
                    if (!(n in t)) return !1;
                return !0
            }(n, r));
            var n, r, o, i
        }

        function qa(e, t) {
            for (var n, r, o = {}, a = 0, s = t.pluginHooks.datePointTransforms; a < s.length; a++) {
                var l = s[a];
                i(o, l(e, t))
            }
            return i(o, (n = e, {
                date: (r = t.dateEnv).toDate(n.range.start),
                dateStr: r.formatIso(n.range.start, {
                    omitTime: n.allDay
                }),
                allDay: n.allDay
            })), o
        }
        var Qa = function(e) {
                function t(t) {
                    var n = e.call(this, t) || this;
                    n.handlePointerDown = function(e) {
                        var t = n.dragging,
                            r = e.origEvent.target;
                        t.setIgnoreMove(!n.component.isValidDateDownEl(r))
                    }, n.handleDragEnd = function(e) {
                        var t = n.component;
                        if (!n.dragging.pointer.wasTouchScroll) {
                            var r = n.hitDragging,
                                o = r.initialHit,
                                a = r.finalHit;
                            if (o && a && Ya(o, a)) {
                                var s = t.context,
                                    l = i(i({}, qa(o.dateSpan, s)), {
                                        dayEl: o.dayEl,
                                        jsEvent: e.origEvent,
                                        view: s.viewApi || s.calendarApi.view
                                    });
                                s.emitter.trigger("dateClick", l)
                            }
                        }
                    }, n.dragging = new Va(t.el), n.dragging.autoScroller.isEnabled = !1;
                    var r = n.hitDragging = new Ga(n.dragging, Zo(t));
                    return r.emitter.on("pointerdown", n.handlePointerDown), r.emitter.on("dragend", n.handleDragEnd), n
                }
                return o(t, e), t.prototype.destroy = function() {
                    this.dragging.destroy()
                }, t
            }(qo),
            Za = function(e) {
                function t(t) {
                    var n = e.call(this, t) || this;
                    n.dragSelection = null, n.handlePointerDown = function(e) {
                        var t = n,
                            r = t.component,
                            o = t.dragging,
                            i = r.context.options.selectable && r.isValidDateDownEl(e.origEvent.target);
                        o.setIgnoreMove(!i), o.delay = e.isTouch ? function(e) {
                            var t = e.context.options,
                                n = t.selectLongPressDelay;
                            null == n && (n = t.longPressDelay);
                            return n
                        }(r) : null
                    }, n.handleDragStart = function(e) {
                        n.component.context.calendarApi.unselect(e)
                    }, n.handleHitUpdate = function(e, t) {
                        var r = n.component.context,
                            o = null,
                            a = !1;
                        e && ((o = function(e, t, n) {
                            var r = e.dateSpan,
                                o = t.dateSpan,
                                a = [r.range.start, r.range.end, o.range.start, o.range.end];
                            a.sort(ye);
                            for (var s = {}, l = 0, c = n; l < c.length; l++) {
                                var u = (0, c[l])(e, t);
                                if (!1 === u) return null;
                                u && i(s, u)
                            }
                            return s.range = {
                                start: a[0],
                                end: a[3]
                            }, s.allDay = r.allDay, s
                        }(n.hitDragging.initialHit, e, r.pluginHooks.dateSelectionTransformers)) && n.component.isDateSelectionValid(o) || (a = !0, o = null)), o ? r.dispatch({
                            type: "SELECT_DATES",
                            selection: o
                        }) : t || r.dispatch({
                            type: "UNSELECT_DATES"
                        }), a ? pe() : he(), t || (n.dragSelection = o)
                    }, n.handlePointerUp = function(e) {
                        n.dragSelection && (Mn(n.dragSelection, e, n.component.context), n.dragSelection = null)
                    };
                    var r = t.component.context.options,
                        o = n.dragging = new Va(t.el);
                    o.touchScrollAllowed = !1, o.minDistance = r.selectMinDistance || 0, o.autoScroller.isEnabled = r.dragScroll;
                    var a = n.hitDragging = new Ga(n.dragging, Zo(t));
                    return a.emitter.on("pointerdown", n.handlePointerDown), a.emitter.on("dragstart", n.handleDragStart), a.emitter.on("hitupdate", n.handleHitUpdate), a.emitter.on("pointerup", n.handlePointerUp), n
                }
                return o(t, e), t.prototype.destroy = function() {
                    this.dragging.destroy()
                }, t
            }(qo);
        var Xa = function(e) {
            function t(n) {
                var r = e.call(this, n) || this;
                r.subjectEl = null, r.subjectSeg = null, r.isDragging = !1, r.eventRange = null, r.relevantEvents = null, r.receivingContext = null, r.validMutation = null, r.mutatedRelevantEvents = null, r.handlePointerDown = function(e) {
                    var t = e.origEvent.target,
                        n = r,
                        o = n.component,
                        i = n.dragging,
                        a = i.mirror,
                        s = o.context.options,
                        l = o.context;
                    r.subjectEl = e.subjectEl;
                    var c = r.subjectSeg = hn(e.subjectEl),
                        u = (r.eventRange = c.eventRange).instance.instanceId;
                    r.relevantEvents = Lt(l.getCurrentData().eventStore, u), i.minDistance = e.isTouch ? 0 : s.eventDragMinDistance, i.delay = e.isTouch && u !== o.props.eventSelection ? function(e) {
                        var t = e.context.options,
                            n = t.eventLongPressDelay;
                        null == n && (n = t.longPressDelay);
                        return n
                    }(o) : null, s.fixedMirrorParent ? a.parentNode = s.fixedMirrorParent : a.parentNode = te(t, ".fc"), a.revertDuration = s.dragRevertDuration;
                    var d = o.isValidSegDownEl(t) && !te(t, ".fc-event-resizer");
                    i.setIgnoreMove(!d), r.isDragging = d && e.subjectEl.classList.contains("fc-event-draggable")
                }, r.handleDragStart = function(e) {
                    var t = r.component.context,
                        n = r.eventRange,
                        o = n.instance.instanceId;
                    e.isTouch ? o !== r.component.props.eventSelection && t.dispatch({
                        type: "SELECT_EVENT",
                        eventInstanceId: o
                    }) : t.dispatch({
                        type: "UNSELECT_EVENT"
                    }), r.isDragging && (t.calendarApi.unselect(e), t.emitter.trigger("eventDragStart", {
                        el: r.subjectEl,
                        event: new Fn(t, n.def, n.instance),
                        jsEvent: e.origEvent,
                        view: t.viewApi
                    }))
                }, r.handleHitUpdate = function(e, t) {
                    if (r.isDragging) {
                        var n = r.relevantEvents,
                            o = r.hitDragging.initialHit,
                            i = r.component.context,
                            a = null,
                            s = null,
                            l = null,
                            c = !1,
                            u = {
                                affectedEvents: n,
                                mutatedEvents: {
                                    defs: {},
                                    instances: {}
                                },
                                isEvent: !0
                            };
                        if (e) {
                            var d = e.component,
                                f = (a = d.context).options;
                            i === a || f.editable && f.droppable ? (s = function(e, t, n) {
                                var r = e.dateSpan,
                                    o = t.dateSpan,
                                    i = r.range.start,
                                    a = o.range.start,
                                    s = {};
                                r.allDay !== o.allDay && (s.allDay = o.allDay, s.hasEnd = t.component.context.options.allDayMaintainDuration, o.allDay && (i = xe(i)));
                                var l = on(i, a, e.component.context.dateEnv, e.component === t.component ? e.component.largeUnit : null);
                                l.milliseconds && (s.allDay = !1);
                                for (var c = {
                                    datesDelta: l,
                                    standardProps: s
                                }, u = 0, d = n; u < d.length; u++) {
                                    (0, d[u])(c, e, t)
                                }
                                return c
                            }(o, e, a.getCurrentData().pluginHooks.eventDragMutationMassagers)) && (l = Nn(n, a.getCurrentData().eventUiBases, s, a), u.mutatedEvents = l, d.isInteractionValid(u) || (c = !0, s = null, l = null, u.mutatedEvents = {
                                defs: {},
                                instances: {}
                            })) : a = null
                        }
                        r.displayDrag(a, u), c ? pe() : he(), t || (i === a && Ya(o, e) && (s = null), r.dragging.setMirrorNeedsRevert(!s), r.dragging.setMirrorIsVisible(!e || !document.querySelector(".fc-event-mirror")), r.receivingContext = a, r.validMutation = s, r.mutatedRelevantEvents = l)
                    }
                }, r.handlePointerUp = function() {
                    r.isDragging || r.cleanup()
                }, r.handleDragEnd = function(e) {
                    if (r.isDragging) {
                        var t = r.component.context,
                            n = t.viewApi,
                            o = r,
                            a = o.receivingContext,
                            s = o.validMutation,
                            l = r.eventRange.def,
                            c = r.eventRange.instance,
                            u = new Fn(t, l, c),
                            d = r.relevantEvents,
                            f = r.mutatedRelevantEvents,
                            p = r.hitDragging.finalHit;
                        if (r.clearDrag(), t.emitter.trigger("eventDragStop", {
                            el: r.subjectEl,
                            event: u,
                            jsEvent: e.origEvent,
                            view: n
                        }), s) {
                            if (a === t) {
                                var h = new Fn(t, f.defs[l.defId], c ? f.instances[c.instanceId] : null);
                                t.dispatch({
                                    type: "MERGE_EVENTS",
                                    eventStore: f
                                });
                                for (var g = {
                                    oldEvent: u,
                                    event: h,
                                    relatedEvents: jn(f, t, c),
                                    revert: function() {
                                        t.dispatch({
                                            type: "MERGE_EVENTS",
                                            eventStore: d
                                        })
                                    }
                                }, v = {}, m = 0, y = t.getCurrentData().pluginHooks.eventDropTransformers; m < y.length; m++) {
                                    var b = y[m];
                                    i(v, b(s, t))
                                }
                                t.emitter.trigger("eventDrop", i(i(i({}, g), v), {
                                    el: e.subjectEl,
                                    delta: s.datesDelta,
                                    jsEvent: e.origEvent,
                                    view: n
                                })), t.emitter.trigger("eventChange", g)
                            } else if (a) {
                                var w = {
                                    event: u,
                                    relatedEvents: jn(d, t, c),
                                    revert: function() {
                                        t.dispatch({
                                            type: "MERGE_EVENTS",
                                            eventStore: d
                                        })
                                    }
                                };
                                t.emitter.trigger("eventLeave", i(i({}, w), {
                                    draggedEl: e.subjectEl,
                                    view: n
                                })), t.dispatch({
                                    type: "REMOVE_EVENTS",
                                    eventStore: d
                                }), t.emitter.trigger("eventRemove", w);
                                var S = f.defs[l.defId],
                                    E = f.instances[c.instanceId],
                                    D = new Fn(a, S, E);
                                a.dispatch({
                                    type: "MERGE_EVENTS",
                                    eventStore: f
                                });
                                var A = {
                                    event: D,
                                    relatedEvents: jn(f, a, E),
                                    revert: function() {
                                        a.dispatch({
                                            type: "REMOVE_EVENTS",
                                            eventStore: f
                                        })
                                    }
                                };
                                a.emitter.trigger("eventAdd", A), e.isTouch && a.dispatch({
                                    type: "SELECT_EVENT",
                                    eventInstanceId: c.instanceId
                                }), a.emitter.trigger("drop", i(i({}, qa(p.dateSpan, a)), {
                                    draggedEl: e.subjectEl,
                                    jsEvent: e.origEvent,
                                    view: p.component.context.viewApi
                                })), a.emitter.trigger("eventReceive", i(i({}, A), {
                                    draggedEl: e.subjectEl,
                                    view: p.component.context.viewApi
                                }))
                            }
                        } else t.emitter.trigger("_noEventDrop")
                    }
                    r.cleanup()
                };
                var o = r.component.context.options,
                    a = r.dragging = new Va(n.el);
                a.pointer.selector = t.SELECTOR, a.touchScrollAllowed = !1, a.autoScroller.isEnabled = o.dragScroll;
                var s = r.hitDragging = new Ga(r.dragging, Xo);
                return s.useSubjectCenter = n.useEventCenter, s.emitter.on("pointerdown", r.handlePointerDown), s.emitter.on("dragstart", r.handleDragStart), s.emitter.on("hitupdate", r.handleHitUpdate), s.emitter.on("pointerup", r.handlePointerUp), s.emitter.on("dragend", r.handleDragEnd), r
            }
            return o(t, e), t.prototype.destroy = function() {
                this.dragging.destroy()
            }, t.prototype.displayDrag = function(e, t) {
                var n = this.component.context,
                    r = this.receivingContext;
                r && r !== e && (r === n ? r.dispatch({
                    type: "SET_EVENT_DRAG",
                    state: {
                        affectedEvents: t.affectedEvents,
                        mutatedEvents: {
                            defs: {},
                            instances: {}
                        },
                        isEvent: !0
                    }
                }) : r.dispatch({
                    type: "UNSET_EVENT_DRAG"
                })), e && e.dispatch({
                    type: "SET_EVENT_DRAG",
                    state: t
                })
            }, t.prototype.clearDrag = function() {
                var e = this.component.context,
                    t = this.receivingContext;
                t && t.dispatch({
                    type: "UNSET_EVENT_DRAG"
                }), e !== t && e.dispatch({
                    type: "UNSET_EVENT_DRAG"
                })
            }, t.prototype.cleanup = function() {
                this.subjectSeg = null, this.isDragging = !1, this.eventRange = null, this.relevantEvents = null, this.receivingContext = null, this.validMutation = null, this.mutatedRelevantEvents = null
            }, t.SELECTOR = ".fc-event-draggable, .fc-event-resizable", t
        }(qo);
        var Ja = function(e) {
            function t(t) {
                var n = e.call(this, t) || this;
                n.draggingSegEl = null, n.draggingSeg = null, n.eventRange = null, n.relevantEvents = null, n.validMutation = null, n.mutatedRelevantEvents = null, n.handlePointerDown = function(e) {
                    var t = n.component,
                        r = hn(n.querySegEl(e)),
                        o = n.eventRange = r.eventRange;
                    n.dragging.minDistance = t.context.options.eventDragMinDistance, n.dragging.setIgnoreMove(!n.component.isValidSegDownEl(e.origEvent.target) || e.isTouch && n.component.props.eventSelection !== o.instance.instanceId)
                }, n.handleDragStart = function(e) {
                    var t = n.component.context,
                        r = n.eventRange;
                    n.relevantEvents = Lt(t.getCurrentData().eventStore, n.eventRange.instance.instanceId);
                    var o = n.querySegEl(e);
                    n.draggingSegEl = o, n.draggingSeg = hn(o), t.calendarApi.unselect(), t.emitter.trigger("eventResizeStart", {
                        el: o,
                        event: new Fn(t, r.def, r.instance),
                        jsEvent: e.origEvent,
                        view: t.viewApi
                    })
                }, n.handleHitUpdate = function(e, t, r) {
                    var o = n.component.context,
                        a = n.relevantEvents,
                        s = n.hitDragging.initialHit,
                        l = n.eventRange.instance,
                        c = null,
                        u = null,
                        d = !1,
                        f = {
                            affectedEvents: a,
                            mutatedEvents: {
                                defs: {},
                                instances: {}
                            },
                            isEvent: !0
                        };
                    e && (c = function(e, t, n, r, o) {
                        for (var a = e.component.context.dateEnv, s = e.dateSpan.range.start, l = t.dateSpan.range.start, c = on(s, l, a, e.component.largeUnit), u = {}, d = 0, f = o; d < f.length; d++) {
                            var p = (0, f[d])(e, t);
                            if (!1 === p) return null;
                            p && i(u, p)
                        }
                        if (n) {
                            if (a.add(r.start, c) < r.end) return u.startDelta = c, u
                        } else if (a.add(r.end, c) > r.start) return u.endDelta = c, u;
                        return null
                    }(s, e, r.subjectEl.classList.contains("fc-event-resizer-start"), l.range, o.pluginHooks.eventResizeJoinTransforms)), c && (u = Nn(a, o.getCurrentData().eventUiBases, c, o), f.mutatedEvents = u, n.component.isInteractionValid(f) || (d = !0, c = null, u = null, f.mutatedEvents = null)), u ? o.dispatch({
                        type: "SET_EVENT_RESIZE",
                        state: f
                    }) : o.dispatch({
                        type: "UNSET_EVENT_RESIZE"
                    }), d ? pe() : he(), t || (c && Ya(s, e) && (c = null), n.validMutation = c, n.mutatedRelevantEvents = u)
                }, n.handleDragEnd = function(e) {
                    var t = n.component.context,
                        r = n.eventRange.def,
                        o = n.eventRange.instance,
                        a = new Fn(t, r, o),
                        s = n.relevantEvents,
                        l = n.mutatedRelevantEvents;
                    if (t.emitter.trigger("eventResizeStop", {
                        el: n.draggingSegEl,
                        event: a,
                        jsEvent: e.origEvent,
                        view: t.viewApi
                    }), n.validMutation) {
                        var c = new Fn(t, l.defs[r.defId], o ? l.instances[o.instanceId] : null);
                        t.dispatch({
                            type: "MERGE_EVENTS",
                            eventStore: l
                        });
                        var u = {
                            oldEvent: a,
                            event: c,
                            relatedEvents: jn(l, t, o),
                            revert: function() {
                                t.dispatch({
                                    type: "MERGE_EVENTS",
                                    eventStore: s
                                })
                            }
                        };
                        t.emitter.trigger("eventResize", i(i({}, u), {
                            el: n.draggingSegEl,
                            startDelta: n.validMutation.startDelta || Ke(0),
                            endDelta: n.validMutation.endDelta || Ke(0),
                            jsEvent: e.origEvent,
                            view: t.viewApi
                        })), t.emitter.trigger("eventChange", u)
                    } else t.emitter.trigger("_noEventResize");
                    n.draggingSeg = null, n.relevantEvents = null, n.validMutation = null
                };
                var r = t.component,
                    o = n.dragging = new Va(t.el);
                o.pointer.selector = ".fc-event-resizer", o.touchScrollAllowed = !1, o.autoScroller.isEnabled = r.context.options.dragScroll;
                var a = n.hitDragging = new Ga(n.dragging, Zo(t));
                return a.emitter.on("pointerdown", n.handlePointerDown), a.emitter.on("dragstart", n.handleDragStart), a.emitter.on("hitupdate", n.handleHitUpdate), a.emitter.on("dragend", n.handleDragEnd), n
            }
            return o(t, e), t.prototype.destroy = function() {
                this.dragging.destroy()
            }, t.prototype.querySegEl = function(e) {
                return te(e.subjectEl, ".fc-event")
            }, t
        }(qo);
        var Ka = function() {
                function e(e) {
                    var t = this;
                    this.context = e, this.isRecentPointerDateSelect = !1, this.matchesCancel = !1, this.matchesEvent = !1, this.onSelect = function(e) {
                        e.jsEvent && (t.isRecentPointerDateSelect = !0)
                    }, this.onDocumentPointerDown = function(e) {
                        var n = t.context.options.unselectCancel,
                            r = e.origEvent.target;
                        t.matchesCancel = !!te(r, n), t.matchesEvent = !!te(r, Xa.SELECTOR)
                    }, this.onDocumentPointerUp = function(e) {
                        var n = t.context,
                            r = t.documentPointer,
                            o = n.getCurrentData();
                        if (!r.wasTouchScroll) {
                            if (o.dateSelection && !t.isRecentPointerDateSelect) {
                                var i = n.options.unselectAuto;
                                !i || i && t.matchesCancel || n.calendarApi.unselect(e)
                            }
                            o.eventSelection && !t.matchesEvent && n.dispatch({
                                type: "UNSELECT_EVENT"
                            })
                        }
                        t.isRecentPointerDateSelect = !1
                    };
                    var n = this.documentPointer = new Ha(document);
                    n.shouldIgnoreMove = !0, n.shouldWatchScroll = !1, n.emitter.on("pointerdown", this.onDocumentPointerDown), n.emitter.on("pointerup", this.onDocumentPointerUp), e.emitter.on("select", this.onSelect)
                }
                return e.prototype.destroy = function() {
                    this.context.emitter.off("select", this.onSelect), this.documentPointer.destroy()
                }, e
            }(),
            $a = {
                fixedMirrorParent: zt
            },
            es = {
                dateClick: zt,
                eventDragStart: zt,
                eventDragStop: zt,
                eventDrop: zt,
                eventResizeStart: zt,
                eventResizeStop: zt,
                eventResize: zt,
                drop: zt,
                eventReceive: zt,
                eventLeave: zt
            },
            ts = function() {
                function e(e, t) {
                    var n = this;
                    this.receivingContext = null, this.droppableEvent = null, this.suppliedDragMeta = null, this.dragMeta = null, this.handleDragStart = function(e) {
                        n.dragMeta = n.buildDragMeta(e.subjectEl)
                    }, this.handleHitUpdate = function(e, t, r) {
                        var o = n.hitDragging.dragging,
                            a = null,
                            s = null,
                            l = !1,
                            c = {
                                affectedEvents: {
                                    defs: {},
                                    instances: {}
                                },
                                mutatedEvents: {
                                    defs: {},
                                    instances: {}
                                },
                                isEvent: n.dragMeta.create
                            };
                        e && (a = e.component.context, n.canDropElOnCalendar(r.subjectEl, a) && (s = function(e, t, n) {
                            for (var r = i({}, t.leftoverProps), o = 0, a = n.pluginHooks.externalDefTransforms; o < a.length; o++) {
                                var s = a[o];
                                i(r, s(e, t))
                            }
                            var l = $t(r, n),
                                c = l.refined,
                                u = l.extra,
                                d = tn(c, u, t.sourceId, e.allDay, n.options.forceEventDuration || Boolean(t.duration), n),
                                f = e.range.start;
                            e.allDay && t.startTime && (f = n.dateEnv.add(f, t.startTime));
                            var p = t.duration ? n.dateEnv.add(f, t.duration) : _n(e.allDay, f, n),
                                h = Oe(d.defId, {
                                    start: f,
                                    end: p
                                });
                            return {
                                def: d,
                                instance: h
                            }
                        }(e.dateSpan, n.dragMeta, a), c.mutatedEvents = Wt(s), (l = !Wr(c, a)) && (c.mutatedEvents = {
                            defs: {},
                            instances: {}
                        }, s = null))), n.displayDrag(a, c), o.setMirrorIsVisible(t || !s || !document.querySelector(".fc-event-mirror")), l ? pe() : he(), t || (o.setMirrorNeedsRevert(!s), n.receivingContext = a, n.droppableEvent = s)
                    }, this.handleDragEnd = function(e) {
                        var t = n,
                            r = t.receivingContext,
                            o = t.droppableEvent;
                        if (n.clearDrag(), r && o) {
                            var a = n.hitDragging.finalHit,
                                s = a.component.context.viewApi,
                                l = n.dragMeta;
                            if (r.emitter.trigger("drop", i(i({}, qa(a.dateSpan, r)), {
                                draggedEl: e.subjectEl,
                                jsEvent: e.origEvent,
                                view: s
                            })), l.create) {
                                var c = Wt(o);
                                r.dispatch({
                                    type: "MERGE_EVENTS",
                                    eventStore: c
                                }), e.isTouch && r.dispatch({
                                    type: "SELECT_EVENT",
                                    eventInstanceId: o.instance.instanceId
                                }), r.emitter.trigger("eventReceive", {
                                    event: new Fn(r, o.def, o.instance),
                                    relatedEvents: [],
                                    revert: function() {
                                        r.dispatch({
                                            type: "REMOVE_EVENTS",
                                            eventStore: c
                                        })
                                    },
                                    draggedEl: e.subjectEl,
                                    view: s
                                })
                            }
                        }
                        n.receivingContext = null, n.droppableEvent = null
                    };
                    var r = this.hitDragging = new Ga(e, Xo);
                    r.requireInitial = !1, r.emitter.on("dragstart", this.handleDragStart), r.emitter.on("hitupdate", this.handleHitUpdate), r.emitter.on("dragend", this.handleDragEnd), this.suppliedDragMeta = t
                }
                return e.prototype.buildDragMeta = function(e) {
                    return "object" == typeof this.suppliedDragMeta ? ei(this.suppliedDragMeta) : "function" == typeof this.suppliedDragMeta ? ei(this.suppliedDragMeta(e)) : ei((t = function(e, t) {
                        var n = Ko.dataAttrPrefix,
                            r = (n ? n + "-" : "") + t;
                        return e.getAttribute("data-" + r) || ""
                    }(e, "event")) ? JSON.parse(t) : {
                        create: !1
                    });
                    var t
                }, e.prototype.displayDrag = function(e, t) {
                    var n = this.receivingContext;
                    n && n !== e && n.dispatch({
                        type: "UNSET_EVENT_DRAG"
                    }), e && e.dispatch({
                        type: "SET_EVENT_DRAG",
                        state: t
                    })
                }, e.prototype.clearDrag = function() {
                    this.receivingContext && this.receivingContext.dispatch({
                        type: "UNSET_EVENT_DRAG"
                    })
                }, e.prototype.canDropElOnCalendar = function(e, t) {
                    var n = t.options.dropAccept;
                    return "function" == typeof n ? n.call(t.calendarApi, e) : "string" != typeof n || !n || Boolean(ne(e, n))
                }, e
            }();
        Ko.dataAttrPrefix = "";
        ! function() {
            function e(e, t) {
                var n = this;
                void 0 === t && (t = {}), this.handlePointerDown = function(e) {
                    var t = n.dragging,
                        r = n.settings,
                        o = r.minDistance,
                        i = r.longPressDelay;
                    t.minDistance = null != o ? o : e.isTouch ? 0 : Tt.eventDragMinDistance, t.delay = e.isTouch ? null != i ? i : Tt.longPressDelay : 0
                }, this.handleDragStart = function(e) {
                    e.isTouch && n.dragging.delay && e.subjectEl.classList.contains("fc-event") && n.dragging.mirror.getMirrorEl().classList.add("fc-event-selected")
                }, this.settings = t;
                var r = this.dragging = new Va(e);
                r.touchScrollAllowed = !1, null != t.itemSelector && (r.pointer.selector = t.itemSelector), null != t.appendTo && (r.mirror.parentNode = t.appendTo), r.emitter.on("pointerdown", this.handlePointerDown), r.emitter.on("dragstart", this.handleDragStart), new ts(r, t.eventData)
            }
            e.prototype.destroy = function() {
                this.dragging.destroy()
            }
        }();
        var ns = function(e) {
                function t(t) {
                    var n = e.call(this, t) || this;
                    n.shouldIgnoreMove = !1, n.mirrorSelector = "", n.currentMirrorEl = null, n.handlePointerDown = function(e) {
                        n.emitter.trigger("pointerdown", e), n.shouldIgnoreMove || n.emitter.trigger("dragstart", e)
                    }, n.handlePointerMove = function(e) {
                        n.shouldIgnoreMove || n.emitter.trigger("dragmove", e)
                    }, n.handlePointerUp = function(e) {
                        n.emitter.trigger("pointerup", e), n.shouldIgnoreMove || n.emitter.trigger("dragend", e)
                    };
                    var r = n.pointer = new Ha(t);
                    return r.emitter.on("pointerdown", n.handlePointerDown), r.emitter.on("pointermove", n.handlePointerMove), r.emitter.on("pointerup", n.handlePointerUp), n
                }
                return o(t, e), t.prototype.destroy = function() {
                    this.pointer.destroy()
                }, t.prototype.setIgnoreMove = function(e) {
                    this.shouldIgnoreMove = e
                }, t.prototype.setMirrorIsVisible = function(e) {
                    if (e) this.currentMirrorEl && (this.currentMirrorEl.style.visibility = "", this.currentMirrorEl = null);
                    else {
                        var t = this.mirrorSelector ? document.querySelector(this.mirrorSelector) : null;
                        t && (this.currentMirrorEl = t, t.style.visibility = "hidden")
                    }
                }, t
            }(Jo),
            rs = (function() {
                function e(e, t) {
                    var n = document;
                    e === document || e instanceof Element ? (n = e, t = t || {}) : t = e || {};
                    var r = this.dragging = new ns(n);
                    "string" == typeof t.itemSelector ? r.pointer.selector = t.itemSelector : n === document && (r.pointer.selector = "[data-event]"), "string" == typeof t.mirrorSelector && (r.mirrorSelector = t.mirrorSelector), new ts(r, t.eventData)
                }
                e.prototype.destroy = function() {
                    this.dragging.destroy()
                }
            }(), qr({
                componentInteractions: [Qa, Za, Xa, Ja],
                calendarInteractions: [Ka],
                elementDraggingImpl: Va,
                optionRefiners: $a,
                listenerRefiners: es
            })),
            os = n(139),
            is = {
                insert: "head",
                singleton: !1
            },
            as = (F()(os.a, is), os.a.locals, function(e) {
                function t() {
                    return null !== e && e.apply(this, arguments) || this
                }
                return o(t, e), t.prototype.render = function() {
                    var e = this.props,
                        t = e.dayDate,
                        n = e.todayRange,
                        r = this.context,
                        o = r.theme,
                        a = r.dateEnv,
                        s = r.options,
                        l = r.viewApi,
                        c = ur(t, n),
                        u = s.listDayFormat ? a.format(t, s.listDayFormat) : "",
                        d = s.listDaySideFormat ? a.format(t, s.listDaySideFormat) : "",
                        f = s.navLinks ? pr(t) : null,
                        p = i({
                            date: a.toDate(t),
                            view: l,
                            text: u,
                            sideText: d,
                            navLinkData: f
                        }, c),
                        h = ["fc-list-day"].concat(dr(c, o));
                    return Y(Jr, {
                        hookProps: p,
                        classNames: s.dayHeaderClassNames,
                        content: s.dayHeaderContent,
                        defaultContent: ss,
                        didMount: s.dayHeaderDidMount,
                        willUnmount: s.dayHeaderWillUnmount
                    }, (function(e, n, r, i) {
                        return Y("tr", {
                            ref: e,
                            className: h.concat(n).join(" "),
                            "data-date": st(t)
                        }, Y("th", {
                            colSpan: 3
                        }, Y("div", {
                            className: "fc-list-day-cushion " + o.getClass("tableCellShaded"),
                            ref: r
                        }, i)))
                    }))
                }, t
            }(_r));

        function ss(e) {
            var t = e.navLinkData ? {
                "data-navlink": e.navLinkData,
                tabIndex: 0
            } : {};
            return Y(Z, null, e.text && Y("a", i({
                className: "fc-list-day-text"
            }, t), e.text), e.sideText && Y("a", i({
                className: "fc-list-day-side-text"
            }, t), e.sideText))
        }
        var ls = xt({
                hour: "numeric",
                minute: "2-digit",
                meridiem: "short"
            }),
            cs = function(e) {
                function t() {
                    return null !== e && e.apply(this, arguments) || this
                }
                return o(t, e), t.prototype.render = function() {
                    var e = this.props,
                        t = this.context,
                        n = e.seg,
                        r = t.options.eventTimeFormat || ls;
                    return Y(Wi, {
                        seg: n,
                        timeText: "",
                        disableDragging: !0,
                        disableResizing: !0,
                        defaultContent: us,
                        isPast: e.isPast,
                        isFuture: e.isFuture,
                        isToday: e.isToday,
                        isSelected: e.isSelected,
                        isDragging: e.isDragging,
                        isResizing: e.isResizing,
                        isDateSelecting: e.isDateSelecting
                    }, (function(e, o, i, a, s) {
                        return Y("tr", {
                            className: ["fc-list-event", s.event.url ? "fc-event-forced-url" : ""].concat(o).join(" "),
                            ref: e
                        }, function(e, t, n) {
                            var r = n.options;
                            if (!1 !== r.displayEventTime) {
                                var o = e.eventRange.def,
                                    i = e.eventRange.instance,
                                    a = !1,
                                    s = void 0;
                                if (o.allDay ? a = !0 : (c = e.eventRange.range, Ce((u = rn(c)).start, u.end) > 1 ? e.isStart ? s = En(e, t, n, null, null, i.range.start, e.end) : e.isEnd ? s = En(e, t, n, null, null, e.start, i.range.end) : a = !0 : s = En(e, t, n)), a) {
                                    var l = {
                                        text: n.options.allDayText,
                                        view: n.viewApi
                                    };
                                    return Y(Jr, {
                                        hookProps: l,
                                        classNames: r.allDayClassNames,
                                        content: r.allDayContent,
                                        defaultContent: ds,
                                        didMount: r.allDayDidMount,
                                        willUnmount: r.allDayWillUnmount
                                    }, (function(e, t, n, r) {
                                        return Y("td", {
                                            className: ["fc-list-event-time"].concat(t).join(" "),
                                            ref: e
                                        }, r)
                                    }))
                                }
                                return Y("td", {
                                    className: "fc-list-event-time"
                                }, s)
                            }
                            var c, u;
                            return null
                        }(n, r, t), Y("td", {
                            className: "fc-list-event-graphic"
                        }, Y("span", {
                            className: "fc-list-event-dot",
                            style: {
                                borderColor: s.borderColor || s.backgroundColor
                            }
                        })), Y("td", {
                            className: "fc-list-event-title",
                            ref: i
                        }, a))
                    }))
                }, t
            }(_r);

        function us(e) {
            var t = e.event,
                n = t.url;
            return Y("a", i({}, n ? {
                href: n
            } : {}), t.title)
        }

        function ds(e) {
            return e.text
        }

        function fs(e) {
            return e.text
        }

        function ps(e) {
            for (var t = xe(e.renderRange.start), n = e.renderRange.end, r = [], o = []; t < n;) r.push(t), o.push({
                start: t,
                end: De(t, 1)
            }), t = De(t, 1);
            return {
                dayDates: r,
                dayRanges: o
            }
        }

        function hs(e) {
            return !1 === e ? null : xt(e)
        }
        var gs = qr({
                optionRefiners: {
                    listDayFormat: hs,
                    listDaySideFormat: hs,
                    noEventsClassNames: zt,
                    noEventsContent: zt,
                    noEventsDidMount: zt,
                    noEventsWillUnmount: zt
                },
                views: {
                    list: {
                        component: function(e) {
                            function t() {
                                var t = null !== e && e.apply(this, arguments) || this;
                                return t.computeDateVars = ut(ps), t.eventStoreToSegs = ut(t._eventStoreToSegs), t.setRootEl = function(e) {
                                    e ? t.context.registerInteractiveComponent(t, {
                                        el: e
                                    }) : t.context.unregisterInteractiveComponent(t)
                                }, t
                            }
                            return o(t, e), t.prototype.render = function() {
                                var e = this,
                                    t = this.props,
                                    n = this.context,
                                    r = ["fc-list", n.theme.getClass("table"), !1 !== n.options.stickyHeaderDates ? "fc-list-sticky" : ""],
                                    o = this.computeDateVars(t.dateProfile),
                                    i = o.dayDates,
                                    a = o.dayRanges,
                                    s = this.eventStoreToSegs(t.eventStore, t.eventUiBases, a);
                                return Y(io, {
                                    viewSpec: n.viewSpec,
                                    elRef: this.setRootEl
                                }, (function(n, o) {
                                    return Y("div", {
                                        ref: n,
                                        className: r.concat(o).join(" ")
                                    }, Y(Di, {
                                        liquid: !t.isHeightAuto,
                                        overflowX: t.isHeightAuto ? "visible" : "hidden",
                                        overflowY: t.isHeightAuto ? "visible" : "auto"
                                    }, s.length > 0 ? e.renderSegList(s, i) : e.renderEmptyMessage()))
                                }))
                            }, t.prototype.renderEmptyMessage = function() {
                                var e = this.context,
                                    t = e.options,
                                    n = e.viewApi,
                                    r = {
                                        text: t.noEventsText,
                                        view: n
                                    };
                                return Y(Jr, {
                                    hookProps: r,
                                    classNames: t.noEventsClassNames,
                                    content: t.noEventsContent,
                                    defaultContent: fs,
                                    didMount: t.noEventsDidMount,
                                    willUnmount: t.noEventsWillUnmount
                                }, (function(e, t, n, r) {
                                    return Y("div", {
                                        className: ["fc-list-empty"].concat(t).join(" "),
                                        ref: e
                                    }, Y("div", {
                                        className: "fc-list-empty-cushion",
                                        ref: n
                                    }, r))
                                }))
                            }, t.prototype.renderSegList = function(e, t) {
                                var n = this.context,
                                    r = n.theme,
                                    o = n.options,
                                    a = function(e) {
                                        var t, n, r = [];
                                        for (t = 0; t < e.length; t += 1) n = e[t], (r[n.dayIndex] || (r[n.dayIndex] = [])).push(n);
                                        return r
                                    }(e);
                                return Y(hi, {
                                    unit: "day"
                                }, (function(e, n) {
                                    for (var s = [], l = 0; l < a.length; l += 1) {
                                        var c = a[l];
                                        if (c) {
                                            var u = t[l].toISOString();
                                            s.push(Y(as, {
                                                key: u,
                                                dayDate: t[l],
                                                todayRange: n
                                            }));
                                            for (var d = 0, f = c = mn(c, o.eventOrder); d < f.length; d++) {
                                                var p = f[d];
                                                s.push(Y(cs, i({
                                                    key: u + ":" + p.eventRange.instance.instanceId,
                                                    seg: p,
                                                    isDragging: !1,
                                                    isResizing: !1,
                                                    isDateSelecting: !1,
                                                    isSelected: !1
                                                }, Dn(p, n, e))))
                                            }
                                        }
                                    }
                                    return Y("table", {
                                        className: "fc-list-table " + r.getClass("table")
                                    }, Y("tbody", null, s))
                                }))
                            }, t.prototype._eventStoreToSegs = function(e, t, n) {
                                return this.eventRangesToSegs(fn(e, t, this.props.dateProfile.activeRange, this.context.options.nextDayThreshold).fg, n)
                            }, t.prototype.eventRangesToSegs = function(e, t) {
                                for (var n = [], r = 0, o = e; r < o.length; r++) {
                                    var i = o[r];
                                    n.push.apply(n, this.eventRangeToSegs(i, t))
                                }
                                return n
                            }, t.prototype.eventRangeToSegs = function(e, t) {
                                var n, r, o, i = this.context.dateEnv,
                                    a = this.context.options.nextDayThreshold,
                                    s = e.range,
                                    l = e.def.allDay,
                                    c = [];
                                for (n = 0; n < t.length; n += 1)
                                    if ((r = ln(s, t[n])) && (o = {
                                        component: this,
                                        eventRange: e,
                                        start: r.start,
                                        end: r.end,
                                        isStart: e.isStart && r.start.valueOf() === s.start.valueOf(),
                                        isEnd: e.isEnd && r.end.valueOf() === s.end.valueOf(),
                                        dayIndex: n
                                    }, c.push(o), !o.isEnd && !l && n + 1 < t.length && s.end < i.add(t[n + 1].start, a))) {
                                        o.end = s.end, o.isEnd = !0;
                                        break
                                    } return c
                            }, t
                        }(Yr),
                        buttonTextKey: "list",
                        listDayFormat: {
                            month: "long",
                            day: "numeric",
                            year: "numeric"
                        }
                    },
                    listDay: {
                        type: "list",
                        duration: {
                            days: 1
                        },
                        listDayFormat: {
                            weekday: "long"
                        }
                    },
                    listWeek: {
                        type: "list",
                        duration: {
                            weeks: 1
                        },
                        listDayFormat: {
                            weekday: "long"
                        },
                        listDaySideFormat: {
                            month: "long",
                            day: "numeric",
                            year: "numeric"
                        }
                    },
                    listMonth: {
                        type: "list",
                        duration: {
                            month: 1
                        },
                        listDaySideFormat: {
                            weekday: "long"
                        }
                    },
                    listYear: {
                        type: "list",
                        duration: {
                            year: 1
                        },
                        listDaySideFormat: {
                            weekday: "long"
                        }
                    }
                }
            }),
            vs = n(140),
            ms = {
                insert: "head",
                singleton: !1
            },
            ys = (F()(vs.a, ms), vs.a.locals, function(e) {
                function t() {
                    return null !== e && e.apply(this, arguments) || this
                }
                return o(t, e), t.prototype.getKeyInfo = function() {
                    return {
                        allDay: {},
                        timed: {}
                    }
                }, t.prototype.getKeysForDateSpan = function(e) {
                    return e.allDay ? ["allDay"] : ["timed"]
                }, t.prototype.getKeysForEventDef = function(e) {
                    return e.allDay ? "background" === (t = e).ui.display || "inverse-background" === t.ui.display ? ["timed", "allDay"] : ["allDay"] : ["timed"];
                    var t
                }, t
            }(lr)),
            bs = xt({
                hour: "numeric",
                minute: "2-digit",
                omitZeroMinute: !0,
                meridiem: "short"
            });

        function ws(e) {
            var t = ["fc-timegrid-slot", "fc-timegrid-slot-label", e.isLabeled ? "fc-scrollgrid-shrink" : "fc-timegrid-slot-minor"];
            return Y(Tr.Consumer, null, (function(n) {
                if (!e.isLabeled) return Y("td", {
                    className: t.join(" "),
                    "data-time": e.isoTimeStr
                });
                var r = n.dateEnv,
                    o = n.options,
                    i = n.viewApi,
                    a = null == o.slotLabelFormat ? bs : Array.isArray(o.slotLabelFormat) ? xt(o.slotLabelFormat[0]) : xt(o.slotLabelFormat),
                    s = {
                        level: 0,
                        time: e.time,
                        date: r.toDate(e.date),
                        view: i,
                        text: r.format(e.date, a)
                    };
                return Y(Jr, {
                    hookProps: s,
                    classNames: o.slotLabelClassNames,
                    content: o.slotLabelContent,
                    defaultContent: Ss,
                    didMount: o.slotLabelDidMount,
                    willUnmount: o.slotLabelWillUnmount
                }, (function(n, r, o, i) {
                    return Y("td", {
                        ref: n,
                        className: t.concat(r).join(" "),
                        "data-time": e.isoTimeStr
                    }, Y("div", {
                        className: "fc-timegrid-slot-label-frame fc-scrollgrid-shrink-frame"
                    }, Y("div", {
                        className: "fc-timegrid-slot-label-cushion fc-scrollgrid-shrink-cushion",
                        ref: o
                    }, i)))
                }))
            }))
        }

        function Ss(e) {
            return e.text
        }
        var Es = function(e) {
                function t() {
                    return null !== e && e.apply(this, arguments) || this
                }
                return o(t, e), t.prototype.render = function() {
                    return this.props.slatMetas.map((function(e) {
                        return Y("tr", {
                            key: e.key
                        }, Y(ws, i({}, e)))
                    }))
                }, t
            }(_r),
            Ds = xt({
                week: "short"
            }),
            As = function(e) {
                function t() {
                    var t = null !== e && e.apply(this, arguments) || this;
                    return t.allDaySplitter = new ys, t.headerElRef = Q(), t.rootElRef = Q(), t.scrollerElRef = Q(), t.state = {
                        slatCoords: null
                    }, t.handleScrollTopRequest = function(e) {
                        var n = t.scrollerElRef.current;
                        n && (n.scrollTop = e)
                    }, t.renderHeadAxis = function(e, n) {
                        void 0 === n && (n = "");
                        var r = t.context.options,
                            o = t.props.dateProfile.renderRange,
                            a = Ce(o.start, o.end),
                            s = r.navLinks && 1 === a ? {
                                "data-navlink": pr(o.start, "week"),
                                tabIndex: 0
                            } : {};
                        return r.weekNumbers && "day" === e ? Y(Xi, {
                            date: o.start,
                            defaultFormat: Ds
                        }, (function(e, t, r, o) {
                            return Y("th", {
                                ref: e,
                                className: ["fc-timegrid-axis", "fc-scrollgrid-shrink"].concat(t).join(" ")
                            }, Y("div", {
                                className: "fc-timegrid-axis-frame fc-scrollgrid-shrink-frame fc-timegrid-axis-frame-liquid",
                                style: {
                                    height: n
                                }
                            }, Y("a", i({
                                ref: r,
                                className: "fc-timegrid-axis-cushion fc-scrollgrid-shrink-cushion fc-scrollgrid-sync-inner"
                            }, s), o)))
                        })) : Y("th", {
                            className: "fc-timegrid-axis"
                        }, Y("div", {
                            className: "fc-timegrid-axis-frame",
                            style: {
                                height: n
                            }
                        }))
                    }, t.renderTableRowAxis = function(e) {
                        var n = t.context,
                            r = n.options,
                            o = n.viewApi,
                            i = {
                                text: r.allDayText,
                                view: o
                            };
                        return Y(Jr, {
                            hookProps: i,
                            classNames: r.allDayClassNames,
                            content: r.allDayContent,
                            defaultContent: Cs,
                            didMount: r.allDayDidMount,
                            willUnmount: r.allDayWillUnmount
                        }, (function(t, n, r, o) {
                            return Y("td", {
                                ref: t,
                                className: ["fc-timegrid-axis", "fc-scrollgrid-shrink"].concat(n).join(" ")
                            }, Y("div", {
                                className: "fc-timegrid-axis-frame fc-scrollgrid-shrink-frame" + (null == e ? " fc-timegrid-axis-frame-liquid" : ""),
                                style: {
                                    height: e
                                }
                            }, Y("span", {
                                className: "fc-timegrid-axis-cushion fc-scrollgrid-shrink-cushion fc-scrollgrid-sync-inner",
                                ref: r
                            }, o)))
                        }))
                    }, t.handleSlatCoords = function(e) {
                        t.setState({
                            slatCoords: e
                        })
                    }, t
                }
                return o(t, e), t.prototype.renderSimpleLayout = function(e, t, n) {
                    var r = this.context,
                        o = this.props,
                        i = [],
                        a = Oi(r.options);
                    return e && i.push({
                        type: "header",
                        key: "header",
                        isSticky: a,
                        chunk: {
                            elRef: this.headerElRef,
                            tableClassName: "fc-col-header",
                            rowContent: e
                        }
                    }), t && (i.push({
                        type: "body",
                        key: "all-day",
                        chunk: {
                            content: t
                        }
                    }), i.push({
                        type: "body",
                        key: "all-day-divider",
                        outerContent: Y("tr", {
                            className: "fc-scrollgrid-section"
                        }, Y("td", {
                            className: "fc-timegrid-divider " + r.theme.getClass("tableCellShaded")
                        }))
                    })), i.push({
                        type: "body",
                        key: "body",
                        liquid: !0,
                        expandRows: Boolean(r.options.expandRows),
                        chunk: {
                            scrollerElRef: this.scrollerElRef,
                            content: n
                        }
                    }), Y(io, {
                        viewSpec: r.viewSpec,
                        elRef: this.rootElRef
                    }, (function(e, t) {
                        return Y("div", {
                            className: ["fc-timegrid"].concat(t).join(" "),
                            ref: e
                        }, Y(Bi, {
                            liquid: !o.isHeightAuto && !o.forPrint,
                            cols: [{
                                width: "shrink"
                            }],
                            sections: i
                        }))
                    }))
                }, t.prototype.renderHScrollLayout = function(e, t, n, r, o, i, a) {
                    var s = this,
                        l = this.context.pluginHooks.scrollGridImpl;
                    if (!l) throw new Error("No ScrollGrid implementation");
                    var c = this.context,
                        u = this.props,
                        d = !u.forPrint && Oi(c.options),
                        f = !u.forPrint && zi(c.options),
                        p = [];
                    e && p.push({
                        type: "header",
                        key: "header",
                        isSticky: d,
                        syncRowHeights: !0,
                        chunks: [{
                            key: "axis",
                            rowContent: function(e) {
                                return Y("tr", null, s.renderHeadAxis("day", e.rowSyncHeights[0]))
                            }
                        }, {
                            key: "cols",
                            elRef: this.headerElRef,
                            tableClassName: "fc-col-header",
                            rowContent: e
                        }]
                    }), t && (p.push({
                        type: "body",
                        key: "all-day",
                        syncRowHeights: !0,
                        chunks: [{
                            key: "axis",
                            rowContent: function(e) {
                                return Y("tr", null, s.renderTableRowAxis(e.rowSyncHeights[0]))
                            }
                        }, {
                            key: "cols",
                            content: t
                        }]
                    }), p.push({
                        key: "all-day-divider",
                        type: "body",
                        outerContent: Y("tr", {
                            className: "fc-scrollgrid-section"
                        }, Y("td", {
                            colSpan: 2,
                            className: "fc-timegrid-divider " + c.theme.getClass("tableCellShaded")
                        }))
                    }));
                    var h = c.options.nowIndicator;
                    return p.push({
                        type: "body",
                        key: "body",
                        liquid: !0,
                        expandRows: Boolean(c.options.expandRows),
                        chunks: [{
                            key: "axis",
                            content: function(e) {
                                return Y("div", {
                                    className: "fc-timegrid-axis-chunk"
                                }, Y("table", {
                                    style: {
                                        height: e.expandRows ? e.clientHeight : ""
                                    }
                                }, e.tableColGroupNode, Y("tbody", null, Y(Es, {
                                    slatMetas: i
                                }))), Y("div", {
                                    className: "fc-timegrid-now-indicator-container"
                                }, Y(hi, {
                                    unit: h ? "minute" : "day"
                                }, (function(e) {
                                    var t = h && a && a.safeComputeTop(e);
                                    return "number" == typeof t ? Y(Fi, {
                                        isAxis: !0,
                                        date: e
                                    }, (function(e, n, r, o) {
                                        return Y("div", {
                                            ref: e,
                                            className: ["fc-timegrid-now-indicator-arrow"].concat(n).join(" "),
                                            style: {
                                                top: t
                                            }
                                        }, o)
                                    })) : null
                                }))))
                            }
                        }, {
                            key: "cols",
                            scrollerElRef: this.scrollerElRef,
                            content: n
                        }]
                    }), f && p.push({
                        key: "footer",
                        type: "footer",
                        isSticky: !0,
                        chunks: [{
                            key: "axis",
                            content: Hi
                        }, {
                            key: "cols",
                            content: Hi
                        }]
                    }), Y(io, {
                        viewSpec: c.viewSpec,
                        elRef: this.rootElRef
                    }, (function(e, t) {
                        return Y("div", {
                            className: ["fc-timegrid"].concat(t).join(" "),
                            ref: e
                        }, Y(l, {
                            liquid: !u.isHeightAuto && !u.forPrint,
                            colGroups: [{
                                width: "shrink",
                                cols: [{
                                    width: "shrink"
                                }]
                            }, {
                                cols: [{
                                    span: r,
                                    minWidth: o
                                }]
                            }],
                            sections: p
                        }))
                    }))
                }, t.prototype.getAllDayMaxEventProps = function() {
                    var e = this.context.options,
                        t = e.dayMaxEvents,
                        n = e.dayMaxEventRows;
                    return !0 !== t && !0 !== n || (t = void 0, n = 5), {
                        dayMaxEvents: t,
                        dayMaxEventRows: n
                    }
                }, t
            }(Yr);

        function Cs(e) {
            return e.text
        }
        var Rs = function() {
                function e(e, t, n) {
                    this.positions = e, this.dateProfile = t, this.slotDuration = n
                }
                return e.prototype.safeComputeTop = function(e) {
                    var t = this.dateProfile;
                    if (dn(t.currentRange, e)) {
                        var n = xe(e),
                            r = e.valueOf() - n.valueOf();
                        if (r >= ot(t.slotMinTime) && r < ot(t.slotMaxTime)) return this.computeTimeTop(Ke(r))
                    }
                    return null
                }, e.prototype.computeDateTop = function(e, t) {
                    return t || (t = xe(e)), this.computeTimeTop(Ke(e.valueOf() - t.valueOf()))
                }, e.prototype.computeTimeTop = function(e) {
                    var t, n, r = this.positions,
                        o = this.dateProfile,
                        i = r.els.length,
                        a = (e.milliseconds - ot(o.slotMinTime)) / ot(this.slotDuration);
                    return a = Math.max(0, a), a = Math.min(i, a), t = Math.floor(a), n = a - (t = Math.min(t, i - 1)), r.tops[t] + r.getHeight(t) * n
                }, e
            }(),
            xs = function(e) {
                function t() {
                    return null !== e && e.apply(this, arguments) || this
                }
                return o(t, e), t.prototype.render = function() {
                    var e = this.props,
                        t = this.context,
                        n = t.options,
                        r = e.slatElRefs;
                    return Y("tbody", null, e.slatMetas.map((function(o, a) {
                        var s = {
                                time: o.time,
                                date: t.dateEnv.toDate(o.date),
                                view: t.viewApi
                            },
                            l = ["fc-timegrid-slot", "fc-timegrid-slot-lane", o.isLabeled ? "" : "fc-timegrid-slot-minor"];
                        return Y("tr", {
                            key: o.key,
                            ref: r.createRef(o.key)
                        }, e.axis && Y(ws, i({}, o)), Y(Jr, {
                            hookProps: s,
                            classNames: n.slotLaneClassNames,
                            content: n.slotLaneContent,
                            didMount: n.slotLaneDidMount,
                            willUnmount: n.slotLaneWillUnmount
                        }, (function(e, t, n, r) {
                            return Y("td", {
                                ref: e,
                                className: l.concat(t).join(" "),
                                "data-time": o.isoTimeStr
                            }, r)
                        })))
                    })))
                }, t
            }(_r),
            ks = function(e) {
                function t() {
                    var t = null !== e && e.apply(this, arguments) || this;
                    return t.rootElRef = Q(), t.slatElRefs = new Ai, t
                }
                return o(t, e), t.prototype.render = function() {
                    var e = this.props,
                        t = this.context;
                    return Y("div", {
                        className: "fc-timegrid-slots",
                        ref: this.rootElRef
                    }, Y("table", {
                        className: t.theme.getClass("table"),
                        style: {
                            minWidth: e.tableMinWidth,
                            width: e.clientWidth,
                            height: e.minHeight
                        }
                    }, e.tableColGroupNode, Y(xs, {
                        slatElRefs: this.slatElRefs,
                        axis: e.axis,
                        slatMetas: e.slatMetas
                    })))
                }, t.prototype.componentDidMount = function() {
                    this.updateSizing()
                }, t.prototype.componentDidUpdate = function() {
                    this.updateSizing()
                }, t.prototype.componentWillUnmount = function() {
                    this.props.onCoords && this.props.onCoords(null)
                }, t.prototype.updateSizing = function() {
                    var e, t = this.context,
                        n = this.props;
                    n.onCoords && null !== n.clientWidth && (this.rootElRef.current.offsetHeight && n.onCoords(new Rs(new Dr(this.rootElRef.current, (e = this.slatElRefs.currentMap, n.slatMetas.map((function(t) {
                        return e[t.key]
                    }))), !1, !0), this.props.dateProfile, t.options.slotDuration)))
                }, t
            }(_r);

        function Ts(e, t) {
            var n, r = [];
            for (n = 0; n < t; n += 1) r.push([]);
            if (e)
                for (n = 0; n < e.length; n += 1) r[e[n].col].push(e[n]);
            return r
        }

        function Ms(e, t) {
            var n = [];
            if (e) {
                for (a = 0; a < t; a += 1) n[a] = {
                    affectedInstances: e.affectedInstances,
                    isEvent: e.isEvent,
                    segs: []
                };
                for (var r = 0, o = e.segs; r < o.length; r++) {
                    var i = o[r];
                    n[i.col].segs.push(i)
                }
            } else
                for (var a = 0; a < t; a += 1) n[a] = null;
            return n
        }

        function Is(e, t, n, r, o) {
            return _s(e, t, n, r),
                function(e, t) {
                    for (var n = 0, r = e; n < r.length; n++) {
                        (u = r[n]).level = null, u.forwardCoord = null, u.backwardCoord = null, u.forwardPressure = null
                    }
                    var o, i = function(e) {
                        var t, n, r, o = [];
                        for (t = 0; t < e.length; t += 1) {
                            for (n = e[t], r = 0; r < o.length && Ns(n, o[r]).length; r += 1);
                            n.level = r, (o[r] || (o[r] = [])).push(n)
                        }
                        return o
                    }(e = mn(e, t));
                    if (function(e) {
                        var t, n, r, o, i;
                        for (t = 0; t < e.length; t += 1)
                            for (n = e[t], r = 0; r < n.length; r += 1)
                                for ((o = n[r]).forwardSegs = [], i = t + 1; i < e.length; i += 1) Ns(o, e[i], o.forwardSegs)
                    }(i), o = i[0]) {
                        for (var a = 0, s = o; a < s.length; a++) {
                            Ps(u = s[a])
                        }
                        for (var l = 0, c = o; l < c.length; l++) {
                            var u;
                            Hs(u = c[l], 0, 0, t)
                        }
                    }
                    return e
                }(e, o)
        }

        function _s(e, t, n, r) {
            for (var o = 0, i = e; o < i.length; o++) {
                var a = i[o];
                a.top = n.computeDateTop(a.start, t), a.bottom = Math.max(a.top + (r || 0), n.computeDateTop(a.end, t))
            }
        }

        function Ns(e, t, n) {
            void 0 === n && (n = []);
            for (var r = 0; r < t.length; r += 1) o = e, i = t[r], o.bottom > i.top && o.top < i.bottom && n.push(t[r]);
            var o, i;
            return n
        }

        function Ps(e) {
            var t, n, r = e.forwardSegs,
                o = 0;
            if (null == e.forwardPressure) {
                for (t = 0; t < r.length; t += 1) Ps(n = r[t]), o = Math.max(o, 1 + n.forwardPressure);
                e.forwardPressure = o
            }
        }

        function Hs(e, t, n, r) {
            var o, i = e.forwardSegs;
            if (null == e.forwardCoord)
                for (i.length ? (! function(e, t) {
                    var n = e.map(Os),
                        r = [{
                            field: "forwardPressure",
                            order: -1
                        }, {
                            field: "backwardCoord",
                            order: 1
                        }].concat(t);
                    n.sort((function(e, t) {
                        return ge(e, t, r)
                    })), n.map((function(e) {
                        return e._seg
                    }))
                }(i, r), Hs(i[0], t + 1, n, r), e.forwardCoord = i[0].backwardCoord) : e.forwardCoord = 1, e.backwardCoord = e.forwardCoord - (e.forwardCoord - n) / (t + 1), o = 0; o < i.length; o += 1) Hs(i[o], 0, e.forwardCoord, r)
        }

        function Os(e) {
            var t = yn(e);
            return t.forwardPressure = e.forwardPressure, t.backwardCoord = e.backwardCoord, t
        }
        var zs = xt({
                hour: "numeric",
                minute: "2-digit",
                meridiem: !1
            }),
            Bs = function(e) {
                function t() {
                    return null !== e && e.apply(this, arguments) || this
                }
                return o(t, e), t.prototype.render = function() {
                    var e = ["fc-timegrid-event", "fc-v-event"];
                    return this.props.isCondensed && e.push("fc-timegrid-event-condensed"), Y(Li, i({}, this.props, {
                        defaultTimeFormat: zs,
                        extraClassNames: e
                    }))
                }, t
            }(_r),
            Ws = function(e) {
                function t() {
                    return null !== e && e.apply(this, arguments) || this
                }
                return o(t, e), t.prototype.render = function() {
                    var e = this.props;
                    return Y(ji, {
                        date: e.date,
                        dateProfile: e.dateProfile,
                        todayRange: e.todayRange,
                        extraHookProps: e.extraHookProps
                    }, (function(e, t) {
                        return t && Y("div", {
                            className: "fc-timegrid-col-misc",
                            ref: e
                        }, t)
                    }))
                }, t
            }(_r);
        Ko.timeGridEventCondensedHeight = 30;
        var Ls = function(e) {
                function t() {
                    return null !== e && e.apply(this, arguments) || this
                }
                return o(t, e), t.prototype.render = function() {
                    var e = this,
                        t = this.props,
                        n = this.context.options.selectMirror,
                        r = t.eventDrag && t.eventDrag.segs || t.eventResize && t.eventResize.segs || n && t.dateSelectionSegs || [],
                        o = t.eventDrag && t.eventDrag.affectedInstances || t.eventResize && t.eventResize.affectedInstances || {};
                    return Y(Yi, {
                        elRef: t.elRef,
                        date: t.date,
                        dateProfile: t.dateProfile,
                        todayRange: t.todayRange,
                        extraHookProps: t.extraHookProps
                    }, (function(a, s, l) {
                        return Y("td", i({
                            ref: a,
                            className: ["fc-timegrid-col"].concat(s, t.extraClassNames || []).join(" ")
                        }, l, t.extraDataAttrs), Y("div", {
                            className: "fc-timegrid-col-frame"
                        }, Y("div", {
                            className: "fc-timegrid-col-bg"
                        }, e.renderFillSegs(t.businessHourSegs, "non-business"), e.renderFillSegs(t.bgEventSegs, "bg-event"), e.renderFillSegs(t.dateSelectionSegs, "highlight")), Y("div", {
                            className: "fc-timegrid-col-events"
                        }, e.renderFgSegs(t.fgEventSegs, o)), Y("div", {
                            className: "fc-timegrid-col-events"
                        }, e.renderFgSegs(r, {}, Boolean(t.eventDrag), Boolean(t.eventResize), Boolean(n))), Y("div", {
                            className: "fc-timegrid-now-indicator-container"
                        }, e.renderNowIndicator(t.nowIndicatorSegs)), Y(Ws, {
                            date: t.date,
                            dateProfile: t.dateProfile,
                            todayRange: t.todayRange,
                            extraHookProps: t.extraHookProps
                        })))
                    }))
                }, t.prototype.renderFgSegs = function(e, t, n, r, o) {
                    var i = this.props;
                    return i.forPrint ? this.renderPrintFgSegs(e) : i.slatCoords ? this.renderPositionedFgSegs(e, t, n, r, o) : null
                }, t.prototype.renderPrintFgSegs = function(e) {
                    var t = this.props;
                    return (e = mn(e, this.context.options.eventOrder)).map((function(e) {
                        return Y("div", {
                            className: "fc-timegrid-event-harness",
                            key: e.eventRange.instance.instanceId
                        }, Y(Bs, i({
                            seg: e,
                            isDragging: !1,
                            isResizing: !1,
                            isDateSelecting: !1,
                            isSelected: !1,
                            isCondensed: !1
                        }, Dn(e, t.todayRange, t.nowDate))))
                    }))
                }, t.prototype.renderPositionedFgSegs = function(e, t, n, r, o) {
                    var a = this,
                        s = this.context,
                        l = this.props;
                    return (e = Is(e, l.date, l.slatCoords, s.options.eventMinHeight, s.options.eventOrder)).map((function(e) {
                        var s = e.eventRange.instance.instanceId,
                            c = n || r || o ? i({
                                left: 0,
                                right: 0
                            }, a.computeSegTopBottomCss(e)) : a.computeFgSegPositionCss(e);
                        return Y("div", {
                            className: "fc-timegrid-event-harness" + (e.level > 0 ? " fc-timegrid-event-harness-inset" : ""),
                            key: s,
                            style: i({
                                visibility: t[s] ? "hidden" : ""
                            }, c)
                        }, Y(Bs, i({
                            seg: e,
                            isDragging: n,
                            isResizing: r,
                            isDateSelecting: o,
                            isSelected: s === l.eventSelection,
                            isCondensed: e.bottom - e.top < Ko.timeGridEventCondensedHeight
                        }, Dn(e, l.todayRange, l.nowDate))))
                    }))
                }, t.prototype.renderFillSegs = function(e, t) {
                    var n = this,
                        r = this.context,
                        o = this.props;
                    if (!o.slatCoords) return null;
                    _s(e, o.date, o.slatCoords, r.options.eventMinHeight);
                    var a = e.map((function(e) {
                        return Y("div", {
                            key: An(e.eventRange),
                            className: "fc-timegrid-bg-harness",
                            style: n.computeSegTopBottomCss(e)
                        }, "bg-event" === t ? Y(Qi, i({
                            seg: e
                        }, Dn(e, o.todayRange, o.nowDate))) : qi(t))
                    }));
                    return Y(Z, null, a)
                }, t.prototype.renderNowIndicator = function(e) {
                    var t = this.props,
                        n = t.slatCoords,
                        r = t.date;
                    return n ? e.map((function(e, t) {
                        return Y(Fi, {
                            isAxis: !1,
                            date: r,
                            key: t
                        }, (function(t, o, i, a) {
                            return Y("div", {
                                ref: t,
                                className: ["fc-timegrid-now-indicator-line"].concat(o).join(" "),
                                style: {
                                    top: n.computeDateTop(e.start, r)
                                }
                            }, a)
                        }))
                    })) : null
                }, t.prototype.computeFgSegPositionCss = function(e) {
                    var t, n, r = this.context,
                        o = r.isRtl,
                        a = r.options.slotEventOverlap,
                        s = e.backwardCoord,
                        l = e.forwardCoord;
                    a && (l = Math.min(1, s + 2 * (l - s))), o ? (t = 1 - l, n = s) : (t = s, n = 1 - l);
                    var c = {
                        zIndex: e.level + 1,
                        left: 100 * t + "%",
                        right: 100 * n + "%"
                    };
                    return a && e.forwardPressure && (c[o ? "marginLeft" : "marginRight"] = 20), i(i({}, c), this.computeSegTopBottomCss(e))
                }, t.prototype.computeSegTopBottomCss = function(e) {
                    return {
                        top: e.top,
                        bottom: -e.bottom
                    }
                }, t
            }(_r),
            Us = function(e) {
                function t() {
                    var t = null !== e && e.apply(this, arguments) || this;
                    return t.splitFgEventSegs = ut(Ts), t.splitBgEventSegs = ut(Ts), t.splitBusinessHourSegs = ut(Ts), t.splitNowIndicatorSegs = ut(Ts), t.splitDateSelectionSegs = ut(Ts), t.splitEventDrag = ut(Ms), t.splitEventResize = ut(Ms), t.rootElRef = Q(), t.cellElRefs = new Ai, t
                }
                return o(t, e), t.prototype.render = function() {
                    var e = this,
                        t = this.props,
                        n = this.context.options.nowIndicator && t.slatCoords && t.slatCoords.safeComputeTop(t.nowDate),
                        r = t.cells.length,
                        o = this.splitFgEventSegs(t.fgEventSegs, r),
                        i = this.splitBgEventSegs(t.bgEventSegs, r),
                        a = this.splitBusinessHourSegs(t.businessHourSegs, r),
                        s = this.splitNowIndicatorSegs(t.nowIndicatorSegs, r),
                        l = this.splitDateSelectionSegs(t.dateSelectionSegs, r),
                        c = this.splitEventDrag(t.eventDrag, r),
                        u = this.splitEventResize(t.eventResize, r);
                    return Y("div", {
                        className: "fc-timegrid-cols",
                        ref: this.rootElRef
                    }, Y("table", {
                        style: {
                            minWidth: t.tableMinWidth,
                            width: t.clientWidth
                        }
                    }, t.tableColGroupNode, Y("tbody", null, Y("tr", null, t.axis && Y("td", {
                        className: "fc-timegrid-col fc-timegrid-axis"
                    }, Y("div", {
                        className: "fc-timegrid-col-frame"
                    }, Y("div", {
                        className: "fc-timegrid-now-indicator-container"
                    }, "number" == typeof n && Y(Fi, {
                        isAxis: !0,
                        date: t.nowDate
                    }, (function(e, t, r, o) {
                        return Y("div", {
                            ref: e,
                            className: ["fc-timegrid-now-indicator-arrow"].concat(t).join(" "),
                            style: {
                                top: n
                            }
                        }, o)
                    }))))), t.cells.map((function(n, r) {
                        return Y(Ls, {
                            key: n.key,
                            elRef: e.cellElRefs.createRef(n.key),
                            dateProfile: t.dateProfile,
                            date: n.date,
                            nowDate: t.nowDate,
                            todayRange: t.todayRange,
                            extraHookProps: n.extraHookProps,
                            extraDataAttrs: n.extraDataAttrs,
                            extraClassNames: n.extraClassNames,
                            fgEventSegs: o[r],
                            bgEventSegs: i[r],
                            businessHourSegs: a[r],
                            nowIndicatorSegs: s[r],
                            dateSelectionSegs: l[r],
                            eventDrag: c[r],
                            eventResize: u[r],
                            slatCoords: t.slatCoords,
                            eventSelection: t.eventSelection,
                            forPrint: t.forPrint
                        })
                    }))))))
                }, t.prototype.componentDidMount = function() {
                    this.updateCoords()
                }, t.prototype.componentDidUpdate = function() {
                    this.updateCoords()
                }, t.prototype.updateCoords = function() {
                    var e, t = this.props;
                    t.onColCoords && null !== t.clientWidth && t.onColCoords(new Dr(this.rootElRef.current, (e = this.cellElRefs.currentMap, t.cells.map((function(t) {
                        return e[t.key]
                    }))), !0, !1))
                }, t
            }(_r);
        var Fs = function(e) {
            function t() {
                var t = null !== e && e.apply(this, arguments) || this;
                return t.processSlotOptions = ut(Vs), t.state = {
                    slatCoords: null
                }, t.handleScrollRequest = function(e) {
                    var n = t.props.onScrollTopRequest,
                        r = t.state.slatCoords;
                    if (n && r) {
                        if (e.time) {
                            var o = r.computeTimeTop(e.time);
                            (o = Math.ceil(o)) && (o += 1), n(o)
                        }
                        return !0
                    }
                    return !1
                }, t.handleColCoords = function(e) {
                    t.colCoords = e
                }, t.handleSlatCoords = function(e) {
                    t.setState({
                        slatCoords: e
                    }), t.props.onSlatCoords && t.props.onSlatCoords(e)
                }, t
            }
            return o(t, e), t.prototype.render = function() {
                var e = this.props,
                    t = this.state;
                return Y("div", {
                    className: "fc-timegrid-body",
                    ref: e.rootElRef,
                    style: {
                        width: e.clientWidth,
                        minWidth: e.tableMinWidth
                    }
                }, Y(ks, {
                    axis: e.axis,
                    dateProfile: e.dateProfile,
                    slatMetas: e.slatMetas,
                    clientWidth: e.clientWidth,
                    minHeight: e.expandRows ? e.clientHeight : "",
                    tableMinWidth: e.tableMinWidth,
                    tableColGroupNode: e.axis ? e.tableColGroupNode : null,
                    onCoords: this.handleSlatCoords
                }), Y(Us, {
                    cells: e.cells,
                    axis: e.axis,
                    dateProfile: e.dateProfile,
                    businessHourSegs: e.businessHourSegs,
                    bgEventSegs: e.bgEventSegs,
                    fgEventSegs: e.fgEventSegs,
                    dateSelectionSegs: e.dateSelectionSegs,
                    eventSelection: e.eventSelection,
                    eventDrag: e.eventDrag,
                    eventResize: e.eventResize,
                    todayRange: e.todayRange,
                    nowDate: e.nowDate,
                    nowIndicatorSegs: e.nowIndicatorSegs,
                    clientWidth: e.clientWidth,
                    tableMinWidth: e.tableMinWidth,
                    tableColGroupNode: e.tableColGroupNode,
                    slatCoords: t.slatCoords,
                    onColCoords: this.handleColCoords,
                    forPrint: e.forPrint
                }))
            }, t.prototype.componentDidMount = function() {
                this.scrollResponder = this.context.createScrollResponder(this.handleScrollRequest)
            }, t.prototype.componentDidUpdate = function(e) {
                this.scrollResponder.update(e.dateProfile !== this.props.dateProfile)
            }, t.prototype.componentWillUnmount = function() {
                this.scrollResponder.detach()
            }, t.prototype.positionToHit = function(e, t) {
                var n = this.context,
                    r = n.dateEnv,
                    o = n.options,
                    i = this.colCoords,
                    a = this.props.dateProfile,
                    s = this.state.slatCoords,
                    l = this.processSlotOptions(this.props.slotDuration, o.snapDuration),
                    c = l.snapDuration,
                    u = l.snapsPerSlot,
                    d = i.leftToIndex(e),
                    f = s.positions.topToIndex(t);
                if (null != d && null != f) {
                    var p = s.positions.tops[f],
                        h = s.positions.getHeight(f),
                        g = (t - p) / h,
                        v = f * u + Math.floor(g * u),
                        m = this.props.cells[d].date,
                        y = tt(a.slotMinTime, nt(c, v)),
                        b = r.add(m, y);
                    return {
                        col: d,
                        dateSpan: {
                            range: {
                                start: b,
                                end: r.add(b, c)
                            },
                            allDay: !1
                        },
                        dayEl: i.els[d],
                        relativeRect: {
                            left: i.lefts[d],
                            right: i.rights[d],
                            top: p,
                            bottom: p + h
                        }
                    }
                }
                return null
            }, t
        }(_r);

        function Vs(e, t) {
            var n = t || e,
                r = it(e, n);
            return null === r && (n = e, r = 1), {
                snapDuration: n,
                snapsPerSlot: r
            }
        }
        var js = function(e) {
                function t() {
                    return null !== e && e.apply(this, arguments) || this
                }
                return o(t, e), t.prototype.sliceRange = function(e, t) {
                    for (var n = [], r = 0; r < t.length; r += 1) {
                        var o = ln(e, t[r]);
                        o && n.push({
                            start: o.start,
                            end: o.end,
                            isStart: o.start.valueOf() === e.start.valueOf(),
                            isEnd: o.end.valueOf() === e.end.valueOf(),
                            col: r
                        })
                    }
                    return n
                }, t
            }(wi),
            Gs = function(e) {
                function t() {
                    var t = null !== e && e.apply(this, arguments) || this;
                    return t.buildDayRanges = ut(Ys), t.slicer = new js, t.timeColsRef = Q(), t.handleRootEl = function(e) {
                        e ? t.context.registerInteractiveComponent(t, {
                            el: e
                        }) : t.context.unregisterInteractiveComponent(t)
                    }, t
                }
                return o(t, e), t.prototype.render = function() {
                    var e = this,
                        t = this.props,
                        n = this.context,
                        r = t.dateProfile,
                        o = t.dayTableModel,
                        a = n.options.nowIndicator,
                        s = this.buildDayRanges(o, r, n.dateEnv);
                    return Y(hi, {
                        unit: a ? "minute" : "day"
                    }, (function(l, c) {
                        return Y(Fs, i({
                            ref: e.timeColsRef,
                            rootElRef: e.handleRootEl
                        }, e.slicer.sliceProps(t, r, null, n, s), {
                            forPrint: t.forPrint,
                            axis: t.axis,
                            dateProfile: r,
                            slatMetas: t.slatMetas,
                            slotDuration: t.slotDuration,
                            cells: o.cells[0],
                            tableColGroupNode: t.tableColGroupNode,
                            tableMinWidth: t.tableMinWidth,
                            clientWidth: t.clientWidth,
                            clientHeight: t.clientHeight,
                            expandRows: t.expandRows,
                            nowDate: l,
                            nowIndicatorSegs: a && e.slicer.sliceNowDate(l, n, s),
                            todayRange: c,
                            onScrollTopRequest: t.onScrollTopRequest,
                            onSlatCoords: t.onSlatCoords
                        }))
                    }))
                }, t.prototype.queryHit = function(e, t) {
                    var n = this.timeColsRef.current.positionToHit(e, t);
                    return n ? {
                        component: this,
                        dateSpan: n.dateSpan,
                        dayEl: n.dayEl,
                        rect: {
                            left: n.relativeRect.left,
                            right: n.relativeRect.right,
                            top: n.relativeRect.top,
                            bottom: n.relativeRect.bottom
                        },
                        layer: 0
                    } : null
                }, t
            }(Yr);

        function Ys(e, t, n) {
            for (var r = [], o = 0, i = e.headerDates; o < i.length; o++) {
                var a = i[o];
                r.push({
                    start: n.add(a, t.slotMinTime),
                    end: n.add(a, t.slotMaxTime)
                })
            }
            return r
        }
        var qs = [{
            hours: 1
        }, {
            minutes: 30
        }, {
            minutes: 15
        }, {
            seconds: 30
        }, {
            seconds: 15
        }];

        function Qs(e, t, n, r, o) {
            for (var i, a = new Date(0), s = e, l = Ke(0), c = n || function(e) {
                var t, n, r;
                for (t = qs.length - 1; t >= 0; t -= 1)
                    if (n = Ke(qs[t]), null !== (r = it(n, e)) && r > 1) return n;
                return e
            }(r), u = []; ot(s) < ot(t);) {
                var d = o.add(a, s),
                    f = null !== it(l, c);
                u.push({
                    date: d,
                    time: s,
                    key: d.toISOString(),
                    isoTimeStr: (i = d, me(i.getUTCHours(), 2) + ":" + me(i.getUTCMinutes(), 2) + ":" + me(i.getUTCSeconds(), 2)),
                    isLabeled: f
                }), s = tt(s, r), l = tt(l, r)
            }
            return u
        }
        var Zs = function(e) {
            function t() {
                var t = null !== e && e.apply(this, arguments) || this;
                return t.buildTimeColsModel = ut(Xs), t.buildSlatMetas = ut(Qs), t
            }
            return o(t, e), t.prototype.render = function() {
                var e = this,
                    t = this.context,
                    n = t.options,
                    r = t.dateEnv,
                    o = t.dateProfileGenerator,
                    a = this.props,
                    s = a.dateProfile,
                    l = this.buildTimeColsModel(s, o),
                    c = this.allDaySplitter.splitProps(a),
                    u = this.buildSlatMetas(s.slotMinTime, s.slotMaxTime, n.slotLabelInterval, n.slotDuration, r),
                    d = n.dayMinWidth,
                    f = !d,
                    p = d,
                    h = n.dayHeaders && Y(vi, {
                        dates: l.headerDates,
                        dateProfile: s,
                        datesRepDistinctDays: !0,
                        renderIntro: f ? this.renderHeadAxis : null
                    }),
                    g = !1 !== n.allDaySlot && function(t) {
                        return Y(Ta, i({}, c.allDay, {
                            dateProfile: s,
                            dayTableModel: l,
                            nextDayThreshold: n.nextDayThreshold,
                            tableMinWidth: t.tableMinWidth,
                            colGroupNode: t.tableColGroupNode,
                            renderRowIntro: f ? e.renderTableRowAxis : null,
                            showWeekNumbers: !1,
                            expandRows: !1,
                            headerAlignElRef: e.headerElRef,
                            clientWidth: t.clientWidth,
                            clientHeight: t.clientHeight,
                            forPrint: a.forPrint
                        }, e.getAllDayMaxEventProps()))
                    },
                    v = function(t) {
                        return Y(Gs, i({}, c.timed, {
                            dayTableModel: l,
                            dateProfile: s,
                            axis: f,
                            slotDuration: n.slotDuration,
                            slatMetas: u,
                            forPrint: a.forPrint,
                            tableColGroupNode: t.tableColGroupNode,
                            tableMinWidth: t.tableMinWidth,
                            clientWidth: t.clientWidth,
                            clientHeight: t.clientHeight,
                            onSlatCoords: e.handleSlatCoords,
                            expandRows: t.expandRows,
                            onScrollTopRequest: e.handleScrollTopRequest
                        }))
                    };
                return p ? this.renderHScrollLayout(h, g, v, l.colCnt, d, u, this.state.slatCoords) : this.renderSimpleLayout(h, g, v)
            }, t
        }(As);

        function Xs(e, t) {
            var n = new yi(e.renderRange, t);
            return new bi(n, !1)
        }
        var Js = qr({
                initialView: "timeGridWeek",
                optionRefiners: {
                    allDaySlot: Boolean
                },
                views: {
                    timeGrid: {
                        component: Zs,
                        usesMinMaxTime: !0,
                        allDaySlot: !0,
                        slotDuration: "00:30:00",
                        slotEventOverlap: !0
                    },
                    timeGridDay: {
                        type: "timeGrid",
                        duration: {
                            days: 1
                        }
                    },
                    timeGridWeek: {
                        type: "timeGrid",
                        duration: {
                            weeks: 1
                        }
                    }
                }
            }),
            Ks = n(141),
            $s = {
                insert: "head",
                singleton: !1
            },
            el = (F()(Ks.a, $s), Ks.a.locals, ["GPL-My-Project-Is-Open-Source", "CC-Attribution-NonCommercial-NoDerivatives"]),
            tl = {
                position: "absolute",
                zIndex: 99999,
                bottom: "1px",
                left: "1px",
                background: "#eee",
                borderColor: "#ddd",
                borderStyle: "solid",
                borderWidth: "1px 1px 0 0",
                padding: "2px 4px",
                fontSize: "12px",
                borderTopRightRadius: "3px"
            };
        var nl, rl = qr({
                optionRefiners: {
                    schedulerLicenseKey: String
                },
                viewContainerAppends: [function(e) {
                    var t = e.options.schedulerLicenseKey,
                        n = "undefined" != typeof window ? window.location.href : "";
                    if (!/\w+:\/\/fullcalendar\.io\/|\/examples\/[\w-]+\.html$/.test(n)) {
                        var r = function(e) {
                            if (-1 !== el.indexOf(e)) return "valid";
                            var t = (e || "").match(/^(\d+)-fcs-(\d+)$/);
                            if (t && 10 === t[1].length) {
                                var n = new Date(1e3 * parseInt(t[2], 10)),
                                    r = new Date(Ko.mockSchedulerReleaseDate || "2021-01-16");
                                if (Pe(r)) return De(r, -372) < n ? "valid" : "outdated"
                            }
                            return "invalid"
                        }(t);
                        if ("valid" !== r) return Y("div", {
                            className: "fc-license-message",
                            style: tl
                        }, "outdated" === r ? Y(Z, null, "Your license key is too old to work with this version. ", Y("a", {
                            href: "http://fullcalendar.io/docs/schedulerLicenseKey#outdated"
                        }, "More Info")) : Y(Z, null, "Your license key is invalid. ", Y("a", {
                            href: "http://fullcalendar.io/docs/schedulerLicenseKey#invalid"
                        }, "More Info")))
                    }
                    return null
                }]
            }),
            ol = "wheel mousewheel DomMouseScroll MozMousePixelScroll".split(" "),
            il = function() {
                function e(e) {
                    var t = this;
                    this.el = e, this.emitter = new Er, this.isScrolling = !1, this.isTouching = !1, this.isRecentlyWheeled = !1, this.isRecentlyScrolled = !1, this.wheelWaiter = new No(this._handleWheelWaited.bind(this)), this.scrollWaiter = new No(this._handleScrollWaited.bind(this)), this.handleScroll = function() {
                        t.startScroll(), t.emitter.trigger("scroll", t.isRecentlyWheeled, t.isTouching), t.isRecentlyScrolled = !0, t.scrollWaiter.request(500)
                    }, this.handleWheel = function() {
                        t.isRecentlyWheeled = !0, t.wheelWaiter.request(500)
                    }, this.handleTouchStart = function() {
                        t.isTouching = !0
                    }, this.handleTouchEnd = function() {
                        t.isTouching = !1, t.isRecentlyScrolled || t.endScroll()
                    }, e.addEventListener("scroll", this.handleScroll), e.addEventListener("touchstart", this.handleTouchStart, {
                        passive: !0
                    }), e.addEventListener("touchend", this.handleTouchEnd);
                    for (var n = 0, r = ol; n < r.length; n++) {
                        var o = r[n];
                        e.addEventListener(o, this.handleWheel)
                    }
                }
                return e.prototype.destroy = function() {
                    var e = this.el;
                    e.removeEventListener("scroll", this.handleScroll), e.removeEventListener("touchstart", this.handleTouchStart, {
                        passive: !0
                    }), e.removeEventListener("touchend", this.handleTouchEnd);
                    for (var t = 0, n = ol; t < n.length; t++) {
                        var r = n[t];
                        e.removeEventListener(r, this.handleWheel)
                    }
                }, e.prototype.startScroll = function() {
                    this.isScrolling || (this.isScrolling = !0, this.emitter.trigger("scrollStart", this.isRecentlyWheeled, this.isTouching))
                }, e.prototype.endScroll = function() {
                    this.isScrolling && (this.emitter.trigger("scrollEnd"), this.isScrolling = !1, this.isRecentlyScrolled = !0, this.isRecentlyWheeled = !1, this.scrollWaiter.clear(), this.wheelWaiter.clear())
                }, e.prototype._handleScrollWaited = function() {
                    this.isRecentlyScrolled = !1, this.isTouching || this.endScroll()
                }, e.prototype._handleWheelWaited = function() {
                    this.isRecentlyWheeled = !1
                }, e
            }();

        function al(e) {
            var t = e.scrollLeft;
            if ("rtl" === window.getComputedStyle(e).direction) switch (ll()) {
                case "negative":
                    t = e.scrollWidth - e.clientWidth + t;
                    break;
                case "reverse":
                    t = e.scrollWidth - e.clientWidth - t
            }
            return t
        }

        function sl(e, t) {
            if ("rtl" === window.getComputedStyle(e).direction) switch (ll()) {
                case "positive":
                    t = e.scrollWidth - e.clientWidth + t;
                    break;
                case "reverse":
                    t = -t
            }
            e.scrollLeft = t
        }

        function ll() {
            return nl || (nl = function() {
                var e, t = document.createElement("div");
                t.style.position = "absolute", t.style.top = "-1000px", t.style.width = "1px", t.style.height = "1px", t.style.overflow = "scroll", t.style.direction = "rtl", t.style.fontSize = "100px", t.innerHTML = "A", document.body.appendChild(t), t.scrollLeft > 0 ? e = "positive" : (t.scrollLeft = 1, e = t.scrollLeft > 0 ? "reverse" : "negative");
                return ee(t), e
            }())
        }
        var cl = "undefined" != typeof navigator && /Edge/.test(navigator.userAgent),
            ul = function() {
                function e(e, t) {
                    var n = this;
                    this.scrollEl = e, this.isRtl = t, this.usingRelative = null, this.updateSize = function() {
                        var e = n.scrollEl,
                            t = re(e, ".fc-sticky"),
                            r = n.queryElGeoms(t),
                            o = e.clientWidth,
                            i = e.clientHeight;
                        n.usingRelative ? function(e, t, n, r, o) {
                            e.forEach((function(e, i) {
                                var a, s, l = t[i],
                                    c = l.naturalBound,
                                    u = l.parentBound,
                                    d = u.right - u.left,
                                    f = u.bottom - u.bottom;
                                d > r || f > o ? (a = n[i].left - c.left, s = n[i].top - c.top) : (a = "", s = ""), ie(e, {
                                    position: "relative",
                                    left: a,
                                    right: -a,
                                    top: s
                                })
                            }))
                        }(t, r, n.computeElDestinations(r, o), o, i) : function(e, t, n) {
                            e.forEach((function(e, r) {
                                var o, i = t[r],
                                    a = i.textAlign,
                                    s = i.elWidth,
                                    l = i.parentBound,
                                    c = l.right - l.left;
                                ie(e, {
                                    left: o = "center" === a && c > n ? (n - s) / 2 : "",
                                    right: o,
                                    top: 0
                                })
                            }))
                        }(t, r, o)
                    }, this.usingRelative = ! function() {
                        var e = document.createElement("div");
                        e.className = "fc-sticky", document.body.appendChild(e);
                        var t = window.getComputedStyle(e).position;
                        if (ee(e), -1 !== t.indexOf("sticky")) return t;
                        return null
                    }() || cl && t, this.usingRelative && (this.listener = new il(e), this.listener.emitter.on("scrollEnd", this.updateSize))
                }
                return e.prototype.destroy = function() {
                    this.listener && this.listener.destroy()
                }, e.prototype.queryElGeoms = function(e) {
                    for (var t = this.scrollEl, n = this.isRtl, r = function(e) {
                        var t = e.getBoundingClientRect(),
                            n = br(e);
                        return {
                            left: t.left + n.borderLeft + n.scrollbarLeft - al(e),
                            top: t.top + n.borderTop - e.scrollTop
                        }
                    }(t), o = [], i = 0, a = e; i < a.length; i++) {
                        var s = a[i],
                            l = ir(wr(s.parentNode, !0, !0), -r.left, -r.top),
                            c = s.getBoundingClientRect(),
                            u = window.getComputedStyle(s),
                            d = window.getComputedStyle(s.parentNode).textAlign,
                            f = null;
                        "start" === d ? d = n ? "right" : "left" : "end" === d && (d = n ? "left" : "right"), "sticky" !== u.position && (f = ir(c, -r.left - (parseFloat(u.left) || 0), -r.top - (parseFloat(u.top) || 0))), o.push({
                            parentBound: l,
                            naturalBound: f,
                            elWidth: c.width,
                            elHeight: c.height,
                            textAlign: d
                        })
                    }
                    return o
                }, e.prototype.computeElDestinations = function(e, t) {
                    var n = this.scrollEl,
                        r = n.scrollTop,
                        o = al(n),
                        i = o + t;
                    return e.map((function(e) {
                        var t, n, a = e.elWidth,
                            s = e.elHeight,
                            l = e.parentBound,
                            c = e.naturalBound;
                        switch (e.textAlign) {
                            case "left":
                                t = o;
                                break;
                            case "right":
                                t = i - a;
                                break;
                            case "center":
                                t = (o + i) / 2 - a / 2
                        }
                        return t = Math.min(t, l.right - a), t = Math.max(t, l.left), n = r, n = Math.min(n, l.bottom - s), {
                            left: t,
                            top: n = Math.max(n, c.top)
                        }
                    }))
                }, e
            }();
        var dl = function(e) {
                function t() {
                    var t = null !== e && e.apply(this, arguments) || this;
                    return t.elRef = Q(), t.state = {
                        xScrollbarWidth: 0,
                        yScrollbarWidth: 0
                    }, t.handleScroller = function(e) {
                        t.scroller = e, Hr(t.props.scrollerRef, e)
                    }, t.handleSizing = function() {
                        var e = t.props;
                        "scroll-hidden" === e.overflowY && t.setState({
                            yScrollbarWidth: t.scroller.getYScrollbarWidth()
                        }), "scroll-hidden" === e.overflowX && t.setState({
                            xScrollbarWidth: t.scroller.getXScrollbarWidth()
                        })
                    }, t
                }
                return o(t, e), t.prototype.render = function() {
                    var e = this.props,
                        t = this.state,
                        n = this.context.isRtl && vr(),
                        r = 0,
                        o = 0,
                        i = 0;
                    return "scroll-hidden" === e.overflowX && (i = t.xScrollbarWidth), "scroll-hidden" === e.overflowY && null != t.yScrollbarWidth && (n ? r = t.yScrollbarWidth : o = t.yScrollbarWidth), Y("div", {
                        ref: this.elRef,
                        className: "fc-scroller-harness" + (e.liquid ? " fc-scroller-harness-liquid" : "")
                    }, Y(Di, {
                        ref: this.handleScroller,
                        elRef: this.props.scrollerElRef,
                        overflowX: "scroll-hidden" === e.overflowX ? "scroll" : e.overflowX,
                        overflowY: "scroll-hidden" === e.overflowY ? "scroll" : e.overflowY,
                        overcomeLeft: r,
                        overcomeRight: o,
                        overcomeBottom: i,
                        maxHeight: "number" == typeof e.maxHeight ? e.maxHeight + ("scroll-hidden" === e.overflowX ? t.xScrollbarWidth : 0) : "",
                        liquid: e.liquid,
                        liquidIsAbsolute: !0
                    }, e.children))
                }, t.prototype.componentDidMount = function() {
                    this.handleSizing(), this.context.addResizeHandler(this.handleSizing)
                }, t.prototype.componentDidUpdate = function(e) {
                    Ve(e, this.props) || this.handleSizing()
                }, t.prototype.componentWillUnmount = function() {
                    this.context.removeResizeHandler(this.handleSizing)
                }, t.prototype.needsXScrolling = function() {
                    return this.scroller.needsXScrolling()
                }, t.prototype.needsYScrolling = function() {
                    return this.scroller.needsYScrolling()
                }, t
            }(_r),
            fl = function() {
                function e(e, t) {
                    var n = this;
                    this.isVertical = e, this.scrollEls = t, this.isPaused = !1, this.scrollListeners = t.map((function(e) {
                        return n.bindScroller(e)
                    }))
                }
                return e.prototype.destroy = function() {
                    for (var e = 0, t = this.scrollListeners; e < t.length; e++) {
                        t[e].destroy()
                    }
                }, e.prototype.bindScroller = function(e) {
                    var t = this,
                        n = this.scrollEls,
                        r = this.isVertical,
                        o = new il(e);
                    return o.emitter.on("scroll", (function(o, i) {
                        if (!t.isPaused && ((!t.masterEl || t.masterEl !== e && (o || i)) && t.assignMaster(e), t.masterEl === e))
                            for (var a = 0, s = n; a < s.length; a++) {
                                var l = s[a];
                                l !== e && (r ? l.scrollTop = e.scrollTop : l.scrollLeft = e.scrollLeft)
                            }
                    })), o.emitter.on("scrollEnd", (function() {
                        t.masterEl === e && (t.masterEl = null)
                    })), o
                }, e.prototype.assignMaster = function(e) {
                    this.masterEl = e;
                    for (var t = 0, n = this.scrollListeners; t < n.length; t++) {
                        var r = n[t];
                        r.el !== e && r.endScroll()
                    }
                }, e.prototype.forceScrollLeft = function(e) {
                    this.isPaused = !0;
                    for (var t = 0, n = this.scrollListeners; t < n.length; t++) {
                        sl(n[t].el, e)
                    }
                    this.isPaused = !1
                }, e.prototype.forceScrollTop = function(e) {
                    this.isPaused = !0;
                    for (var t = 0, n = this.scrollListeners; t < n.length; t++) {
                        n[t].el.scrollTop = e
                    }
                    this.isPaused = !1
                }, e
            }(),
            pl = function(e) {
                function t() {
                    var t = null !== e && e.apply(this, arguments) || this;
                    return t.compileColGroupStats = ft(ml, wl), t.renderMicroColGroups = ft(Mi), t.clippedScrollerRefs = new Ai, t.scrollerElRefs = new Ai(t._handleScrollerEl.bind(t)), t.chunkElRefs = new Ai(t._handleChunkEl.bind(t)), t.getStickyScrolling = ft(Dl, null, Al), t.getScrollSyncersBySection = pt(Sl.bind(t, !0), null, El), t.getScrollSyncersByColumn = pt(Sl.bind(t, !1), null, El), t.stickyScrollings = [], t.scrollSyncersBySection = {}, t.scrollSyncersByColumn = {}, t.rowUnstableMap = new Map, t.rowInnerMaxHeightMap = new Map, t.anyRowHeightsChanged = !1, t.recentSizingCnt = 0, t.state = {
                        shrinkWidths: [],
                        forceYScrollbars: !1,
                        forceXScrollbars: !1,
                        scrollerClientWidths: {},
                        scrollerClientHeights: {},
                        sectionRowMaxHeights: []
                    }, t.handleSizing = function(e, n) {
                        if (t.allowSizing()) {
                            n || (t.anyRowHeightsChanged = !0);
                            var r = {};
                            (e || !n && !t.rowUnstableMap.size) && (r.sectionRowMaxHeights = t.computeSectionRowMaxHeights()), t.setState(i(i({
                                shrinkWidths: t.computeShrinkWidths()
                            }, t.computeScrollerDims()), r), (function() {
                                t.rowUnstableMap.size || t.updateStickyScrolling()
                            }))
                        }
                    }, t.handleRowHeightChange = function(e, n) {
                        var r = t,
                            o = r.rowUnstableMap,
                            i = r.rowInnerMaxHeightMap;
                        if (n) {
                            o.delete(e);
                            var a = gl(e);
                            i.has(e) && i.get(e) === a || (i.set(e, a), t.anyRowHeightsChanged = !0), !o.size && t.anyRowHeightsChanged && (t.anyRowHeightsChanged = !1, t.setState({
                                sectionRowMaxHeights: t.computeSectionRowMaxHeights()
                            }))
                        } else o.set(e, !0)
                    }, t
                }
                return o(t, e), t.prototype.render = function() {
                    for (var e, t = this.props, n = this.state, r = this.context, o = n.shrinkWidths, i = this.compileColGroupStats(t.colGroups.map((function(e) {
                        return [e]
                    }))), s = this.renderMicroColGroups(i.map((function(e, t) {
                        return [e.cols, o[t]]
                    }))), l = Ni(t.liquid, r), c = this.getDims(), u = (c[0], c[1], t.sections), d = u.length, f = 0, p = [], h = [], g = []; f < d && "header" === (e = u[f]).type;) p.push(this.renderSection(e, f, i, s, n.sectionRowMaxHeights)), f += 1;
                    for (; f < d && "body" === (e = u[f]).type;) h.push(this.renderSection(e, f, i, s, n.sectionRowMaxHeights)), f += 1;
                    for (; f < d && "footer" === (e = u[f]).type;) g.push(this.renderSection(e, f, i, s, n.sectionRowMaxHeights)), f += 1;
                    var v = !ar();
                    return Y("table", {
                        ref: t.elRef,
                        className: l.join(" ")
                    }, function(e, t) {
                        var n = e.map((function(e, n) {
                            var r = e.width;
                            return "shrink" === r && (r = e.totalColWidth + Ii(t[n]) + 1), Y("col", {
                                style: {
                                    width: r
                                }
                            })
                        }));
                        return Y.apply(void 0, a(["colgroup", {}], n))
                    }(i, o), Boolean(!v && p.length) && Y.apply(void 0, a(["thead", {}], p)), Boolean(!v && h.length) && Y.apply(void 0, a(["tbody", {}], h)), Boolean(!v && g.length) && Y.apply(void 0, a(["tfoot", {}], g)), v && Y.apply(void 0, a(["tbody", {}], p, h, g)))
                }, t.prototype.renderSection = function(e, t, n, r, o) {
                    var i = this;
                    return "outerContent" in e ? Y(Z, {
                        key: e.key
                    }, e.outerContent) : Y("tr", {
                        key: e.key,
                        className: Pi(e, this.props.liquid).join(" ")
                    }, e.chunks.map((function(a, s) {
                        return i.renderChunk(e, t, n[s], r[s], a, s, (o[t] || [])[s] || [])
                    })))
                }, t.prototype.renderChunk = function(e, t, n, r, o, i, a) {
                    if ("outerContent" in o) return Y(Z, {
                        key: o.key
                    }, o.outerContent);
                    var s = this.state,
                        l = s.scrollerClientWidths,
                        c = s.scrollerClientHeights,
                        u = this.getDims(),
                        d = u[0],
                        f = u[1],
                        p = t * f + i,
                        h = i === (!this.context.isRtl || vr() ? f - 1 : 0),
                        g = t === d - 1,
                        v = g && s.forceXScrollbars,
                        m = h && s.forceYScrollbars,
                        y = n && n.allowXScrolling,
                        b = xi(this.props, e),
                        w = Ri(this.props, e),
                        S = e.expandRows && w,
                        E = ki(e, o, {
                            tableColGroupNode: r,
                            tableMinWidth: n && n.totalColMinWidth || "",
                            clientWidth: void 0 !== l[p] ? l[p] : null,
                            clientHeight: void 0 !== c[p] ? c[p] : null,
                            expandRows: S,
                            syncRowHeights: Boolean(e.syncRowHeights),
                            rowSyncHeights: a,
                            reportRowHeightChange: this.handleRowHeightChange
                        }),
                        D = v ? g ? "scroll" : "scroll-hidden" : y ? g ? "auto" : "scroll-hidden" : "hidden",
                        A = m ? h ? "scroll" : "scroll-hidden" : b ? h ? "auto" : "scroll-hidden" : "hidden";
                    return E = Y(dl, {
                        ref: this.clippedScrollerRefs.createRef(p),
                        scrollerElRef: this.scrollerElRefs.createRef(p),
                        overflowX: D,
                        overflowY: A,
                        liquid: w,
                        maxHeight: e.maxHeight
                    }, E), Y("td", {
                        key: o.key,
                        ref: this.chunkElRefs.createRef(p)
                    }, E)
                }, t.prototype.componentDidMount = function() {
                    this.updateScrollSyncers(), this.handleSizing(!1), this.context.addResizeHandler(this.handleSizing)
                }, t.prototype.componentDidUpdate = function(e, t) {
                    this.updateScrollSyncers(), this.handleSizing(!1, t.sectionRowMaxHeights !== this.state.sectionRowMaxHeights)
                }, t.prototype.componentWillUnmount = function() {
                    this.context.removeResizeHandler(this.handleSizing), this.destroyStickyScrolling(), this.destroyScrollSyncers()
                }, t.prototype.allowSizing = function() {
                    var e = new Date;
                    return !this.lastSizingDate || e.valueOf() > this.lastSizingDate.valueOf() + 1e3 ? (this.lastSizingDate = e, this.recentSizingCnt = 0, !0) : (this.recentSizingCnt += 1) <= 10
                }, t.prototype.computeShrinkWidths = function() {
                    var e = this,
                        t = this.compileColGroupStats(this.props.colGroups.map((function(e) {
                            return [e]
                        }))),
                        n = this.getDims(),
                        r = n[0],
                        o = n[1],
                        i = r * o,
                        a = [];
                    return t.forEach((function(t, n) {
                        if (t.hasShrinkCol) {
                            var r = e.chunkElRefs.collect(n, i, o);
                            a[n] = Ci(r)
                        }
                    })), a
                }, t.prototype.computeSectionRowMaxHeights = function() {
                    for (var e = new Map, t = this.getDims(), n = t[0], r = t[1], o = [], i = 0; i < n; i += 1) {
                        var a = this.props.sections[i],
                            s = [];
                        if (a && a.syncRowHeights) {
                            for (var l = [], c = 0; c < r; c += 1) {
                                var u = i * r + c,
                                    d = [],
                                    f = this.chunkElRefs.currentMap[u];
                                d = f ? re(f, ".fc-scrollgrid-sync-table tr").map((function(t) {
                                    var n = gl(t);
                                    return e.set(t, n), n
                                })) : [], l.push(d)
                            }
                            var p = l[0].length,
                                h = !0;
                            for (c = 1; c < r; c += 1) {
                                if (!(a.chunks[c] && void 0 !== a.chunks[c].outerContent) && l[c].length !== p) {
                                    h = !1;
                                    break
                                }
                            }
                            if (h) {
                                for (c = 0; c < r; c += 1) s.push([]);
                                for (w = 0; w < p; w += 1) {
                                    var g = [];
                                    for (c = 0; c < r; c += 1) {
                                        var v = l[c][w];
                                        null != v && g.push(v)
                                    }
                                    var m = Math.max.apply(Math, g);
                                    for (c = 0; c < r; c += 1) s[c].push(m)
                                }
                            } else {
                                for (var y = [], c = 0; c < r; c += 1) y.push(hl(l[c]) + l[c].length);
                                for (var b = Math.max.apply(Math, y), c = 0; c < r; c += 1) {
                                    var w, S = l[c].length,
                                        E = b - S,
                                        D = Math.floor(E / S),
                                        A = E - D * (S - 1),
                                        C = [];
                                    for ((w = 0) < S && (C.push(A), w += 1); w < S;) C.push(D), w += 1;
                                    s.push(C)
                                }
                            }
                        }
                        o.push(s)
                    }
                    return this.rowInnerMaxHeightMap = e, o
                }, t.prototype.computeScrollerDims = function() {
                    for (var e = mr(), t = this.getDims(), n = t[0], r = t[1], o = !this.context.isRtl || vr() ? r - 1 : 0, i = n - 1, a = this.clippedScrollerRefs.currentMap, s = this.scrollerElRefs.currentMap, l = !1, c = !1, u = {}, d = {}, f = 0; f < n; f += 1) {
                        if ((h = a[g = f * r + o]) && h.needsYScrolling()) {
                            l = !0;
                            break
                        }
                    }
                    for (var p = 0; p < r; p += 1) {
                        var h;
                        if ((h = a[g = i * r + p]) && h.needsXScrolling()) {
                            c = !0;
                            break
                        }
                    }
                    for (f = 0; f < n; f += 1)
                        for (p = 0; p < r; p += 1) {
                            var g, v = s[g = f * r + p];
                            if (v) {
                                var m = v.parentNode;
                                u[g] = Math.floor(m.getBoundingClientRect().width - (p === o && l ? e.y : 0)), d[g] = Math.floor(m.getBoundingClientRect().height - (f === i && c ? e.x : 0))
                            }
                        }
                    return {
                        forceYScrollbars: l,
                        forceXScrollbars: c,
                        scrollerClientWidths: u,
                        scrollerClientHeights: d
                    }
                }, t.prototype.updateStickyScrolling = function() {
                    var e = this.context.isRtl,
                        t = this.scrollerElRefs.getAll().map((function(t) {
                            return [t, e]
                        })),
                        n = this.getStickyScrolling(t);
                    n.forEach((function(e) {
                        return e.updateSize()
                    })), this.stickyScrollings = n
                }, t.prototype.destroyStickyScrolling = function() {
                    this.stickyScrollings.forEach(Al)
                }, t.prototype.updateScrollSyncers = function() {
                    for (var e = this.getDims(), t = e[0], n = e[1], r = t * n, o = {}, i = {}, a = this.scrollerElRefs.currentMap, s = 0; s < t; s += 1) {
                        var l = s * n,
                            c = l + n;
                        o[s] = qe(a, l, c, 1)
                    }
                    for (var u = 0; u < n; u += 1) i[u] = this.scrollerElRefs.collect(u, r, n);
                    this.scrollSyncersBySection = this.getScrollSyncersBySection(o), this.scrollSyncersByColumn = this.getScrollSyncersByColumn(i)
                }, t.prototype.destroyScrollSyncers = function() {
                    Le(this.scrollSyncersBySection, El), Le(this.scrollSyncersByColumn, El)
                }, t.prototype.getChunkConfigByIndex = function(e) {
                    var t = this.getDims()[1],
                        n = Math.floor(e / t),
                        r = e % t,
                        o = this.props.sections[n];
                    return o && o.chunks[r]
                }, t.prototype.forceScrollLeft = function(e, t) {
                    var n = this.scrollSyncersByColumn[e];
                    n && n.forceScrollLeft(t)
                }, t.prototype.forceScrollTop = function(e, t) {
                    var n = this.scrollSyncersBySection[e];
                    n && n.forceScrollTop(t)
                }, t.prototype._handleChunkEl = function(e, t) {
                    var n = this.getChunkConfigByIndex(parseInt(t, 10));
                    n && Hr(n.elRef, e)
                }, t.prototype._handleScrollerEl = function(e, t) {
                    var n = this.getChunkConfigByIndex(parseInt(t, 10));
                    n && Hr(n.scrollerElRef, e)
                }, t.prototype.getDims = function() {
                    var e = this.props.sections.length;
                    return [e, e ? this.props.sections[0].chunks.length : 0]
                }, t
            }(_r);

        function hl(e) {
            for (var t = 0, n = 0, r = e; n < r.length; n++) {
                t += r[n]
            }
            return t
        }

        function gl(e) {
            var t = re(e, ".fc-scrollgrid-sync-inner").map(vl);
            return t.length ? Math.max.apply(Math, t) : 0
        }

        function vl(e) {
            return e.offsetHeight
        }

        function ml(e) {
            var t = yl(e.cols, "width"),
                n = yl(e.cols, "minWidth"),
                r = _i(e.cols);
            return {
                hasShrinkCol: r,
                totalColWidth: t,
                totalColMinWidth: n,
                allowXScrolling: "shrink" !== e.width && Boolean(t || n || r),
                cols: e.cols,
                width: e.width
            }
        }

        function yl(e, t) {
            for (var n = 0, r = 0, o = e; r < o.length; r++) {
                var i = o[r],
                    a = i[t];
                "number" == typeof a && (n += a * (i.span || 1))
            }
            return n
        }
        pl.addStateEquality({
            shrinkWidths: ct,
            scrollerClientWidths: Ve,
            scrollerClientHeights: Ve
        });
        var bl = {
            cols: Ti
        };

        function wl(e, t) {
            return Ge(e, t, bl)
        }

        function Sl(e) {
            for (var t = [], n = 1; n < arguments.length; n++) t[n - 1] = arguments[n];
            return new fl(e, t)
        }

        function El(e) {
            e.destroy()
        }

        function Dl(e, t) {
            return new ul(e, t)
        }

        function Al(e) {
            e.destroy()
        }
        qr({
            deps: [rl],
            scrollGridImpl: pl
        });
        Ko.MAX_TIMELINE_SLOTS = 1e3;
        var Cl = [{
            years: 1
        }, {
            months: 1
        }, {
            days: 1
        }, {
            hours: 1
        }, {
            minutes: 30
        }, {
            minutes: 15
        }, {
            minutes: 10
        }, {
            minutes: 5
        }, {
            minutes: 1
        }, {
            seconds: 30
        }, {
            seconds: 15
        }, {
            seconds: 10
        }, {
            seconds: 5
        }, {
            seconds: 1
        }, {
            milliseconds: 500
        }, {
            milliseconds: 100
        }, {
            milliseconds: 10
        }, {
            milliseconds: 1
        }];

        function Rl(e, t, n, r) {
            var o = {
                labelInterval: n.slotLabelInterval,
                slotDuration: n.slotDuration
            };
            ! function(e, t, n) {
                var r = t.currentRange;
                if (e.labelInterval) {
                    n.countDurationsBetween(r.start, r.end, e.labelInterval) > Ko.MAX_TIMELINE_SLOTS && (console.warn("slotLabelInterval results in too many cells"), e.labelInterval = null)
                }
                if (e.slotDuration) {
                    n.countDurationsBetween(r.start, r.end, e.slotDuration) > Ko.MAX_TIMELINE_SLOTS && (console.warn("slotDuration results in too many cells"), e.slotDuration = null)
                }
                if (e.labelInterval && e.slotDuration) {
                    var o = it(e.labelInterval, e.slotDuration);
                    (null === o || o < 1) && (console.warn("slotLabelInterval must be a multiple of slotDuration"), e.slotDuration = null)
                }
            }(o, e, t), Tl(o, e, t),
                function(e, t, n) {
                    var r = t.currentRange,
                        o = e.slotDuration;
                    if (!o) {
                        for (var i = Tl(e, t, n), a = 0, s = Cl; a < s.length; a++) {
                            var l = Ke(s[a]),
                                c = it(i, l);
                            if (null !== c && c > 1 && c <= 6) {
                                o = l;
                                break
                            }
                        }
                        if (o) n.countDurationsBetween(r.start, r.end, o) > 200 && (o = null);
                        o || (o = i), e.slotDuration = o
                    }
                }(o, e, t);
            var i = n.slotLabelFormat,
                a = Array.isArray(i) ? i : null != i ? [i] : function(e, t, n, r) {
                    var o, i, a = e.labelInterval,
                        s = at(a).unit,
                        l = r.weekNumbers,
                        c = o = i = null;
                    "week" !== s || l || (s = "day");
                    switch (s) {
                        case "year":
                            c = {
                                year: "numeric"
                            };
                            break;
                        case "month":
                            Ml("years", t, n) > 1 && (c = {
                                year: "numeric"
                            }), o = {
                                month: "short"
                            };
                            break;
                        case "week":
                            Ml("years", t, n) > 1 && (c = {
                                year: "numeric"
                            }), o = {
                                week: "narrow"
                            };
                            break;
                        case "day":
                            Ml("years", t, n) > 1 ? c = {
                                year: "numeric",
                                month: "long"
                            } : Ml("months", t, n) > 1 && (c = {
                                month: "long"
                            }), l && (o = {
                                week: "short"
                            }), i = {
                                weekday: "narrow",
                                day: "numeric"
                            };
                            break;
                        case "hour":
                            l && (c = {
                                week: "short"
                            }), Ml("days", t, n) > 1 && (o = {
                                weekday: "short",
                                day: "numeric",
                                month: "numeric",
                                omitCommas: !0
                            }), i = {
                                hour: "numeric",
                                minute: "2-digit",
                                omitZeroMinute: !0,
                                meridiem: "short"
                            };
                            break;
                        case "minute":
                            ot(a) / 6e4 / 60 >= 6 ? (c = {
                                hour: "numeric",
                                meridiem: "short"
                            }, o = function(e) {
                                return ":" + me(e.date.minute, 2)
                            }) : c = {
                                hour: "numeric",
                                minute: "numeric",
                                meridiem: "short"
                            };
                            break;
                        case "second":
                            (function(e) {
                                return ot(e) / 1e3
                            })(a) / 60 >= 6 ? (c = {
                                hour: "numeric",
                                minute: "2-digit",
                                meridiem: "lowercase"
                            }, o = function(e) {
                                return ":" + me(e.date.second, 2)
                            }) : c = {
                                hour: "numeric",
                                minute: "2-digit",
                                second: "2-digit",
                                meridiem: "lowercase"
                            };
                            break;
                        case "millisecond":
                            c = {
                                hour: "numeric",
                                minute: "2-digit",
                                second: "2-digit",
                                meridiem: "lowercase"
                            }, o = function(e) {
                                return "." + me(e.millisecond, 3)
                            }
                    }
                    return [].concat(c || [], o || [], i || [])
                }(o, e, t, n);
            o.headerFormats = a.map((function(e) {
                return xt(e)
            })), o.isTimeScale = Boolean(o.slotDuration.milliseconds);
            var s = null;
            if (!o.isTimeScale) {
                var l = at(o.slotDuration).unit;
                /year|month|week/.test(l) && (s = l)
            }
            o.largeUnit = s, o.emphasizeWeeks = 1 === et(o.slotDuration) && Ml("weeks", e, t) >= 2 && !n.businessHours;
            var c, u, d = n.snapDuration;
            d && (c = Ke(d), u = it(o.slotDuration, c)), null == u && (c = o.slotDuration, u = 1), o.snapDuration = c, o.snapsPerSlot = u;
            var f = ot(e.slotMaxTime) - ot(e.slotMinTime),
                p = xl(e.renderRange.start, o, t),
                h = xl(e.renderRange.end, o, t);
            o.isTimeScale && (p = t.add(p, e.slotMinTime), h = t.add(De(h, -1), e.slotMaxTime)), o.timeWindowMs = f, o.normalizedRange = {
                start: p,
                end: h
            };
            for (var g = [], v = p; v < h;) kl(v, o, e, r) && g.push(v), v = t.add(v, o.slotDuration);
            o.slotDates = g;
            var m = -1,
                y = 0,
                b = [],
                w = [];
            for (v = p; v < h;) kl(v, o, e, r) ? (m += 1, b.push(m), w.push(y)) : b.push(m + .5), v = t.add(v, o.snapDuration), y += 1;
            return o.snapDiffToIndex = b, o.snapIndexToDiff = w, o.snapCnt = m + 1, o.slotCnt = o.snapCnt / o.snapsPerSlot, o.isWeekStarts = function(e, t) {
                for (var n = e.slotDates, r = e.emphasizeWeeks, o = null, i = [], a = 0, s = n; a < s.length; a++) {
                    var l = s[a],
                        c = t.computeWeekNumber(l),
                        u = r && null !== o && o !== c;
                    o = c, i.push(u)
                }
                return i
            }(o, t), o.cellRows = function(e, t) {
                for (var n = e.slotDates, r = e.headerFormats, o = r.map((function() {
                    return []
                })), i = et(e.slotDuration), a = 7 === i ? "week" : 1 === i ? "day" : null, s = r.map((function(e) {
                    return e.getLargestUnit ? e.getLargestUnit() : null
                })), l = 0; l < n.length; l += 1)
                    for (var c = n[l], u = e.isWeekStarts[l], d = 0; d < r.length; d += 1) {
                        var f = r[d],
                            p = o[d],
                            h = p[p.length - 1],
                            g = d === r.length - 1,
                            v = r.length > 1 && !g,
                            m = null,
                            y = s[d] || (g ? a : null);
                        if (v) {
                            var b = t.format(c, f);
                            h && h.text === b ? h.colspan += 1 : m = Il(c, b, y)
                        } else if (!h || be(t.countDurationsBetween(e.normalizedRange.start, c, e.labelInterval))) {
                            b = t.format(c, f);
                            m = Il(c, b, y)
                        } else h.colspan += 1;
                        m && (m.weekStart = u, p.push(m))
                    }
                return o
            }(o, t), o.slotsPerLabel = it(o.labelInterval, o.slotDuration), o
        }

        function xl(e, t, n) {
            var r = e;
            return t.isTimeScale || (r = xe(r), t.largeUnit && (r = n.startOf(r, t.largeUnit))), r
        }

        function kl(e, t, n, r) {
            if (r.isHiddenDay(e)) return !1;
            if (t.isTimeScale) {
                var o = xe(e),
                    i = e.valueOf() - o.valueOf() - ot(n.slotMinTime);
                return (i = (i % 864e5 + 864e5) % 864e5) < t.timeWindowMs
            }
            return !0
        }

        function Tl(e, t, n) {
            var r = t.currentRange,
                o = e.labelInterval;
            if (!o) {
                if (e.slotDuration) {
                    for (var i = 0, a = Cl; i < a.length; i++) {
                        var s = Ke(a[i]),
                            l = it(s, e.slotDuration);
                        if (null !== l && l <= 6) {
                            o = s;
                            break
                        }
                    }
                    o || (o = e.slotDuration)
                } else
                    for (var c = 0, u = Cl; c < u.length; c++) {
                        if (o = Ke(u[c]), n.countDurationsBetween(r.start, r.end, o) >= 18) break
                    }
                e.labelInterval = o
            }
            return o
        }

        function Ml(e, t, n) {
            var r = t.currentRange,
                o = null;
            return "years" === e ? o = n.diffWholeYears(r.start, r.end) : "months" === e || "weeks" === e ? o = n.diffWholeMonths(r.start, r.end) : "days" === e && (o = Re(r.start, r.end)), o || 0
        }

        function Il(e, t, n) {
            return {
                date: e,
                text: t,
                rowUnit: n,
                colspan: 1,
                isWeekStart: !1
            }
        }
        var _l = function(e) {
            function t() {
                return null !== e && e.apply(this, arguments) || this
            }
            return o(t, e), t.prototype.render = function() {
                var e = this.props,
                    t = this.context,
                    n = e.navLinkData ? {
                        "data-navlink": e.navLinkData,
                        tabIndex: 0
                    } : {};
                return Y($r, {
                    hookProps: e.hookProps,
                    content: t.options.slotLabelContent,
                    defaultContent: Nl
                }, (function(t, r) {
                    return Y("a", i({
                        ref: t,
                        className: "fc-timeline-slot-cushion fc-scrollgrid-sync-inner" + (e.isSticky ? " fc-sticky" : "")
                    }, n), r)
                }))
            }, t
        }(_r);

        function Nl(e) {
            return e.text
        }

        function Pl(e) {
            return {
                level: e.level,
                date: e.dateEnv.toDate(e.dateMarker),
                view: e.viewApi,
                text: e.text
            }
        }
        var Hl = function(e) {
                function t() {
                    var t = null !== e && e.apply(this, arguments) || this;
                    return t.refineHookProps = dt(Pl), t.normalizeClassNames = no(), t
                }
                return o(t, e), t.prototype.render = function() {
                    var e = this.props,
                        t = this.context,
                        n = t.dateEnv,
                        r = t.options,
                        o = e.cell,
                        i = e.dateProfile,
                        a = e.tDateProfile,
                        s = ur(o.date, e.todayRange, e.nowDate, i),
                        l = ["fc-timeline-slot", "fc-timeline-slot-label"].concat("time" === o.rowUnit ? fr(s, t.theme) : dr(s, t.theme));
                    o.isWeekStart && l.push("fc-timeline-slot-em");
                    var c = r.navLinks && o.rowUnit && "time" !== o.rowUnit ? pr(o.date, o.rowUnit) : null,
                        u = this.refineHookProps({
                            level: e.rowLevel,
                            dateMarker: o.date,
                            text: o.text,
                            dateEnv: t.dateEnv,
                            viewApi: t.viewApi
                        }),
                        d = this.normalizeClassNames(r.slotLabelClassNames, u);
                    return Y(to, {
                        hookProps: u,
                        didMount: r.slotLabelDidMount,
                        willUnmount: r.slotLabelWillUnmount
                    }, (function(t) {
                        return Y("th", {
                            ref: t,
                            className: l.concat(d).join(" "),
                            "data-date": n.formatIso(o.date, {
                                omitTime: !a.isTimeScale,
                                omitTimeZoneOffset: !0
                            }),
                            colSpan: o.colspan
                        }, Y("div", {
                            className: "fc-timeline-slot-frame",
                            style: {
                                height: e.rowInnerHeight
                            }
                        }, Y(_l, {
                            hookProps: u,
                            isSticky: e.isSticky,
                            navLinkData: c
                        })))
                    }))
                }, t
            }(_r),
            Ol = function(e) {
                function t() {
                    return null !== e && e.apply(this, arguments) || this
                }
                return o(t, e), t.prototype.render = function() {
                    var e = this.props,
                        t = e.dateProfile,
                        n = e.tDateProfile,
                        r = e.rowInnerHeights,
                        o = e.todayRange,
                        i = e.nowDate,
                        a = n.cellRows;
                    return Y(Z, null, a.map((function(e, s) {
                        var l = s === a.length - 1,
                            c = n.isTimeScale && l;
                        return Y("tr", {
                            key: s,
                            className: ["fc-timeline-header-row", c ? "fc-timeline-header-row-chrono" : ""].join(" ")
                        }, e.map((function(e) {
                            return Y(Hl, {
                                key: e.date.toISOString(),
                                cell: e,
                                rowLevel: s,
                                dateProfile: t,
                                tDateProfile: n,
                                todayRange: o,
                                nowDate: i,
                                rowInnerHeight: r && r[s],
                                isSticky: !l
                            })
                        })))
                    })))
                }, t
            }(_r),
            zl = function(e) {
                function t() {
                    var t = null !== e && e.apply(this, arguments) || this;
                    return t.rootElRef = Q(), t
                }
                return o(t, e), t.prototype.render = function() {
                    var e = this,
                        t = this.props,
                        n = this.context,
                        r = at(t.tDateProfile.slotDuration).unit,
                        o = t.slatCoords && t.slatCoords.dateProfile === t.dateProfile ? t.slatCoords : null;
                    return Y(hi, {
                        unit: r
                    }, (function(r, i) {
                        return Y("div", {
                            className: "fc-timeline-header",
                            ref: e.rootElRef
                        }, Y("table", {
                            className: "fc-scrollgrid-sync-table",
                            style: {
                                minWidth: t.tableMinWidth,
                                width: t.clientWidth
                            }
                        }, t.tableColGroupNode, Y("tbody", null, Y(Ol, {
                            dateProfile: t.dateProfile,
                            tDateProfile: t.tDateProfile,
                            nowDate: r,
                            todayRange: i,
                            rowInnerHeights: t.rowInnerHeights
                        }))), n.options.nowIndicator && Y("div", {
                            className: "fc-timeline-now-indicator-container"
                        }, o && o.isDateInRange(r) && Y(Fi, {
                            isAxis: !0,
                            date: r
                        }, (function(e, t, n, i) {
                            return Y("div", {
                                ref: e,
                                className: ["fc-timeline-now-indicator-arrow"].concat(t).join(" "),
                                style: {
                                    left: o.dateToCoord(r)
                                }
                            }, i)
                        }))))
                    }))
                }, t.prototype.componentDidMount = function() {
                    this.updateSize()
                }, t.prototype.componentDidUpdate = function() {
                    this.updateSize()
                }, t.prototype.updateSize = function() {
                    this.props.onMaxCushionWidth && this.props.onMaxCushionWidth(this.computeMaxCushionWidth())
                }, t.prototype.computeMaxCushionWidth = function() {
                    return Math.max.apply(Math, re(this.rootElRef.current, ".fc-timeline-header-row:last-child .fc-timeline-slot-cushion").map((function(e) {
                        return e.getBoundingClientRect().width
                    })))
                }, t
            }(_r),
            Bl = function() {
                function e(e, t, n, r, o, i) {
                    this.slatRootEl = e, this.dateProfile = n, this.tDateProfile = r, this.dateEnv = o, this.isRtl = i, this.outerCoordCache = new Dr(e, t, !0, !1), this.innerCoordCache = new Dr(e, function(e, t) {
                        for (var n = e instanceof HTMLElement ? [e] : e, r = [], o = 0; o < n.length; o += 1)
                            for (var i = n[o].children, a = 0; a < i.length; a += 1) {
                                var s = i[a];
                                t && !ne(s, t) || r.push(s)
                            }
                        return r
                    }(t, "div"), !0, !1)
                }
                return e.prototype.rangeToCoords = function(e) {
                    return this.isRtl ? {
                        right: this.dateToCoord(e.start),
                        left: this.dateToCoord(e.end)
                    } : {
                        left: this.dateToCoord(e.start),
                        right: this.dateToCoord(e.end)
                    }
                }, e.prototype.isDateInRange = function(e) {
                    return dn(this.dateProfile.currentRange, e)
                }, e.prototype.dateToCoord = function(e) {
                    var t = this.tDateProfile,
                        n = this.computeDateSnapCoverage(e) / t.snapsPerSlot,
                        r = Math.floor(n),
                        o = n - (r = Math.min(r, t.slotCnt - 1)),
                        i = this.innerCoordCache,
                        a = this.outerCoordCache;
                    return this.isRtl ? a.rights[r] - i.getWidth(r) * o - a.originClientRect.width : a.lefts[r] + i.getWidth(r) * o
                }, e.prototype.computeDateSnapCoverage = function(e) {
                    return Wl(e, this.tDateProfile, this.dateEnv)
                }, e.prototype.computeDurationLeft = function(e) {
                    var t = this.dateProfile,
                        n = this.tDateProfile,
                        r = this.dateEnv,
                        o = this.isRtl,
                        i = 0;
                    if (t) {
                        var a = r.add(t.activeRange.start, e);
                        n.isTimeScale || (a = xe(a)), i = this.dateToCoord(a), !o && i && (i += 1)
                    }
                    return i
                }, e
            }();

        function Wl(e, t, n) {
            var r = n.countDurationsBetween(t.normalizedRange.start, e, t.snapDuration);
            if (r < 0) return 0;
            if (r >= t.snapDiffToIndex.length) return t.snapCnt;
            var o = Math.floor(r),
                i = t.snapDiffToIndex[o];
            return be(i) ? i += r - o : i = Math.ceil(i), i
        }
        var Ll = function(e) {
                function t() {
                    return null !== e && e.apply(this, arguments) || this
                }
                return o(t, e), t.prototype.render = function() {
                    var e = this.props,
                        t = this.context,
                        n = t.dateEnv,
                        r = t.options,
                        o = t.theme,
                        a = e.date,
                        s = e.tDateProfile,
                        l = e.isEm,
                        c = ur(e.date, e.todayRange, e.nowDate, e.dateProfile),
                        u = ["fc-timeline-slot", "fc-timeline-slot-lane"],
                        d = {
                            "data-date": n.formatIso(a, {
                                omitTimeZoneOffset: !0,
                                omitTime: !s.isTimeScale
                            })
                        },
                        f = i(i({
                            date: n.toDate(e.date)
                        }, c), {
                            view: t.viewApi
                        });
                    return l && u.push("fc-timeline-slot-em"), s.isTimeScale && u.push(be(n.countDurationsBetween(s.normalizedRange.start, e.date, s.labelInterval)) ? "fc-timeline-slot-major" : "fc-timeline-slot-minor"), u.push.apply(u, e.isDay ? dr(c, o) : fr(c, o)), Y(Jr, {
                        hookProps: f,
                        classNames: r.slotLaneClassNames,
                        content: r.slotLaneContent,
                        didMount: r.slotLaneDidMount,
                        willUnmount: r.slotLaneWillUnmount,
                        elRef: e.elRef
                    }, (function(e, t, n, r) {
                        return Y("td", i({
                            ref: e,
                            className: u.concat(t).join(" ")
                        }, d), Y("div", {
                            ref: n
                        }, r))
                    }))
                }, t
            }(_r),
            Ul = function(e) {
                function t() {
                    return null !== e && e.apply(this, arguments) || this
                }
                return o(t, e), t.prototype.render = function() {
                    var e = this.props,
                        t = e.tDateProfile,
                        n = e.cellElRefs,
                        r = t.slotDates,
                        o = t.isWeekStarts,
                        i = !t.isTimeScale && !t.largeUnit;
                    return Y("tbody", null, Y("tr", null, r.map((function(r, a) {
                        var s = r.toISOString();
                        return Y(Ll, {
                            key: s,
                            elRef: n.createRef(s),
                            date: r,
                            dateProfile: e.dateProfile,
                            tDateProfile: t,
                            nowDate: e.nowDate,
                            todayRange: e.todayRange,
                            isEm: o[a],
                            isDay: i
                        })
                    }))))
                }, t
            }(_r),
            Fl = function(e) {
                function t() {
                    var t = null !== e && e.apply(this, arguments) || this;
                    return t.rootElRef = Q(), t.cellElRefs = new Ai, t.handleScrollRequest = function(e) {
                        var n = t.props.onScrollLeftRequest,
                            r = t.coords;
                        if (n && r) {
                            if (e.time) n(r.computeDurationLeft(e.time));
                            return !0
                        }
                        return null
                    }, t
                }
                return o(t, e), t.prototype.render = function() {
                    var e = this.props,
                        t = this.context;
                    return Y("div", {
                        className: "fc-timeline-slots",
                        ref: this.rootElRef
                    }, Y("table", {
                        className: t.theme.getClass("table"),
                        style: {
                            minWidth: e.tableMinWidth,
                            width: e.clientWidth
                        }
                    }, e.tableColGroupNode, Y(Ul, {
                        cellElRefs: this.cellElRefs,
                        dateProfile: e.dateProfile,
                        tDateProfile: e.tDateProfile,
                        nowDate: e.nowDate,
                        todayRange: e.todayRange
                    })))
                }, t.prototype.componentDidMount = function() {
                    this.updateSizing(), this.scrollResponder = this.context.createScrollResponder(this.handleScrollRequest)
                }, t.prototype.componentDidUpdate = function(e) {
                    this.updateSizing(), this.scrollResponder.update(e.dateProfile !== this.props.dateProfile)
                }, t.prototype.componentWillUnmount = function() {
                    this.scrollResponder.detach(), this.props.onCoords && this.props.onCoords(null)
                }, t.prototype.updateSizing = function() {
                    var e, t = this.props,
                        n = this.context;
                    null !== t.clientWidth && this.scrollResponder && (this.rootElRef.current.offsetWidth && (this.coords = new Bl(this.rootElRef.current, (e = this.cellElRefs.currentMap, t.tDateProfile.slotDates.map((function(t) {
                        var n = t.toISOString();
                        return e[n]
                    }))), t.dateProfile, t.tDateProfile, n.dateEnv, n.isRtl), t.onCoords && t.onCoords(this.coords), this.scrollResponder.update(!1)))
                }, t.prototype.positionToHit = function(e) {
                    var t = this.coords.outerCoordCache,
                        n = this.context,
                        r = n.dateEnv,
                        o = n.isRtl,
                        i = this.props.tDateProfile,
                        a = t.leftToIndex(e);
                    if (null != a) {
                        var s = t.getWidth(a),
                            l = o ? (t.rights[a] - e) / s : (e - t.lefts[a]) / s,
                            c = Math.floor(l * i.snapsPerSlot),
                            u = r.add(i.slotDates[a], nt(i.snapDuration, c));
                        return {
                            dateSpan: {
                                range: {
                                    start: u,
                                    end: r.add(u, i.snapDuration)
                                },
                                allDay: !this.props.tDateProfile.isTimeScale
                            },
                            dayEl: this.cellElRefs.currentMap[a],
                            left: t.lefts[a],
                            right: t.rights[a]
                        }
                    }
                    return null
                }, t
            }(_r);
        var Vl = function(e) {
                function t() {
                    return null !== e && e.apply(this, arguments) || this
                }
                return o(t, e), t.prototype.render = function() {
                    var e = this.props,
                        t = [].concat(e.eventResizeSegs, e.dateSelectionSegs);
                    return e.timelineCoords && Y("div", {
                        className: "fc-timeline-bg"
                    }, this.renderSegs(e.businessHourSegs || [], e.timelineCoords, "non-business"), this.renderSegs(e.bgEventSegs || [], e.timelineCoords, "bg-event"), this.renderSegs(t, e.timelineCoords, "highlight"))
                }, t.prototype.renderSegs = function(e, t, n) {
                    var r = this.props,
                        o = r.todayRange,
                        a = r.nowDate,
                        s = e.map((function(e) {
                            var r = t.rangeToCoords(e);
                            return Y("div", {
                                key: An(e.eventRange),
                                className: "fc-timeline-bg-harness",
                                style: {
                                    left: r.left,
                                    right: -r.right
                                }
                            }, "bg-event" === n ? Y(Qi, i({
                                seg: e
                            }, Dn(e, o, a))) : qi(n))
                        }));
                    return Y(Z, null, s)
                }, t
            }(_r),
            jl = function(e) {
                function t() {
                    return null !== e && e.apply(this, arguments) || this
                }
                return o(t, e), t.prototype.sliceRange = function(e, t, n, r, o) {
                    var i = function(e, t, n) {
                            if (!t.isTimeScale && (e = rn(e), t.largeUnit)) {
                                var r = e;
                                ((e = {
                                    start: n.startOf(e.start, t.largeUnit),
                                    end: n.startOf(e.end, t.largeUnit)
                                }).end.valueOf() !== r.end.valueOf() || e.end <= e.start) && (e = {
                                    start: e.start,
                                    end: n.add(e.end, t.slotDuration)
                                })
                            }
                            return e
                        }(e, r, o),
                        a = [];
                    if (Wl(i.start, r, o) < Wl(i.end, r, o)) {
                        var s = ln(i, r.normalizedRange);
                        s && a.push({
                            start: s.start,
                            end: s.end,
                            isStart: s.start.valueOf() === i.start.valueOf() && kl(s.start, r, t, n),
                            isEnd: s.end.valueOf() === i.end.valueOf() && kl(Ae(s.end, -1), r, t, n)
                        })
                    }
                    return a
                }, t
            }(wi),
            Gl = xt({
                hour: "numeric",
                minute: "2-digit",
                omitZeroMinute: !0,
                meridiem: "narrow"
            }),
            Yl = function(e) {
                function t() {
                    return null !== e && e.apply(this, arguments) || this
                }
                return o(t, e), t.prototype.render = function() {
                    var e = this.props;
                    return Y(Li, i({}, e, {
                        extraClassNames: ["fc-timeline-event", "fc-h-event"],
                        defaultTimeFormat: Gl,
                        defaultDisplayEventTime: !e.isTimeScale
                    }))
                }, t
            }(_r);

        function ql(e, t) {
            var n = {};
            if (t)
                for (var r = 0, o = e; r < o.length; r++) {
                    var i = o[r];
                    n[i.eventRange.instance.instanceId] = t.rangeToCoords(i)
                }
            return n
        }

        function Ql(e, t, n) {
            var r, o, i, a, s = [],
                l = 0;
            if (n)
                for (var c = 0, u = e = mn(e, t); c < u.length; c++) {
                    var d = u[c].eventRange.instance.instanceId,
                        f = n[d];
                    if (f) {
                        for (var p = 0, h = 0, g = 0; g < s.length; g += 1) {
                            var v = s[g];
                            r = f, o = p, i = v.dims, a = v.top, r.right > i.left && r.left < i.right && o + r.height > a && o < a + i.height && (p = v.top + v.dims.height, h = g)
                        }
                        for (; h < s.length && p >= s[h].top;) h += 1;
                        s.splice(h, 0, {
                            key: d,
                            dims: f,
                            top: p
                        }), l = Math.max(l, p + f.height)
                    }
                }
            for (var m = {}, y = 0, b = s; y < b.length; y++) {
                m[(v = b[y]).key] = v.top
            }
            return {
                segTops: m,
                height: l
            }
        }
        var Zl = function(e) {
                function t() {
                    var t = null !== e && e.apply(this, arguments) || this;
                    return t.slicer = new jl, t.computeFgSegHorizontals = ut(ql), t.computeSegVerticals = ut(Ql), t.harnessElRefs = new Ai, t.innerElRef = Q(), t.state = {
                        segDims: null
                    }, t
                }
                return o(t, e), t.prototype.render = function() {
                    var e = this.props,
                        t = this.state,
                        n = this.context,
                        r = e.dateProfile,
                        o = e.tDateProfile,
                        i = this.slicer.sliceProps(e, r, o.isTimeScale ? null : e.nextDayThreshold, n, r, n.dateProfileGenerator, o, n.dateEnv),
                        a = (i.eventDrag ? i.eventDrag.segs : null) || (i.eventResize ? i.eventResize.segs : null) || [],
                        s = this.computeFgSegHorizontals(i.fgEventSegs, e.timelineCoords),
                        l = this.computeSegVerticals(i.fgEventSegs, n.options.eventOrder, t.segDims),
                        c = l.segTops,
                        u = l.height,
                        d = (i.eventDrag ? i.eventDrag.affectedInstances : null) || (i.eventResize ? i.eventResize.affectedInstances : null) || {};
                    return Y(Z, null, Y(Vl, {
                        businessHourSegs: i.businessHourSegs,
                        bgEventSegs: i.bgEventSegs,
                        timelineCoords: e.timelineCoords,
                        eventResizeSegs: i.eventResize ? i.eventResize.segs : [],
                        dateSelectionSegs: i.dateSelectionSegs,
                        nowDate: e.nowDate,
                        todayRange: e.todayRange
                    }), Y("div", {
                        className: "fc-timeline-events fc-scrollgrid-sync-inner",
                        ref: this.innerElRef,
                        style: {
                            height: u
                        }
                    }, this.renderFgSegs(i.fgEventSegs, s, c, d, !1, !1, !1), this.renderFgSegs(a, ql(a, e.timelineCoords), c, {}, Boolean(i.eventDrag), Boolean(i.eventResize), !1)))
                }, t.prototype.componentDidMount = function() {
                    this.updateSize()
                }, t.prototype.componentDidUpdate = function(e, t) {
                    e.eventStore === this.props.eventStore && e.timelineCoords === this.props.timelineCoords || this.updateSize()
                }, t.prototype.updateSize = function() {
                    var e = this,
                        t = this.props,
                        n = t.timelineCoords;
                    if (t.onHeightChange && t.onHeightChange(this.innerElRef.current, !1), n) {
                        var r = n.slatRootEl.getBoundingClientRect();
                        this.setState({
                            segDims: Le(this.harnessElRefs.currentMap, (function(e) {
                                var t = e.getBoundingClientRect();
                                return {
                                    left: Math.round(t.left - r.left),
                                    right: Math.round(t.right - r.left),
                                    height: Math.round(t.height)
                                }
                            }))
                        }, (function() {
                            t.onHeightChange && t.onHeightChange(e.innerElRef.current, !0)
                        }))
                    }
                }, t.prototype.renderFgSegs = function(e, t, n, r, o, a, s) {
                    var l = this,
                        c = this.harnessElRefs,
                        u = this.props,
                        d = o || a || s;
                    return Y(Z, null, e.map((function(e) {
                        var f = e.eventRange.instance.instanceId,
                            p = t[f],
                            h = n[f];
                        return Y("div", {
                            key: f,
                            ref: d ? null : c.createRef(f),
                            className: "fc-timeline-event-harness",
                            style: {
                                left: p ? p.left : "",
                                right: p ? -p.right : "",
                                top: null != h ? h : "",
                                visibility: r[f] ? "hidden" : ""
                            }
                        }, Y(Yl, i({
                            isTimeScale: l.props.tDateProfile.isTimeScale,
                            seg: e,
                            isDragging: o,
                            isResizing: a,
                            isDateSelecting: s,
                            isSelected: f === l.props.eventSelection
                        }, Dn(e, u.todayRange, u.nowDate))))
                    })))
                }, t
            }(_r),
            Xl = function(e) {
                function t() {
                    var t = null !== e && e.apply(this, arguments) || this;
                    return t.slatsRef = Q(), t.state = {
                        coords: null
                    }, t.handeEl = function(e) {
                        e ? t.context.registerInteractiveComponent(t, {
                            el: e
                        }) : t.context.unregisterInteractiveComponent(t)
                    }, t.handleCoords = function(e) {
                        t.setState({
                            coords: e
                        }), t.props.onSlatCoords && t.props.onSlatCoords(e)
                    }, t
                }
                return o(t, e), t.prototype.render = function() {
                    var e = this,
                        t = this.props,
                        n = this.state,
                        r = this.context.options,
                        o = t.dateProfile,
                        i = t.tDateProfile,
                        a = at(i.slotDuration).unit;
                    return Y("div", {
                        className: "fc-timeline-body",
                        ref: this.handeEl,
                        style: {
                            minWidth: t.tableMinWidth,
                            height: t.clientHeight,
                            width: t.clientWidth
                        }
                    }, Y(hi, {
                        unit: a
                    }, (function(a, s) {
                        return Y(Z, null, Y(Fl, {
                            ref: e.slatsRef,
                            dateProfile: o,
                            tDateProfile: i,
                            nowDate: a,
                            todayRange: s,
                            clientWidth: t.clientWidth,
                            tableColGroupNode: t.tableColGroupNode,
                            tableMinWidth: t.tableMinWidth,
                            onCoords: e.handleCoords,
                            onScrollLeftRequest: t.onScrollLeftRequest
                        }), Y(Zl, {
                            dateProfile: o,
                            tDateProfile: t.tDateProfile,
                            nowDate: a,
                            todayRange: s,
                            nextDayThreshold: r.nextDayThreshold,
                            businessHours: t.businessHours,
                            eventStore: t.eventStore,
                            eventUiBases: t.eventUiBases,
                            dateSelection: t.dateSelection,
                            eventSelection: t.eventSelection,
                            eventDrag: t.eventDrag,
                            eventResize: t.eventResize,
                            timelineCoords: n.coords
                        }), r.nowIndicator && n.coords && n.coords.isDateInRange(a) && Y("div", {
                            className: "fc-timeline-now-indicator-container"
                        }, Y(Fi, {
                            isAxis: !1,
                            date: a
                        }, (function(e, t, r, o) {
                            return Y("div", {
                                ref: e,
                                className: ["fc-timeline-now-indicator-line"].concat(t).join(" "),
                                style: {
                                    left: n.coords.dateToCoord(a)
                                }
                            }, o)
                        }))))
                    })))
                }, t.prototype.queryHit = function(e, t, n, r) {
                    var o = this.slatsRef.current.positionToHit(e);
                    return o ? {
                        component: this,
                        dateSpan: o.dateSpan,
                        rect: {
                            left: o.left,
                            right: o.right,
                            top: 0,
                            bottom: r
                        },
                        dayEl: o.dayEl,
                        layer: 0
                    } : null
                }, t
            }(Yr);
        var Jl = {
            bootstrap: na,
            dayGrid: Ia,
            interaction: rs,
            list: gs,
            timeGrid: Js,
            timeline: qr({
                deps: [rl],
                initialView: "timelineDay",
                views: {
                    timeline: {
                        component: function(e) {
                            function t() {
                                var t = null !== e && e.apply(this, arguments) || this;
                                return t.buildTimelineDateProfile = ut(Rl), t.scrollGridRef = Q(), t.state = {
                                    slatCoords: null,
                                    slotCushionMaxWidth: null
                                }, t.handleSlatCoords = function(e) {
                                    t.setState({
                                        slatCoords: e
                                    })
                                }, t.handleScrollLeftRequest = function(e) {
                                    t.scrollGridRef.current.forceScrollLeft(0, e)
                                }, t.handleMaxCushionWidth = function(e) {
                                    t.setState({
                                        slotCushionMaxWidth: Math.ceil(e)
                                    })
                                }, t
                            }
                            return o(t, e), t.prototype.render = function() {
                                var e = this,
                                    t = this.props,
                                    n = this.state,
                                    r = this.context,
                                    o = r.options,
                                    a = !t.forPrint && Oi(o),
                                    s = !t.forPrint && zi(o),
                                    l = this.buildTimelineDateProfile(t.dateProfile, r.dateEnv, o, r.dateProfileGenerator),
                                    c = ["fc-timeline", !1 === o.eventOverlap ? "fc-timeline-overlap-disabled" : ""],
                                    u = o.slotMinWidth,
                                    d = function(e, t) {
                                        return [{
                                            span: e.slotCnt,
                                            minWidth: t || 1
                                        }]
                                    }(l, u || this.computeFallbackSlotMinWidth(l)),
                                    f = [{
                                        type: "header",
                                        key: "header",
                                        isSticky: a,
                                        chunks: [{
                                            key: "timeline",
                                            content: function(r) {
                                                return Y(zl, {
                                                    dateProfile: t.dateProfile,
                                                    clientWidth: r.clientWidth,
                                                    clientHeight: r.clientHeight,
                                                    tableMinWidth: r.tableMinWidth,
                                                    tableColGroupNode: r.tableColGroupNode,
                                                    tDateProfile: l,
                                                    slatCoords: n.slatCoords,
                                                    onMaxCushionWidth: u ? null : e.handleMaxCushionWidth
                                                })
                                            }
                                        }]
                                    }, {
                                        type: "body",
                                        key: "body",
                                        liquid: !0,
                                        chunks: [{
                                            key: "timeline",
                                            content: function(n) {
                                                return Y(Xl, i({}, t, {
                                                    clientWidth: n.clientWidth,
                                                    clientHeight: n.clientHeight,
                                                    tableMinWidth: n.tableMinWidth,
                                                    tableColGroupNode: n.tableColGroupNode,
                                                    tDateProfile: l,
                                                    onSlatCoords: e.handleSlatCoords,
                                                    onScrollLeftRequest: e.handleScrollLeftRequest
                                                }))
                                            }
                                        }]
                                    }];
                                return s && f.push({
                                    type: "footer",
                                    key: "footer",
                                    isSticky: !0,
                                    chunks: [{
                                        key: "timeline",
                                        content: Hi
                                    }]
                                }), Y(io, {
                                    viewSpec: r.viewSpec
                                }, (function(n, r) {
                                    return Y("div", {
                                        ref: n,
                                        className: c.concat(r).join(" ")
                                    }, Y(pl, {
                                        ref: e.scrollGridRef,
                                        liquid: !t.isHeightAuto && !t.forPrint,
                                        colGroups: [{
                                            cols: d
                                        }],
                                        sections: f
                                    }))
                                }))
                            }, t.prototype.computeFallbackSlotMinWidth = function(e) {
                                return Math.max(30, (this.state.slotCushionMaxWidth || 0) / e.slotsPerLabel)
                            }, t
                        }(Yr),
                        usesMinMaxTime: !0,
                        eventResizableFromStart: !0
                    },
                    timelineDay: {
                        type: "timeline",
                        duration: {
                            days: 1
                        }
                    },
                    timelineWeek: {
                        type: "timeline",
                        duration: {
                            weeks: 1
                        }
                    },
                    timelineMonth: {
                        type: "timeline",
                        duration: {
                            months: 1
                        }
                    },
                    timelineYear: {
                        type: "timeline",
                        duration: {
                            years: 1
                        }
                    }
                }
            })
        }
    }
}));