<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="ks-webkit537 ks-webkit ks-chrome68 ks-chrome">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" async="" src="./大麦双11-嗨享现场壕礼_files/entry.js.下载"></script>
    <script type="text/javascript" async="" src="./大麦双11-嗨享现场壕礼_files/index.js.下载" id="aplus-sufei"></script>
    <script charset="utf-8" src="${ctx}/static/js/saved_resource" async=""></script>
    <script>/*! 2018-10-29 23:44:10 v8.7.2 */
    !function (e) {
        function i(n) {
            if (o[n]) return o[n].exports;
            var r = o[n] = {exports: {}, id: n, loaded: !1};
            return e[n].call(r.exports, r, r.exports, i), r.loaded = !0, r.exports
        }

        var o = {};
        return i.m = e, i.c = o, i.p = "", i(0)
    }([function (e, i) {
        "use strict";
        var o = window, n = document;
        !function () {
            var e = 2, r = "ali_analytics";
            if (o[r] && o[r].ua && e <= o[r].ua.version) return void(i.info = o[r].ua);
            var t, a, d, s, c, u, h, l, m, b, f, v, p, w, g, x, z, O = o.navigator, k = O.appVersion,
                T = O && O.userAgent || "", y = function (e) {
                    var i = 0;
                    return parseFloat(e.replace(/\./g, function () {
                        return 0 === i++ ? "." : ""
                    }))
                }, _ = function (e, i) {
                    var o, n;
                    i[o = "trident"] = .1, (n = e.match(/Trident\/([\d.]*)/)) && n[1] && (i[o] = y(n[1])), i.core = o
                }, N = function (e) {
                    var i, o;
                    return (i = e.match(/MSIE ([^;]*)|Trident.*; rv(?:\s|:)?([0-9.]+)/)) && (o = i[1] || i[2]) ? y(o) : 0
                }, P = function (e) {
                    return e || "other"
                }, M = function (e) {
                    function i() {
                        for (var i = [["Windows NT 5.1", "winXP"], ["Windows NT 6.1", "win7"], ["Windows NT 6.0", "winVista"], ["Windows NT 6.2", "win8"], ["Windows NT 10.0", "win10"], ["iPad", "ios"], ["iPhone;", "ios"], ["iPod", "ios"], ["Macintosh", "mac"], ["Android", "android"], ["Ubuntu", "ubuntu"], ["Linux", "linux"], ["Windows NT 5.2", "win2003"], ["Windows NT 5.0", "win2000"], ["Windows", "winOther"], ["rhino", "rhino"]], o = 0, n = i.length; o < n; ++o) if (e.indexOf(i[o][0]) !== -1) return i[o][1];
                        return "other"
                    }

                    function r(e, i, n, r) {
                        var t, a = o.navigator.mimeTypes;
                        try {
                            for (t in a) if (a.hasOwnProperty(t) && a[t][e] == i) {
                                if (void 0 !== n && r.test(a[t][n])) return !0;
                                if (void 0 === n) return !0
                            }
                            return !1
                        } catch (e) {
                            return !1
                        }
                    }

                    var t, a, d, s, c, u, h, l = "", m = l, b = l, f = [6, 9], v = "{{version}}",
                        p = "<!--[if IE " + v + "]><s></s><![endif]-->", w = n && n.createElement("div"), g = [], x = {
                            webkit: void 0,
                            edge: void 0,
                            trident: void 0,
                            gecko: void 0,
                            presto: void 0,
                            chrome: void 0,
                            safari: void 0,
                            firefox: void 0,
                            ie: void 0,
                            ieMode: void 0,
                            opera: void 0,
                            mobile: void 0,
                            core: void 0,
                            shell: void 0,
                            phantomjs: void 0,
                            os: void 0,
                            ipad: void 0,
                            iphone: void 0,
                            ipod: void 0,
                            ios: void 0,
                            android: void 0,
                            nodejs: void 0,
                            extraName: void 0,
                            extraVersion: void 0
                        };
                    if (w && w.getElementsByTagName && (w.innerHTML = p.replace(v, ""), g = w.getElementsByTagName("s")), g.length > 0) {
                        for (_(e, x), s = f[0], c = f[1]; s <= c; s++) if (w.innerHTML = p.replace(v, s), g.length > 0) {
                            x[b = "ie"] = s;
                            break
                        }
                        !x.ie && (d = N(e)) && (x[b = "ie"] = d)
                    } else ((a = e.match(/AppleWebKit\/*\s*([\d.]*)/i)) || (a = e.match(/Safari\/([\d.]*)/))) && a[1] ? (x[m = "webkit"] = y(a[1]), (a = e.match(/OPR\/(\d+\.\d+)/)) && a[1] ? x[b = "opera"] = y(a[1]) : (a = e.match(/Chrome\/([\d.]*)/)) && a[1] ? x[b = "chrome"] = y(a[1]) : (a = e.match(/\/([\d.]*) Safari/)) && a[1] ? x[b = "safari"] = y(a[1]) : x.safari = x.webkit, (a = e.match(/Edge\/([\d.]*)/)) && a[1] && (m = b = "edge", x[m] = y(a[1])), / Mobile\//.test(e) && e.match(/iPad|iPod|iPhone/) ? (x.mobile = "apple", a = e.match(/OS ([^\s]*)/), a && a[1] && (x.ios = y(a[1].replace("_", "."))), t = "ios", a = e.match(/iPad|iPod|iPhone/), a && a[0] && (x[a[0].toLowerCase()] = x.ios)) : / Android/i.test(e) ? (/Mobile/.test(e) && (t = x.mobile = "android"), a = e.match(/Android ([^\s]*);/), a && a[1] && (x.android = y(a[1]))) : (a = e.match(/NokiaN[^\/]*|Android \d\.\d|webOS\/\d\.\d/)) && (x.mobile = a[0].toLowerCase()), (a = e.match(/PhantomJS\/([^\s]*)/)) && a[1] && (x.phantomjs = y(a[1]))) : (a = e.match(/Presto\/([\d.]*)/)) && a[1] ? (x[m = "presto"] = y(a[1]), (a = e.match(/Opera\/([\d.]*)/)) && a[1] && (x[b = "opera"] = y(a[1]), (a = e.match(/Opera\/.* Version\/([\d.]*)/)) && a[1] && (x[b] = y(a[1])), (a = e.match(/Opera Mini[^;]*/)) && a ? x.mobile = a[0].toLowerCase() : (a = e.match(/Opera Mobi[^;]*/)) && a && (x.mobile = a[0]))) : (d = N(e)) ? (x[b = "ie"] = d, _(e, x)) : (a = e.match(/Gecko/)) && (x[m = "gecko"] = .1, (a = e.match(/rv:([\d.]*)/)) && a[1] && (x[m] = y(a[1]), /Mobile|Tablet/.test(e) && (x.mobile = "firefox")), (a = e.match(/Firefox\/([\d.]*)/)) && a[1] && (x[b = "firefox"] = y(a[1])));
                    t || (t = i());
                    var z, O, T;
                    if (!r("type", "application/vnd.chromium.remoting-viewer")) {
                        z = "scoped" in n.createElement("style"), T = "v8Locale" in o;
                        try {
                            O = o.external || void 0
                        } catch (e) {
                        }
                        if (a = e.match(/360SE/)) u = "360"; else if ((a = e.match(/SE\s([\d.]*)/)) || O && "SEVersion" in O) u = "sougou", h = y(a[1]) || .1; else if ((a = e.match(/Maxthon(?:\/)+([\d.]*)/)) && O) {
                            u = "maxthon";
                            try {
                                h = y(O.max_version || a[1])
                            } catch (e) {
                                h = .1
                            }
                        } else z && T ? u = "360se" : z || T || !/Gecko\)\s+Chrome/.test(k) || x.opera || x.edge || (u = "360ee")
                    }
                    (a = e.match(/TencentTraveler\s([\d.]*)|QQBrowser\/([\d.]*)/)) ? (u = "tt", h = y(a[2]) || .1) : (a = e.match(/LBBROWSER/)) || O && "LiebaoGetVersion" in O ? u = "liebao" : (a = e.match(/TheWorld/)) ? (u = "theworld", h = 3) : (a = e.match(/TaoBrowser\/([\d.]*)/)) ? (u = "taobao", h = y(a[1]) || .1) : (a = e.match(/UCBrowser\/([\d.]*)/)) && (u = "uc", h = y(a[1]) || .1), x.os = t, x.core = x.core || m, x.shell = b, x.ieMode = x.ie && n.documentMode || x.ie, x.extraName = u, x.extraVersion = h;
                    var P = o.screen.width, M = o.screen.height;
                    return x.resolution = P + "x" + M, x
                }, S = function (e) {
                    function i(e) {
                        return Object.prototype.toString.call(e)
                    }

                    function o(e, o, n) {
                        if ("[object Function]" == i(o) && (o = o(n)), !o) return null;
                        var r = {name: e, version: ""}, t = i(o);
                        if (o === !0) return r;
                        if ("[object String]" === t) {
                            if (n.indexOf(o) !== -1) return r
                        } else if (o.exec) {
                            var a = o.exec(n);
                            if (a) return a.length >= 2 && a[1] ? r.version = a[1].replace(/_/g, ".") : r.version = "", r
                        }
                    }

                    var n = {name: "other", version: ""};
                    e = (e || "").toLowerCase();
                    for (var r = [["nokia", function (e) {
                        return e.indexOf("nokia ") !== -1 ? /\bnokia ([0-9]+)?/ : /\bnokia([a-z0-9]+)?/
                    }], ["samsung", function (e) {
                        return e.indexOf("samsung") !== -1 ? /\bsamsung(?:[ \-](?:sgh|gt|sm))?-([a-z0-9]+)/ : /\b(?:sgh|sch|gt|sm)-([a-z0-9]+)/
                    }], ["wp", function (e) {
                        return e.indexOf("windows phone ") !== -1 || e.indexOf("xblwp") !== -1 || e.indexOf("zunewp") !== -1 || e.indexOf("windows ce") !== -1
                    }], ["pc", "windows"], ["ipad", "ipad"], ["ipod", "ipod"], ["iphone", /\biphone\b|\biph(\d)/], ["mac", "macintosh"], ["mi", /\bmi[ \-]?([a-z0-9 ]+(?= build|\)))/], ["hongmi", /\bhm[ \-]?([a-z0-9]+)/], ["aliyun", /\baliyunos\b(?:[\-](\d+))?/], ["meizu", function (e) {
                        return e.indexOf("meizu") >= 0 ? /\bmeizu[\/ ]([a-z0-9]+)\b/ : /\bm([0-9x]{1,3})\b/
                    }], ["nexus", /\bnexus ([0-9s.]+)/], ["huawei", function (e) {
                        var i = /\bmediapad (.+?)(?= build\/huaweimediapad\b)/;
                        return e.indexOf("huawei-huawei") !== -1 ? /\bhuawei\-huawei\-([a-z0-9\-]+)/ : i.test(e) ? i : /\bhuawei[ _\-]?([a-z0-9]+)/
                    }], ["lenovo", function (e) {
                        return e.indexOf("lenovo-lenovo") !== -1 ? /\blenovo\-lenovo[ \-]([a-z0-9]+)/ : /\blenovo[ \-]?([a-z0-9]+)/
                    }], ["zte", function (e) {
                        return /\bzte\-[tu]/.test(e) ? /\bzte-[tu][ _\-]?([a-su-z0-9\+]+)/ : /\bzte[ _\-]?([a-su-z0-9\+]+)/
                    }], ["vivo", /\bvivo(?: ([a-z0-9]+))?/], ["htc", function (e) {
                        return /\bhtc[a-z0-9 _\-]+(?= build\b)/.test(e) ? /\bhtc[ _\-]?([a-z0-9 ]+(?= build))/ : /\bhtc[ _\-]?([a-z0-9 ]+)/
                    }], ["oppo", /\boppo[_]([a-z0-9]+)/], ["konka", /\bkonka[_\-]([a-z0-9]+)/], ["sonyericsson", /\bmt([a-z0-9]+)/], ["coolpad", /\bcoolpad[_ ]?([a-z0-9]+)/], ["lg", /\blg[\-]([a-z0-9]+)/], ["android", /\bandroid\b|\badr\b/], ["blackberry", function (e) {
                        return e.indexOf("blackberry") >= 0 ? /\bblackberry\s?(\d+)/ : "bb10"
                    }]], t = 0; t < r.length; t++) {
                        var a = r[t][0], d = r[t][1], s = o(a, d, e);
                        if (s) {
                            n = s;
                            break
                        }
                    }
                    return n
                }, E = 1;
            try {
                t = M(T), a = S(T), d = t.os, s = t.shell, c = t.core, u = t.resolution, h = t.extraName, l = t.extraVersion, m = a.name, b = a.version, v = d ? d + (t[d] ? t[d] : "") : "", p = s ? s + parseInt(t[s]) : "", w = c, g = u, x = h ? h + (l ? parseInt(l) : "") : "", z = m + b
            } catch (e) {
            }
            f = {
                p: E,
                o: P(v),
                b: P(p),
                w: P(w),
                s: g,
                mx: x,
                ism: z
            }, o[r] || (o[r] = {}), o[r].ua || (o[r].ua = {}), o.goldlog || (o.goldlog = {}), i.info = o[r].ua = goldlog._aplus_client = {
                version: e,
                ua_info: f
            }
        }()
    }]);
    /*! 2017-10-31 20:15:15 v0.2.4 */
    !function (t) {
        function e(o) {
            if (n[o]) return n[o].exports;
            var i = n[o] = {exports: {}, id: o, loaded: !1};
            return t[o].call(i.exports, i, i.exports, e), i.loaded = !0, i.exports
        }

        var n = {};
        return e.m = t, e.c = n, e.p = "", e(0)
    }([function (t, e, n) {
        "use strict";
        !function () {
            var t = window.goldlog || (window.goldlog = {});
            t._aplus_cplugin_utilkit || (t._aplus_cplugin_utilkit = {status: "init"}, n(1).init(t), t._aplus_cplugin_utilkit.status = "complete")
        }()
    }, function (t, e, n) {
        "use strict";
        var o = n(2), i = n(4);
        e.init = function (t) {
            t.setCookie = o.setCookie, t.getCookie = o.getCookie, t.on = i.on
        }
    }, function (t, e, n) {
        "use strict";
        var o = document, i = n(3), a = function (t) {
            var e = new RegExp("(?:^|;)\\s*" + t + "=([^;]+)"), n = o.cookie.match(e);
            return n ? n[1] : ""
        };
        e.getCookie = a;
        var r = function (t, e, n) {
            n || (n = {});
            var i = new Date;
            return n.expires && ("number" == typeof n.expires || n.expires.toUTCString) ? ("number" == typeof n.expires ? i.setTime(i.getTime() + 24 * n.expires * 60 * 60 * 1e3) : i = n.expires, e += "; expires=" + i.toUTCString()) : "session" !== n.expires && (i.setTime(i.getTime() + 63072e7), e += "; expires=" + i.toUTCString()), e += "; path=" + (n.path ? n.path : "/"), e += "; domain=" + n.domain, o.cookie = t + "=" + e, a(t)
        };
        e.setCookie = function (t, e, n) {
            try {
                if (n || (n = {}), n.domain) r(t, e, n); else for (var o = i.getDomains(), a = 0; a < o.length;) n.domain = o[a], r(t, e, n) ? a = o.length : a++
            } catch (t) {
            }
        }
    }, function (t, e) {
        "use strict";
        e.getDomains = function () {
            var t = [];
            try {
                for (var e = location.hostname, n = e.split("."), o = 2; o <= n.length;) t.push(n.slice(n.length - o).join(".")), o++
            } catch (t) {
            }
            return t
        }
    }, function (t, e) {
        "use strict";
        var n = window, o = document, i = !!o.attachEvent, a = "attachEvent", r = "addEventListener", c = i ? a : r,
            u = function (t, e) {
                var n = goldlog._$ || {}, o = n.meta_info || {}, i = o.aplus_ctap || {};
                if (i && "function" == typeof i.on) i.on(t, e); else {
                    var a = "ontouchend" in document.createElement("div"), r = a ? "touchstart" : "mousedown";
                    s(t, r, e)
                }
            }, s = function (t, e, o) {
                return "tap" === e ? void u(t, o) : void t[c]((i ? "on" : "") + e, function (t) {
                    t = t || n.event;
                    var e = t.target || t.srcElement;
                    "function" == typeof o && o(t, e)
                }, !1)
            };
        e.on = s;
        var d = function (t) {
            try {
                o.documentElement.doScroll("left")
            } catch (e) {
                return void setTimeout(function () {
                    d(t)
                }, 1)
            }
            t()
        }, l = function (t) {
            var e = 0, n = function () {
                0 === e && t(), e++
            };
            "complete" === o.readyState && n();
            var i;
            if (o.addEventListener) i = function () {
                o.removeEventListener("DOMContentLoaded", i, !1), n()
            }, o.addEventListener("DOMContentLoaded", i, !1), window.addEventListener("load", n, !1); else if (o.attachEvent) {
                i = function () {
                    "complete" === o.readyState && (o.detachEvent("onreadystatechange", i), n())
                }, o.attachEvent("onreadystatechange", i), window.attachEvent("onload", n);
                var a = !1;
                try {
                    a = null === window.frameElement
                } catch (t) {
                }
                o.documentElement.doScroll && a && d(n)
            }
        };
        e.DOMReady = function (t) {
            l(t)
        }, e.onload = function (t) {
            "complete" === o.readyState ? t() : s(n, "load", t)
        }
    }]);
    /*! 2017-12-19 12:10:24 v0.2.9 */
    !function (o) {
        function t(r) {
            if (e[r]) return e[r].exports;
            var a = e[r] = {exports: {}, id: r, loaded: !1};
            return o[r].call(a.exports, a, a.exports, t), a.loaded = !0, a.exports
        }

        var e = {};
        return t.m = o, t.c = e, t.p = "", t(0)
    }([function (o, t, e) {
        "use strict";
        !function () {
            var o = window.goldlog || (window.goldlog = {});
            o._aplus_cplugin_m || (o._aplus_cplugin_m = e(1).run())
        }()
    }, function (o, t, e) {
        "use strict";
        var r = e(2), a = e(3), n = e(4), s = navigator.sendBeacon ? "post" : "get";
        e(5).run(), t.run = function () {
            return {
                status: "complete", do_tracker_jserror: function (o) {
                    try {
                        var t = new n({
                                logkey: o ? o.logkey : "",
                                ratio: o && "number" == typeof o.ratio && o.ratio > 0 ? o.ratio : r.jsErrorRecordRatio
                            }), e = ["Message: " + o.message, "Error object: " + o.error].join(" - "),
                            c = goldlog.spm_ab || [], i = location.hostname + location.pathname;
                        t.run({
                            code: 110,
                            page: i,
                            msg: "record_jserror_by" + s + "_" + o.message,
                            spm_a: c[0],
                            spm_b: c[1],
                            c1: e,
                            c2: o.filename,
                            c3: location.protocol + "//" + i
                        })
                    } catch (o) {
                        a.logger({msg: o})
                    }
                }, do_tracker_lostpv: function (o) {
                    var t = !1;
                    try {
                        if (o && o.page) {
                            var e = o.spm_ab ? o.spm_ab.split(".") : [], c = "record_lostpv_by" + s + "_" + o.msg,
                                i = new n({ratio: o.ratio || r.lostPvRecordRatio});
                            i.run({
                                code: 102,
                                page: o.page,
                                msg: c,
                                spm_a: e[0],
                                spm_b: e[1],
                                c1: o.duration,
                                c2: o.page_url
                            }), t = !0
                        }
                    } catch (o) {
                        a.logger({msg: o})
                    }
                    return t
                }, do_tracker_obsolete_inter: function (o) {
                    var t = !1;
                    try {
                        if (o && o.page) {
                            var e = o.spm_ab ? o.spm_ab.split(".") : [],
                                c = "record_obsolete interface be called by" + s,
                                i = new n({ratio: o.ratio || r.obsoleteInterRecordRatio});
                            i.run({
                                code: 109,
                                page: o.page,
                                msg: c,
                                spm_a: e[0],
                                spm_b: e[1],
                                c1: o.interface_name,
                                c2: o.interface_params
                            }), t = !0
                        }
                    } catch (o) {
                        a.logger({msg: o})
                    }
                    return t
                }, do_tracker_browser_support: function (o) {
                    var t = !1;
                    try {
                        if (o && o.page) {
                            var e = o.spm_ab ? o.spm_ab.split(".") : [],
                                c = new n({ratio: o.ratio || r.browserSupportRatio}), i = goldlog._aplus_client || {},
                                g = i.ua_info || {};
                            c.run({
                                code: 111,
                                page: o.page,
                                msg: o.msg + "_by" + s,
                                spm_a: e[0],
                                spm_b: e[1],
                                c1: [g.o, g.b, g.w].join("_"),
                                c2: o.etag || "",
                                c3: o.cna || ""
                            }), t = !0
                        }
                    } catch (o) {
                        a.logger({msg: o})
                    }
                    return t
                }
            }
        }
    }, function (o, t) {
        "use strict";
        t.lostPvRecordRatio = "0.01", t.obsoleteInterRecordRatio = "0.01", t.jsErrorRecordRatio = "0.01", t.browserSupportRatio = "0.01", t.goldlogQueueRatio = "0.01"
    }, function (o, t) {
        "use strict";
        var e = function (o) {
            var t = o.level || "warn";
            window.console && window.console[t] && window.console[t](o.msg)
        };
        t.logger = e, t.assign = function (o, t) {
            if ("function" != typeof Object.assign) {
                var e = function (o) {
                    if (null === o) throw new TypeError("Cannot convert undefined or null to object");
                    for (var t = Object(o), e = 1; e < arguments.length; e++) {
                        var r = arguments[e];
                        if (null !== r) for (var a in r) Object.prototype.hasOwnProperty.call(r, a) && (t[a] = r[a])
                    }
                    return t
                };
                return e(o, t)
            }
            return Object.assign({}, o, t)
        }, t.makeCacheNum = function () {
            return Math.floor(268435456 * Math.random()).toString(16)
        }, t.obj2param = function (o) {
            var t, e, r = [];
            for (t in o) o.hasOwnProperty(t) && (e = "" + o[t], r.push(t + "=" + encodeURIComponent(e)));
            return r.join("&")
        }
    }, function (o, t, e) {
        var r = e(3), a = {ratio: 1, logkey: "fsp.1.1", gmkey: "", chksum: "H46747615"}, n = function (o) {
            o && "object" == typeof o || (o = a), this.opts = o, this.opts.ratio = o.ratio || a.ratio, this.opts.logkey = o.logkey || a.logkey, this.opts.gmkey = o.gmkey || a.gmkey, this.opts.chksum = o.chksum || a.chksum
        }, s = n.prototype;
        s.getRandom = function () {
            return Math.floor(100 * Math.random()) + 1
        }, s.run = function (o) {
            var t, e, a = {pid: "aplus", code: 101, msg: "异常内容"}, n = "";
            try {
                var s = window.goldlog || {}, c = s._$ || {}, i = c.meta_info || {},
                    g = parseFloat(i["aplus-tracker-rate"]);
                if (t = this.opts || {}, "number" == typeof g && g + "" != "NaN" || (g = t.ratio), e = this.getRandom(), e <= 100 * g) {
                    n = "//gm.mmstat.com/" + t.logkey, o.rel = c.script_name + "@" + s.lver, o.type = o.code, o.uid = encodeURIComponent(s.getCookie("cna")), o = r.assign(a, o);
                    var l = r.obj2param(o);
                    s.tracker = s.send(n, {cache: r.makeCacheNum(), gokey: l, logtype: "2"}, "POST")
                }
            } catch (o) {
                r.logger({msg: "tracker.run() exec error: " + o})
            }
        }, o.exports = n
    }, function (o, t, e) {
        "use strict";
        var r = e(6), a = function (o) {
            var t = window.goldlog || {}, e = t._$ = t._$ || {}, r = t.spm_ab ? t.spm_ab.join(".") : "0.0",
                a = e.send_pv_count || 0;
            if (a < 1 && navigator && navigator.sendBeacon) {
                var n = window.goldlog_queue || (window.goldlog_queue = []), s = location.hostname + location.pathname;
                n.push({
                    action: ["goldlog", "_aplus_cplugin_m", "do_tracker_lostpv"].join("."),
                    arguments: [{
                        page: s,
                        page_url: location.protocol + "//" + s,
                        duration: o,
                        spm_ab: r,
                        msg: "dom_state=" + document.readyState
                    }]
                })
            }
        };
        t.run = function () {
            var o = new Date;
            r.on(window, "beforeunload", function () {
                var t = new Date, e = t.getTime() - o.getTime();
                a(e)
            })
        }
    }, function (o, t) {
        "use strict";
        var e = window, r = document, a = !!r.attachEvent, n = "attachEvent", s = "addEventListener", c = a ? n : s;
        t.getIframeUrl = function (o) {
            var t, e = "//g.alicdn.com";
            return t = goldlog && "function" == typeof goldlog.getCdnPath ? goldlog.getCdnPath() || e : e, (o || "https") + ":" + t + "/alilog/aplus_cplugin/@@APLUS_CPLUGIN_VER/ls.html"
        }, t.on = function (o, t, r) {
            o[c]((a ? "on" : "") + t, function (o) {
                o = o || e.event;
                var t = o.target || o.srcElement;
                "function" == typeof r && r(o, t)
            }, !1)
        }, t.checkLs = function () {
            var o;
            try {
                window.localStorage && (localStorage.setItem("test_log_cna", "1"), "1" === localStorage.getItem("test_log_cna") && (localStorage.removeItem("test_log_cna"), o = !0))
            } catch (t) {
                o = !1
            }
            return o
        }, t.tracker_iframe_status = function (o, t) {
            var e = window.goldlog_queue || (window.goldlog_queue = []),
                r = goldlog.spm_ab ? goldlog.spm_ab.join(".") : "", a = "createIframe_" + t.status + "_id=" + o;
            t.msg && (a += "_" + t.msg), e.push({
                action: "goldlog._aplus_cplugin_m.do_tracker_browser_support",
                arguments: [{
                    page: location.hostname + location.pathname,
                    msg: a,
                    browser_attr: navigator.userAgent,
                    spm_ab: r,
                    cna: t.duration || "",
                    ratio: .01
                }]
            })
        }, t.tracker_ls_failed = function () {
            var o = window.goldlog_queue || (window.goldlog_queue = []),
                t = goldlog.spm_ab ? goldlog.spm_ab.join(".") : "";
            o.push({
                action: "goldlog._aplus_cplugin_m.do_tracker_browser_support",
                arguments: [{
                    page: location.hostname + location.pathname,
                    msg: "donot support localStorage",
                    browser_attr: navigator.userAgent,
                    spm_ab: t
                }]
            })
        }, t.processMsgData = function (o) {
            var t = {};
            try {
                t = "string" == typeof o ? JSON.parse(o) : o, t || (t = {})
            } catch (o) {
                t = {}
            }
            return t
        }, t.do_pub_fn = function (o, t) {
            var e = window.goldlog_queue || (window.goldlog_queue = []);
            e.push({
                action: "goldlog.aplus_pubsub.publish",
                arguments: [o, t]
            }), e.push({action: "goldlog.aplus_pubsub.cachePubs", arguments: [o, t]})
        }
    }]);
    /*! 2018-10-29 23:43:58 v8.7.2 */
    !function (t) {
        function e(o) {
            if (n[o]) return n[o].exports;
            var a = n[o] = {exports: {}, id: o, loaded: !1};
            return t[o].call(a.exports, a, a.exports, e), a.loaded = !0, a.exports
        }

        var n = {};
        return e.m = t, e.c = n, e.p = "", e(0)
    }([function (t, e, n) {
        t.exports = n(1)
    }, function (t, e, n) {
        "use strict";
        !function () {
            var t = window, e = n(2), o = n(3);
            "ontouchend" in document.createElement("div") && (t.goldlog_queue || (t.goldlog_queue = [])).push({
                action: "goldlog.setMetaInfo",
                arguments: ["aplus-touch", "tap"]
            });
            var a = function () {
                n(90);
                var e = n(92), o = n(36);
                if (o.doPubMsg(["goldlogReady", "running"]), document.getElementsByTagName("body").length) {
                    var r = "g_tb_aplus_loaded";
                    if (t[r]) return;
                    t[r] = 1, n(105).initGoldlog(e)
                } else setTimeout(function () {
                    a()
                }, 50)
            }, r = function (n, o) {
                try {
                    var a = Math.floor(268435456 * Math.random()).toString(16), r = t.location || {},
                        i = ["page=" + encodeURIComponent(r.href), "info=" + encodeURIComponent(n.message), "stack=" + encodeURIComponent(n && n.stack ? n.stack : ""), "filename=aplus_core", "method=" + o, "cache=" + a].join("&"),
                        s = r.protocol + "//gm.mmstat.com/mm.req.load?" + i;
                    navigator && navigator.sendBeacon ? e.postData(s) : e.sendImg(s)
                } catch (t) {
                }
            };
            try {
                a()
            } catch (t) {
                r(t, o.script_name + "@" + o.lver)
            }
        }()
    }, function (t, e) {
        "use strict";
        var n = window;
        e.sendImg = function (t, e) {
            var o = new Image, a = "_img_" + Math.random();
            n[a] = o;
            var r = function () {
                if (n[a]) try {
                    delete n[a]
                } catch (t) {
                    n[a] = void 0
                }
            };
            return o.onload = function () {
                r()
            }, o.onerror = function () {
                r()
            }, setTimeout(function () {
                window[a] && (window[a].src = "", r())
            }, e || 5e3), o.src = t, o = null, t
        }, e.postData = function (t, e) {
            for (var n in e) "cna" !== n && (e[n] = encodeURIComponent(e[n]));
            return navigator.sendBeacon(t, JSON.stringify(e)), t
        }
    }, function (t, e, n) {
        "use strict";
        var o = n(4), a = n(5), r = n(6);
        e.APLUS_ENV = "production", e.lver = a.lver, e.toUtVersion = a.toUtVersion, e.script_name = a.script_name, e.recordTypes = o.recordTypes, e.KEY = o.KEY, e.context = r.context, e.context_prepv = r.context_prepv, e.aplus_init = n(14).plugins_init, e.plugins_pv = n(34).plugins_pv, e.plugins_prepv = n(61).plugins_prepv, e.context_hjlj = n(62), e.plugins_hjlj = n(64).plugins_hjlj, e.beforeUnload = n(72), e.initLoad = n(76), e.spmException = n(81), e.goldlog_path = n(82), e.is_auto_pv = "true", e.utilPvid = n(86), e.disablePvid = "false", e.mustSpmE = !0, e.LS_CNA_KEY = "APLUS_CNA"
    }, function (t, e) {
        "use strict";
        e.recordTypes = {
            hjlj: "COMMON_HJLJ",
            uhjlj: "DATACLICK_HJLJ",
            pv: "PV",
            prepv: "PREPV"
        }, e.KEY = {
            NAME_STORAGE: {
                REFERRER: "wm_referrer",
                REFERRER_PV_ID: "refer_pv_id",
                LOST_PV_PAGE_DURATION: "lost_pv_page_duration",
                LOST_PV_PAGE_SPMAB: "lost_pv_page_spmab",
                LOST_PV_PAGE: "lost_pv_page",
                LOST_PV_PAGE_MSG: "lost_pv_page_msg"
            }
        }
    }, function (t, e) {
        "use strict";
        e.lver = "8.7.2", e.toUtVersion = "v20181029", e.script_name = "aplus_std"
    }, function (t, e, n) {
        "use strict";
        e.context = n(7), e.context_prepv = n(13)
    }, function (t, e, n) {
        "use strict";

        function o() {
            return {compose: {maxTimeout: 5500}, etag: {egUrl: "log.mmstat.com/eg.js", cna: i.getCookie("cna")}}
        }

        function a() {
            return r.assign(new s.initConfig, new o)
        }

        var r = n(8), i = n(10), s = n(12);
        t.exports = a
    }, function (t, e, n) {
        "use strict";

        function o(t, e) {
            return "function" != typeof Object.assign ? function (t) {
                if (null === t) throw new TypeError("Cannot convert undefined or null to object");
                for (var e = Object(t), n = 1; n < arguments.length; n++) {
                    var o = arguments[n];
                    if (null !== o) for (var a in o) Object.prototype.hasOwnProperty.call(o, a) && (e[a] = o[a])
                }
                return e
            }(t, e) : Object.assign({}, t, e)
        }

        function a(t) {
            return "function" == typeof t
        }

        function r(t) {
            return "string" == typeof t
        }

        function i(t) {
            return "undefined" == typeof t
        }

        function s(t, e) {
            return t.indexOf(e) > -1
        }

        var u = window;
        e.assign = o, e.makeCacheNum = function () {
            return Math.floor(268435456 * Math.random()).toString(16)
        }, e.each = n(9), e.isStartWith = function (t, e) {
            return 0 === t.indexOf(e)
        }, e.isEndWith = function (t, e) {
            var n = t.length, o = e.length;
            return n >= o && t.indexOf(e) == n - o
        }, e.any = function (t, e) {
            var n, o = t.length;
            for (n = 0; n < o; n++) if (e(t[n])) return !0;
            return !1
        }, e.isFunction = a, e.isArray = function (t) {
            return Array.isArray ? Array.isArray(t) : /Array/.test(Object.prototype.toString.call(t))
        }, e.isString = r, e.isNumber = function (t) {
            return "number" == typeof t
        }, e.isUnDefined = i, e.isContain = s;
        var c = function (t) {
            var e, n = t.constructor === Array ? [] : {};
            if ("object" == typeof t) {
                if (u.JSON && u.JSON.parse) e = JSON.stringify(t), n = JSON.parse(e); else for (var o in t) n[o] = "object" == typeof t[o] ? c(t[o]) : t[o];
                return n
            }
        };
        e.cloneObj = c, e.cloneDeep = c
    }, function (t, e) {
        "use strict";
        t.exports = function (t, e) {
            var n, o = t.length;
            for (n = 0; n < o; n++) e(t[n], n)
        }
    }, function (t, e, n) {
        "use strict";

        function o(t) {
            var e = s.cookie.match(new RegExp("(?:^|;)\\s*" + t + "=([^;]+)"));
            return e ? e[1] : ""
        }

        function a(t, e, n) {
            n || (n = {});
            var a = new Date;
            return "session" === n.expires || (n.expires && ("number" == typeof n.expires || n.expires.toUTCString) ? ("number" == typeof n.expires ? a.setTime(a.getTime() + 24 * n.expires * 60 * 60 * 1e3) : a = n.expires, e += "; expires=" + a.toUTCString()) : (a.setTime(a.getTime() + 63072e7), e += "; expires=" + a.toUTCString())), e += "; path=" + (n.path ? n.path : "/"), e += "; domain=" + n.domain, s.cookie = t + "=" + e, o(t)
        }

        function r(t, e, n) {
            try {
                if (n || (n = {}), n.domain) a(t, e, n); else for (var o = c.getDomains(), r = 0; r < o.length;) n.domain = o[r], a(t, e, n) ? r = o.length : r++
            } catch (t) {
            }
        }

        function i() {
            var t = {};
            return u.each(p, function (e) {
                t[e] = o(e)
            }), t.cnaui = /\btanx\.com$/.test(l) ? o("cnaui") : "", t
        }

        var s = document, u = n(8), c = n(11), l = location.hostname;
        e.getCookie = o, e.setCookie = r;
        var p = ["tracknick", "thw", "cna"];
        e.getData = i, e.getHng = function () {
            return encodeURIComponent(o("hng") || "")
        }
    }, function (t, e) {
        "use strict";
        e.getDomains = function () {
            var t = [];
            try {
                for (var e = location.hostname, n = e.split("."), o = 2; o <= n.length;) t.push(n.slice(n.length - o).join(".")), o++
            } catch (t) {
            }
            return t
        }
    }, function (t, e, n) {
        "use strict";

        function o(t, e, n) {
            var o = window.goldlog || {}, s = o.getMetaInfo("aplus-ifr-pv") + "" == "1";
            return e ? r(t) ? "yt" : "m" : n && !s ? a.isContain(t, "wrating.com") ? "k" : i(t) || "y" : i(t) || "v"
        }

        var a = n(8), r = function (t) {
            for (var e = ["youku.com", "soku.com", "tudou.com", "laifeng.com"], n = 0; n < e.length; n++) {
                var o = e[n];
                if (a.isContain(t, o)) return !0
            }
            return !1
        }, i = function (t) {
            for (var e = [["scmp.com", "sc"], ["luxehomes.com.hk", "sc"], ["ays.com.hk", "sc"], ["cpjobs.com", "sc"], ["educationpost.com.hk", "sc"], ["cosmopolitan.com.hk", "sc"], ["elle.com.hk", "sc"], ["harpersbazaar.com.hk", "sc"], ["1688.com", "6"], ["youku.com", "yt"], ["soku.com", "yt"], ["tudou.com", "yt"], ["laifeng.com", "yt"]], n = 0; n < e.length; n++) {
                var o = e[n];
                if (a.isContain(t, o[0])) return o[1]
            }
            return ""
        };
        e.getBeaconSrc = o, e.initConfig = function () {
            return {
                compose: {},
                etag: {egUrl: "log.mmstat.com/eg.js", cna: "", tag: "", stag: "", lstag: "-1", lscnastatus: ""},
                can_to_sendpv: {flag: "NO"},
                userdata: {},
                what_to_sendpv: {pvdata: {}, exparams: {}},
                what_to_pvhash: {hash: []},
                what_to_sendpv_ut: {pvdataToUt: {}},
                what_to_sendpv_ut2: {isSuccess: !1, pvdataToUt: {}},
                when_to_sendpv: {aplusWaiting: ""},
                where_to_sendpv: {url: "//log.mmstat.com/o.gif", urlRule: o},
                where_to_sendlog_ut: {aplusToUT: {}, toUTName: "toUT"},
                hjlj: {what_to_hjlj: {logdata: {}}, what_to_hjlj_ut: {logdataToUT: {}}},
                network: {connType: "UNKNOWN"},
                is_single: !1
            }
        }
    }, function (t, e, n) {
        "use strict";

        function o() {
            return {
                etag: {egUrl: "log.mmstat.com/eg.js", cna: a.getCookie("cna"), tag: "", stag: ""},
                compose: {},
                where_to_prepv: {url: "//log.mmstat.com/v.gif", urlRule: r.getBeaconSrc},
                userdata: {},
                what_to_prepv: {logdata: {}},
                what_to_hjlj_exinfo: {
                    EXPARAMS_FLAG: "EXPARAMS",
                    exinfo: [],
                    exparams_key_names: ["uidaplus", "pc_i", "pu_i"]
                },
                is_single: !1
            }
        }

        var a = n(10), r = n(12);
        t.exports = o
    }, function (t, e, n) {
        "use strict";
        e.plugins_init = [{name: "where_to_sendpv", enable: !0, path: n(15)}, {
            name: "etag",
            enable: !0,
            path: n(30)
        }, {name: "etag_sync", enable: !0, path: n(33)}]
    }, function (t, e, n) {
        "use strict";
        var o = n(16), a = n(24), r = n(25);
        t.exports = function () {
            return {
                init: function (t) {
                    this.options = t
                }, getMetaInfo: function () {
                    var t = a.getGoldlogVal("_$") || {}, e = t.meta_info || r.getInfo();
                    return e
                }, getAplusMetaByKey: function (t) {
                    var e = this.getMetaInfo() || {};
                    return e[t]
                }, getGifPath: function (t, e) {
                    var n, r = a.getGoldlogVal("_$") || {};
                    if ("function" == typeof t) n = t(location.hostname, r.is_terminal, o.is_in_iframe) + ".gif"; else if (!n && e) {
                        var i = e.match(/\/\w+\.gif/);
                        i && i.length > 0 && (n = i[0])
                    }
                    return n || (n = r.is_terminal ? "m.gif" : "v.gif"), n
                }, run: function () {
                    var t = !!this.options.context.is_single;
                    if (!t) {
                        var e = this.getAplusMetaByKey("aplus-rhost-v"), n = this.options.context.where_to_sendpv || {},
                            a = n.url || "", r = this.getGifPath(n.urlRule, a), i = o.getPvUrl({
                                metaName: "aplus-rhost-v",
                                metaValue: e,
                                gifPath: r,
                                url: o.filterIntUrl(a)
                            });
                        n.url = i, this.options.context.where_to_sendpv = n
                    }
                }
            }
        }
    }, function (t, e, n) {
        "use strict";

        function o(t) {
            t = (t || "").split("#")[0].split("?")[0];
            var e = t.length, n = function (t) {
                var e, n = t.length, o = 0;
                for (e = 0; e < n; e++) o = 31 * o + t.charCodeAt(e);
                return o
            };
            return e ? n(e + "#" + t.charCodeAt(e - 1)) : -1
        }

        function a(t) {
            for (var e = t.split("&"), n = 0, o = e.length, a = {}; n < o; n++) {
                var r = e[n], i = r.indexOf("="), s = r.substring(0, i), u = r.substring(i + 1);
                a[s] = p.tryToDecodeURIComponent(u)
            }
            return a
        }

        function r(t) {
            if ("function" != typeof t) throw new TypeError(t + " is not a function");
            return t
        }

        function i(t) {
            var e, n, o, a = [], r = t.length;
            for (o = 0; o < r; o++) e = t[o][0], n = t[o][1], a.push(l.isStartWith(e, v) ? n : e + "=" + encodeURIComponent(n));
            return a.join("&")
        }

        function s(t) {
            var e, n, o, a = {}, r = t.length;
            for (o = 0; o < r; o++) e = t[o][0], n = t[o][1], a[e] = n;
            return a
        }

        function u(t, e) {
            var n, o, a, r = [];
            for (n in t) t.hasOwnProperty(n) && (o = "" + t[n], a = n + "=" + encodeURIComponent(o), e ? r.push(a) : r.push(l.isStartWith(n, v) ? o : a));
            return r.join("&")
        }

        function c(t, e) {
            var n = t.indexOf("?") == -1 ? "?" : "&", o = e ? l.isArray(e) ? i(e) : u(e) : "";
            return o ? t + n + o : t
        }

        var l = n(8), p = n(17), g = n(20), f = parent !== self;
        e.is_in_iframe = f, e.makeCacheNum = l.makeCacheNum, e.isStartWith = l.isStartWith, e.isEndWith = l.isEndWith, e.any = l.any, e.each = l.each, e.assign = l.assign, e.isFunction = l.isFunction, e.isArray = l.isArray, e.isString = l.isString, e.isNumber = l.isNumber, e.isUnDefined = l.isUnDefined, e.isContain = l.isContain, e.sleep = n(21).sleep, e.makeChkSum = o, e.tryToDecodeURIComponent = p.tryToDecodeURIComponent, e.nodeListToArray = p.nodeListToArray, e.parseSemicolonContent = p.parseSemicolonContent, e.param2obj = a;
        var d = n(22), h = function (t) {
            return /^(\/\/){0,1}(\w+\.){1,}\w+((\/\w+){1,})?$/.test(t)
        };
        e.hostValidity = h;
        var m = function (t, e) {
            var n = /^(\/\/){0,1}(\w+\.){1,}\w+\/\w+\.gif$/.test(t), o = h(t), a = "";
            return n ? a = "isGifPath" : o && (a = "isHostPath"), a || d.logger({msg: e + ": " + t + ' is invalid, suggestion: "xxx.mmstat.com"'}), a
        }, _ = function (t) {
            return !/^\/\/gj\.mmstat/.test(t) && goldlog.isInternational() && (t = t.replace(/^\/\/\w+\.mmstat/, "//gj.mmstat")), t
        };
        e.filterIntUrl = _, e.getPvUrl = function (t) {
            t || (t = {});
            var e, n, o = t.metaValue && m(t.metaValue, t.metaName), a = "";
            "isGifPath" === o ? (e = /^\/\//.test(t.metaValue) ? "" : "//", a = e + t.metaValue) : "isHostPath" === o && (e = /^\/\//.test(t.metaValue) ? "" : "//", n = /\/$/.test(t.metaValue) ? "" : "/", a = e + t.metaValue + n + t.gifPath);
            var r;
            return a ? r = a : (e = 0 === t.gifPath.indexOf("/") ? t.gifPath : "/" + t.gifPath, r = t.url && t.url.replace(/\/\w+\.gif/, e)), r
        }, e.indexof = n(23).indexof, e.callable = r;
        var v = "::-plain-::";
        e.mkPlainKey = function () {
            return v + Math.random()
        }, e.s_plain_obj = v, e.mkPlainKeyForExparams = function (t) {
            var e = t || v;
            return e + "exparams"
        }, e.rndInt32 = function () {
            return Math.round(2147483647 * Math.random())
        }, e.arr2param = i, e.arr2obj = s, e.obj2param = u, e.makeUrl = c, e.ifAdd = function (t, e) {
            var n, o, a, r, i = e.length;
            for (n = 0; n < i; n++) o = e[n], a = o[0], r = o[1], r && t.push([a, r])
        }, e.isStartWithProtocol = g.isStartWithProtocol, e.param2arr = function (t) {
            for (var e, n = t.split("&"), o = 0, a = n.length, r = []; o < a; o++) e = n[o].split("="), r.push([e.shift(), e.join("=")]);
            return r
        }
    }, function (t, e, n) {
        "use strict";
        var o = n(18), a = n(19);
        t.exports = {
            tryToDecodeURIComponent: function (t, e) {
                var n = e || "";
                if (t) try {
                    n = decodeURIComponent(t)
                } catch (t) {
                }
                return n
            }, parseSemicolonContent: function (t, e, n) {
                e = e || {};
                var a, r, i = t.split(";"), s = i.length;
                for (a = 0; a < s; a++) {
                    r = i[a].split("=");
                    var u = o.trim(r.slice(1).join("="));
                    e[o.trim(r[0]) || ""] = n ? u : this.tryToDecodeURIComponent(u)
                }
                return e
            }, nodeListToArray: function (t) {
                var e, n;
                try {
                    return e = [].slice.call(t)
                } catch (a) {
                    e = [], n = t.length;
                    for (var o = 0; o < n; o++) e.push(t[o]);
                    return e
                }
            }, getLsCna: function (t, e) {
                if (a.set && a.test()) {
                    var n = "", o = a.get(t);
                    if (o) {
                        var r = o.split("_") || [];
                        n = e ? r.length > 1 && e === r[0] ? r[1] : "" : r.length > 1 ? r[1] : ""
                    }
                    return decodeURIComponent(n)
                }
                return ""
            }, setLsCna: function (t, e, n) {
                n && a.set && a.test() && a.set(t, e + "_" + encodeURIComponent(n))
            }, getUrl: function (t) {
                var e = t || "//log.mmstat.com/eg.js";
                try {
                    var n = goldlog.getMetaInfo("aplus-rhost-v"), o = /[[a-z|0-9\.]+[a-z|0-9]/, a = n.match(o);
                    a && a[0] && (e = e.replace(o, a[0]))
                } catch (t) {
                }
                return e
            }
        }
    }, function (t, e) {
        "use strict";

        function n(t) {
            return "string" == typeof t ? t.replace(/^\s+|\s+$/g, "") : ""
        }

        e.trim = n
    }, function (t, e) {
        "use strict";
        t.exports = {
            set: function (t, e) {
                try {
                    return localStorage.setItem(t, e), !0
                } catch (t) {
                    return !1
                }
            }, get: function (t) {
                try {
                    return localStorage.getItem(t)
                } catch (t) {
                    return ""
                }
            }, test: function () {
                var t = "grey_test_key";
                try {
                    return localStorage.setItem(t, 1), localStorage.removeItem(t), !0
                } catch (t) {
                    return !1
                }
            }, remove: function (t) {
                localStorage.removeItem(t)
            }
        }
    }, function (t, e, n) {
        "use strict";
        var o = n(8), a = function () {
            var t = location.protocol;
            return "http:" !== t && "https:" !== t && (t = "https:"), t
        };
        e.getProtocal = a, e.isStartWithProtocol = function (t) {
            for (var e = ["javascript:", "tel:", "sms:", "mailto:", "tmall://", "#"], n = 0, a = e.length; n < a; n++) if (o.isStartWith(t, e[n])) return !0;
            return !1
        }
    }, function (t, e) {
        "use strict";
        e.sleep = function (t, e) {
            return setTimeout(function () {
                e()
            }, t)
        }
    }, function (t, e) {
        "use strict";
        var n = function () {
            var t = !1;
            return "boolean" == typeof goldlog.aplusDebug && (t = goldlog.aplusDebug), t
        };
        e.isDebugAplus = n;
        var o = function (t) {
            t || (t = {});
            var e = t.level || "warn";
            window.console && window.console[e] && window.console[e](t.msg)
        };
        e.logger = o
    }, function (t, e) {
        "use strict";
        e.indexof = function (t, e) {
            var n = -1;
            try {
                n = t.indexOf(e)
            } catch (a) {
                for (var o = 0; o < t.length; o++) t[o] === e && (n = o)
            } finally {
                return n
            }
        }
    }, function (t, e) {
        "use strict";
        var n = function (t) {
            var e;
            try {
                window.goldlog || (window.goldlog = {}), e = window.goldlog[t]
            } catch (t) {
                e = ""
            } finally {
                return e
            }
        };
        e.getGoldlogVal = n;
        var o = function (t, e) {
            var n = !1;
            try {
                window.goldlog || (window.goldlog = {}), t && (window.goldlog[t] = e, n = !0)
            } catch (t) {
                n = !1
            } finally {
                return n
            }
        };
        e.setGoldlogVal = o, e.getClientInfo = function () {
            return n("_aplus_client") || {}
        }
    }, function (t, e, n) {
        "use strict";

        function o(t) {
            var e, n, o, a = t.length, r = {};
            for (f._microscope_data = r, e = 0; e < a; e++) n = t[e], "microscope-data" === l.tryToGetAttribute(n, "name") && (o = l.tryToGetAttribute(n, "content"), u.parseSemicolonContent(o, r), f.is_head_has_meta_microscope_data = !0);
            f._microscope_data_params = u.obj2param(r), f.ms_data_page_id = r.pageId, f.ms_data_shop_id = r.shopId, f.ms_data_instance_id = r.siteInstanceId, f.ms_data_siteCategoryId = r.siteCategory, f.ms_prototype_id = r.prototypeId, f.site_instance_id_or_shop_id = f.ms_data_instance_id || f.ms_data_shop_id, f._atp_beacon_data = {}, f._atp_beacon_data_params = ""
        }

        function a(t) {
            var e, n = function () {
                var e;
                return document.querySelector && (e = document.querySelector("meta[name=data-spm]")), c.each(t, function (t) {
                    "data-spm" === l.tryToGetAttribute(t, "name") && (e = t)
                }), e
            }, o = n();
            return o && (e = l.tryToGetAttribute(o, "data-spm-protocol")), e
        }

        function r(t) {
            var e = t.isonepage || "-1", n = e.split("|"), o = n[0], a = n[1] ? n[1] : "";
            t.isonepage_data = {isonepage: o, urlpagename: a}
        }

        function i() {
            var t = p.getMetaTags();
            o(t), c.each(t, function (t) {
                var e = l.tryToGetAttribute(t, "name");
                /^aplus/.test(e) && (f[e] = p.getMetaCnt(e))
            }), c.each(d, function (t) {
                f[t] = p.getMetaCnt(t)
            }), f.spm_protocol = a(t);
            var e, n, i = ["aplus-rate-ahot"], s = i.length;
            for (e = 0; e < s; e++) n = i[e], f[n] = parseFloat(f[n]);
            return r(f), h = f || {}, f
        }

        function s() {
            return h || i()
        }

        var u = n(16), c = n(8), l = n(26), p = n(27), g = n(28), f = {},
            d = ["ahot-aplus", "isonepage", "spm-id", "data-spm", "microscope-data"], h = {};
        e.setMetaInfo = function (t, e) {
            return h || (h = {}), h[t] = e, !0
        };
        var m = function (t) {
            return h || (h = {}), h[t] || ""
        };
        e.getMetaInfo = m, e.getInfo = i, e.qGet = s, e.appendMetaInfo = function (t, e) {
            var n = function (t, e) {
                goldlog.setMetaInfo(t, e, {from: "appendMetaInfo"})
            };
            if (t && e) {
                var o, a = function (o) {
                    try {
                        var a = "string" == typeof e ? JSON.parse(e) : e;
                        n(t, c.assign(o, a))
                    } catch (t) {
                    }
                }, r = function (o) {
                    try {
                        var a = "string" == typeof e ? JSON.parse(e) : e;
                        n(t, o.concat(a))
                    } catch (t) {
                    }
                }, i = function (t) {
                    return "EXPARAMS" === t ? g.getExparamsInfos("", t) : t ? t.split("&") : []
                }, s = function (o) {
                    try {
                        var a = i(o), r = i(e);
                        n(t, a.concat(r).join("&"))
                    } catch (t) {
                    }
                }, u = function (t) {
                    t.constructor === Array ? r(t) : a(t)
                }, l = goldlog.getMetaInfo(t);
                if ("aplus-exinfo" === t && (s(l), o = !0), l) if ("object" == typeof l) u(l), o = !0; else try {
                    var p = JSON.parse(l);
                    "object" == typeof p && (u(p), o = !0)
                } catch (t) {
                }
                o || n(t, e)
            }
        }
    }, function (t, e) {
        "use strict";
        e.tryToGetAttribute = function (t, e) {
            return t && t.getAttribute ? t.getAttribute(e) || "" : ""
        };
        var n = function (t, e, n) {
            if (t && t.setAttribute) try {
                t.setAttribute(e, n)
            } catch (t) {
            }
        };
        e.tryToSetAttribute = n, e.tryToRemoveAttribute = function (t, e) {
            if (t && t.removeAttribute) try {
                t.removeAttribute(e)
            } catch (o) {
                n(t, e, "")
            }
        }
    }, function (t, e, n) {
        "use strict";

        function o(t) {
            return i = i || document.getElementsByTagName("head")[0], s && !t ? s : i ? s = i.getElementsByTagName("meta") : []
        }

        function a(t) {
            var e, n, a, r = o(), i = r.length;
            for (e = 0; e < i; e++) n = r[e], u.tryToGetAttribute(n, "name") === t && (a = u.tryToGetAttribute(n, "content"));
            return a || ""
        }

        function r(t) {
            var e = {isonepage: "-1", urlpagename: ""}, n = t.qGet();
            if (n && n.hasOwnProperty("isonepage_data")) e.isonepage = n.isonepage_data.isonepage, e.urlpagename = n.isonepage_data.urlpagename; else {
                var o = a("isonepage") || "-1", r = o.split("|");
                e.isonepage = r[0], e.urlpagename = r[1] ? r[1] : ""
            }
            return e
        }

        var i, s, u = n(26);
        e.getMetaTags = o, e.getMetaCnt = a, e.getOnePageInfo = r
    }, function (t, e, n) {
        "use strict";
        var o = n(16), a = n(29), r = n(23);
        e.getExparamsInfos = function (t, e) {
            var n = [], i = t || ["uidaplus", "pc_i", "pu_i"], s = a.getExParams(o) || "";
            s = s.replace(/&aplus&/, "&");
            for (var u = o.param2arr(s) || [], c = function (t) {
                return r.indexof(i, t) > -1
            }, l = 0; l < u.length; l++) {
                var p = u[l], g = p[0] || "", f = p[1] || "";
                g && f && ("EXPARAMS" === e || c(g)) && n.push(g + "=" + f)
            }
            return n
        }
    }, function (t, e, n) {
        "use strict";

        function o(t, e, n) {
            var o = "script", i = c.createElement(o);
            i.type = "text/javascript", i.async = !0;
            var s = "https:" == location.protocol ? e || t : t;
            0 === s.indexOf("//") && (s = r.getProtocal() + s), i.src = s, n && (i.id = n);
            var u = c.getElementsByTagName(o)[0];
            a = a || c.getElementsByTagName("head")[0], u ? u.parentNode.insertBefore(i, u) : a && a.appendChild(i)
        }

        var a, r = n(20), i = n(8), s = n(22), u = n(26), c = document;
        e.addScript = o, e.loadScript = function (t, e) {
            function n(t) {
                o.onreadystatechange = o.onload = o.onerror = null, o = null, e(t)
            }

            var o = c.createElement("script");
            if (a = a || c.getElementsByTagName("head")[0], o.async = !0, "onload" in o) o.onload = n; else {
                var r = function () {
                    /loaded|complete/.test(o.readyState) && n()
                };
                o.onreadystatechange = r, r()
            }
            o.onerror = function (t) {
                n(t)
            }, o.src = t, a.appendChild(o)
        }, e.isTouch = function () {
            return "ontouchend" in document.createElement("div")
        };
        var l = function () {
            var t = goldlog && goldlog._$ ? goldlog._$ : {}, e = t.meta_info || {};
            return e["aplus-exparams"] || ""
        };
        e.getExParamsFromMeta = l, e.getExParams = function (t) {
            var e = c.getElementById("beacon-aplus") || c.getElementById("tb-beacon-aplus"),
                n = u.tryToGetAttribute(e, "exparams"), o = p(n, l(), t) || "";
            return o && o.replace(/&amp;/g, "&").replace(/\buserid=/, "uidaplus=")
        };
        var p = function (t, e, n) {
            var o = "aplus&sidx=aplusSidex", a = t || o;
            try {
                if (e) {
                    var r = n.param2obj(e),
                        u = ["aplus", "cna", "spm-cnt", "spm-url", "spm-pre", "logtype", "pre", "uidaplus", "asid", "sidx", "trid", "gokey"];
                    i.each(u, function (t) {
                        r.hasOwnProperty(t) && (s.logger({msg: "Can not inject keywords: " + t}), delete r[t])
                    }), delete r[""];
                    var c = "";
                    if (t) {
                        var l = t.match(/aplus&/).index, p = l > 0 ? n.param2obj(t.substring(0, l)) : {};
                        delete p[""], c = n.obj2param(i.assign(p, r)) + "&" + t.substring(l, t.length)
                    } else c = n.obj2param(r) + "&" + o;
                    return c
                }
                return a
            } catch (t) {
                return a
            }
        };
        e.mergeExparams = p
    }, function (t, e, n) {
        "use strict";
        var o = n(10), a = n(29), r = n(17), i = n(31), s = n(32), u = n(24), c = n(3);
        t.exports = function () {
            return {
                init: function (t) {
                    this.options = t;
                    var e = this.options.context.etag || {};
                    this.cna = e.cna || o.getCookie("cna"), this.setTag(0), this.setStag(-1), this.setLsTag("-1"), this.setEtag(this.cna || ""), this.requesting = !1, this.today = i.getFormatDate()
                }, setLsTag: function (t) {
                    this.lstag = t, this.options.context.etag.lstag = t
                }, setTag: function (t) {
                    this.tag = t, this.options.context.etag.tag = t
                }, setStag: function (t) {
                    this.stag = t, this.options.context.etag.stag = t
                }, setEtag: function (t) {
                    this.etag = t, this.options.context.etag.cna = t, o.getCookie("cna") !== t && o.setCookie("cna", t)
                }, setLscnaStatus: function (t) {
                    this.options.context.etag.lscnastatus = t
                }, run: function (t, e) {
                    var n = this;
                    if (n.cna) return void n.setTag(1);
                    var o = null, i = s.getUrl(this.options.context.etag || {});
                    n.requesting = !0;
                    var l = function () {
                        setTimeout(function () {
                            e()
                        }, 20), clearTimeout(o)
                    };
                    return a.loadScript(i, function (t) {
                        var e, o;
                        if (t && "error" === t.type ? n.setStag(-3) : (e = u.getGoldlogVal("Etag"), e && n.setEtag(e), o = u.getGoldlogVal("stag"), "undefined" != typeof o && n.setStag(o)), n.requesting) {
                            if (2 === o || 4 === o) {
                                var a = r.getLsCna(c.LS_CNA_KEY);
                                a ? (n.setLsTag(1), n.setEtag(a)) : (n.setLsTag(0), r.setLsCna(c.LS_CNA_KEY, n.today, e))
                            }
                            l()
                        }
                    }), o = setTimeout(function () {
                        n.requesting = !1, n.setStag(-2), e()
                    }, 1500), 2e3
                }
            }
        }
    }, function (t, e) {
        "use strict";

        function n(t, e, n) {
            var o = "" + Math.abs(t), a = e - o.length, r = t >= 0;
            return (r ? n ? "+" : "" : "-") + Math.pow(10, Math.max(0, a)).toString().substr(1) + o
        }

        e.getFormatDate = function (t) {
            var e = new Date;
            try {
                return [e.getFullYear(), n(e.getMonth() + 1, 2, 0), n(e.getDate(), 2, 0)].join(t || "")
            } catch (t) {
                return ""
            }
        }
    }, function (t, e, n) {
        "use strict";
        var o = n(17), a = n(20);
        e.getUrl = function (t) {
            var e = o.getUrl(t && t.egUrl ? t.egUrl : "gj.mmstat.com/eg.js"),
                n = e.match(/[\w+\.]+[a-z|A-Z|0-9]+\/eg.js/);
            return 0 !== e.indexOf("http") && n && n.length > 0 && (e = a.getProtocal() + "//" + n[0]), e
        }
    }, function (t, e, n) {
        "use strict";
        var o = n(17), a = n(29), r = n(32), i = n(3), s = n(31), u = n(19);
        t.exports = function () {
            return {
                init: function (t) {
                    this.options = t, this.today = s.getFormatDate()
                }, run: function () {
                    var t = this;
                    if (u.test()) {
                        var e = o.getLsCna(i.LS_CNA_KEY, t.today);
                        e || setTimeout(function () {
                            var e = r.getUrl(t.options.context.etag || {});
                            a.loadScript(e, function (e) {
                                e && "error" !== e.type && o.setLsCna(i.LS_CNA_KEY, t.today, goldlog.Etag)
                            })
                        }, 1e3)
                    }
                }
            }
        }
    }, function (t, e, n) {
        "use strict";
        e.plugins_pv = [{name: "etag", enable: !0, path: n(35)}, {
            name: "when_to_sendpv",
            enable: !0,
            path: n(37)
        }, {name: "where_to_sendlog_ut", enable: !0, path: n(38)}, {
            name: "is_single",
            enable: !0,
            path: n(40)
        }, {name: "what_to_pvhash", enable: !0, path: n(44)}, {
            name: "what_to_sendpv",
            enable: !0,
            path: n(45)
        }, {
            name: "what_to_sendpv_userdata",
            enable: !0,
            path: n(49),
            deps: ["what_to_sendpv"]
        }, {
            name: "what_to_sendpv_etag",
            enable: !0,
            path: n(54),
            deps: ["etag", "what_to_sendpv"]
        }, {
            name: "what_to_sendpv_ut",
            enable: !0,
            path: n(55),
            deps: ["where_to_sendlog_ut", "is_single"]
        }, {name: "what_to_pv_slog", enable: !0, path: n(56), deps: ["what_to_sendpv"]}, {
            name: "can_to_sendpv",
            enable: !0,
            path: n(57)
        }, {name: "where_to_sendpv", enable: !0, path: n(15), deps: ["is_single"]}, {
            name: "do_sendpv",
            enable: !0,
            path: n(58),
            deps: ["is_single", "what_to_sendpv", "where_to_sendpv"]
        }, {
            name: "do_sendpv_ut",
            enable: !0,
            path: n(59),
            deps: ["what_to_sendpv_ut", "where_to_sendlog_ut"]
        }, {name: "after_pv", enable: !0, path: n(60)}]
    }, function (t, e, n) {
        "use strict";
        var o = n(36);
        t.exports = function () {
            return {
                init: function (t) {
                    this.options = t
                }, run: function () {
                    var t = this;
                    o.doSubOnceMsg("aplusInitContext", function (e) {
                        e.etag && (t.options.context.etag = e.etag)
                    })
                }
            }
        }
    }, function (t, e) {
        "use strict";
        var n = function () {
            var t = window.goldlog || {}, e = t.aplus_pubsub || {}, n = "function" == typeof e.publish;
            return n ? e : ""
        };
        e.doPubMsg = function (t) {
            var e = n();
            e && e.publish.apply(e, t)
        }, e.doCachePubs = function (t) {
            var e = n();
            e && "function" == typeof e.cachePubs && e.cachePubs.apply(e, t)
        }, e.doSubMsg = function (t, e) {
            var o = n();
            o && "function" == typeof o.subscribe && o.subscribe(t, e)
        }, e.doSubOnceMsg = function (t, e) {
            var o = n();
            o && "function" == typeof o.subscribeOnce && o.subscribeOnce(t, e)
        }
    }, function (t, e, n) {
        "use strict";
        var o = n(24), a = n(21), r = n(25);
        t.exports = function () {
            return {
                init: function (t) {
                    this.options = t
                }, getMetaInfo: function () {
                    var t = o.getGoldlogVal("_$") || {}, e = t.meta_info || r.getInfo();
                    return e
                }, getAplusWaiting: function () {
                    var t = this.getMetaInfo() || {};
                    return t["aplus-waiting"]
                }, run: function (t, e) {
                    var n = this.options.config || {}, o = this.getAplusWaiting();
                    if (o && n.is_auto) switch (o = this.getAplusWaiting() + "", this.options.context.when_to_sendpv = {aplusWaiting: o}, o) {
                        case"MAN":
                            return "done";
                        case"1":
                            return this.options.context.when_to_sendpv.isWait = !0, a.sleep(6e3, function () {
                                e()
                            }), 6e3;
                        default:
                            var r = 1 * o;
                            if (r + "" != "NaN") return this.options.context.when_to_sendpv.isWait = !0, a.sleep(r, function () {
                                e()
                            }), r
                    }
                }
            }
        }
    }, function (t, e, n) {
        "use strict";
        var o = n(39);
        t.exports = function () {
            return {
                init: function (t) {
                    this.options = t
                }, getAplusToUT: function () {
                    return {toUT2: o.getAplusToUT("toUT2"), toUT: o.getAplusToUT("toUT")}
                }, run: function () {
                    if ("Umeng4Aplus" === goldlog.aplusBridgeName) this.options.context.where_to_sendlog_ut.toUTName = "toUT2"; else {
                        var t = this.getAplusToUT();
                        this.options.context.where_to_sendlog_ut.aplusToUT = t
                    }
                }
            }
        }
    }, function (t, e) {
        "use strict";
        var n = navigator.userAgent, o = /WindVane/i.test(n);
        e.is_WindVane = o;
        var a = function () {
            var t = goldlog.getMetaInfo("aplus_chnl");
            return !(!t || !t.isAvailable || "function" != typeof t.toUT2 && "function" != typeof t.toUT) && t
        };
        e.isAplusChnl = a, e.getAplusToUT = function (t) {
            var e = {}, n = a();
            if ("object" == typeof n) e.bridgeName = n.bridgeName || "customBridge", e.isAvailable = n.isAvailable, e.toUT2 = n.toUT2 || n.toUT; else {
                var r = window.WindVane || {};
                if (o && r && r.isAvailable && "function" == typeof r.call) {
                    var i = t || "toUT";
                    e = {
                        bridgeName: "WindVane", isAvailable: !0, toUT2: function (t, e, n, o) {
                            return r.call("WVTBUserTrack", i, t, e, n, o)
                        }
                    }
                }
            }
            return e
        }
    }, function (t, e, n) {
        "use strict";
        var o = n(24), a = n(41), r = n(42), i = n(3);
        t.exports = function () {
            return {
                init: function (t) {
                    this.options = t, this._$ = o.getGoldlogVal("_$") || {}, this.isBoth = "1" === this._$.meta_info["aplus-both-request"], this.is_WindVane = this._$.is_WindVane
                }, isSingle_pv: function (t) {
                    return t ? !this.isBoth : !(!this.is_WindVane || !r.isSingleUaVersion() || this.isBoth)
                }, isSingle_hjlj: function (t, e) {
                    return e ? !this.isBoth : !(!this.is_WindVane || !r.isSingleSendLog(t) || this.isBoth)
                }, isSingle_uhjlj: function (t, e) {
                    return (!t || !/^\/aplus\.99\.(\d)+$/.test(t.logkey)) && (e ? !this.isBoth : !(!(this.is_WindVane && t && t.logkey && r.isSingleUaVersion()) || this.isBoth))
                }, run: function () {
                    var t = this.options.context || {}, e = this.options.config || {},
                        n = t.where_to_sendlog_ut.aplusToUT || {}, o = n.toUT || {}, r = n.toUT2 || {},
                        s = a.isNative4Aplus(), u = !!(o.isAvailable || r.isAvailable || s), c = t.userdata || {},
                        l = !!t.is_single;
                    switch (e.recordType) {
                        case i.recordTypes.uhjlj:
                            l = this.isSingle_uhjlj(c, s);
                            break;
                        case i.recordTypes.hjlj:
                            l = this.isSingle_hjlj(c, s);
                            break;
                        case i.recordTypes.pv:
                            l = this.isSingle_pv(s);
                            break;
                        default:
                            l = this.isSingle_pv(s)
                    }
                    this.options.context.is_single = u && l
                }
            }
        }
    }, function (t, e) {
        "use strict";
        var n = "UT4Aplus", o = "Umeng4Aplus";
        e.isNative4Aplus = function () {
            var t = goldlog.getMetaInfo("aplus-toUT"), e = goldlog.aplusBridgeName;
            return e === n && t === n || e === o
        }, e.haveNativeFlagInUA = function () {
            var t = goldlog.aplusBridgeName;
            if (!t && "boolean" != typeof t) {
                var e = new RegExp([n, o].join("|"), "i"), a = navigator.userAgent.match(e);
                t = !!a && a[0], goldlog.aplusBridgeName = t
            }
            return !!t
        }
    }, function (t, e, n) {
        "use strict";
        var o = n(43), a = n(41), r = function (t) {
            var e = t.logkey.toLowerCase();
            0 === e.indexOf("/") && (e = e.substr(1));
            var n = t.gmkey.toUpperCase();
            switch (n) {
                case"EXP":
                    return "2201";
                case"CLK":
                    return "2101";
                case"SLD":
                    return "19999";
                case"OTHER":
                default:
                    return "19999"
            }
        }, i = function () {
            var t = !1;
            return t || a.haveNativeFlagInUA() || o.webviewIsAbove({
                version_ios_tb: [5, 11, 7],
                version_ios_tm: [5, 24, 1],
                version_android_tb: [5, 11, 7],
                version_android_tm: [5, 24, 1]
            })
        };
        e.isSingleUaVersion = i, e.isSingleSendLog = function (t) {
            return (!t || !/^\/fsp\.1\.1$/.test(t.logkey)) && !!(t && t.logkey && i())
        }, e.getFunctypeValue = function (t) {
            return e.isSingleSendLog(t) ? r(t) : "2101"
        }, e.getFunctypeValue2 = function (t) {
            return r(t)
        }
    }, function (t, e) {
        "use strict";
        var n = function (t) {
            var e = [0, 0, 0];
            try {
                if (t) {
                    var n = t[1], o = n.split(".");
                    if (o.length > 2) for (var a = 0; a < o.length;) e[a] = parseInt(o[a]), a++
                }
            } catch (t) {
                e = [0, 0, 0]
            } finally {
                return e
            }
        };
        e.parseVersion = n;
        var o = function (t, e) {
            var n = !1;
            try {
                var o = t[0] > e[0], a = t[1] > e[1], r = t[2] > e[2], i = t[0] === e[0], s = t[1] === e[1],
                    u = t[2] === e[2];
                n = !!o || (!(!i || !a) || (!!(i && s && r) || !!(i && s && u)))
            } catch (t) {
                n = !1
            } finally {
                return n
            }
        };
        e.isAboveVersion = o, e.webviewIsAbove = function (t, e) {
            var a = !1;
            try {
                e || (e = navigator.userAgent);
                var r = e.match(/AliApp\(TB\/(\d+[._]\d+[._]\d+)/i), i = n(r),
                    s = e.match(/AliApp\(TM\/(\d+[._]\d+[._]\d+)/i), u = n(s), c = /iPhone|iPad|iPod|ios/i.test(e),
                    l = /android/i.test(e);
                c ? r && i ? a = o(i, t.version_ios_tb) : s && u && (a = o(u, t.version_ios_tm)) : l && (r && i ? a = o(i, t.version_android_tb) : s && u && (a = o(u, t.version_android_tm)))
            } catch (t) {
                a = !1
            }
            return a
        }
    }, function (t, e, n) {
        "use strict";
        var o = n(24);
        t.exports = function () {
            return {
                init: function (t) {
                    this.options = t
                }, run: function () {
                    var t = this.options.context.what_to_pvhash || {}, e = o.getGoldlogVal("_$") || {},
                        n = e.meta_info || {}, a = n["aplus-pvhash"] || "", r = [];
                    "1" === a && (r = ["_aqx_uri", encodeURIComponent(location.href)]), t.hash = r, this.options.context.what_to_pvhash = t
                }
            }
        }
    }, function (t, e, n) {
        "use strict";
        var o = n(16), a = n(8), r = n(29), i = n(24), s = n(26), u = n(10), c = n(46), l = n(47), p = n(48);
        t.exports = function () {
            return a.assign(p, {
                init: function (t) {
                    this.options = t, this.cookie_data || (this.cookie_data = u.getData()), this.client_info || (this.client_info = i.getClientInfo() || {});
                    var e = location.hash;
                    e && 0 === e.indexOf("#") && (e = e.substr(1)), this.loc_hash = e
                }, getExParams: function () {
                    var t = window, e = document, n = [], i = parent !== t.self,
                        u = e.getElementById("beacon-aplus") || e.getElementById("tb-beacon-aplus"),
                        l = s.tryToGetAttribute(u, "exparams"),
                        p = r.mergeExparams(l, r.getExParamsFromMeta(), o) || "";
                    p = p.replace(/&amp;/g, "&");
                    var g, f,
                        d = ["taobao.com", "tmall.com", "etao.com", "hitao.com", "taohua.com", "juhuasuan.com", "alimama.com"];
                    if (i) {
                        for (f = d.length, g = 0; g < f; g++) if (o.isContain(location.hostname, d[g])) return n.push([o.mkPlainKeyForExparams(), p]), n;
                        p = p.replace(/\buserid=\w*&?/, "")
                    }
                    p = p.replace(/\buserid=/, "uidaplus="), p && n.push([o.mkPlainKeyForExparams(), p]);
                    var h = a.makeCacheNum();
                    return c.updateKey(n, "cache", h), n
                }, getExtra: function () {
                    var t = [], e = i.getGoldlogVal("_$") || {}, n = e.meta_info || {}, a = this.cookie_data || {},
                        r = this.getClientInfo(!0) || [];
                    return o.ifAdd(t, r), o.ifAdd(t, [["thw", a.thw], ["bucket_id", l.getBucketId(n)], ["urlokey", this.loc_hash], ["wm_instanceid", n.ms_data_instance_id]]), t
                }
            })
        }
    }, function (t, e) {
        "use strict";

        function n(t, e, n) {
            r(t, "spm-cnt", function (t) {
                var o = t.split(".");
                return o[0] = goldlog.spm_ab[0], o[1] = goldlog.spm_ab[1], e ? o[1] = o[1].split("/")[0] + "/" + e : o[1] = o[1].split("/")[0], n && (o[4] = n), o.join(".")
            })
        }

        function o(t, e) {
            var n = window.g_SPM && g_SPM._current_spm;
            n && r(t, "spm-url", function () {
                return [n.a, n.b, n.c, n.d].join(".") + (e ? "." + e : "")
            }, "spm-cnt")
        }

        function a(t, e) {
            var n, o, a, r = -1;
            for (n = 0, o = t.length; n < o; n++) if (a = t[n], a[0] === e) {
                r = n;
                break
            }
            r >= 0 && t.splice(r, 1)
        }

        function r(t, e, n, o) {
            var a, r, i = t.length, s = -1, u = "function" == typeof n;
            for (a = 0; a < i; a++) {
                if (r = t[a], r[0] === e) return void(u ? r[1] = n(r[1]) : r[1] = n);
                o && r[0] === o && (s = a)
            }
            o && (u && (n = n()), s > -1 ? t.splice(s, 0, [e, n]) : t.push([e, n]))
        }

        t.exports = {updateSPMCnt: n, updateSPMUrl: o, updateKey: r, removeKey: a}
    }, function (t, e, n) {
        "use strict";

        function o(t, e) {
            var n, o = 2146271213;
            for (n = 0; n < t.length; n++) o = (o << 5) + o + t.charCodeAt(n);
            return (65535 & o) % e
        }

        function a(t) {
            var e, n = r.getCookie("t");
            return "3" != t.ms_prototype_id && "5" != t.ms_prototype_id || (e = n ? o(n, 20) : ""), e
        }

        var r = n(10);
        e.getBucketId = a
    }, function (t, e, n) {
        "use strict";
        var o = n(16), a = n(8), r = n(24), i = n(39), s = n(10), u = n(3);
        t.exports = {
            init: function (t) {
                this.options = t, this.cookie_data || (this.cookie_data = s.getData())
            }, getBasicParams: function () {
                var t = document, e = r.getGoldlogVal("_$") || {}, n = e.spm || {}, a = e.meta_info || {},
                    i = a["aplus-ifr-pv"] + "" == "1", u = o.is_in_iframe && !i ? 0 : 1, c = this.options.config || {},
                    l = [["logtype", u], ["title", c.title || t.title], ["pre", e.page_referrer], ["scr", screen.width + "x" + screen.height]],
                    p = this.cookie_data || {}, g = this.options.context || {}, f = g.etag || {},
                    d = f.cna || p.cna || s.getCookie("cna");
                d && l.push([o.mkPlainKey(), "cna=" + d]), p.tracknick && l.push([o.mkPlainKey(), "nick=" + p.tracknick]);
                var h = n.spm_url || "";
                return o.ifAdd(l, [["wm_pageid", a.ms_data_page_id], ["wm_prototypeid", a.ms_prototype_id], ["wm_sid", a.ms_data_shop_id], ["spm-url", h], ["spm-pre", n.spm_pre], ["spm-cnt", n.spm_cnt], ["cnaui", p.cnaui]]), l
            }, getExParams: function () {
                return []
            }, getExtra: function () {
                return []
            }, getClientInfo: function (t) {
                var e = [], n = r.getGoldlogVal("_$") || {}, s = this.client_info || {}, c = s.ua_info || {};
                if (t || !i.is_WindVane && !i.isAplusChnl()) {
                    for (var l, p = [], g = ["p", "o", "b", "s", "w", "wx", "ism"], f = 0; l = g[f++];) c[l] && p.push([l, c[l]]);
                    o.ifAdd(e, p)
                }
                o.ifAdd(e, [["cache", a.makeCacheNum()], ["lver", goldlog.lver || u.lver], ["jsver", n.script_name || u.script_name], ["pver", goldlog.aplus_cplugin_ver]]);
                var d = this.options.config || {}, h = d.is_auto;
                return h || o.ifAdd(e, [["mansndlog", 1]]), e
            }, processLodashDollar: function () {
                var t = r.getGoldlogVal("_$") || {};
                t.page_url !== location.href && (t.page_referrer = t.page_url, t.page_url = location.href), r.setGoldlogVal("_$", t);
            }, getLsParams: function () {
                var t = r.getGoldlogVal("_$") || {}, e = [];
                return t.lsparams && t.lsparams.spm_id && (e.push(["lsparams", t.lsparams.spm_id]), e.push(["lsparams_pre", t.lsparams.current_url])), e
            }, run: function () {
                var t = this.getBasicParams() || [], e = this.getExParams() || [], n = this.getExtra() || [];
                this.processLodashDollar();
                var o = this.getLsParams() || [], a = [].concat(t, e, n, o);
                this.options.context.what_to_sendpv.pvdata = a, this.options.context.what_to_sendpv.exparams = e
            }
        }
    }, function (t, e, n) {
        "use strict";
        var o = n(16), a = n(24), r = n(46), i = n(10), s = n(50);
        t.exports = function () {
            return {
                init: function (t) {
                    this.options = t
                }, getPageId: function () {
                    var t = this.options.config || {}, e = this.options.context || {}, n = e.userdata || {};
                    return t.page_id || t.pageid || t.pageId || n.page_id
                }, getPageInfo: function () {
                    var t;
                    try {
                        var e = top.location !== self.location;
                        e && void 0 !== window.innerWidth && (t = {
                            width: window.innerWidth,
                            height: window.innerHeight
                        })
                    } catch (t) {
                    }
                    return t
                }, getUserdata: function () {
                    var t = a.getGoldlogVal("_$") || {}, e = t.spm || {}, n = this.options.context || {},
                        r = n.userdata || {}, u = this.options.config || {}, c = [];
                    if (u && !u.is_auto) {
                        u.gokey && c.push([o.mkPlainKey(), u.gokey]);
                        var l = e.data.b;
                        if (l) {
                            var p = this.getPageId();
                            l = p ? l.split("/")[0] + "/" + p : l.split("/")[0], s.setB(l);
                            var g = e.spm_cnt.split(".");
                            g && g.length > 2 && (g[1] = l, e.spm_cnt = g.join("."))
                        }
                    }
                    var f = function (t) {
                        if ("object" == typeof t) for (var e in t) "object" != typeof t[e] && "function" != typeof t[e] && c.push([e, t[e]])
                    };
                    f(goldlog.getMetaInfo("aplus-cpvdata")), f(r);
                    var d = i.getCookie("workno") || i.getCookie("emplId");
                    d && c.push(["workno", d]);
                    var h = i.getHng();
                    h && c.push(["_hng", i.getHng()]);
                    var m = this.getPageInfo();
                    return m && (c.push(["_pw", m.width]), c.push(["_ph", m.height])), c
                }, processLodashDollar: function () {
                    var t = this.options.config || {}, e = a.getGoldlogVal("_$") || {};
                    t && t.referrer && (e.page_referrer = t.referrer), a.setGoldlogVal("_$", e)
                }, updatePre: function (t) {
                    var e = a.getGoldlogVal("_$") || {};
                    return e.page_referrer && r.updateKey(t, "pre", e.page_referrer), t
                }, run: function () {
                    var t = this.options.context.what_to_sendpv.pvdata, e = this.getUserdata();
                    this.processLodashDollar();
                    var n = t, o = this.options.context.what_to_pvhash.hash;
                    o && o.length > 0 && n.push(o), n = n.concat(e), n = this.updatePre(n);
                    var a = this.getPageId();
                    a && r.updateSPMCnt(n, a), this.options.context.what_to_sendpv.pvdata = n, this.options.context.userdata = e
                }
            }
        }
    }, function (t, e, n) {
        "use strict";

        function o() {
            if (!s.data.a || !s.data.b) {
                var t = r._SPM_a, e = r._SPM_b;
                if (t && e) return t = t.replace(/^{(\w+\/)}$/g, "$1"), e = e.replace(/^{(\w+\/)}$/g, "$1"), s.is_wh_in_page = !0, void c.setAB(t, e);
                var n = goldlog._$.meta_info;
                t = n["data-spm"] || n["spm-id"] || "0";
                var o = t.split(".");
                o.length > 1 && (t = o[0], e = o[1]), c.setA(t), e && c.setB(e);
                var a = i.getElementsByTagName("body");
                a = a && a.length ? a[0] : null, a && (e = l.tryToGetAttribute(a, "data-spm"), e ? c.setB(e) : 1 === o.length && c.setAB("0", "0"))
            }
        }

        function a() {
            var t = s.data.a, e = s.data.b;
            t && e && (goldlog.spm_ab = [t, e])
        }

        var r = window, i = document, s = {}, u = {};
        s.data = u;
        var c = {}, l = n(26), p = n(51), g = location.href, f = n(52).getRefer(), d = n(3);
        c.setA = function (t) {
            s.data.a = t, a()
        }, c.setB = function (t) {
            s.data.b = t, a()
        }, c.setAB = function (t, e) {
            s.data.a = t, s.data.b = e, a()
        };
        var h = p.getSPMFromUrl, m = function () {
            var t = d.utilPvid.makePVId();
            return d.mustSpmE ? t || goldlog.pvid || "" : t || ""
        }, _ = function (t, e) {
            var n = t.goldlog || window.goldlog || {}, a = n.meta_info || {};
            s.meta_protocol = a.spm_protocol;
            var r, i = n.spm_ab || [], u = i[0] || "0", c = i[1] || "0";
            "0" === u && "0" === c && (o(), u = s.data.a || "0", c = s.data.b || "0"), r = [s.data.a, s.data.b].join("."), s.spm_cnt = (r || "0.0") + ".0.0";
            var l = t.send_pv_count > 0 ? m() : n.pvid;
            l && (s.spm_cnt += "." + l), n._$.spm = s, "function" == typeof e && e(l)
        };
        c.spaInit = function (t, e, n, o) {
            var a = "function" == typeof o ? o : function () {
            }, r = s.spm_url, i = window.g_SPM || {}, u = t._$ || {}, c = u.send_pv_count;
            _({goldlog: t, meta_info: e, send_pv_count: c}, function (t) {
                s.spm_cnt = s.data.a + "." + s.data.b + ".0.0" + (t ? "." + t : "");
                var n = e["aplus-spm-fixed"];
                if ("1" !== n) {
                    s.spm_pre = h(f), s.spm_url = h(location.href);
                    var o = i._current_spm || {};
                    o && o.a && "0" !== o.a && o.b && "0" !== o.b && (s.spm_url = [o.a, o.b, o.c, o.d, o.e].join("."), s.spm_pre = r)
                }
                a()
            })
        }, c.init = function (t, e, n) {
            s.spm_url = h(g), s.spm_pre = h(f), _({goldlog: t, meta_info: e}, function () {
                "function" == typeof n && n()
            })
        }, c.resetSpmCntPvid = function () {
            var t = goldlog.spm_ab;
            if (t && 2 === t.length) {
                var e = t.join(".") + ".0.0", n = m();
                n && (e = e + "." + n), s.spm_cnt = e, s.spm_url = e, goldlog._$.spm = s
            }
        }, t.exports = c
    }, function (t, e) {
        "use strict";

        function n(t, e) {
            if (!t || !e) return "";
            var n, o = "";
            try {
                var a = new RegExp(t + "=([^&|#|?|/]+)");
                if ("spm" === t || "scm" === t) {
                    var r = new RegExp("\\?.*" + t + "=([\\w\\.\\-\\*/]+)"), i = e.match(a), s = e.match(r),
                        u = i && 2 === i.length ? i[1] : "", c = s && 2 === s.length ? s[1] : "";
                    o = u > c ? u : c, o = decodeURIComponent(o)
                } else n = e.match(a), o = n && 2 === n.length ? n[1] : ""
            } catch (t) {
            } finally {
                return o
            }
        }

        e.getParamFromUrl = n, e.getSPMFromUrl = function (t) {
            return n("spm", t)
        }
    }, function (t, e, n) {
        "use strict";
        var o = n(53).nameStorage, a = n(4);
        e.getRefer = function () {
            var t = a.KEY || {}, e = t.NAME_STORAGE || {};
            return document.referrer || o.getItem(e.REFERRER) || ""
        }
    }, function (t, e) {
        "use strict";
        var n = function () {
            function t() {
                var t, e = [], r = !0;
                for (var l in p) p.hasOwnProperty(l) && (r = !1, t = p[l] || "", e.push(c(l) + s + c(t)));
                n.name = r ? o : a + c(o) + i + e.join(u)
            }

            function e(t, e, n) {
                t && (t.addEventListener ? t.addEventListener(e, n, !1) : t.attachEvent && t.attachEvent("on" + e, function (e) {
                    n.call(t, e)
                }))
            }

            var n = window;
            if (n.nameStorage) return n.nameStorage;
            var o, a = "nameStorage:", r = /^([^=]+)(?:=(.*))?$/, i = "?", s = "=", u = "&", c = encodeURIComponent,
                l = decodeURIComponent, p = {}, g = {};
            return function (t) {
                if (t && 0 === t.indexOf(a)) {
                    var e = t.split(/[:?]/);
                    e.shift(), o = l(e.shift()) || "";
                    for (var n, i, s, c = e.join(""), g = c.split(u), f = 0, d = g.length; f < d; f++) n = g[f].match(r), n && n[1] && (i = l(n[1]), s = l(n[2]) || "", p[i] = s)
                } else o = t || ""
            }(n.name), g.setItem = function (e, n) {
                e && "undefined" != typeof n && (p[e] = String(n), t())
            }, g.getItem = function (t) {
                return p.hasOwnProperty(t) ? p[t] : null
            }, g.removeItem = function (e) {
                p.hasOwnProperty(e) && (p[e] = null, delete p[e], t())
            }, g.clear = function () {
                p = {}, t()
            }, g.valueOf = function () {
                return p
            }, g.toString = function () {
                var t = n.name;
                return 0 === t.indexOf(a) ? t : a + t
            }, e(n, "beforeunload", function () {
                t()
            }), g
        }();
        e.nameStorage = n
    }, function (t, e, n) {
        "use strict";
        var o = n(46);
        t.exports = function () {
            return {
                init: function (t) {
                    this.options = t
                }, updateBasicParams: function () {
                    var t = this.options.context.what_to_sendpv.pvdata || [], e = this.options.context.etag || {};
                    return e.cna && (o.updateKey(t, "cna", e.cna), this.options.context.what_to_sendpv.pvdata = t), t
                }, addTagParams: function () {
                    var t = this.options.context.what_to_sendpv.pvdata || [], e = this.options.context.etag || {},
                        n = [];
                    (e.tag || 0 === e.tag) && n.push(["tag", e.tag]), (e.stag || 0 === e.stag) && n.push(["stag", e.stag]), (e.lstag || 0 === e.lstag) && n.push(["lstag", e.lstag]), n.length > 0 && (this.options.context.what_to_sendpv.pvdata = t.concat(n))
                }, run: function () {
                    this.updateBasicParams(), this.addTagParams()
                }
            }
        }
    }, function (t, e, n) {
        "use strict";

        function o(t) {
            var e, n, o, a, i = [], s = {};
            for (e = t.length - 1; e >= 0; e--) n = t[e], o = n[0], o && o.indexOf(r.s_plain_obj) == -1 && s.hasOwnProperty(o) || (a = n[1], ("aplus" == o || a) && (i.unshift([o, a]), s[o] = 1));
            return i
        }

        function a(t) {
            var e, n, o, a, s = [], u = {logtype: !0, cache: !0, scr: !0, "spm-cnt": !0};
            for (e = t.length - 1; e >= 0; e--) if (n = t[e], o = n[0], a = n[1], !(i.isStartWith(o, r.s_plain_obj) && !i.isStartWith(o, r.mkPlainKeyForExparams()) || u[o])) if (i.isStartWith(o, r.mkPlainKeyForExparams())) {
                var c = r.param2arr(a);
                if ("object" == typeof c && c.length > 0) for (var l = c.length - 1; l >= 0; l--) {
                    var p = c[l];
                    p && p[1] && s.unshift([p[0], p[1]])
                }
            } else s.unshift([o, a]);
            return s
        }

        var r = n(16), i = n(8), s = n(24), u = n(27), c = n(41), l = n(25), p = n(3), g = n(10);
        t.exports = function () {
            return {
                init: function (t) {
                    this.options = t
                }, getToUtData: function (t, e) {
                    var n, i = s.getGoldlogVal("_$") || {}, c = i.spm || {}, f = a(o(t)), d = {};
                    try {
                        var h = r.arr2obj(f);
                        h._toUT = 1, h._bridgeName = e.bridgeName || "", n = JSON.stringify(h)
                    } catch (t) {
                        n = '{"_toUT":1}'
                    }
                    var m = u.getOnePageInfo(l);
                    return d.functype = "2001", d.urlpagename = m.urlpagename, d.url = location.href, d.spmcnt = c.spm_cnt || "", d.spmpre = c.spm_pre || "", d.lzsid = "", d.cna = g.getCookie("cna"), d.extendargs = n, d.isonepage = m.isonepage, d.version = p.toUtVersion, d.lver = goldlog.lver || p.lver, d.jsver = p.script_name, d
                }, run: function () {
                    var t = this.options.context || {}, e = t.what_to_sendpv || {}, n = e.pvdata || [],
                        o = t.what_to_sendpv_ut || {}, a = t.where_to_sendlog_ut || {}, r = a.aplusToUT || {},
                        i = r.toUT || {};
                    (i && i.isAvailable && "function" == typeof i.toUT2 || c.haveNativeFlagInUA()) && (o.pvdataToUt = this.getToUtData(n, i), this.options.context.what_to_sendpv_ut = o)
                }
            }
        }
    }, function (t, e) {
        "use strict";
        t.exports = function () {
            return {
                init: function (t) {
                    this.options = t
                }, run: function () {
                    var t = this.options.context || {}, e = t.is_single ? "1" : "0";
                    t.what_to_sendpv_ut2.pvdataToUt._slog = e, t.what_to_sendpv_ut.pvdataToUt._slog = e, t.what_to_sendpv.pvdata.push(["_slog", e])
                }
            }
        }
    }, function (t, e, n) {
        "use strict";
        var o = n(24);
        t.exports = function () {
            return {
                init: function (t) {
                    this.options = t
                }, run: function () {
                    var t = o.getGoldlogVal("_$") || {}, e = this.options.context.can_to_sendpv || {},
                        n = t.send_pv_count || 0, a = this.options.config || {};
                    return a.is_auto && n > 0 ? "done" : (e.flag = "YES", this.options.context.can_to_sendpv = e, t.send_pv_count = ++n, void o.setGoldlogVal("_$", t))
                }
            }
        }
    }, function (t, e, n) {
        "use strict";
        var o = n(24), a = n(16);
        t.exports = function () {
            return {
                init: function (t) {
                    this.options = t
                }, run: function () {
                    var t = this.options.context || {}, e = !!t.is_single;
                    if (!e) {
                        var n = t.what_to_sendpv || {}, r = t.where_to_sendpv || {}, i = n.pvdata || [],
                            s = goldlog.send(r.url, a.arr2obj(i));
                        o.setGoldlogVal("req", s)
                    }
                }
            }
        }
    }, function (t, e, n) {
        "use strict";
        var o = n(41);
        t.exports = function () {
            return {
                init: function (t) {
                    this.options = t
                }, run: function (t, e) {
                    var n = this, a = this.options.context || {}, r = a.what_to_sendpv_ut || {},
                        i = a.where_to_sendlog_ut || {}, s = r.pvdataToUt || {}, u = i.aplusToUT || {}, c = u.toUT;
                    if (o.isNative4Aplus()) return u.toutflag = "toUT", void(n.options.context.what_to_sendpv_ut.isSuccess = !0);
                    if (c && "function" == typeof c.toUT2 && c.isAvailable) try {
                        u.toutflag = "toUT", c.toUT2(s, function () {
                            n.options.context.what_to_sendpv_ut.isSuccess = !0, e()
                        }, function (t) {
                            n.options.context.what_to_sendpv_ut.errorMsg = t, e()
                        }, 2e3)
                    } catch (t) {
                        e()
                    } finally {
                        return "pause"
                    }
                }
            }
        }
    }, function (t, e, n) {
        "use strict";
        var o = n(36), a = n(24);
        t.exports = function () {
            return {
                init: function (t) {
                    this.options = t
                }, run: function () {
                    var t = goldlog._$ || {}, e = this.options.context || {};
                    a.setGoldlogVal("pv_context", e);
                    var n = goldlog.spm_ab || [], r = n.join("."), i = t.send_pv_count,
                        s = {cna: e.etag.cna, count: i, spmab_pre: goldlog.spmab_pre};
                    o.doPubMsg(["sendPV", "complete", r, s]), o.doCachePubs(["sendPV", "complete", r, s])
                }
            }
        }
    }, function (t, e) {
        "use strict";
        e.plugins_prepv = []
    }, function (t, e, n) {
        "use strict";

        function o() {
            var t = i.getGoldlogVal("_$") || {}, e = "//gm.mmstat.com/";
            return t.is_terminal && (e = "//wgo.mmstat.com/"), {
                where_to_hjlj: {
                    url: e,
                    ac_atpanel: "//ac.mmstat.com/",
                    tblogUrl: "//log.mmstat.com/"
                }
            }
        }

        function a() {
            return r.assign(new s, new o)
        }

        var r = n(8), i = n(24), s = n(63);
        t.exports = a
    }, function (t, e, n) {
        "use strict";

        function o() {
            return {
                compose: {},
                basic_params: {cna: a.getCookie("cna")},
                where_to_hjlj: {url: "//gm.mmstat.com/", ac_atpanel: "//ac.mmstat.com/", tblogUrl: "//log.mmstat.com/"},
                userdata: {},
                what_to_hjlj: {logdata: {}},
                what_to_pvhash: {hash: []},
                what_to_hjlj_exinfo: {
                    EXPARAMS_FLAG: "EXPARAMS",
                    exinfo: [],
                    exparams_key_names: ["uidaplus", "pc_i", "pu_i"]
                },
                what_to_hjlj_ut: {logdataToUT: {}},
                what_to_hjlj_ut2: {isSuccess: !1, logdataToUT: {}},
                where_to_sendlog_ut: {aplusToUT: {}, toUTName: "toUT"},
                network: {connType: "UNKNOWN"},
                is_single: !1
            }
        }

        var a = n(10);
        t.exports = o
    }, function (t, e, n) {
        "use strict";
        e.plugins_hjlj = [{name: "where_to_sendlog_ut", enable: !0, path: n(38)}, {
            name: "is_single",
            enable: !0,
            path: n(40)
        }, {name: "what_to_hjlj_exinfo", enable: !0, path: n(65)}, {
            name: "what_to_pvhash",
            enable: !0,
            path: n(44)
        }, {
            name: "what_to_hjlj",
            enable: !0,
            path: n(66),
            deps: ["what_to_hjlj_exinfo", "what_to_pvhash"]
        }, {
            name: "what_to_hjlj_ut",
            enable: !0,
            path: n(67),
            deps: ["is_single", "what_to_hjlj_exinfo"]
        }, {name: "what_to_hjlj_slog", enable: !0, path: n(68), deps: ["what_to_hjlj"]}, {
            name: "where_to_hjlj",
            enable: !0,
            path: n(69),
            deps: ["is_single", "what_to_hjlj"]
        }, {
            name: "do_sendhjlj",
            enable: !0,
            path: n(70),
            deps: ["is_single", "what_to_hjlj", "where_to_hjlj"]
        }, {
            name: "do_sendhjlj_ut",
            enable: !0,
            path: n(71),
            deps: ["what_to_hjlj", "what_to_hjlj_ut", "where_to_sendlog_ut"]
        }]
    }, function (t, e, n) {
        "use strict";
        var o = n(16), a = n(29), r = n(24), i = n(24), s = n(23), u = n(10);
        t.exports = function () {
            return {
                init: function (t) {
                    this.options = t
                }, getCookieUserInfo: function () {
                    var t = [], e = u.getCookie("workno") || u.getCookie("emplId");
                    e && t.push("workno=" + e);
                    var n = u.getHng();
                    return n && t.push("_hng=" + u.getHng()), t
                }, filterExinfo: function (t) {
                    var e = "";
                    try {
                        t && ("string" == typeof t ? e = t.replace(/&amp;/g, "&").replace(/\buserid=/, "uidaplus=").replace(/&aplus&/, "&") : "object" == typeof t && (e = o.obj2param(t, !0)))
                    } catch (t) {
                        e = t.message ? t.message : ""
                    }
                    return e
                }, getExparamsFlag: function () {
                    var t = this.options.context || {}, e = t.what_to_hjlj_exinfo || {};
                    return e.EXPARAMS_FLAG || "EXPARAMS"
                }, getCustomExParams: function (t) {
                    var e = "";
                    return t !== this.getExparamsFlag() && (e = this.filterExinfo(t) || ""), e ? e.split("&") : []
                }, getBeaconExparams: function (t, e) {
                    var n = [], r = a.getExParams(o) || "";
                    r = r.replace(/&aplus&/, "&");
                    for (var i = o.param2arr(r) || [], u = function (e) {
                        return s.indexof(t, e) > -1
                    }, c = 0; c < i.length; c++) {
                        var l = i[c], p = l[0] || "", g = l[1] || "";
                        p && g && (e === this.getExparamsFlag() || u(p)) && n.push(p + "=" + g)
                    }
                    return n
                }, getExinfo: function (t) {
                    var e = this.options.context || {}, n = e.what_to_hjlj_exinfo || {}, o = n.exparams_key_names || [],
                        a = this.getBeaconExparams(o, t);
                    return a
                }, getExData: function (t) {
                    var e = [];
                    if ("object" == typeof t) for (var n in t) {
                        var o = t[n];
                        n && o && "object" != typeof o && "function" != typeof o && e.push(n + "=" + o)
                    }
                    return e
                }, doConcatArr: function (t, e) {
                    return e && e.length > 0 && (t = t.concat(e)), t
                }, run: function () {
                    try {
                        var t = this.options.context.what_to_hjlj_exinfo || {}, e = r.getGoldlogVal("_$") || {},
                            n = e.meta_info || {}, o = n["aplus-exinfo"] || "", a = n["aplus-exdata"] || "", s = [];
                        s = this.doConcatArr(s, t.exinfo || []), s = this.doConcatArr(s, this.getExinfo(o)), s = this.doConcatArr(s, this.getCookieUserInfo()), s = this.doConcatArr(s, this.getCustomExParams(o)), s = this.doConcatArr(s, this.getExData(a)), t.exinfo = s.join("&"), this.options.context.what_to_hjlj_exinfo = t
                    } catch (t) {
                        i.logger({msg: t ? t.message : ""})
                    }
                }
            }
        }
    }, function (t, e, n) {
        "use strict";
        var o = n(29), a = n(16), r = n(8), i = n(3);
        t.exports = function () {
            return {
                init: function (t) {
                    this.options = t
                }, getParams: function () {
                    var t = this.options.context || {}, e = t.userdata || {}, n = t.basic_params || {},
                        s = t.what_to_hjlj_exinfo || {}, u = s.exinfo || "";
                    e.gokey && u && 0 !== u.indexOf("&") && (u = "&" + u);
                    var c = n.cna, l = e.gmkey, p = e.gokey || "";
                    p += u;
                    var g = t.what_to_pvhash || {}, f = g.hash || [];
                    f.length && (p += "&" + f.join("=")), p += "&jsver=" + i.script_name, p += "&lver=" + i.lver, p += "&pver=" + goldlog.aplus_cplugin_ver, p += "&cache=" + r.makeCacheNum();
                    var d = {gmkey: l, gokey: p, cna: c};
                    e["spm-cnt"] && (d["spm-cnt"] = e["spm-cnt"]), e["spm-pre"] && (d["spm-pre"] = e["spm-pre"]);
                    try {
                        var h = o.getExParams(a), m = a.param2obj(h).uidaplus;
                        m && (d._gr_uid_ = m)
                    } catch (t) {
                    }
                    return d
                }, run: function () {
                    this.options.context.what_to_hjlj.logdata = this.getParams()
                }
            }
        }
    }, function (t, e, n) {
        "use strict";
        var o = n(42), a = n(10), r = n(24), i = n(3);
        t.exports = function () {
            return {
                init: function (t) {
                    this.options = t
                }, getToUtData: function (t, e) {
                    var n = r.getGoldlogVal("_$") || {}, s = n.spm || {}, u = this.options.context || {},
                        c = u.userdata || {}, l = u.what_to_hjlj_exinfo || {}, p = l.exinfo || "";
                    c.gokey && p && 0 !== p.indexOf("&") && (p = "&" + p);
                    var g = c.gokey + p, f = {
                        gmkey: c.gmkey,
                        gokey: g,
                        lver: i.lver,
                        jsver: i.script_name,
                        version: i.toUtVersion,
                        spm_cnt: s.spm_cnt || "",
                        spm_url: s.spm_url || "",
                        spm_pre: s.spm_pre || ""
                    };
                    t && (f._is_g2u_ = 1), f._bridgeName = e.bridgeName || "", f._toUT = 1;
                    try {
                        f = JSON.stringify(f), "{}" == f && (f = "")
                    } catch (t) {
                        f = ""
                    }
                    var d = n.meta_info || {}, h = d.isonepage_data || {}, m = {};
                    return m.functype = o.getFunctypeValue({
                        logkey: c.logkey,
                        gmkey: c.gmkey,
                        spm_ab: r.getGoldlogVal("spm_ab")
                    }), m.spmcnt = s.spm_cnt || "", m.spmurl = s.spm_url || "", m.spmpre = s.spm_pre || "", m.logkey = c.logkey, m.logkeyargs = f, m.urlpagename = h.urlpagename, m.url = location.href, m.cna = a.getCookie("cna") || "", m.extendargs = "", m.isonepage = h.isonepage, m
                }, run: function () {
                    var t = this.options.context || {}, e = !!t.is_single, n = t.what_to_hjlj_ut || {},
                        o = t.where_to_sendlog_ut || {}, a = o.aplusToUT || {}, r = a.toUT || {};
                    n.logdataToUT = this.getToUtData(e, r), this.options.context.what_to_hjlj_ut = n
                }
            }
        }
    }, function (t, e) {
        "use strict";
        t.exports = function () {
            return {
                init: function (t) {
                    this.options = t
                }, run: function () {
                    var t = this.options.context || {}, e = t.is_single ? "1" : "0";
                    t.what_to_hjlj_ut2.logdataToUT._slog = e, t.what_to_hjlj_ut.logdataToUT._slog = e, t.what_to_hjlj.logdata.gokey ? t.what_to_hjlj.logdata.gokey += "&_slog=" + e : t.what_to_hjlj.logdata.gokey = "_slog=" + e
                }
            }
        }
    }, function (t, e, n) {
        "use strict";
        var o = n(16), a = n(8), r = n(24), i = n(22), s = n(25);
        t.exports = function () {
            return {
                init: function (t) {
                    this.options = t
                }, getMetaInfo: function () {
                    var t = r.getGoldlogVal("_$") || {}, e = t.meta_info || s.getInfo();
                    return e
                }, getAplusMetaByKey: function (t) {
                    var e = this.getMetaInfo() || {};
                    return e[t]
                }, cramUrl: function (t) {
                    var e = r.getGoldlogVal("_$") || {}, n = e.spm || {}, o = this.options.context.where_to_hjlj || {},
                        i = o.ac_atpanel, s = o.tblogUrl, u = this.options.context.what_to_hjlj || {},
                        c = this.options.context.userdata || {}, l = !0, p = c.logkey;
                    if (!p) return {url: t, logkey_available: !1};
                    if ("ac" == p) t = i + "1.gif"; else if (a.isStartWith(p, "ac-")) t = i + p.substr(3); else if (a.isStartWith(p, "/")) {
                        t += p.substr(1);
                        var g = u.logdata || {};
                        g["spm-cnt"] = n.spm_cnt, g.logtype = 2;
                        try {
                            u.logdata = g, this.options.context.what_to_hjlj = u
                        } catch (t) {
                        }
                    } else a.isEndWith(p, ".gif") ? t = s + p : l = !1;
                    return {url: t, logkey_available: l}
                }, can_to_sendhjlj: function (t) {
                    var e = this.options.context || {}, n = e.logger || function () {
                    }, o = this.options.context.userdata || {};
                    return !!t.logkey_available || (n({msg: "logkey: " + o.logkey + " is not legal!"}), !1)
                }, run: function () {
                    var t = !!this.options.context.is_single;
                    if (!t) {
                        var e, n, a = o.filterIntUrl(this.options.context.where_to_hjlj.url),
                            r = this.getAplusMetaByKey("aplus-rhost-g"), s = r && o.hostValidity(r);
                        s && (e = /^\/\//.test(r) ? "" : "//", n = /\/$/.test(r) ? "" : "/", a = e + r + n), r && !s && i.logger({msg: "aplus-rhost-g: " + r + ' is invalid, suggestion: "xxx.mmstat.com"'});
                        var u = this.cramUrl(a);
                        return this.can_to_sendhjlj(u) ? void(this.options.context.where_to_hjlj.url = u.url) : "done"
                    }
                }
            }
        }
    }, function (t, e, n) {
        "use strict";
        var o = n(24);
        t.exports = function () {
            return {
                init: function (t) {
                    this.options = t
                }, run: function () {
                    var t = this.options.context || {}, e = this.options.config || {}, n = !!t.is_single;
                    if (!n) {
                        var a = t.logger || {}, r = t.what_to_hjlj || {}, i = t.where_to_hjlj || {},
                            s = r.logdata || {}, u = i.url || "";
                        u || "function" != typeof a || a({msg: "warning: where_to_hjlj.url is null, goldlog.record failed!"});
                        var c = goldlog.send(i.url, s, e.method || "GET");
                        o.setGoldlogVal("req", c)
                    }
                }
            }
        }
    }, function (t, e, n) {
        "use strict";
        var o = n(41);
        t.exports = function () {
            return {
                init: function (t) {
                    this.options = t
                }, run: function (t, e) {
                    var n = this, a = this.options.context || {}, r = a.what_to_hjlj_ut2.isSuccess,
                        i = a.logger || function () {
                        }, s = !!a.is_single, u = a.where_to_sendlog_ut || {}, c = a.what_to_hjlj_ut || {},
                        l = c.logdataToUT || {}, p = u.aplusToUT || {}, g = p.toUT;
                    if (o.isNative4Aplus()) return p.toutflag = "toUT", void(n.options.context.what_to_hjlj_ut.isSuccess = !0);
                    if (!r && g && "function" == typeof g.toUT2 && g.isAvailable) try {
                        p.toutflag = "toUT", g.toUT2(l, function () {
                            n.options.context.what_to_hjlj_ut.isSuccess = !0, e()
                        }, function (t) {
                            n.options.context.what_to_hjlj_ut.errorMsg = t, e()
                        }, 3e3)
                    } catch (t) {
                        s && i({msg: "warning: singleSend toUTName = " + u.toUTName + " errorMsg:" + t.message})
                    } finally {
                        return "pause"
                    }
                }
            }
        }
    }, function (t, e, n) {
        "use strict";

        function o() {
            var t, e, n = i.KEY || {}, o = n.NAME_STORAGE || {};
            if (!c && u) {
                var a = location.href,
                    l = u && (a.indexOf("login.taobao.com") >= 0 || a.indexOf("login.tmall.com") >= 0),
                    p = s.getRefer();
                l && p ? (t = p, e = r.getItem(o.REFERRER_PV_ID)) : (t = a, e = goldlog.pvid), r.setItem(o.REFERRER, t), r.setItem(o.REFERRER_PV_ID, e)
            }
        }

        var a = n(73), r = n(53).nameStorage, i = n(3), s = n(52), u = "https:" == location.protocol,
            c = parent !== self;
        e.run = function () {
            a.on(window, "beforeunload", function () {
                o()
            })
        }
    }, function (t, e, n) {
        "use strict";

        function o(t, e, n) {
            var o = goldlog._$ || {}, a = o.meta_info || {}, r = a.aplus_ctap || {}, i = a["aplus-touch"];
            if (r && "function" == typeof r.on) r.on(t, e); else {
                var u = "ontouchend" in document.createElement("div");
                !u || "tap" !== i && "tapSpm" !== n ? s(t, u ? "touchstart" : "mousedown", e) : c.on(t, e)
            }
        }

        function a(t) {
            try {
                p.documentElement.doScroll("left")
            } catch (e) {
                return void setTimeout(function () {
                    a(t)
                }, 1)
            }
            t()
        }

        function r(t) {
            var e = 0, n = function () {
                0 === e && t(), e++
            };
            "complete" === p.readyState && n();
            var o;
            if (p.addEventListener) o = function () {
                p.removeEventListener("DOMContentLoaded", o, !1), n()
            }, p.addEventListener("DOMContentLoaded", o, !1), window.addEventListener("load", n, !1); else if (p.attachEvent) {
                o = function () {
                    "complete" === p.readyState && (p.detachEvent("onreadystatechange", o), n())
                }, p.attachEvent("onreadystatechange", o), window.attachEvent("onload", n);
                var r = !1;
                try {
                    r = null === window.frameElement
                } catch (t) {
                }
                p.documentElement.doScroll && r && a(n)
            }
        }

        function i(t) {
            "complete" === p.readyState ? t() : s(l, "load", t)
        }

        function s() {
            var t = arguments;
            if (2 === t.length) "DOMReady" === t[0] && r(t[1]), "onload" === t[0] && i(t[1]); else if (3 === t.length) {
                var e = t[0], n = t[1], a = t[2];
                "tap" === n || "tapSpm" === n ? o(e, a, n) : e[h]((g ? "on" : "") + n, function (t) {
                    t = t || l.event;
                    var e = t.target || t.srcElement;
                    "function" == typeof a && a(t, e)
                }, !!u(n) && {passive: !0})
            }
        }

        var u = n(74), c = n(75), l = window, p = document, g = !!p.attachEvent, f = "attachEvent",
            d = "addEventListener", h = g ? f : d;
        e.DOMReady = r, e.onload = i, e.on = s
    }, function (t, e) {
        var n;
        t.exports = function (t) {
            if ("boolean" == typeof n) return n;
            if (!/touch|mouse|scroll|wheel/i.test(t)) return !1;
            n = !1;
            try {
                var e = Object.defineProperty({}, "passive", {
                    get: function () {
                        n = !0
                    }
                });
                window.addEventListener("test", null, e)
            } catch (t) {
            }
            return n
        }
    }, function (t, e) {
        "use strict";

        function n(t, e) {
            return t + Math.floor(Math.random() * (e - t + 1))
        }

        function o(t, e, n) {
            var o = l.createEvent("HTMLEvents");
            if (o.initEvent(e, !0, !0), "object" == typeof n) for (var a in n) o[a] = n[a];
            t.dispatchEvent(o)
        }

        function a(t) {
            0 === Object.keys(g).length && (p.addEventListener(h, r, !1), p.addEventListener(d, i, !1), p.addEventListener(_, i, !1));
            for (var e = 0; e < t.changedTouches.length; e++) {
                var n = t.changedTouches[e], o = {};
                for (var a in n) o[a] = n[a];
                var s = {startTouch: o, startTime: Date.now(), status: m, element: t.srcElement || t.target};
                g[n.identifier] = s
            }
        }

        function r(t) {
            for (var e = 0; e < t.changedTouches.length; e++) {
                var n = t.changedTouches[e], o = g[n.identifier];
                if (!o) return;
                var a = n.clientX - o.startTouch.clientX, r = n.clientY - o.startTouch.clientY,
                    i = Math.sqrt(Math.pow(a, 2) + Math.pow(r, 2));
                (o.status === m || "pressing" === o.status) && i > 10 && (o.status = "panning")
            }
        }

        function i(t) {
            for (var e = 0; e < t.changedTouches.length; e++) {
                var n = t.changedTouches[e], a = n.identifier, s = g[a];
                s && (s.status === m && t.type === d && (s.timestamp = Date.now(), o(s.element, v, {
                    touch: n,
                    touchEvent: t
                })), delete g[a])
            }
            0 === Object.keys(g).length && (p.removeEventListener(h, r, !1), p.removeEventListener(d, i, !1), p.removeEventListener(_, i, !1))
        }

        function s(t) {
            t.__fixTouchEvent || (t.addEventListener(f, function () {
            }, !1), t.__fixTouchEvent = !0)
        }

        function u() {
            c || (p.addEventListener(f, a, !1), c = !0)
        }

        var c = !1, l = window.document, p = l.documentElement, g = {}, f = "touchstart", d = "touchend",
            h = "touchmove", m = "tapping", _ = "touchcancel", v = "aplus_tap" + n(1, 1e5);
        t.exports = {
            on: function (t, e) {
                u(), t && t.addEventListener && e && (s(t), t.addEventListener(v, e._aplus_tap_callback = function (t) {
                    e(t, t.target)
                }, !1))
            }, un: function (t, e) {
                t && t.removeEventListener && e && e._aplus_tap_callback && t.removeEventListener(v, e._aplus_tap_callback, !1)
            }
        }
    }, function (t, e, n) {
        "use strict";

        function o() {
            var t = (new Date).getTime(), e = Math.floor(t / 72e5), n = a.getElementById("aplus-sufei"),
                o = goldlog._$ || {}, s = goldlog.getCdnPath(), u = s + "/alilog/aplus_plugin_xwj/index.js?t=" + e,
                c = s + "/alilog/oneplus/entry.js?t=" + e, l = s + "/alilog/stat/a.js?t=" + e,
                p = s + "/secdev/entry/index.js?t=" + e, g = s + "/alilog/mlog/wp_beacon.js?t=" + e, f = o.meta_info,
                d = function () {
                    r.addScript(l), r.addScript(g), r.addScript(u), r.addScript(c)
                }, h = function () {
                    Math.random() < .01 && r.addScript(l), f.ms_data_instance_id && f.ms_prototype_id && f.ms_prototype_id.match(/^[124]$/) && f.ms_data_shop_id && r.addScript(g);
                    var t = f["aplus-rate-ahot"];
                    (Math.random() < t || f["ahot-aplus"]) && r.addScript(u), r.addScript(c)
                }, m = f["aplus-xplug"];
            i.onload(function () {
                try {
                    switch (m) {
                        case"NONE":
                            break;
                        case"ALL":
                            d();
                            break;
                        default:
                            h()
                    }
                } catch (t) {
                }
            }), "NONE" !== m && setTimeout(function () {
                n && "script" == n.tagName.toLowerCase() || r.addScript(p, "", "aplus-sufei")
            }, 10)
        }

        var a = document, r = n(29), i = n(73), s = n(77);
        e.run = function () {
            o()
        }, e.init_watchGoldlogQueue = s.init_watchGoldlogQueue
    }, function (t, e, n) {
        "use strict";

        function o(t, e) {
            for (var n = {
                subscribeMwChangeQueue: [],
                subscribeMetaQueue: [],
                subscribeQueue: [],
                metaQueue: [],
                othersQueue: []
            }, o = [], a = {}; a = t.shift();) try {
                var r = a.action, i = a.arguments[0];
                /subscribe/.test(r) ? "setMetaInfo" === i ? n.subscribeMetaQueue.push(a) : "mw_change_pv" === i || "mw_change_hjlj" === i ? n.subscribeMwChangeQueue.push(a) : n.subscribeQueue.push(a) : /MetaInfo/.test(r) ? n.metaQueue.push(a) : n.othersQueue.push(a)
            } catch (t) {
                n.othersQueue.push(a), u.do_tracker_jserror({
                    message: t && t.message,
                    error: encodeURIComponent(t.stack),
                    filename: "getFormatQueue"
                })
            }
            var s;
            return e && n[e] && (s = n[e], n[e] = []), o = n.subscribeMwChangeQueue.concat(n.metaQueue), o = o.concat(n.subscribeQueue), o = o.concat(n.subscribeMetaQueue, n.othersQueue), {
                queue: o,
                formatQueue: s
            }
        }

        var a = window, r = n(8), i = n(78), s = n(79), u = n(80), c = "goldlog_queue", l = function (t, e, n) {
            try {
                /_aplus_cplugin_track_deb/.test(t) || /_aplus_cplugin_m/.test(t) || u.do_tracker_jserror({
                    message: n || 'illegal task: goldlog_queue.push("' + JSON.stringify(e) + '")',
                    error: JSON.stringify(e),
                    filename: "processTask"
                })
            } catch (t) {
            }
        }, p = function (t, e) {
            var n = t ? t.action : "", o = t ? t.arguments : "";
            try {
                if (n && o && r.isArray(o)) {
                    var i = n.split("."), s = a, u = a;
                    if (3 === i.length) s = a[i[0]][i[1]] || {}, u = s[i[2]] ? s[i[2]] : ""; else for (; i.length;) if (u = s = s[i.shift()], !s) return void("function" == typeof e ? e(t) : l(n, t));
                    "function" == typeof u && u.apply(s, o)
                } else l(n, t)
            } catch (e) {
                l(n, t, e.message)
            }
        }, g = function (t) {
            function e() {
                if (t && r.isArray(t) && t.length) {
                    for (var e = o(t).queue, n = {}, a = []; n = e.shift();) p(n, function (t) {
                        a.push(t)
                    });
                    a.length > 0 && setTimeout(function () {
                        for (; n = a.shift();) p(n)
                    }, 100)
                }
            }

            try {
                e()
            } catch (t) {
                u.do_tracker_jserror({
                    message: t && t.message,
                    error: encodeURIComponent(t.stack),
                    filename: "processGoldlogQueue"
                })
            }
        };
        e.processGoldlogQueue = g;
        var f = i.extend({
            push: function (t) {
                this.length++, p(t)
            }
        });
        e.init_watchGoldlogQueue = function (t) {
            try {
                var e = a[c] || [];
                if (t) {
                    var n = o(e, t);
                    a[c] = n.queue, g(n.formatQueue)
                } else a[c] = f.create({startLength: e.length, length: 0}), s.init_loadAplusPlugin(), g(e)
            } catch (t) {
                u.do_tracker_jserror({
                    message: t && t.message,
                    error: encodeURIComponent(t.stack),
                    filename: "init_watchGoldlogQueue"
                })
            }
        }
    }, function (t, e) {
        "use strict";

        function n() {
        }

        n.prototype.extend = function () {
        }, n.prototype.create = function () {
        }, n.extend = function (t) {
            return this.prototype.extend.call(this, t)
        }, n.prototype.create = function (t) {
            var e = new this;
            for (var n in t) e[n] = t[n];
            return e
        }, n.prototype.extend = function (t) {
            var e = function () {
            };
            try {
                "function" != typeof Object.create && (Object.create = function (t) {
                    function e() {
                    }

                    return e.prototype = t, new e
                }), e.prototype = Object.create(this.prototype);
                for (var n in t) e.prototype[n] = t[n];
                e.prototype.constructor = e, e.extend = e.prototype.extend, e.create = e.prototype.create
            } catch (t) {
                console.log(t)
            } finally {
                return e
            }
        }, t.exports = n
    }, function (t, e, n) {
        "use strict";
        var o = n(29), a = n(27), r = n(5), i = function () {
            var t = goldlog.getCdnPath() + "/alilog/s/" + r.lver + "/plugin/";
            return {aplus_ae_path: t + "aplus_ae.js", aplus_ac_path: t + "aplus_ac.js"}
        }, s = {}, u = "aplus-auto-exp", c = "aplus-auto-clk", l = function (t, e) {
            var n = i(), r = goldlog && goldlog.getMetaInfo ? goldlog.getMetaInfo(t) : "",
                l = e || r || a.getMetaCnt(t), p = {};
            p[u] = n.aplus_ae_path, p[c] = n.aplus_ac_path, l && p[t] && !s[t] && (o.addScript(p[t]), s[t] = !0)
        };
        e.init_loadAplusPlugin = function () {
            try {
                !goldlog._aplus_auto_exp && l(u), !goldlog._aplus_ac && l(c), goldlog.aplus_pubsub.subscribe("setMetaInfo", function (t, e) {
                    t !== u || goldlog._aplus_auto_exp || l(t, e), t !== c || goldlog._aplus_ac || l(t, e)
                })
            } catch (t) {
            }
        }
    }, function (t, e) {
        "use strict";
        var n = function (t, e) {
            var n = window.goldlog_queue || (window.goldlog_queue = []);
            n.push({
                action: "goldlog._aplus_cplugin_track_deb.monitor",
                arguments: [{
                    key: "APLUS_PLUGIN_DEBUG",
                    title: "aplus_core",
                    msg: ["_error_:methodName=" + e + ",params=" + JSON.stringify(t)],
                    type: "updateMsg",
                    description: e || "aplus_core"
                }]
            })
        }, o = function (t, e, n) {
            var o = window.goldlog_queue || (window.goldlog_queue = []);
            o.push({action: ["goldlog", "_aplus_cplugin_m", e].join("."), arguments: [t, n]})
        };
        e.do_tracker_jserror = function (t, e) {
            var a = "do_tracker_jserror";
            o(t, a, e), n(t, a)
        }, e.do_tracker_obsolete_inter = function (t, e) {
            var a = "do_tracker_obsolete_inter";
            o(t, a, e), n(t, a)
        }, e.wrap = function (t) {
            if ("function" == typeof t) try {
                t()
            } catch (t) {
                n({msg: t.message || t}, "exception")
            } finally {
            }
        }
    }, function (t, e) {
        "use strict";

        function n(t, e) {
            return t.indexOf(e) > -1
        }

        function o(t, e) {
            for (var o = 0, a = t.length; o < a; o++) if (n(e, t[o])) return !0;
            return !1
        }

        var a = location.host, r = ["admin.taobao.org", "mybank.cn"],
            i = ["tmc.admin.taobao.org", "tmall.admin.taobao.org"];
        e.is_exception = o(r, a) && !o(i, a)
    }, function (t, e, n) {
        "use strict";

        function o() {
            var t, e, n, o, a = c.getElementsByTagName("meta");
            for (t = 0, e = a.length; t < e; t++) if (n = a[t], o = n.getAttribute("name"), "data-spm" === o || "spm-id" === o) return n
        }

        function a() {
            var t = c.createElement("meta");
            t.setAttribute("name", "data-spm");
            var e = c.getElementsByTagName("head")[0];
            return e && e.insertBefore(t, e.firstChild), t
        }

        function r() {
            var t = o();
            t || (t = a()), t.setAttribute("content", goldlog.spm_ab[0] || "");
            var e = c.getElementsByTagName("body")[0];
            e && e.setAttribute("data-spm", goldlog.spm_ab[1] || "")
        }

        function i() {
            var t, e, n, o = c.getElementsByTagName("*");
            for (t = 0, e = o.length; t < e; t++) n = o[t], n.getAttribute("data-spm-max-idx") && n.setAttribute("data-spm-max-idx", ""), n.getAttribute("data-spm-anchor-id") && n.setAttribute("data-spm-anchor-id", "")
        }

        function s() {
            var t = 5e3;
            try {
                var e = goldlog.getMetaInfo("aplus-mmstat-timeout");
                if (e) {
                    var n = parseInt(e);
                    n >= 1e3 && n <= 1e4 && (t = n)
                }
            } catch (t) {
            }
            return t
        }

        var u = window, c = document, l = n(78), p = n(16), g = n(73), f = n(22), d = n(36), h = n(8), m = n(24),
            _ = n(20), v = n(39), b = n(50), y = n(25), w = y.getInfo(), x = n(3), T = n(80), j = n(83), P = n(10),
            A = n(86), S = n(2), E = f.isDebugAplus(), k = [], M = [], I = [], C = [];
        e.run = l.extend({
            getCdnPath: function () {
                var t = c.getElementById("beacon-aplus") || c.getElementById("tb-beacon-aplus"), e = "//g.alicdn.com",
                    n = ["//assets.alicdn.com/g", "//g-assets.daily.taobao.net"];
                if (t) for (var o = 0; o < n.length; o++) {
                    var a = new RegExp(n[o]);
                    if (a.test(t.src)) {
                        e = n[o];
                        break
                    }
                }
                return e
            }, isInternational: function () {
                this.cdnPath || (this.cdnPath = this.getCdnPath());
                var t = "//assets.alicdn.com/g" === this.cdnPath || "//laz-g-cdn.alicdn.com" === this.cdnPath;
                return t || "int" === this.getMetaInfo("aplus-env")
            }, getCookie: function (t) {
                return P.getCookie(t)
            }, getParam: function (t) {
                var e = u.WindVane || {}, n = v.isAplusChnl(), o = "";
                n && "object" == typeof n && (o = n.bridgeName || "customBridge");
                var a = e.getParam ? "WindVane" : o, r = e && "function" == typeof e.getParam ? e.getParam(t) : "",
                    i = goldlog.spm_ab ? goldlog.spm_ab.join(".") : "0.0", s = "sid=" + t + "@valueIsEmpty=" + !r;
                return a && (s += "_bridgeName=" + a), T.do_tracker_obsolete_inter({
                    ratio: E ? 1 : .01,
                    page: location.hostname + location.pathname,
                    spm_ab: i,
                    interface_name: "goldlog.getParam",
                    interface_params: s
                }), r
            }, beforeSendPV: function (t) {
                k.push(t)
            }, afterSendPV: function (t) {
                M.push(t)
            }, send: function (t, e, n) {
                var o;
                if (0 === t.indexOf("//")) {
                    var a = _.getProtocal();
                    t = a + t
                }
                return o = "POST" === n && navigator && navigator.sendBeacon ? S.postData(t, e) : S.sendImg(p.makeUrl(t, e), s())
            }, launch: function (t, e) {
                var n;
                try {
                    e = h.assign(e, t), n = goldlog._$._sendPV(e, t);
                    var o = goldlog.spm_ab ? goldlog.spm_ab.join(".") : "0.0";
                    T.do_tracker_obsolete_inter({
                        page: location.hostname + location.pathname,
                        spm_ab: o,
                        interface_name: "goldlog.launch",
                        interface_params: "userdata = " + JSON.stringify(t) + ", config = " + JSON.stringify(e)
                    })
                } catch (t) {
                } finally {
                    return f.logger({msg: "warning: This interface is deprecated, please use goldlog.sendPV instead! API: http://log.alibaba-inc.com/log/info.htm?type=2277&id=31"}), n
                }
            }, _$: {
                _sendPV: function (t, e) {
                    if (t = t || {}, h.any(k, function (e) {
                        return e(goldlog, t) === !1
                    })) return !1;
                    var o = n(88).SendPV, a = new o;
                    return "undefined" == typeof t.recordType && (t.recordType = x.recordTypes.pv), a.run(t, e, {fn_after_pv: M}), !0
                }, _sendPseudo: function (t, e) {
                    t || (t = {});
                    var o = n(89).SendPrePV, a = new o;
                    return "undefined" == typeof t.recordType && (t.recordType = x.recordTypes.prepv), a.run(t, e, {}, function () {
                        d.doPubMsg(["sendPrePV", "complete"])
                    }), !0
                }
            }, sendPV: function (t, e) {
                return e = e || {}, goldlog._$._sendPV(t, e)
            }, beforeRecord: function (t) {
                I.push(t)
            }, afterRecord: function (t) {
                C.push(t)
            }, record: function (t, e, n, o, a) {
                if (!h.any(I, function (t) {
                    return t(goldlog) === !1
                })) return j.run({recordType: x.recordTypes.hjlj, method: "POST" === o ? "POST" : "GET"}, {
                    logkey: t,
                    gmkey: e,
                    gokey: n
                }, {fn_after_record: C}, function () {
                    "function" == typeof a && a()
                }), !0
            }, recordUdata: function (t, e, n, o, a) {
                var r = m.getGoldlogVal("_$") || {}, i = r.spm || {};
                j.run({
                    ignore_chksum: !0,
                    method: "POST" === o ? "POST" : "GET",
                    recordType: x.recordTypes.uhjlj
                }, {logkey: t, gmkey: e, gokey: n, "spm-cnt": i.spm_cnt, "spm-pre": i.spm_pre}, {}, function () {
                    h.isFunction(a) && a()
                })
            }, setPageSPM: function (t, e, n) {
                var o = goldlog.getMetaInfo("aplus-spm-fixed"), a = "function" == typeof n ? n : function () {
                };
                goldlog.spm_ab = goldlog.spm_ab || [];
                var s = h.cloneObj(goldlog.spm_ab);
                if (t && (goldlog.spm_ab[0] = "" + t, goldlog._$.spm.data.a = "" + t), e && (goldlog.spm_ab[1] = "" + e, goldlog._$.spm.data.b = "" + e), b.spaInit(goldlog, w, s), "1" !== o) {
                    var u = s.join(".");
                    goldlog.spmab_pre = u
                }
                var c = goldlog.spm_ab.join(".");
                d.doPubMsg(["setPageSPM", {
                    spmab_pre: goldlog.spmab_pre,
                    spmab: c
                }]), d.doCachePubs(["setPageSPM", {spmab_pre: goldlog.spmab_pre, spmab: c}]), r(), i(), a()
            }, setMetaInfo: function (t, e, n) {
                if (y.setMetaInfo(t, e)) {
                    var o = m.getGoldlogVal("_$") || {};
                    o.meta_info = y.qGet();
                    var a = m.setGoldlogVal("_$", o), r = A.isDisablePvid() + "";
                    return "aplus-disable-pvid" === t && r !== e + "" && b.resetSpmCntPvid(), d.doPubMsg(["setMetaInfo", t, e, n]), d.doCachePubs(["setMetaInfo", t, e, n]), a
                }
            }, appendMetaInfo: y.appendMetaInfo, getMetaInfo: function (t) {
                return y.getMetaInfo(t)
            }, on: g.on, cloneDeep: h.cloneDeep, getPvId: A.getPvId
        })
    }, function (t, e, n) {
        "use strict";
        var o = n(8), a = n(24), r = n(36), i = n(22), s = n(84), u = n(85), c = n(3);
        e.run = function (t, e, n, l) {
            var p = new u;
            p.init({middleware: [], config: t, plugins: c.plugins_hjlj});
            var g = p.run(), f = new c.context_hjlj;
            f.userdata = e, f.logger = i.logger;
            var d = {context: f, pubsub: a.getGoldlogVal("aplus_pubsub"), pubsubType: "hjlj"}, h = new s;
            h.create(d), h.wrap(g, function () {
                d.context.status = "complete", d.context.method = t.method, r.doPubMsg(["mw_change_hjlj", d.context]), n && n.fn_after_record && o.each(n.fn_after_record, function (t) {
                    t(window.goldlog)
                }), "function" == typeof l && l()
            })()
        }
    }, function (t, e, n) {
        "use strict";

        function o() {
        }

        var a = n(23), r = n(21), i = n(22), s = n(80), u = n(10);
        o.prototype.create = function (t) {
            for (var e in t) "undefined" == typeof this[e] && (this[e] = t[e]);
            return this
        }, o.prototype.pubsubInfo = function (t, e) {
            try {
                t && t.pubsub && t.pubsub.publish("mw_change_" + t.pubsubType, t.context, e)
            } catch (t) {
            }
        }, o.prototype.calledList = [], o.prototype.setCalledList = function (t) {
            a.indexof(this.calledList, t) === -1 && this.calledList.push(t)
        }, o.prototype.resetCalledList = function () {
            this.calledList = []
        }, o.prototype.wrap = function (t, e) {
            var n = this, o = this.context || {}, c = o.compose || {}, l = c.maxTimeout || 1e4;
            return function (o) {
                var c, p = t.length, g = 0, f = 0, d = function () {
                    if (n.pubsubInfo(n, t[g]), g === p) return o = "done", n.resetCalledList(), "function" == typeof e && e.call(n, o), void clearTimeout(c);
                    if (a.indexof(n.calledList, g) === -1) {
                        if (n.setCalledList(g), !t[g] || "function" != typeof t[g][0]) return;
                        try {
                            o = t[g][0].call(n, o, function () {
                                g++, f = 1, clearTimeout(c), d(g)
                            })
                        } catch (e) {
                            s.do_tracker_jserror({
                                message: e ? e.message : "compose middleware error",
                                error: encodeURIComponent(e.stack),
                                filename: t[g][1]
                            })
                        }
                    }
                    var h = "number" == typeof o;
                    if ("pause" === o || h) {
                        f = 0;
                        var m = h ? o : l, _ = t[g] ? t[g][1] : "";
                        c = r.sleep(m, function () {
                            if (0 === f) {
                                var t = "jump the middleware about " + _ + ", because waiting timeout maxTimeout = " + m + "ms!";
                                i.logger({msg: t});
                                var e = window.goldlog_queue || (window.goldlog_queue = []);
                                e.push({
                                    action: "goldlog._aplus_cplugin_m.do_tracker_browser_support",
                                    arguments: [{
                                        msg: t,
                                        spmab: goldlog.spm_ab,
                                        page: location.href,
                                        etag: n.context ? JSON.stringify(n.context.etag) : "",
                                        cna: document.cookie ? u.getCookie("cna") : ""
                                    }]
                                }), o = null, g++, d(g)
                            }
                        })
                    } else "done" === o ? (g = p, d(g)) : (g++, d(g))
                };
                return n.calledList && n.calledList.length > 0 && n.resetCalledList(), d(g)
            }
        }, t.exports = o
    }, function (t, e, n) {
        "use strict";
        var o = n(23);
        t.exports = function () {
            return {
                init: function (t) {
                    this.opts = t, t && "object" == typeof t.middleware && t.middleware.length > 0 ? this.middleware = t.middleware : this.middleware = [], this.plugins_name = []
                }, pubsubInfo: function (t, e) {
                    try {
                        var n = t.pubsub;
                        n && n.publish("plugins_change_" + t.pubsubType, e)
                    } catch (t) {
                    }
                }, checkPluginLoader: function (t, e) {
                    var n = !0;
                    if ("object" == typeof e.enable && "function" == typeof e.enable.isEnable ? n = e.enable.isEnable(e.name) : "boolean" == typeof e.enable && (n = !!e.enable), !n) return !1;
                    if (n && e.deps && e.deps.length > 0) for (var a = 0; a < e.deps.length; a++) if (o.indexof(this.plugins_name, e.deps[a]) === -1) return !1;
                    return !0
                }, run: function (t) {
                    t || (t = 0);
                    var e = this, n = this.middleware, o = this.opts || {}, a = o.plugins;
                    if (a && "object" == typeof a && a.length > 0) {
                        var r = a[t];
                        if (this.checkPluginLoader(a, r) && (this.plugins_name.push(r.name), n.push([function (t, n) {
                            e.pubsubInfo(this, r);
                            var a = new r.path;
                            return a.init({context: this.context, config: o.config}), a.run(t, n)
                        }, r.name])), t++, a[t]) return this.run(t)
                    } else window.console && console.log("aplus plugins " + JSON.stringify(a) + " must be object of array!");
                    return n
                }
            }
        }
    }, function (t, e, n) {
        "use strict";

        function o() {
            var t = "true" === l.disablePvid;
            try {
                var e = goldlog.getMetaInfo("aplus-disable-pvid") + "";
                "true" === e ? t = !0 : "false" === e && (t = !1)
            } catch (t) {
            }
            return t
        }

        function a(t) {
            function e(t) {
                var e = "0123456789abcdefhijklmnopqrstuvwxyzABCDEFHIJKLMNOPQRSTUVWXYZ",
                    n = "0123456789abcdefghijkmnopqrstuvwxyzABCDEFGHIJKMNOPQRSTUVWXYZ";
                return 1 == t ? e.substr(Math.floor(60 * Math.random()), 1) : 2 == t ? n.substr(Math.floor(60 * Math.random()), 1) : "0"
            }

            for (var n, o = "", a = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", r = !1; o.length < t;) n = a.substr(Math.floor(62 * Math.random()), 1), !r && o.length <= 2 && ("g" == n.toLowerCase() || "l" == n.toLowerCase()) && (0 === o.length && "g" == n.toLowerCase() ? Math.random() < .5 && (n = e(1), r = !0) : 1 == o.length && "l" == n.toLowerCase() && "g" == o.charAt(0).toLowerCase() && (n = e(2), r = !0)), o += n;
            return o
        }

        function r(t, e, n) {
            return t ? u.hash(encodeURIComponent(t)).substr(0, e) : n
        }

        function i() {
            var t = a(8), e = t.substr(0, 4), n = t.substr(0, 6);
            return [r(location.href, 4, e), r(document.title, 4, e), n].join("")
        }

        function s() {
            var t = goldlog.pvid;
            return goldlog.pvid = i(), c.doPubMsg(["pvidChange", {
                pre_pvid: t,
                pvid: goldlog.pvid
            }]), c.doCachePubs(["pvidChange", {pre_pvid: t, pvid: goldlog.pvid}]), o() ? "" : goldlog.pvid
        }

        var u = n(87), c = n(36), l = n(3);
        e.isDisablePvid = o, e.makePVId = s, e.getPvId = function () {
            return o() ? "" : goldlog.pvid
        }
    }, function (t, e) {
        "use strict";
        var n = 1315423911;
        e.hash = function (t, e) {
            var o, a, r = e || n;
            for (o = t.length - 1; o >= 0; o--) a = t.charCodeAt(o), r ^= (r << 5) + a + (r >> 2);
            var i = (2147483647 & r).toString(16);
            return i
        }
    }, function (t, e, n) {
        "use strict";
        var o = n(8), a = n(24), r = n(36), i = n(22), s = n(84), u = n(85), c = n(3), l = function () {
        };
        l.prototype.run = function (t, e, n) {
            var l = new u;
            l.init({middleware: [], config: t, plugins: c.plugins_pv});
            var p = l.run(), g = new c.context;
            g.userdata = e, g.logger = i.logger;
            var f = {context: g, pubsub: a.getGoldlogVal("aplus_pubsub"), pubsubType: "pv"}, d = new s;
            d.create(f), d.wrap(p, function () {
                var e = f.context.can_to_sendpv || {};
                f.context.status = "YES" === e.flag ? "complete" : "skip", r.doPubMsg(["mw_change_pv", f.context]), n && n.fn_after_record && o.each(n.fn_after_pv, function (e) {
                    e(window.goldlog, t)
                })
            })()
        }, e.SendPV = l
    }, function (t, e, n) {
        "use strict";
        var o = n(8), a = n(24), r = n(36), i = n(22), s = n(84), u = n(85), c = n(3), l = function () {
        };
        l.prototype.run = function (t, e, n, l) {
            var p = new u;
            p.init({middleware: [], config: t, plugins: c.plugins_prepv});
            var g = p.run(), f = new c.context_prepv;
            f.userdata = e, f.logger = i.logger;
            var d = {context: f, pubsub: a.getGoldlogVal("aplus_pubsub"), pubsubType: "prepv"}, h = new s;
            h.create(d), h.wrap(g, function () {
                d.context.status = "complete", r.doPubMsg(["mw_change_prepv", d.context]), n && n.fn_after_record && o.each(n.fn_after_pv, function (e) {
                    e(window.goldlog, t)
                }), a.setGoldlogVal("prepv_context", f), "function" == typeof l && l()
            })()
        }, e.SendPrePV = l
    }, function (t, e, n) {
        "use strict";
        !function () {
            var t = window.goldlog || (window.goldlog = {}), e = n(91);
            t.aplus_pubsub || (t.aplus_pubsub = e.create())
        }()
    }, function (t, e, n) {
        "use strict";

        function o(t) {
            if ("function" != typeof t) throw new TypeError(t + " is not a function");
            return t
        }

        var a = n(78), r = function (t) {
            for (var e = t.length, n = new Array(e - 1), o = 1; o < e; o++) n[o - 1] = t[o];
            return n
        }, i = a.extend({
            create: function (t) {
                var e = new this;
                for (var n in t) e[n] = t[n];
                return e.handlers = [], e.pubs = {}, e
            }, setHandlers: function (t) {
                this.handlers = t
            }, subscribe: function (t, e) {
                o(e);
                var n = this, a = n.pubs || {}, r = a[t] || [];
                if (r) for (var i = 0; i < r.length; i++) {
                    var s = r[i]();
                    e.apply(n, s)
                }
                var u = n.handlers || [];
                return t in u || (u[t] = []), u[t].push(e), n.setHandlers(u), n
            }, subscribeOnce: function (t, e) {
                o(e);
                var n, a = this;
                return this.subscribe.call(this, t, n = function () {
                    a.unsubscribe.call(a, t, n);
                    var o = Array.prototype.slice.call(arguments);
                    e.apply(a, o)
                }), this
            }, unsubscribe: function (t, e) {
                o(e);
                var n = this.handlers[t];
                if (!n) return this;
                if ("object" == typeof n && n.length > 0) {
                    for (var a = 0; a < n.length; a++) {
                        var r = e.toString(), i = n[a].toString();
                        r === i && n.splice(a, 1)
                    }
                    this.handlers[t] = n
                } else delete this.handlers[t];
                return this
            }, publish: function (t) {
                var e = r(arguments), n = this.handlers || [], o = n[t] ? n[t].length : 0;
                if (o > 0) for (var a = 0; a < o; a++) {
                    var i = n[t][a];
                    i && "function" == typeof i && i.apply(this, e)
                }
                return this
            }, cachePubs: function (t) {
                var e = this.pubs || {}, n = r(arguments);
                e[t] || (e[t] = []), e[t].push(function () {
                    return n
                })
            }
        });
        t.exports = i
    }, function (t, e, n) {
        "use strict";
        var o = n(39), a = n(36), r = n(52), i = n(3);
        e.init = function () {
            i.initLoad.init_watchGoldlogQueue("metaQueue"), n(93)(function () {
                var t = goldlog._$ || {}, e = navigator.userAgent;
                e.match(/AliApp\(([A-Z\-]+)\/([\d\.]+)\)/i) && (t.is_ali_app = !0), i.utilPvid.makePVId();
                var s = n(50);
                t.spm = s, t.is_WindVane = o.is_WindVane;
                var u = t.meta_info;
                s.init(goldlog, u, function () {
                    i.initLoad.init_watchGoldlogQueue();
                    var t = n(3).spmException, e = t.is_exception;
                    e || n(95), a.doPubMsg(["aplusReady", "complete"]), a.doCachePubs(["aplusReady", "complete"])
                }), goldlog.beforeSendPV(function (e, n) {
                    if (t.page_url = location.href, t.page_referrer = r.getRefer(), n.is_auto && "1" === u["aplus-manual-pv"]) return !1
                }), goldlog.afterSendPV(function () {
                    window.g_SPM && (g_SPM._current_spm = "")
                }), i.is_auto_pv + "" == "true" && goldlog.sendPV({is_auto: !0}), i.initLoad.run(), i.beforeUnload.run()
            })
        }
    }, function (t, e, n) {
        "use strict";
        var o = n(36);
        t.exports = function (t) {
            var e = n(94).AplusInit, a = new e;
            a.run({}, function (e) {
                o.doPubMsg(["aplusInitContext", e]), o.doCachePubs(["aplusInitContext", e]), "function" == typeof t && t()
            })
        }
    }, function (t, e, n) {
        "use strict";
        var o = n(24), a = n(22), r = n(84), i = n(85), s = n(3), u = function () {
        };
        u.prototype.run = function (t, e) {
            var n = new i;
            n.init({middleware: [], config: t, plugins: s.aplus_init});
            var u = n.run(), c = new s.context;
            c.logger = a.logger;
            var l = {context: c, pubsub: o.getGoldlogVal("aplus_pubsub"), pubsubType: "aplusinit"}, p = new r;
            p.create(l), p.wrap(u, function () {
                "function" == typeof e && e(l.context)
            })()
        }, e.AplusInit = u
    }, function (t, e, n) {
        "use strict";
        !function () {
            var t, e = n(8), o = n(24), a = n(96), r = function () {
                t = !0;
                var n = window.g_SPM || {};
                e.isFunction(n.getParam) || e.isFunction(n.spm) || a.run()
            }, i = window.goldlog || (window.goldlog = {});
            i.aplus_pubsub && "function" == typeof i.aplus_pubsub.publish && i.aplus_pubsub.subscribe("goldlogReady", function (e) {
                "complete" !== e || t || r()
            });
            var s = 0, u = function () {
                if (!t) {
                    var e = o.getGoldlogVal("_$") || {};
                    "complete" === e.status ? r() : s < 50 && (++s, setTimeout(function () {
                        u()
                    }, 200))
                }
            };
            u()
        }()
    }, function (t, e, n) {
        "use strict";
        var o = n(29), a = n(24), r = n(97), i = n(101), s = n(102), u = n(103), c = n(104);
        e.run = function () {
            var t = a.getGoldlogVal("_$") || {}, e = t.meta_info, n = e["aplus-touch"], l = {
                isTouchEnabled: o.isTouch() || "1" === n || "tap" === n,
                isTerminal: t.is_terminal || /WindVane/i.test(navigator.userAgent)
            };
            window.g_SPM = {
                spm_d_for_ad: {},
                resetModule: r.spm_resetModule,
                anchorBeacon: r.spm_spmAnchorChk,
                getParam: r.spm_getSPMParam,
                spm: r.spm_forwap
            }, i.run(l), s.run(l), u.run(l), c.run(l)
        }
    }, function (t, e, n) {
        "use strict";

        function o(t) {
            if (t && 1 === t.nodeType) {
                s.tryToRemoveAttribute(t, "data-spm-max-idx"), s.tryToRemoveAttribute(t, "data-auto-spmd-max-idx");
                for (var e = u.nodeListToArray(t.getElementsByTagName("a")), n = u.nodeListToArray(t.getElementsByTagName("area")), o = e.concat(n), a = 0; a < o.length; a++) s.tryToRemoveAttribute(o[a], l)
            }
        }

        function a(t, e) {
            var n = s.tryToGetAttribute(t, l), o = "0";
            if (n && c.spm_isSPMAnchorIdMatch(n)) c.spm_anchorEnsureSPMId_inHref(t, n, e); else {
                var a = c.spm_spmGetParentSPMId(t.parentNode);
                if (o = a.spm_c, !o) return void c.spm_dealNoneSPMLink(t, e);
                c.spm_initSPMModule(a.el, o, e), c.spm_initSPMModule(a.el, o, e, !0)
            }
        }

        function r(t) {
            var e, n = t.tagName;
            "A" !== n && "AREA" !== n ? e = c.spm_getParamForAD(t) : (a(t, !0), e = s.tryToGetAttribute(t, l)), e || (e = "0.0.0.0");
            var o = goldlog.getPvId();
            4 === e.split(".").length && o && (e += "." + o), "A" !== n && "AREA" !== n && s.tryToSetAttribute(t, l, e), e = e.split(".");
            var r = {a: e[0], b: e[1], c: e[2], d: e[3]};
            return e[4] && (r.e = e[4]), r
        }

        function i(t, e) {
            var n = r(t), o = [n.a, n.b, n.c, n.d];
            return e && n.e && o.push(n.e), o.join(".")
        }

        var s = n(26), u = n(17), c = n(98), l = "data-spm-anchor-id";
        e.spm_resetModule = o, e.spm_spmAnchorChk = a, e.spm_getSPMParam = r, e.spm_forwap = i
    }, function (t, e, n) {
        "use strict";

        function o(t) {
            for (var e, n = "data-spm-ab-max-idx", o = {}, a = ""; t && t.tagName != T && t.tagName != x;) {
                if (!a && (a = v.tryToGetAttribute(t, "data-spm-ab"))) {
                    e = parseInt(v.tryToGetAttribute(t, n)) || 0, o.a_spm_ab = a, o.ab_idx = ++e, t.setAttribute(n, e);
                    break
                }
                if (v.tryToGetAttribute(t, "data-spm")) break;
                t = t.parentNode
            }
            return o
        }

        function a() {
            var t = b.getGoldlogVal("_$") || {}, e = t.spm.data;
            return [e.a, e.b].join(".")
        }

        function r(t) {
            var e = a(), n = t.split(".");
            return n[0] + "." + n[1] == e
        }

        function i(t, e) {
            if (!goldlog.isUT4Aplus || "UT4Aplus" !== goldlog.getMetaInfo("aplus-toUT")) {
                if (t && /&?\bspm=[^&#]*/.test(t) && (t = t.replace(/&?\bspm=[^&#]*/g, "").replace(/&{2,}/g, "&").replace(/\?&/, "?").replace(/\?$/, "")), !e) return t;
                var n, o, a, r, i, s, u, c = "&";
                t.indexOf("#") !== -1 && (a = t.split("#"), t = a.shift(), o = a.join("#")), r = t.split("?"), i = r.length - 1, a = r[0].split("//"), a = a[a.length - 1].split("/"), s = a.length > 1 ? a.pop() : "", i > 0 && (n = r.pop(), t = r.join("?")), n && i > 1 && n.indexOf("&") == -1 && n.indexOf("%") !== -1 && (c = "%26");
                var l = "";
                if (t = t + "?spm=" + l + e + (n ? c + n : "") + (o ? "#" + o : ""), u = m.isContain(s, ".") ? s.split(".").pop().toLowerCase() : "") {
                    if ({png: 1, jpg: 1, jpeg: 1, gif: 1, bmp: 1, swf: 1}.hasOwnProperty(u)) return 0;
                    !n && i <= 1 && (o || {htm: 1, html: 1, php: 1, aspx: 1}.hasOwnProperty(u) || (t += "&file=" + s))
                }
                return t
            }
        }

        function s(t, e) {
            if (!goldlog.isUT4Aplus || "UT4Aplus" !== goldlog.getMetaInfo("aplus-toUT")) {
                var n, o = t.innerHTML;
                o && o.indexOf("<") == -1 && (n = document.createElement("b"), n.style.display = "none", t.appendChild(n)), t.href = e, n && t.removeChild(n)
            }
        }

        function u(t, e, n) {
            if (!/^0\.0\.?/.test(e)) {
                var o = y.tryToGetHref(t), r = a(), u = w.is_ignore_spm(t);
                if (u) {
                    var c = h.param2obj(o);
                    if (c.spm && c.spm.split) for (var l = c.spm.split("."), p = e.split("."), g = 0; g < 3 && p[g] === l[g]; g++) 2 === g && l[3] && (e = c.spm)
                }
                t.setAttribute("data-spm-anchor-id", e);
                var f = goldlog.getPvId();
                f && (e += "." + f);
                var d = "0.0";
                (f || r && r != d) && (u || n || (o = i(o, e)) && s(t, o))
            }
        }

        function c(t) {
            var e = v.tryToGetAttribute(t, P), n = _.parseSemicolonContent(e) || {};
            return n
        }

        function l(t) {
            var e, n = b.getGoldlogVal("_$") || {}, o = n.spm.data;
            return "0" == o.a && "0" == o.b ? e = "0" : (e = v.tryToGetAttribute(t, j), e && e.match(/^d\w+$/) || (e = "")), e
        }

        function p(t, e) {
            for (var n = [], o = _.nodeListToArray(t.getElementsByTagName("a")), a = _.nodeListToArray(t.getElementsByTagName("area")), r = o.concat(a), i = 0; i < r.length; i++) {
                for (var s = !1, u = r[i], c = r[i]; (u = u.parentNode) && u != t;) if (v.tryToGetAttribute(u, j)) {
                    s = !0;
                    break
                }
                if (!s) {
                    var l = v.tryToGetAttribute(c, A);
                    e || "t" === l ? e && "t" === l && n.push(c) : n.push(c)
                }
            }
            return n
        }

        function g(t) {
            for (var e, n = t; t && t.tagName !== T && t.tagName !== x && t.getAttribute;) {
                var o = t.getAttribute(j);
                if (o) {
                    e = o, n = t;
                    break
                }
                if (!(t = t.parentNode)) break
            }
            return e && !/^[\w\-\.\/]+$/.test(e) && (e = "0"), {spm_c: e, el: n}
        }

        function f(t, e) {
            var n = parent !== self;
            if (!n && e) return [t, e].join(".");
            if (t && e) return t + ".i" + e;
            var o = window.g_SPM || (window.g_SPM = {}), a = o.spm_d_for_ad || {};
            return "number" == typeof a[t] ? a[t]++ : a[t] = 0, o.spm_d_for_ad = a, t + ".i" + a[t]
        }

        function d(t) {
            var e;
            return t && (e = t.match(/&?\bspm=([^&#]*)/)) ? e[1] : ""
        }

        var h = n(16), m = n(8), _ = n(17), v = n(26), b = n(24), y = n(99), w = n(100), x = "BODY", T = "HTML",
            j = "data-spm", P = "data-spm-click", A = "data-auto-spmd", S = "data-spm-anchor-id";
        e.getGlobalSPMId = a, e.spm_isSPMAnchorIdMatch = r, e.spm_updateHrefWithSPMId = i, e.spm_writeHref = s, e.spm_anchorEnsureSPMId_inHref = u, e.getElDataSpm = c, e.spm_getAnchor4thId_spm_d = l, e.spm_getModuleLinks = p, e.spm_spmGetParentSPMId = g, e.get_spm_for_ad = f, e.spm_getParamForAD = function (t) {
            var e = v.tryToGetAttribute(t, S);
            if (!e) {
                var n = a(), o = t.parentNode;
                if (!o) return "";
                var r = c(t) || {}, i = r.locaid || "", s = t.getAttribute(j) || i, u = g(o), l = u.spm_c || 0;
                l && l.indexOf(".") !== -1 && (l = l.split("."), l = l[l.length - 1]), e = f(n + "." + l, s)
            }
            return e
        }, e.spm_initSPMModule = function (t, e, n, i) {
            var s;
            if (e = e || t.getAttribute("data-spm") || "") {
                var g = p(t, i);
                if (0 !== g.length) {
                    var f = e.split("."), d = m.isStartWith(e, "110") && 3 == f.length;
                    d && (s = f[2], f[2] = "w" + (s || "0"), e = f.join("."));
                    var h = a();
                    if (h && h.match(/^[\w\-\*]+(\.[\w\-\*\/]+)?$/)) if (m.isContain(e, ".")) {
                        if (!m.isStartWith(e, h)) {
                            var _ = h.split(".");
                            f = e.split(".");
                            for (var b = 0; b < _.length; b++) f[b] = _[b];
                            e = f.join(".")
                        }
                    } else m.isContain(h, ".") || (h += ".0"), e = h + "." + e;
                    if (e.match && e.match(/^[\w\-\*]+\.[\w\-\*\/]+\.[\w\-\*\/]+$/)) {
                        for (var w = "data-auto-spmd-max-idx", x = "data-spm-max-idx", T = i ? w : x, j = parseInt(v.tryToGetAttribute(t, T)) || 0, A = 0; A < g.length; A++) {
                            var E = g[A], k = y.tryToGetHref(E), M = v.tryToGetAttribute(E, P);
                            if (i || k || M) {
                                d && E.setAttribute("data-spm-wangpu-module-id", s);
                                var I = E.getAttribute(S);
                                if (I && r(I)) u(E, I, n); else {
                                    var C, U, N = o(E.parentNode);
                                    N.a_spm_ab ? (U = N.a_spm_ab, C = N.ab_idx) : (U = void 0, j++, C = j);
                                    var V, G = c(E) || {}, L = G.locaid || "";
                                    L ? V = L : (V = l(E) || C, i && (V = "at" + ((m.isNumber(V) ? 1e3 : "") + V))), I = U ? e + "-" + U + "." + V : e + "." + V, u(E, I, n)
                                }
                            }
                        }
                        t.setAttribute(T, j)
                    }
                }
            }
        }, e.spm_dealNoneSPMLink = function (t, e) {
            var n = goldlog.getMetaInfo("aplus-getspmcd"), o = a(), r = y.tryToGetHref(t), i = d(r), c = null,
                p = o && 2 == o.split(".").length;
            if (p) {
                var g;
                return "function" == typeof n && (g = n(t, null, o)), c = g && "0" !== g.spm_c ? [o, g.spm_c, g.spm_d] : [o, 0, l(t) || 0], void u(t, c.join("."), e)
            }
            r && i && (r = r.replace(/&?\bspm=[^&#]*/g, "").replace(/&{2,}/g, "&").replace(/\?&/, "?").replace(/\?$/, "").replace(/\?#/, "#"), s(t, r))
        }
    }, function (t, e, n) {
        "use strict";
        var o = n(18);
        e.tryToGetHref = function (t) {
            var e;
            try {
                e = o.trim(t.getAttribute("href", 2))
            } catch (t) {
            }
            return e || ""
        }
    }, function (t, e, n) {
        "use strict";

        function o(t) {
            return !!t && !!t.match(/^[^\?]*\balipay\.(?:com|net)\b/i)
        }

        function a(t) {
            return !!t && !!t.match(/^[^\?]*\balipay\.(?:com|net)\/.*\?.*\bsign=.*/i)
        }

        function r(t) {
            var e = location.href;
            return t && e.split("#")[0] === t.split("#")[0]
        }

        function i(t) {
            for (var e; (t = t.parentNode) && "BODY" !== t.tagName;) if (e = u.tryToGetAttribute(t, f)) return e;
            return ""
        }

        function s(t) {
            for (var e = ["mclick.simba.taobao.com", "click.simba.taobao.com", "click.tanx.com", "click.mz.simba.taobao.com", "click.tz.simba.taobao.com", "redirect.simba.taobao.com", "rdstat.tanx.com", "stat.simba.taobao.com", "s.click.taobao.com"], n = 0; n < e.length; n++) if (t.indexOf(e[n]) !== -1) return !0;
            return !1
        }

        var u = n(26), c = n(8), l = n(99), p = n(24), g = n(20), f = "data-spm-protocol";
        e.is_ignore_spm = function (t) {
            var e = p.getGoldlogVal("_$") || {}, n = e.meta_info || {}, d = l.tryToGetHref(t), h = i(t),
                m = u.tryToGetAttribute(t, f), _ = "i" === (m || h || n.spm_protocol);
            if (!d || s(d)) return !0;
            var v = r(d) || g.isStartWithProtocol(d.toLowerCase()), b = o(d) || a(d), y = v || b;
            return !(_ || !c.isStartWith(d, "#") && !y) || _
        }
    }, function (t, e, n) {
        "use strict";

        function o(t, e, n) {
            var o = u.parseSemicolonContent(e, {}, !0), a = o.gostr || "", r = o.locaid || "",
                g = t.getAttribute("data-spm") || r, f = "CLK", d = o.gokey || "", h = p.spm_getSPMParam(t),
                m = [h.a, h.b, h.c, g].join("."), _ = a + "." + m;
            0 !== _.indexOf("/") && (_ = "/" + _);
            var v = [], b = ["gostr", "locaid", "gmkey", "gokey", "spm-cnt", "cna"];
            for (var y in o) o.hasOwnProperty(y) && c.indexof(b, y) === -1 && v.push(y + "=" + o[y]);
            v.push("_g_et=" + n), v.push("autosend=1"), d && v.length > 0 && (d += "&"), d += v.length > 0 ? v.join("&") : "", goldlog && s.isFunction(goldlog.recordUdata) ? goldlog.recordUdata(_, f, d, "GET", function () {
            }) : l.logger({msg: "goldlog.recordUdata is not function!"}), i.tryToSetAttribute(t, "data-spm-anchor-id", m)
        }

        function a(t, e) {
            var n = e;
            window.g_SPM && (g_SPM._current_spm = p.spm_getSPMParam(e));
            for (var a; e && "HTML" !== e.tagName;) {
                a = i.tryToGetAttribute(e, "data-spm-click");
                {
                    if (a) {
                        o(e, a, "mousedown" === t.type ? t.type : "tap");
                        break
                    }
                    e = e.parentNode
                }
            }
            if (!a) {
                var r = g.getGlobalSPMId(), s = goldlog.getMetaInfo("aplus-getspmcd");
                "function" == typeof s && s(n, t, r)
            }
        }

        var r = n(73), i = n(26), s = n(8), u = n(17), c = n(23), l = n(22), p = n(97), g = n(98);
        e.run = function (t) {
            t && t.isTouchEnabled ? r.on(document, "tap", a) : r.on(document, "mousedown", a)
        }
    }, function (t, e, n) {
        "use strict";

        function o() {
            for (var t = document.getElementsByTagName("iframe"), e = 0; e < t.length; e++) {
                var n = t[e], o = r.tryToGetAttribute(n, "data-spm-src");
                if (!n.src && o) {
                    var a = s.spm_getSPMParam(n);
                    if (a) {
                        var u = [a.a, a.b, a.c, a.d];
                        a.e && u.push(a.e), a = u.join("."), n.src = i.spm_updateHrefWithSPMId(o, a)
                    } else n.src = o
                }
            }
        }

        function a() {
            function t() {
                e++, e > 10 && (n = 3e3), o(), setTimeout(t, n)
            }

            var e = 0, n = 500;
            t()
        }

        var r = n(26), i = n(98), s = n(97);
        e.run = function (t) {
            t && !t.isTerminal && a()
        }
    }, function (t, e, n) {
        "use strict";

        function o(t, e) {
            for (var n, o = window; e && (n = e.tagName);) {
                if ("A" === n || "AREA" === n) {
                    r.spm_spmAnchorChk(e, !1);
                    var a = o.g_SPM || (o.g_SPM = {}), i = a._current_spm = r.spm_getSPMParam(e), s = [];
                    try {
                        s = [i.a, i.b, i.c, i.d];
                        var u = i.e || goldlog.pvid || "";
                        u && s.push(u)
                    } catch (t) {
                    }
                    break
                }
                if ("BODY" == n || "HTML" == n) break;
                e = e.parentNode
            }
        }

        var a = n(73), r = n(97);
        e.run = function (t) {
            var e = document;
            t && t.isTouchEnabled ? a.on(e, "tapSpm", o) : (a.on(e, "mousedown", o), a.on(e, "keydown", o))
        }
    }, function (t, e, n) {
        "use strict";

        function o(t, e) {
            if (e || (e = p), p.evaluate) return e.evaluate(t, p, null, 9, null).singleNodeValue;
            for (var n, a = t.split("/"); !n && a.length > 0;) n = a.shift();
            var r, i = /^.+?\[@id='(.+?)']$/i, s = /^(.+?)\[(\d+)]$/i;
            return (r = n.match(i)) ? e = e.getElementById(r[1]) : (r = n.match(s)) && (e = e.getElementsByTagName(r[1])[parseInt(r[2]) - 1]), e ? 0 === a.length ? e : o(a.join("/"), e) : null
        }

        function a() {
            var t = {};
            for (var e in l) if (l.hasOwnProperty(e)) {
                var n = o(e);
                if (n) {
                    t[e] = 1;
                    var a = l[e], r = "A" === n.tagName ? a.spmd : a.spmc;
                    s.tryToSetAttribute(n, "data-spm", r || "")
                }
            }
            for (var i in t) t.hasOwnProperty(i) && delete l[i]
        }

        function r() {
            if (!c && g.spmData) {
                c = !0;
                var t = g.spmData.data;
                if (t && i.isArray(t)) {
                    for (var e = 0; e < t.length; e++) {
                        var n = t[e], o = n.xpath;
                        o = o.replace(/^id\('(.+?)'\)(.*)/g, "//*[@id='$1']$2"), l[o] = {spmc: n.spmc, spmd: n.spmd}
                    }
                    a()
                }
            }
        }

        var i = n(8), s = n(26), u = n(73), c = !1, l = {}, p = document, g = window;
        e.wh_updateXPathElements = a, e.init_wh = r, e.run = function () {
            u.DOMReady(function () {
                r()
            })
        }
    }, function (t, e, n) {
        "use strict";
        var o = n(53), a = n(36), r = n(41), i = n(3), s = n(25), u = s.getInfo(), c = "complete";
        e.initGoldlog = function (t) {
            var e = window.goldlog || (window.goldlog = {}), n = i.goldlog_path.run.create();
            for (var s in n) e[s] = n[s];
            var l = /TB\-PD/i.test(navigator.userAgent), p = e._$ = e._$ || {};
            return p.meta_info = u, p.is_terminal = "aplus_wap" === i.script_name || l || "1" == u["aplus-terminal"], p.send_pv_count = 0, p.status = c, p.script_name = i.script_name, p.spm = {data: {}}, e.lver = i.lver, e.nameStorage = o.nameStorage, r.haveNativeFlagInUA(), a.doPubMsg(["goldlogReady", c]), a.doCachePubs(["goldlogReady", c]), t.init(), e
        }
    }]);
    /*! 2018-10-29 23:44:10 v8.7.2 */
    !function (t) {
        function e(n) {
            if (r[n]) return r[n].exports;
            var a = r[n] = {exports: {}, id: n, loaded: !1};
            return t[n].call(a.exports, a, a.exports, e), a.loaded = !0, a.exports
        }

        var r = {};
        return e.m = t, e.c = r, e.p = "", e(0)
    }([function (t, e) {
        "use strict";
        !function () {
            function t(t, e, r) {
                t[w]((b ? "on" : "") + e, function (t) {
                    t = t || m.event;
                    var e = t.target || t.srcElement;
                    r(t, e)
                }, !1)
            }

            function e() {
                return /&?\bspm=[^&#]*/.test(location.href) ? location.href.match(/&?\bspm=[^&#]*/gi)[0].split("=")[1] : ""
            }

            function r(t, e) {
                if (t && /&?\bspm=[^&#]*/.test(t) && (t = t.replace(/&?\bspm=[^&#]*/g, "").replace(/&{2,}/g, "&").replace(/\?&/, "?").replace(/\?$/, "")), !e) return t;
                var r, n, a, i, o, c, p, m = "&";
                if (t.indexOf("#") != -1 && (a = t.split("#"), t = a.shift(), n = a.join("#")), i = t.split("?"), o = i.length - 1, a = i[0].split("//"), a = a[a.length - 1].split("/"), c = a.length > 1 ? a.pop() : "", o > 0 && (r = i.pop(), t = i.join("?")), r && o > 1 && r.indexOf("&") == -1 && r.indexOf("%") != -1 && (m = "%26"), t = t + "?spm=" + e + (r ? m + r : "") + (n ? "#" + n : ""), p = c.indexOf(".") > -1 ? c.split(".").pop().toLowerCase() : "") {
                    if ({png: 1, jpg: 1, jpeg: 1, gif: 1, bmp: 1, swf: 1}.hasOwnProperty(p)) return 0;
                    !r && o <= 1 && (n || {htm: 1, html: 1, php: 1}.hasOwnProperty(p) || (t += "&file=" + c))
                }
                return t
            }

            function n(t) {
                function e(t) {
                    return t = t.replace(/refpos[=(%3D)]\w*/gi, c).replace(i, "%3D" + n + "%26" + a.replace("=", "%3D")).replace(o, n), a.length > 0 && (t += "&" + a), t
                }

                var r = window.location.href, n = r.match(/mm_\d{0,24}_\d{0,24}_\d{0,24}/i),
                    a = r.match(/[&\?](pvid=[^&]*)/i), i = new RegExp("%3Dmm_\\d+_\\d+_\\d+", "ig"),
                    o = new RegExp("mm_\\d+_\\d+_\\d+", "ig");
                a = a && a[1] ? a[1] : "";
                var c = r.match(/(refpos=(\d{0,24}_\d{0,24}_\d{0,24})?(,[a-z]+)?)(,[a-z]+)?/i);
                return c = c && c[0] ? c[0] : "", n ? (n = n[0], e(t)) : t
            }

            function a(e) {
                var r = m.KISSY;
                r ? r.ready(e) : m.jQuery ? jQuery(f).ready(e) : "complete" === f.readyState ? e() : t(m, "load", e)
            }

            function i(t, e) {
                return t && t.getAttribute ? t.getAttribute(e) || "" : ""
            }

            function o(t) {
                if (t) {
                    var e, r = h.length;
                    for (e = 0; e < r; e++) if (t.indexOf(h[e]) > -1) return !0;
                    return !1
                }
            }

            function c(t, e) {
                if (t && /&?\bspm=[^&#]*/.test(t) && (t = t.replace(/&?\bspm=[^&#]*/g, "").replace(/&{2,}/g, "&").replace(/\?&/, "?").replace(/\?$/, "")), !e) return t;
                var r, n, a, i, o, c, p, m = "&";
                if (t.indexOf("#") != -1 && (a = t.split("#"), t = a.shift(), n = a.join("#")), i = t.split("?"), o = i.length - 1, a = i[0].split("//"), a = a[a.length - 1].split("/"), c = a.length > 1 ? a.pop() : "", o > 0 && (r = i.pop(), t = i.join("?")), r && o > 1 && r.indexOf("&") == -1 && r.indexOf("%") != -1 && (m = "%26"), t = t + "?spm=" + e + (r ? m + r : "") + (n ? "#" + n : ""), p = c.indexOf(".") > -1 ? c.split(".").pop().toLowerCase() : "") {
                    if ({png: 1, jpg: 1, jpeg: 1, gif: 1, bmp: 1, swf: 1}.hasOwnProperty(p)) return 0;
                    !r && o <= 1 && (n || {
                        htm: 1,
                        html: 1,
                        shtml: 1,
                        php: 1
                    }.hasOwnProperty(p) || (t += "&__file=" + c))
                }
                return t
            }

            function p(t) {
                if (o(t.href)) {
                    var r = i(t, g);
                    if (!r) {
                        if (!d) return;
                        var n = d(t), a = [n.a, n.b, n.c, n.d].join(".");
                        n.e && (n += "." + n.e), u && (a = [n.a || "0", n.b || "0", n.c || "0", n.d || "0"].join("."), a = (e() || "0.0.0.0.0") + "_" + a), t.href = c(t.href, a), t.setAttribute(g, a)
                    }
                }
            }

            var m = window, f = document, s = m._alimm_spmact_on_;
            if ("undefined" == typeof s && (s = 1), 1 == s && (s = 1), 0 == s && (s = 0), s) {
                var l = function () {
                    return {a: 0, b: 0, c: 0, d: 0, e: 0}
                }, d = m.g_SPM && m.g_SPM.getParam ? m.g_SPM.getParam : l, u = !0;
                try {
                    u = self.location != top.location
                } catch (t) {
                }
                var g = "data-spm-act-id",
                    h = ["mclick.simba.taobao.com", "click.simba.taobao.com", "click.tanx.com", "click.mz.simba.taobao.com", "click.tz.simba.taobao.com", "redirect.simba.taobao.com", "rdstat.tanx.com", "stat.simba.taobao.com", "s.click.taobao.com"],
                    b = !!f.attachEvent, v = "attachEvent", _ = "addEventListener", w = b ? v : _;
                t(f, "mousedown", function (t, e) {
                    for (var r, n = 0; e && (r = e.tagName) && n < 5;) {
                        if ("A" == r || "AREA" == r) {
                            p(e);
                            break
                        }
                        if ("BODY" == r || "HTML" == r) break;
                        e = e.parentNode, n++
                    }
                }), a(function () {
                    for (var t, a, o = document.getElementsByTagName("iframe"), c = 0; c < o.length; c++) {
                        t = i(o[c], "mmsrc"), a = i(o[c], "mmworked");
                        var p = d(o[c]), m = [p.a || "0", p.b || "0", p.c || "0", p.d || "0", p.e || "0"].join(".");
                        t && !a ? (u && (m = [p.a || "0", p.b || "0", p.c || "0", p.d || "0"].join("."), m = e() + "_" + m), o[c].src = r(n(t), m), o[c].setAttribute("mmworked", "mmworked")) : o[c].setAttribute(g, m)
                    }
                })
            }
        }()
    }]);</script>
    <script charset="utf-8" src="${ctx}/statoc/js/saved_resource(1)" async=""></script>

    <meta name="spm-id" content="a2o71.12065822">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="shortcut icon" href="https://gw.alicdn.com/tfs/TB1fGH0fgMPMeJjy1XcXXXpppXa-16-16.ico"
          type="image/x-icon">
    <script src="./大麦双11-嗨享现场壕礼_files/index-pc.js.下载"></script>
    <link rel="stylesheet" href="${ctx}/static/css/index-pc.css">
    <title>大麦双11-嗨享现场壕礼</title>
    <link rel="stylesheet" href="${ctx}/static/js/saved_resource(2)">
    <script>window.g_config = window.g_config || {};
    window.g_config.loadedCss = window.g_config.loadedCss || [];
    window.g_config.loadedCss = ["mui/zebra-act-headbanner4/index-pc.css", "mui/zebra-dm-image-six/index-pc.css"];</script>
    <script src="./大麦双11-嗨享现场壕礼_files/index.js(1).下载" id="aplus-sufei"></script>
</head>

<body>
<script id="tb-beacon-aplus" src="./大麦双11-嗨享现场壕礼_files/aplus_v2.js.下载"
        exparams="category=&amp;userid=&amp;aplus&amp;yunid=&amp;eb8e833e6f8d5&amp;asid=AQAAAADxEdhbGn7yLAAAAAAQbjR5ZKRKjA=="></script>
<script>
    with (document) with (body) with (insertBefore(createElement("script"), firstChild)) setAttribute("exparams", "category=&userid=&aplus&yunid=&eb8e833e6f8d5&asid=AQAAAADxEdhbGn7yLAAAAAAQbjR5ZKRKjA==", id = "tb-beacon-aplus", src = (location > "https" ? "//g" : "//g") + ".alicdn.com/alilog/mlog/aplus_v2.js")
</script>

<!--页面头部 start-->
<div class="top-s">
    <div class="top-con">
        <ul class="fl">
            <li class="dm-info" id="headerUserinfo"><span class="dm-name">HI ,麦子0Z7Co</span><a class="dm-message"
                                                                                               title="退出"
                                                                                               href="https://www.damai.cn/redirect.aspx?spm=a2o6e.home.0.0.22ac3938kCTJ6R&amp;type=loginout"
                                                                                               data-spm-anchor-id="a2o6e.home.0.0">退出</a>
            </li>
            <li class="mydm">
                <div class="dm-t mydm-t">
                    <a target="_blank" href="https://my.damai.cn/">我的大麦</a><b></b></div>
                <div class="dm-c mydm-c">
                    <a title="个人信息" target="_blank" href="https://my.damai.cn/account/myinfo.aspx">个人信息</a>
                    <a title="订单管理" target="_blank" href="https://order.damai.cn/index.aspx">订单管理</a>
                    <!--<a title="我的钱包" target="_blank" href="//my.damai.cn/trade/ewallet/myEwallet.aspx">我的钱包</a>-->
                    <!--<a target="_blank" href="//my.damai.cn/account/mysubscribe">我的订阅</a>-->
                    <a title="我的优惠券" target="_blank" href="https://coupon.damai.cn/coupon-web-damai/mycoupon/myCoupon">我的优惠券</a>
                </div>
            </li>
            <li class="myorder">
                <div class="dm-t mydm-t">
                    <a target="_blank" href="https://order.damai.cn/index.aspx">我的订单</a>
                </div>
            </li>
        </ul>
    </div>
</div>

<div class="top-ad">
    <a href="https://p.damai.cn/wow/act/act/dms11?pos=1&amp;acm=201808136-1.1003.2.4427545&amp;scm=1003.2.201808136-1.OTHER_1538963724334_4427545&amp;utm=3OuydQ?spm=a2oeg.home.banner.ditem_0.591b48d3xAA4NX&amp;clicktitle=%E5%8F%8C11%E6%B4%BB%E5%8A%A8#"
       class="top-ad-close ad-close"></a>
    <div id="PAGE_AD_1"></div>
</div>

<!--页面头部 end-->


<style>#J_3408751708 .zebra-dm-image-six .head {
    border-bottom: 2px solid #24007c
}

#J_3408751708 .zebra-dm-image-six .head-arrow {
    background-color: #24007c
}</style>


<div class="mui-zebra-page" data-page-id="397006" data-page-group-id="150576"
     data-page-schema-version="8d287eae-b97a-493c-bfcc-881662793739">

    <div class="mui-zebra-module" id="J_2506628158" data-module-id="2506628158" data-rmc-id="2506628158"
         data-id="146915" data-name="zebra-act-headbanner4" data-version="4.4.9" data-cfg-id="undefined"
         data-spm="2506628158">


        <div class="zebra-act-headbanner4 act-module-header"
             data-spm-anchor-id="a2o71.12065822.2506628158.i0.11c21aebyckhuY">

            <style>.mui-zebra-page {
                background-color: #742868;
            }</style>


            <style>.zebra-act-headbanner4 {
                background: url(//img.alicdn.com/tps/i4/TB1fB5KiVzqK1RjSZFCSuvbxVXa.jpg) no-repeat top center;
            }</style>

            <div class="act-header-inner">


                <img src="${ctx}/static/image/TB1F2qpiYvpK1RjSZPiSuvmwXXa.jpg_1080x1800Q90s50.jpg" width="100%" alt="">


            </div>
        </div>

    </div>

    <div class="mui-zebra-module" id="J_3408751708" data-module-id="3408751708" data-rmc-id="3408751708"
         data-id="181032" data-name="zebra-dm-image-six" data-version="4.0.15" data-cfg-id="undefined"
         data-spm="3408751708">


        <div class="zebra-dm-image-six" data-mod-name="mui/zebra-dm-image-six/index-pc" data-config="{}"
             data-async-load="true">
            <div class="wrap">
                <div class="head">


                </div>
                <div class="line">

                    <a href="https://piao.damai.cn/157013.html" target="_blank" data-spm="dcarditem_0" title="灰姑娘"
                       class="box ">
                        <div class="box-head">
                            <img src="${ctx}/static/image/157013_n.jpg" class="box-head-img">
                            <div class="box-head-line">
                                <span class="box-head-tag">北京</span>

                            </div>
                        </div>
                        <div class="box-bottom">
                            <div class="box-bottom-title">2018年第七届中关村金秋演出季 百老汇音乐剧《灰姑娘》中文版</div>
                            <div class="box-bottom-date">2018.10.26-11.18</div>
                            <div class="box-bottom-money">
                                <span class="box-bottom-money-tip">￥</span>
                                <span class="box-bottom-money-num">126-960</span>
                            </div>
                        </div>
                    </a>

                    <a href="https://piao.damai.cn/160852.html" target="_blank" data-spm="dcarditem_1" title="音乐之声"
                       class="box ">
                        <div class="box-head">
                            <img src="${ctx}/static/image/160852_n.jpg" class="box-head-img">
                            <div class="box-head-line">
                                <span class="box-head-tag">北京</span>

                            </div>
                        </div>
                        <div class="box-bottom">
                            <div class="box-bottom-title">百老汇音乐剧《音乐之声》中文版</div>
                            <div class="box-bottom-date">2018.11.23-12.16</div>
                            <div class="box-bottom-money">
                                <span class="box-bottom-money-tip">￥</span>
                                <span class="box-bottom-money-num">180-880</span>
                            </div>
                        </div>
                    </a>

                    <a href="https://piao.damai.cn/159601.html" target="_blank" data-spm="dcarditem_2" title="大河之舞"
                       class="box ">
                        <div class="box-head">
                            <img src="${ctx}/static/image/159601_n.jpg" class="box-head-img">
                            <div class="box-head-line">
                                <span class="box-head-tag">北京</span>

                            </div>
                        </div>
                        <div class="box-bottom">
                            <div class="box-bottom-title">大河之舞Ⅱ《舞起狂澜》2018中国巡演北京站</div>
                            <div class="box-bottom-date">2019.01.02-01.06</div>
                            <div class="box-bottom-money">
                                <span class="box-bottom-money-tip">￥</span>
                                <span class="box-bottom-money-num">280-1988</span>
                            </div>
                        </div>
                    </a>

                    <a href="https://piao.damai.cn/159170.html" target="_blank" data-spm="dcarditem_3" title="乱世佳人"
                       class="box ">
                        <div class="box-head">
                            <img src="${ctx}/static/image/159170_n.jpg" class="box-head-img">
                            <div class="box-head-line">
                                <span class="box-head-tag">北京</span>

                            </div>
                        </div>
                        <div class="box-bottom">
                            <div class="box-bottom-title">女性第一励志大戏-英文版音乐剧《乱世佳人》</div>
                            <div class="box-bottom-date">2018.11.30-12.09</div>
                            <div class="box-bottom-money">
                                <span class="box-bottom-money-tip">￥</span>
                                <span class="box-bottom-money-num">180-1799</span>
                            </div>
                        </div>
                    </a>

                    <a href="https://piao.damai.cn/152109.html" target="_blank" data-spm="dcarditem_4" title="芝加哥"
                       class="box ">
                        <div class="box-head">
                            <img src="${ctx}/static/image/152109_n.jpg" class="box-head-img">
                            <div class="box-head-line">
                                <span class="box-head-tag">北京</span>


                                <span class="box-head-tag3">百老汇经典</span>


                            </div>
                        </div>
                        <div class="box-bottom">
                            <div class="box-bottom-title">英文原版音乐剧《芝加哥》</div>
                            <div class="box-bottom-date">2018.11.01-11.18</div>
                            <div class="box-bottom-money">
                                <span class="box-bottom-money-tip">￥</span>
                                <span class="box-bottom-money-num">100-2242</span>
                            </div>
                        </div>
                    </a>

                    <a href="https://piao.damai.cn/156474.html" target="_blank" data-spm="dcarditem_5"
                       title="Mamma Mia! 妈妈咪呀！" class="box noMarginRight">
                        <div class="box-head">
                            <img src="${ctx}/static/image/156474_n.jpg" class="box-head-img">
                            <div class="box-head-line">
                                <span class="box-head-tag">北京</span>

                            </div>
                        </div>
                        <div class="box-bottom">
                            <div class="box-bottom-title">世界经典音乐剧《妈妈咪呀!》中文版北京站</div>
                            <div class="box-bottom-date">2018.12.14-12.23</div>
                            <div class="box-bottom-money">
                                <span class="box-bottom-money-tip">￥</span>
                                <span class="box-bottom-money-num">100-780</span>
                            </div>
                        </div>
                    </a>

                    <a href="https://piao.damai.cn/160027.html" target="_blank" data-spm="dcarditem_6"
                       title="汪峰[就这样]济南演唱会" class="box ">
                        <div class="box-head">
                            <img src="${ctx}/static/image/160027_n.jpg" class="box-head-img">
                            <div class="box-head-line">
                                <span class="box-head-tag">济南</span>

                            </div>
                        </div>
                        <div class="box-bottom">
                            <div class="box-bottom-title">汪峰2018“就这样”巡回演唱会——济南站</div>
                            <div class="box-bottom-date">2018.11.17 19:30</div>
                            <div class="box-bottom-money">
                                <span class="box-bottom-money-tip">￥</span>
                                <span class="box-bottom-money-num">380-1999</span>
                            </div>
                        </div>
                    </a>

                    <a href="https://piao.damai.cn/152275.html" target="_blank" data-spm="dcarditem_7" title="舞林密码"
                       class="box ">
                        <div class="box-head">
                            <img src="${ctx}/static/image/152275_n.jpg" class="box-head-img">
                            <div class="box-head-line">
                                <span class="box-head-tag">广州</span>

                            </div>
                        </div>
                        <div class="box-bottom">
                            <div class="box-bottom-title">郭富城“舞林密码”世界巡回演唱会2018—广州站</div>
                            <div class="box-bottom-date">2018.11.24 19:00</div>
                            <div class="box-bottom-money">
                                <span class="box-bottom-money-tip">￥</span>
                                <span class="box-bottom-money-num">380-2500</span>
                            </div>
                        </div>
                    </a>

                    <a href="https://piao.damai.cn/149183.html" target="_blank" data-spm="dcarditem_8" title="张韶涵演唱会"
                       class="box ">
                        <div class="box-head">
                            <img src="${ctx}/static/image/149183_n.jpg" class="box-head-img">
                            <div class="box-head-line">
                                <span class="box-head-tag">深圳</span>


                                <span class="box-head-tag2">歌手2018</span>


                            </div>
                        </div>
                        <div class="box-bottom">
                            <div class="box-bottom-title">2018张韶涵 旅程 世界巡回演唱会--深圳站</div>
                            <div class="box-bottom-date">2018.11.03 19:30</div>
                            <div class="box-bottom-money">
                                <span class="box-bottom-money-tip">￥</span>
                                <span class="box-bottom-money-num">390-1390</span>
                            </div>
                        </div>
                    </a>

                    <a href="https://piao.damai.cn/161665.html" target="_blank" data-spm="dcarditem_9" title="方大同"
                       class="box ">
                        <div class="box-head">
                            <img src="${ctx}/static/image/161665_n.jpg" class="box-head-img">
                            <div class="box-head-line">
                                <span class="box-head-tag">深圳</span>

                            </div>
                        </div>
                        <div class="box-bottom">
                            <div class="box-bottom-title">方大同 TIO 灵心之子巡回演唱会-深圳站</div>
                            <div class="box-bottom-date">2018.11.03</div>
                            <div class="box-bottom-money">
                                <span class="box-bottom-money-tip">￥</span>
                                <span class="box-bottom-money-num">380-1500</span>
                            </div>
                        </div>
                    </a>

                    <a href="https://piao.damai.cn/162403.html" target="_blank" data-spm="dcarditem_10" title="鹿晗"
                       class="box ">
                        <div class="box-head">
                            <img src="${ctx}/static/image/162403_n.jpg" class="box-head-img">
                            <div class="box-head-line">
                                <span class="box-head-tag">深圳</span>

                            </div>
                        </div>
                        <div class="box-bottom">
                            <div class="box-bottom-title">鹿晗2018“RE: X”巡回演唱会 深圳站</div>
                            <div class="box-bottom-date">2018.11.09</div>
                            <div class="box-bottom-money">
                                <span class="box-bottom-money-tip">￥</span>
                                <span class="box-bottom-money-num">377-1990</span>
                            </div>
                        </div>
                    </a>

                    <a href="https://piao.damai.cn/165160.html" target="_blank" data-spm="dcarditem_11" title="王力宏广州演唱会"
                       class="box noMarginRight">
                        <div class="box-head">
                            <img src="${ctx}/static/image/165160_n.jpg" class="box-head-img">
                            <div class="box-head-line">
                                <span class="box-head-tag">广州</span>

                            </div>
                        </div>
                        <div class="box-bottom">
                            <div class="box-bottom-title">王力宏龙的传人2060世界巡回演唱会-广州站</div>
                            <div class="box-bottom-date">2019.01.12 19:30</div>
                            <div class="box-bottom-money">
                                <span class="box-bottom-money-tip">￥</span>
                                <span class="box-bottom-money-num">380-1280</span>
                            </div>
                        </div>
                    </a>

                    <a href="https://piao.damai.cn/156849.html" target="_blank" data-spm="dcarditem_12" title="IM A-LIN"
                       class="box ">
                        <div class="box-head">
                            <img src="${ctx}/static/image/156849_n.jpg" class="box-head-img">
                            <div class="box-head-line">
                                <span class="box-head-tag">广州</span>

                            </div>
                        </div>
                        <div class="box-bottom">
                            <div class="box-bottom-title">I＇M A-LIN 巡回演唱会广州站</div>
                            <div class="box-bottom-date">2018.11.24 19:30</div>
                            <div class="box-bottom-money">
                                <span class="box-bottom-money-tip">￥</span>
                                <span class="box-bottom-money-num">288-1679</span>
                            </div>
                        </div>
                    </a>

                    <a href="https://piao.damai.cn/164200.html" target="_blank" data-spm="dcarditem_13"
                       title="STANDING EGG " class="box ">
                        <div class="box-head">
                            <img src="${ctx}/static/image/164200_n.jpg" class="box-head-img">
                            <div class="box-head-line">
                                <span class="box-head-tag">香港</span>

                            </div>
                        </div>
                        <div class="box-bottom">
                            <div class="box-bottom-title">STANDING EGG DRAMATIC TOUR 2018 IN HONG KONG</div>
                            <div class="box-bottom-date">2018.11.17 19:00</div>
                            <div class="box-bottom-money">
                                <span class="box-bottom-money-tip">￥</span>
                                <span class="box-bottom-money-num">600-660</span>
                            </div>
                        </div>
                    </a>

                    <a href="https://piao.damai.cn/151632.html" target="_blank" data-spm="dcarditem_14" title="不眠之夜"
                       class="box ">
                        <div class="box-head">
                            <img src="${ctx}/static/image/151632_n.jpg" class="box-head-img">
                            <div class="box-head-line">
                                <span class="box-head-tag">上海</span>


                                <span class="box-head-tag3">必看好戏</span>


                            </div>
                        </div>
                        <div class="box-bottom">
                            <div class="box-bottom-title">不眠之夜Sleep No More</div>
                            <div class="box-bottom-date">常年</div>
                            <div class="box-bottom-money">
                                <span class="box-bottom-money-tip">￥</span>
                                <span class="box-bottom-money-num">580-740</span>
                            </div>
                        </div>
                    </a>

                    <a href="https://piao.damai.cn/154111.html" target="_blank" data-spm="dcarditem_15" title="老宅"
                       class="box ">
                        <div class="box-head">
                            <img src="${ctx}/static/image/154111_n.jpg" class="box-head-img">
                            <div class="box-head-line">
                                <span class="box-head-tag">深圳</span>

                            </div>
                        </div>
                        <div class="box-bottom">
                            <div class="box-bottom-title">陈佩斯舞台喜剧系列--《老宅》</div>
                            <div class="box-bottom-date">2018.11.28-11.29</div>
                            <div class="box-bottom-money">
                                <span class="box-bottom-money-tip">￥</span>
                                <span class="box-bottom-money-num">144-680</span>
                            </div>
                        </div>
                    </a>

                    <a href="https://piao.damai.cn/161438.html" target="_blank" data-spm="dcarditem_16" title="舞起狂澜"
                       class="box ">
                        <div class="box-head">
                            <img src="${ctx}/static/image/161438_n.jpg" class="box-head-img">
                            <div class="box-head-line">
                                <span class="box-head-tag">常州</span>

                            </div>
                        </div>
                        <div class="box-bottom">
                            <div class="box-bottom-title">大河之舞II《舞起狂澜》</div>
                            <div class="box-bottom-date">2018.11.13-11.14 19:30</div>
                            <div class="box-bottom-money">
                                <span class="box-bottom-money-tip">￥</span>
                                <span class="box-bottom-money-num">180-1080</span>
                            </div>
                        </div>
                    </a>

                    <a href="https://detail.damai.cn/item.htm?id=575542622138" target="_blank" data-spm="dcarditem_17"
                       title="" class="box noMarginRight">
                        <div class="box-head">
                            <img src="${ctx}/static/image/TB2nLdRorZnBKNjSZFGXXbt3FXa_!!2251059038-0-item_pic.jpg"
                                 class="box-head-img">
                            <div class="box-head-line">
                                <span class="box-head-tag">上海</span>

                            </div>
                        </div>
                        <div class="box-bottom">
                            <div class="box-bottom-title">西班牙塞维利亚弗拉门戈舞剧《卡门》-上海</div>
                            <div class="box-bottom-date">2018.12.24-12.25</div>
                            <div class="box-bottom-money">
                                <span class="box-bottom-money-tip">￥</span>
                                <span class="box-bottom-money-num">180-880</span>
                            </div>
                        </div>
                    </a>

                    <a href="https://piao.damai.cn/158413.html" target="_blank" data-spm="dcarditem_18"
                       title="大河之舞 舞起狂澜" class="box ">
                        <div class="box-head">
                            <img src="${ctx}/static/image/158413_n.jpg" class="box-head-img">
                            <div class="box-head-line">
                                <span class="box-head-tag">天津</span>

                            </div>
                        </div>
                        <div class="box-bottom">
                            <div class="box-bottom-title">大河之舞Ⅱ《舞起狂澜》2018中国巡演天津站</div>
                            <div class="box-bottom-date">2018.11.23-11.25</div>
                            <div class="box-bottom-money">
                                <span class="box-bottom-money-tip">￥</span>
                                <span class="box-bottom-money-num">280-1080</span>
                            </div>
                        </div>
                    </a>

                    <a href="https://piao.damai.cn/160088.html" target="_blank" data-spm="dcarditem_19" title="大河之舞"
                       class="box ">
                        <div class="box-head">
                            <img src="${ctx}/static/image/160088_n.jpg" class="box-head-img">
                            <div class="box-head-line">
                                <span class="box-head-tag">西安</span>

                            </div>
                        </div>
                        <div class="box-bottom">
                            <div class="box-bottom-title">大河之舞Ⅱ《舞起狂澜》2018中国巡演西安站</div>
                            <div class="box-bottom-date">2018.12.25-12.27</div>
                            <div class="box-bottom-money">
                                <span class="box-bottom-money-tip">￥</span>
                                <span class="box-bottom-money-num">180-1280</span>
                            </div>
                        </div>
                    </a>

                    <a href="https://piao.damai.cn/163780.html" target="_blank" data-spm="dcarditem_20" title="苗阜王声"
                       class="box ">
                        <div class="box-head">
                            <img src="${ctx}/static/image/163780_n.jpg" class="box-head-img">
                            <div class="box-head-line">
                                <span class="box-head-tag">苏州</span>

                            </div>
                        </div>
                        <div class="box-bottom">
                            <div class="box-bottom-title">MaiLive 一哏一笑 2018青曲社苗阜王声相声全球巡演苏州相声专场</div>
                            <div class="box-bottom-date">2018.12.01 19:30</div>
                            <div class="box-bottom-money">
                                <span class="box-bottom-money-tip">￥</span>
                                <span class="box-bottom-money-num">100-1000</span>
                            </div>
                        </div>
                    </a>

                    <a href="https://piao.damai.cn/160693.html" target="_blank" data-spm="dcarditem_21" title="惊天魔盗团"
                       class="box ">
                        <div class="box-head">
                            <img src="${ctx}/static/image/160693_n.jpg" class="box-head-img">
                            <div class="box-head-line">
                                <span class="box-head-tag">深圳</span>

                            </div>
                        </div>
                        <div class="box-bottom">
                            <div class="box-bottom-title">惊天魔盗团（Now You See Me）Live 世界巡演深圳站</div>
                            <div class="box-bottom-date">2018.11.24</div>
                            <div class="box-bottom-money">
                                <span class="box-bottom-money-tip">￥</span>
                                <span class="box-bottom-money-num">280-1380</span>
                            </div>
                        </div>
                    </a>

                    <a href="https://piao.damai.cn/160359.html" target="_blank" data-spm="dcarditem_22" title="冰上迪士尼深圳站"
                       class="box ">
                        <div class="box-head">
                            <img src="${ctx}/static/image/160359_n.jpg" class="box-head-img">
                            <div class="box-head-line">
                                <span class="box-head-tag">深圳</span>


                                <span class="box-head-tag3">儿童亲子</span>


                            </div>
                        </div>
                        <div class="box-bottom">
                            <div class="box-bottom-title">冰上迪士尼2018巡演深圳站</div>
                            <div class="box-bottom-date">2018.12.01</div>
                            <div class="box-bottom-money">
                                <span class="box-bottom-money-tip">￥</span>
                                <span class="box-bottom-money-num">180-980</span>
                            </div>
                        </div>
                    </a>

                    <a href="https://piao.damai.cn/158638.html" target="_blank" data-spm="dcarditem_23" title="戏台"
                       class="box noMarginRight">
                        <div class="box-head">
                            <img src="${ctx}/static/image/158638_n.jpg" class="box-head-img">
                            <div class="box-head-line">
                                <span class="box-head-tag">西安</span>

                            </div>
                        </div>
                        <div class="box-bottom">
                            <div class="box-bottom-title">陈佩斯 杨立新主演年代大戏《戏台》</div>
                            <div class="box-bottom-date">2018.12.31-2019.01.02</div>
                            <div class="box-bottom-money">
                                <span class="box-bottom-money-tip">￥</span>
                                <span class="box-bottom-money-num">120-1080</span>
                            </div>
                        </div>
                    </a>

                    <a href="https://piao.damai.cn/158332.html" target="_blank" data-spm="dcarditem_24" title="新月饭店"
                       class="box ">
                        <div class="box-head">
                            <img src="${ctx}/static/image/158332_n.jpg" class="box-head-img">
                            <div class="box-head-line">
                                <span class="box-head-tag">上海</span>

                            </div>
                        </div>
                        <div class="box-bottom">
                            <div class="box-bottom-title">MaiLive多媒体3D舞台剧盗墓笔记番外篇《新月饭店》上海站</div>
                            <div class="box-bottom-date">2018.11.01-11.04</div>
                            <div class="box-bottom-money">
                                <span class="box-bottom-money-tip">￥</span>
                                <span class="box-bottom-money-num">80-680</span>
                            </div>
                        </div>
                    </a>

                    <a href="https://piao.damai.cn/163870.html" target="_blank" data-spm="dcarditem_25" title="牢友记"
                       class="box ">
                        <div class="box-head">
                            <img src="${ctx}/static/image/163870_n.jpg" class="box-head-img">
                            <div class="box-head-line">
                                <span class="box-head-tag">上海</span>

                            </div>
                        </div>
                        <div class="box-bottom">
                            <div class="box-bottom-title">开心麻花爆笑贺岁演出《牢友记》</div>
                            <div class="box-bottom-date">2018.11.20-12.09</div>
                            <div class="box-bottom-money">
                                <span class="box-bottom-money-tip">￥</span>
                                <span class="box-bottom-money-num">50-1180</span>
                            </div>
                        </div>
                    </a>

                    <a href="https://piao.damai.cn/163869.html" target="_blank" data-spm="dcarditem_26" title="莎士比亚别生气"
                       class="box ">
                        <div class="box-head">
                            <img src="${ctx}/static/image/163869_n.jpg" class="box-head-img">
                            <div class="box-head-line">
                                <span class="box-head-tag">重庆</span>

                            </div>
                        </div>
                        <div class="box-bottom">
                            <div class="box-bottom-title">开心麻花爆笑舞台剧《莎士比亚别生气》第2轮</div>
                            <div class="box-bottom-date">2018.11.30-12.02</div>
                            <div class="box-bottom-money">
                                <span class="box-bottom-money-tip">￥</span>
                                <span class="box-bottom-money-num">100-980</span>
                            </div>
                        </div>
                    </a>

                    <a href="https://piao.damai.cn/149147.html" target="_blank" data-spm="dcarditem_27" title="死亡陷阱"
                       class="box ">
                        <div class="box-head">
                            <img src="${ctx}/static/image/149147_n.jpg" class="box-head-img">
                            <div class="box-head-line">
                                <span class="box-head-tag">西安</span>

                            </div>
                        </div>
                        <div class="box-bottom">
                            <div class="box-bottom-title">上海话剧艺术中心—百老汇悬疑惊悚喜剧《死亡陷阱》</div>
                            <div class="box-bottom-date">2018.11.16-17</div>
                            <div class="box-bottom-money">
                                <span class="box-bottom-money-tip">￥</span>
                                <span class="box-bottom-money-num">180-1000</span>
                            </div>
                        </div>
                    </a>

                    <a href="https://detail.damai.cn/item.htm?id=577591391162" target="_blank" data-spm="dcarditem_28"
                       title="" class="box ">
                        <div class="box-head">
                            <img src="${ctx}/static/image/TB2aEuwXVzqK1RjSZFvXXcB7VXa_!!2251059038-0-item_pic.jpg"
                                 class="box-head-img">
                            <div class="box-head-line">
                                <span class="box-head-tag">西安</span>

                            </div>
                        </div>
                        <div class="box-bottom">
                            <div class="box-bottom-title">2018开心麻花爆笑舞台剧《李茶的姑妈》-西安</div>
                            <div class="box-bottom-date">2018.12.28-12.30</div>
                            <div class="box-bottom-money">
                                <span class="box-bottom-money-tip">￥</span>
                                <span class="box-bottom-money-num">100-880</span>
                            </div>
                        </div>
                    </a>

                    <a href="https://piao.damai.cn/163334.html" target="_blank" data-spm="dcarditem_29" title="李茶的姑妈"
                       class="box noMarginRight">
                        <div class="box-head">
                            <img src="${ctx}/static/image/163334_n.jpg" class="box-head-img">
                            <div class="box-head-line">
                                <span class="box-head-tag">上海</span>

                            </div>
                        </div>
                        <div class="box-bottom">
                            <div class="box-bottom-title">开心麻花爆笑舞台剧《李茶的姑妈》</div>
                            <div class="box-bottom-date">2018.11.28-12.23</div>
                            <div class="box-bottom-money">
                                <span class="box-bottom-money-tip">￥</span>
                                <span class="box-bottom-money-num">80-1770</span>
                            </div>
                        </div>
                    </a>

                </div>
            </div>

            <!--多商品滑动模块-->

            <script type="text/html" class="list_tpl">
                {{#each(list)}}
                <a href="{{link}}" target="_blank" data-spm="dcarditem_{{xindex}}" title="{{subTitle}}"
                   class="box {{#if((xindex+1)%6===0)}}noMarginRight{{/if}}">
                    <div class="box-head">
                        <img src="{{img}}" class="box-head-img"/>
                        <div class="box-head-line">
                            <span class="box-head-tag">{{cityName}}</span>
                            {{#if(labelinfo)}}
                            {{#if(labelinfo.labelClass==='MARKET_CLASS')}}
                            <span class="box-head-tag2">{{labelinfo.labelName}}</span>
                            {{else}}
                            <span class="box-head-tag3">{{labelinfo.labelName}}</span>
                            {{/if}}
                            {{/if}}
                        </div>
                    </div>
                    <div class="box-bottom">
                        <div class="box-bottom-title">{{name}}</div>
                        <div class="box-bottom-date">{{showTime}}</div>
                        <div class="box-bottom-money">
                            <span class="box-bottom-money-tip">￥</span>
                            <span class="box-bottom-money-num">{{formattedPriceStr}}</span>
                        </div>
                    </div>
                </a>
                {{/each}}
            </script>

            <textarea style="display: none" class="J_card_data">  		[{"id":"157013"},{"id":"160852"},{"id":"159601"},{"id":"159170"},{"id":"152109"},{"id":"156474"},{"id":"160027"},{"id":"152275"},{"id":"149183"},{"id":"161665"},{"id":"162403"},{"id":"165160"},{"id":"156849"},{"id":"164200"},{"id":"151632"},{"id":"154111"},{"id":"161438"},{"id":"575542622138"},{"id":"158413"},{"id":"160088"},{"id":"163780"},{"id":"160693"},{"id":"160359"},{"id":"158638"},{"id":"158332"},{"id":"163870"},{"id":"163869"},{"id":"149147"},{"id":"577591391162"},{"id":"163334"}]
	</textarea>
        </div>
    </div>
</div>


<!--页面底部 start-->
<div class="dm-bottom-wrap">
    <div class="dm-bottom">

        <div class="dm-links">
            <a href="https://help.damai.cn/damai/contents/1896/5617.html" target="_blank">公司介绍</a>
            |
            <a href="https://help.damai.cn/damai/contents/1896/5638.html" target="_blank">品牌识别</a>
            |
            <a href="https://help.damai.cn/helpPage.htm?pageId=14" target="_blank">企业荣誉</a>
            |
            <a href="https://help.damai.cn/damai/contents/1896/5627.html" target="_blank">隐私声明</a>
            |
            <a href="https://help.damai.cn/damai/contents/1872/5674.html" target="_blank">联系及合作</a>
            |
            <a href="https://help.damai.cn/contents/1896/5629.html" target="_blank">招聘信息</a>
            |
            <a href="https://help.damai.cn/damai/contents/1896/13733.html" target="_blank">公司大事记</a>
        </div>
        <div class="dm-copyright">
            <p>
                <a href="http://www.miitbeian.gov.cn/" target="_blank">京ICP证031057号</a>
                <span>|</span>
                <a href="http://www.miitbeian.gov.cn/" target="_blank">京ICP备11043884号</a>
                <span>|</span>
                <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010102000430" target="_blank">
                    <img src="${ctx}/static/image/police.png" class="vm">京公网安备11010102000430号
                </a>
                <span>|</span>
                <a href="https://dui.dmcdn.cn/dm_2014/common/img/logo/gbdsjm.jpg" target="_blank">广播电视节目制作经营许可证
                    (京)字第02253号</a>
            </p>
            <p>
                <a href="https://dui.dmcdn.cn/dm_2014/common/img/logo/wlwhjy.jpg?v2016" target="_blank">网络文化经营许可证
                    京网文[2016]3438-413号</a>
                <span>|</span>
                <a href="https://dui.dmcdn.cn/dm_2014/common/img/logo/yyxyc.jpg" target="_blank">营业性演出许可证 京市演587号</a>
            </p>
            <p>
                北京红马传媒文化发展有限公司 版权所有
                <a href="https://www.damai.cn/">大麦网</a> Copyright 2003-2017 All Rights Reserved
            </p>
        </div>
        <div class="dm-copyright">
            <a rel="nofollow" title="中国票务在线" target="_blank" href="https://www.damai.cn/">
                <img class="mr10" alt="" src="${ctx}/static/image/piao.png">
            </a>
            <a rel="nofollow" title="电子营业执照" target="_blank"
               href="https://dui.dmcdn.cn/dm_2014/common/img/logo/dzyyzz.jpg">
                <img class="mr10" alt="" src="${ctx}/static/image/dzyy.png">
            </a>
            <span id="siteseal">
				<img style="cursor:pointer;cursor:hand" src="${ctx}/static/image/siteseal_gd_3_h_l_m.gif"
                     onclick="verifySeal();" alt="SSL site seal - click to verify">
			</span>
            <a rel="nofollow" target="_blank" href="https://www.pcisecuritystandards.org/">
                <img src="${ctx}/static/image/pci.png" class="mr10">
            </a>
            <a rel="nofollow" target="_blank" href="http://www.itrust.org.cn/home/index/itrust_certifi/wm/1756737221">
                <img src="${ctx}/static/image/xin.png" class="mr10">
            </a>
            <a target="_blank" href="https://search.szfw.org/cert/l/CX20130327002367002885" id="___szfw_logo___">
                <img src="${ctx}/static/image/chengxin.png">
            </a>
        </div>
    </div>
</div>
<!--页面底部 end-->
<script>window.g_config = window.g_config || {};
window.g_config.seed = window.g_config.seed || {
    "packages": {
        "kissy": {
            "base": "//g.alicdn.com/kissy/k/1.4.16/",
            "version": "1.4.16"
        },
        "mui/babel-polyfill": {
            "debug": true,
            "group": "tm",
            "ignorePackageNameInUri": true,
            "path": "//g.alicdn.com/mui/babel-polyfill/6.2.6/",
            "version": "6.2.6"
        },
        "mui/countdown": {
            "debug": true,
            "group": "tm",
            "ignorePackageNameInUri": true,
            "path": "//g.alicdn.com/mui/countdown/4.0.3/",
            "version": "4.0.3"
        },
        "mui/crossimage": {
            "debug": true,
            "group": "tm",
            "ignorePackageNameInUri": true,
            "path": "//g.alicdn.com/mui/crossimage/4.1.30/",
            "version": "4.1.30"
        },
        "mui/fetch": {
            "debug": true,
            "group": "tm",
            "ignorePackageNameInUri": true,
            "path": "//g.alicdn.com/mui/fetch/4.1.12/",
            "version": "4.1.12"
        },
        "mui/i18n": {
            "debug": true,
            "group": "tm",
            "ignorePackageNameInUri": true,
            "path": "//g.alicdn.com/mui/i18n/4.0.4/",
            "version": "4.0.4"
        },
        "mui/jquery": {
            "version": "4.0.1",
            "path": "//g.alicdn.com/mui/jquery/4.0.1/",
            "group": "tm",
            "ignorePackageNameInUri": true,
            "debug": true,
            "name": "mui/jquery",
            "base": "//g.alicdn.com/mui/jquery/4.0.1/"
        },
        "mui/kissy-polyfill": {
            "debug": true,
            "group": "tm",
            "ignorePackageNameInUri": true,
            "path": "//g.alicdn.com/mui/kissy-polyfill/4.0.16/",
            "version": "4.0.16"
        },
        "mui/mtb-login": {
            "debug": true,
            "group": "tm",
            "ignorePackageNameInUri": true,
            "path": "//g.alicdn.com/mui/mtb-login/4.0.1/",
            "version": "4.0.1"
        },
        "mui/mtb-windvane": {
            "debug": true,
            "group": "tm",
            "ignorePackageNameInUri": true,
            "path": "//g.alicdn.com/mui/mtb-windvane/4.0.3/",
            "version": "4.0.3"
        },
        "mui/mtop": {
            "debug": true,
            "group": "tm",
            "ignorePackageNameInUri": true,
            "path": "//g.alicdn.com/mui/mtop/4.1.9/",
            "version": "4.1.9"
        },
        "mui/vuejs": {
            "debug": true,
            "group": "tm-weex-vue",
            "ignorePackageNameInUri": true,
            "path": "//g.alicdn.com/mui/vuejs/4.4.10/",
            "version": "4.4.10"
        },
        "mui/weex-component-link": {
            "debug": true,
            "group": "tm",
            "ignorePackageNameInUri": true,
            "isVue": true,
            "path": "//g.alicdn.com/mui/weex-component-link/4.1.1/",
            "version": "4.1.1",
            "weex": true
        },
        "mui/weex-vue-patch": {
            "debug": true,
            "group": "tm",
            "ignorePackageNameInUri": true,
            "path": "//g.alicdn.com/mui/weex-vue-patch/4.1.8/",
            "version": "4.1.8",
            "weex": true
        },
        "mui/weex-zebra-utils": {
            "debug": true,
            "group": "tm",
            "ignorePackageNameInUri": true,
            "path": "//g.alicdn.com/mui/weex-zebra-utils/4.1.19/",
            "version": "4.1.19",
            "weex": true
        },
        "mui/xtemplate": {
            "debug": true,
            "group": "tm",
            "ignorePackageNameInUri": true,
            "path": "//g.alicdn.com/mui/xtemplate/4.0.11/",
            "version": "4.0.11"
        },
        "mui/zebra-act-headbanner4": {
            "debug": true,
            "group": "tm",
            "ignorePackageNameInUri": true,
            "isVue": true,
            "path": "//g.alicdn.com/mui/zebra-act-headbanner4/4.4.9/",
            "version": "4.4.9",
            "weex": true,
            "name": "mui/zebra-act-headbanner4",
            "base": "//g.alicdn.com/mui/zebra-act-headbanner4/4.4.9/"
        },
        "mui/zebra-fans-card": {
            "debug": true,
            "group": "tm",
            "ignorePackageNameInUri": true,
            "path": "//g.alicdn.com/mui/zebra-fans-card/4.0.16/",
            "version": "4.0.16"
        },
        "mui/zepto": {
            "debug": true,
            "group": "tm",
            "ignorePackageNameInUri": true,
            "path": "//g.alicdn.com/mui/zepto/4.0.9/",
            "version": "4.0.9"
        },
        "mui/zebra-dm-image-six": {
            "debug": true,
            "group": "tm",
            "ignorePackageNameInUri": true,
            "path": "//g.alicdn.com/mui/zebra-dm-image-six/4.0.15/",
            "version": "4.0.15",
            "name": "mui/zebra-dm-image-six",
            "base": "//g.alicdn.com/mui/zebra-dm-image-six/4.0.15/"
        },
        "mui/cookie": {
            "debug": true,
            "group": "tm",
            "ignorePackageNameInUri": true,
            "path": "//g.alicdn.com/mui/cookie/4.1.0/",
            "version": "4.1.0"
        },
        "mui/feloader": {
            "debug": true,
            "group": "tm",
            "ignorePackageNameInUri": true,
            "path": "//g.alicdn.com/mui/feloader/4.1.20/",
            "version": "4.1.20",
            "name": "mui/feloader",
            "base": "//g.alicdn.com/mui/feloader/4.1.20/"
        },
        "mui/location": {
            "debug": true,
            "group": "tm",
            "ignorePackageNameInUri": true,
            "path": "//g.alicdn.com/mui/location/4.1.0/",
            "version": "4.1.0"
        },
        "mui/zebra-loader": {
            "debug": true,
            "group": "tm",
            "ignorePackageNameInUri": true,
            "path": "//g.alicdn.com/mui/zebra-loader/4.4.15/",
            "version": "4.4.15",
            "name": "mui/zebra-loader",
            "base": "//g.alicdn.com/mui/zebra-loader/4.4.15/"
        },
        "zebra-solution/damai-activity": {
            "debug": true,
            "group": "tm",
            "ignorePackageNameInUri": true,
            "path": "//g.alicdn.com/zebra-solution/damai-activity/4.0.139/",
            "version": "4.0.139",
            "name": "zebra-solution/damai-activity",
            "base": "//g.alicdn.com/zebra-solution/damai-activity/4.0.139/"
        },
        "mui/kissy": {
            "debug": true,
            "ignorePackageNameInUri": true,
            "version": "4.0.6",
            "path": "//g.alicdn.com/mui/kissy/4.0.6/",
            "group": "tm",
            "name": "mui/kissy",
            "base": "//g.alicdn.com/mui/kissy/4.0.6/"
        }
    },
    "modules": {
        "mui/countdown/index": {"requires": ["mui/zepto/zepto"]},
        "mui/countdown/index.xtpl": {"requires": ["mui/xtemplate/index"]},
        "mui/crossimage/index": {"requires": ["mui/babel-polyfill/index", "mui/zepto/zepto"]},
        "mui/i18n/index": {"requires": ["mui/i18n/format"]},
        "mui/mtb-login/index.xtpl": {"requires": ["mui/xtemplate/runtime"]},
        "mui/vuejs/index": {"requires": ["mui/vuejs/runtime.js", "mui/vuejs/render.js"]},
        "mui/vuejs/render": {"requires": ["mui/babel-polyfill/index", "mui/mtop/index", "mui/mtb-windvane/index", "mui/mtb-login/index"]},
        "mui/weex-component-link/index": {"requires": ["mui/weex-zebra-utils/index"]},
        "mui/weex-component-link/index-native": {"requires": ["mui/weex-zebra-utils/index-native"]},
        "mui/zebra-act-headbanner4/bulletScreen": {"requires": ["mui/zepto/zepto"]},
        "mui/zebra-act-headbanner4/i18n": {"requires": ["mui/i18n/index"]},
        "mui/zebra-act-headbanner4/index": {"requires": ["mui/kissy-polyfill/index", "mui/zepto/zepto", "mui/fetch/jsonp", "mui/countdown/index", "./bulletScreen", "./i18n.js", "mui/crossimage/index"]},
        "mui/zebra-act-headbanner4/index-pc": {"requires": ["mui/kissy-polyfill/index"]},
        "mui/zebra-act-headbanner4/index-vue": {"requires": ["mui/vuejs/index", "mui/weex-vue-patch/index", "mui/weex-zebra-utils/index", "mui/weex-component-link/index", "mui/vuejs/runtime", "mui/vuejs/render"]},
        "mui/zebra-act-headbanner4/weex/weex": {"requires": ["mui/vuejs/index-native", "mui/weex-vue-patch/index-native", "mui/weex-zebra-utils/index-native", "mui/weex-component-link/index-native"]},
        "mui/zebra-act-headbanner4/weex/weex.xtpl": {"requires": ["@weex-module/animation", "@ali/WeexUtils", "zebraUtils"]},
        "mui/zebra-fans-card/index": {"requires": ["mui/kissy-polyfill/index", "mui/zepto/zepto", "mui/fetch/jsonp"]},
        "mui/zebra-fans-card/index-pc": {"requires": ["mui/kissy-polyfill/index", "mui/zepto/zepto", "mui/fetch/jsonp"]},
        "mui/mtop/index": {"requires": ["mui/mtb-windvane/", "mui/babel-polyfill/"]},
        "mui/mtop/storage-middleware": {"requires": ["mui/babel-polyfill/"]},
        "mui/xtemplate/compiler": {"requires": ["./runtime", "./compiler/tools", "./compiler/parser", "./compiler/ast"]},
        "mui/xtemplate/index": {"requires": ["./runtime", "./compiler"]},
        "mui/xtemplate/runtime": {"requires": ["./runtime/util", "./runtime/commands", "./runtime/scope", "./runtime/linked-buffer"]},
        "mui/xtemplate/runtime/commands": {"requires": ["./scope", "./util"]},
        "mui/xtemplate/runtime/linked-buffer": {"requires": ["./util"]},
        "mui/xtemplate/runtime/util": {"requires": ["./escape-html"]},
        "mui/zebra-dm-image-six/index": {"requires": ["mui/zepto/zepto"]},
        "mui/zebra-dm-image-six/index-pc": {"requires": ["mui/jquery/jquery", "mui/mtop/index", "mui/xtemplate/"]},
        "mui/fetch/fetch": {"requires": ["mui/babel-polyfill/index"]},
        "mui/fetch/iframePostForm": {"requires": ["mui/zepto/zepto"]},
        "mui/fetch/jsonp": {"requires": ["mui/fetch/fetch", "mui/fetch/tool"]},
        "mui/location/get-user-city-code": {"requires": ["mui/babel-polyfill/index", "mui/cookie/index"]},
        "mui/location/get-user-location": {"requires": ["mui/babel-polyfill/index", "mui/cookie/index"]},
        "mui/location/get-user-location-by-ip": {"requires": ["mui/babel-polyfill/index", "mui/cookie/index"]},
        "mui/zepto/event": {"requires": ["mui/zepto/zepto"]},
        "mui/zepto/form": {"requires": ["mui/zepto/zepto"]},
        "mui/zepto/fx": {"requires": ["mui/zepto/zepto"]},
        "mui/zepto/fx_methods": {"requires": ["mui/zepto/zepto", "mui/zepto/fx"]},
        "mui/zepto/gesture": {"requires": ["mui/zepto/zepto"]},
        "mui/zepto/ie": {"requires": ["mui/zepto/zepto"]},
        "mui/zepto/selector": {"requires": ["mui/zepto/zepto"]},
        "mui/zepto/stack": {"requires": ["mui/zepto/zepto"]},
        "mui/zepto/touch": {"requires": ["mui/zepto/zepto", "mui/zepto/event"]},
        "mui/jquery/seed": {"requires": []}
    },
    "warnings": ["mui/zebra-loader versions not compat or invalid: 4.4.15|4.0.3"],
    "combine": true
};</script>
<script src="${ctx}/statoc/js/saved_resource(3)"></script>


<script>
    (function ($) {
        function hover(ele, className) {
            $(ele).on("mouseover", function () {
                $(this).addClass(className)
            });
            $(ele).on("mouseout", function () {
                $(this).removeClass(className)
            })
        }

        function getCookie(name) {
            var arr, reg = new RegExp("(^| )" + name + "=([^;]*)(;|$)");
            if (arr = document.cookie.match(reg)) {
                return arr[2]
            }
            return null
        }

        hover(".mydm", "on");
        hover(".dm-service", "on");
        hover(".dm-app", "on");
        hover(".dm-site-nav", "on");
        hover(".dm-weixin", "on");
        var userName = getCookie("damai.cn_nickName");
        var html = "";
        if (userName) {
            userName = decodeURIComponent(userName);
            html += ' <span class="dm-name">HI ,' + userName + '</span><a class="dm-message" title="退出" href="//www.damai.cn/redirect.aspx?spm=a2o6e.home.0.0.22ac3938kCTJ6R&amp;type=loginout" data-spm-anchor-id="a2o6e.home.0.0">退出</a>'
        } else {
            html += '<span class="dm-name">HI, 欢迎来大麦</span>[<a class="dm-login" title="登录" href="//www.damai.cn/redirect.aspx?type=login" target="_blank">登录</a><a class="dm-register" title="注册" href="//www.damai.cn/redirect.aspx?type=reg" target="_blank">注册</a>]'
        }
        $("#headerUserinfo").html(html);

        //在线客服
        $(".xnchatService").on("click", function () {
            var trigger = this;
            var page;
            if ($ && $(trigger).closest && $(trigger).closest(".dm-service").length > 0) {
                page = "header_service";
            } else {
                page = encodeURIComponent(location.href);
            }
            window.open("https://online.damai.cn/alime/toalime?from=damai_itemdetail&page=" + page);
        })
    })($);
</script>


<iframe src="${ctx}/pages/blk.html" id="_oid_ifr_" style="width: 0px; height: 0px; display: none;"></iframe>
</body>
</html>
