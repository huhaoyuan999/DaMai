<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="spm-id" content="a2o6e">
    <meta name="renderer" content="webkit">
    <meta name="force-rendering" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache,must-revalidate">
    <meta http-equiv="expires" content="0">
    <title>${detailList.showName}</title>
    <meta name="create-time" content="2018-10-28 00:32:41">
    <meta name="keywords" content="2018中国大运河庙会音乐节,大麦网">
    <meta name="description" content="大麦网（Damai.cn）GG 南征北战NZBZ 谭维维 谢天笑 林宥嘉杭州群星演唱会 - 2018中国大运河庙会音乐节将于2018.11.03-11.04在杭州智慧网谷小镇上演，大麦网为2018中国大运河庙会音乐节门票代理，更多门票价格及订票详情请咨询大麦网杭州站.">
    <meta name="aplus-auto-exp-visible" content="0.5">
    <meta name="aplus-auto-exp-duration" content="500">
    <meta name="aplus-auto-exp" content="[{&quot;logkey&quot;:&quot;/damai_pc.default.project_qr_purchase&quot;,&quot;tag&quot;:&quot;div&quot;,&quot;filter&quot;:&quot;data-spm-auto&quot;,&quot;props&quot;:[&quot;item_id&quot;]}]">
    <link rel="stylesheet" type="text/css" href="${ctx}/static/css/style2.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/static/css/style(2).css">
    <link rel="stylesheet" type="text/css" href="${ctx}/pages/saved_resource">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/static/images/TB1fGH0fgMPMeJjy1XcXXXpppXa-16-16.ico" type="image/x-icon">
    <style type="text/css">
        .chat-view-xiaoneng-version {
            opacity: 0;
        }

        .m-choose .tt {
            padding-top: 10px;
        }

        .m-cart .tt {
            padding-top: 16px;
        }

        .m-choose .lst .s_manjian {
            height: 71px;
        }

        .jiathis_style .jtico {
            text-align: left;
            overflow: hidden;
            display: block !important;
            height: 16px !important;
            line-height: 16px !important;
            padding-left: 20px !important;
            cursor: pointer;
        }

        .jiathis_style .jtico:hover {
            opacity: 0.8;
        }

        .jiathis_style .jiathis_txt {
            float: left;
            font-size: 12px;
            line-height: 18px !important;
            text-decoration: none;
        }
    </style>
    <script>/*! 2018-10-25 14:14:01 v8.7.1 */
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
    /*! 2018-10-25 14:13:56 v8.7.1 */
    !function (t) {
        function e(o) {
            if (n[o]) return n[o].exports;
            var r = n[o] = {exports: {}, id: o, loaded: !1};
            return t[o].call(r.exports, r, r.exports, e), r.loaded = !0, r.exports
        }

        var n = {};
        return e.m = t, e.c = n, e.p = "", e(0)
    }([function (t, e, n) {
        "use strict";
        !function () {
            var t = window.goldlog || (window.goldlog = {});
            if (!t._aplus_auto_exp) {
                t._aplus_auto_exp = {tags: {}, status: "init", exp_times: 0};
                var e = n(1);
                e.init(function () {
                    t._aplus_auto_exp.status = "complete"
                })
            }
        }()
    }, function (t, e, n) {
        "use strict";
        var o, r = n(2), a = n(3), i = n(6), u = n(7);
        o = n(window.IntersectionObserver ? 17 : 21);
        var s = n(22), l = n(10);
        e.init = function (t) {
            var e, n = window.goldlog || (window.goldlog = {}), c = !1, f = !1, p = function (t) {
                f || (f = t, c || (r.wrap(function () {
                    e = l.getAutoExpConfig() || [], i.isDebugAplus() && i.logger({msg: "aplus-auto-exp metaVaue init: " + JSON.stringify(e)});
                    var t;
                    e && e.length > 0 && (s.watch_data_change(), o.watch_exposure_change(e), t = u.create({
                        isThrottleWatch: l.isThrottleWatchDom(),
                        autoExpConfig: e
                    }), t.init({type: "init"})), n.aplus_pubsub.subscribe("setMetaInfo", function (n, r, a) {
                        if ("aplus-auto-exp" === n) {
                            i.isDebugAplus() && i.logger({msg: "aplus-auto-exp metaVaue change: " + JSON.stringify(r)});
                            var c = l.getAutoExpConfig(r);
                            if (JSON.stringify(c) === JSON.stringify(e)) return;
                            if (e = c, s.clear(), o.clear(e), t && t.clear(a), r && e && e.length > 0) {
                                s.watch_data_change(), o.watch_exposure_change(e);
                                var f = {isThrottleWatch: l.isThrottleWatchDom(), autoExpConfig: e};
                                t ? t.reset(f, a) : (t = u.create(f), t.init({type: "init"}))
                            }
                        }
                    })
                }, "do_init"), c = !0))
            };
            a.DOMReady(function () {
                setTimeout(function () {
                    c || i.logger({msg: "aplus_auto_exp_init failed! please check whether aplusJs is loaded correctly!"})
                }, 5e3);
                var e = n._$ || {}, o = window.g_SPM || {};
                "complete" === e.status && o.spm && p();
                var r = window.goldlog_queue || (window.goldlog_queue = []);
                r.push({
                    action: "goldlog.aplus_pubsub.subscribe", arguments: ["aplusReady", function (t) {
                        "complete" === t && p("aplusReady")
                    }]
                }), "function" == typeof t && t()
            })
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
            var r = "do_tracker_jserror";
            o(t, r, e), n(t, r)
        }, e.do_tracker_obsolete_inter = function (t, e) {
            var r = "do_tracker_obsolete_inter";
            o(t, r, e), n(t, r)
        }, e.wrap = function (t) {
            if ("function" == typeof t) try {
                t()
            } catch (t) {
                n({msg: t.message || t}, "exception")
            } finally {
            }
        }
    }, function (t, e, n) {
        "use strict";

        function o(t, e, n) {
            var o = goldlog._$ || {}, r = o.meta_info || {}, a = r.aplus_ctap || {}, i = r["aplus-touch"];
            if (a && "function" == typeof a.on) a.on(t, e); else {
                var s = "ontouchend" in document.createElement("div");
                !s || "tap" !== i && "tapSpm" !== n ? u(t, s ? "touchstart" : "mousedown", e) : l.on(t, e)
            }
        }

        function r(t) {
            try {
                f.documentElement.doScroll("left")
            } catch (e) {
                return void setTimeout(function () {
                    r(t)
                }, 1)
            }
            t()
        }

        function a(t) {
            var e = 0, n = function () {
                0 === e && t(), e++
            };
            "complete" === f.readyState && n();
            var o;
            if (f.addEventListener) o = function () {
                f.removeEventListener("DOMContentLoaded", o, !1), n()
            }, f.addEventListener("DOMContentLoaded", o, !1), window.addEventListener("load", n, !1); else if (f.attachEvent) {
                o = function () {
                    "complete" === f.readyState && (f.detachEvent("onreadystatechange", o), n())
                }, f.attachEvent("onreadystatechange", o), window.attachEvent("onload", n);
                var a = !1;
                try {
                    a = null === window.frameElement
                } catch (t) {
                }
                f.documentElement.doScroll && a && r(n)
            }
        }

        function i(t) {
            "complete" === f.readyState ? t() : u(c, "load", t)
        }

        function u() {
            var t = arguments;
            if (2 === t.length) "DOMReady" === t[0] && a(t[1]), "onload" === t[0] && i(t[1]); else if (3 === t.length) {
                var e = t[0], n = t[1], r = t[2];
                "tap" === n || "tapSpm" === n ? o(e, r, n) : e[d]((p ? "on" : "") + n, function (t) {
                    t = t || c.event;
                    var e = t.target || t.srcElement;
                    "function" == typeof r && r(t, e)
                }, !!s(n) && {passive: !0})
            }
        }

        var s = n(4), l = n(5), c = window, f = document, p = !!f.attachEvent, g = "attachEvent",
            h = "addEventListener", d = p ? g : h;
        e.DOMReady = a, e.onload = i, e.on = u
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
            var o = c.createEvent("HTMLEvents");
            if (o.initEvent(e, !0, !0), "object" == typeof n) for (var r in n) o[r] = n[r];
            t.dispatchEvent(o)
        }

        function r(t) {
            0 === Object.keys(p).length && (f.addEventListener(d, a, !1), f.addEventListener(h, i, !1), f.addEventListener(_, i, !1));
            for (var e = 0; e < t.changedTouches.length; e++) {
                var n = t.changedTouches[e], o = {};
                for (var r in n) o[r] = n[r];
                var u = {startTouch: o, startTime: Date.now(), status: v, element: t.srcElement || t.target};
                p[n.identifier] = u
            }
        }

        function a(t) {
            for (var e = 0; e < t.changedTouches.length; e++) {
                var n = t.changedTouches[e], o = p[n.identifier];
                if (!o) return;
                var r = n.clientX - o.startTouch.clientX, a = n.clientY - o.startTouch.clientY,
                    i = Math.sqrt(Math.pow(r, 2) + Math.pow(a, 2));
                (o.status === v || "pressing" === o.status) && i > 10 && (o.status = "panning")
            }
        }

        function i(t) {
            for (var e = 0; e < t.changedTouches.length; e++) {
                var n = t.changedTouches[e], r = n.identifier, u = p[r];
                u && (u.status === v && t.type === h && (u.timestamp = Date.now(), o(u.element, m, {
                    touch: n,
                    touchEvent: t
                })), delete p[r])
            }
            0 === Object.keys(p).length && (f.removeEventListener(d, a, !1), f.removeEventListener(h, i, !1), f.removeEventListener(_, i, !1))
        }

        function u(t) {
            t.__fixTouchEvent || (t.addEventListener(g, function () {
            }, !1), t.__fixTouchEvent = !0)
        }

        function s() {
            l || (f.addEventListener(g, r, !1), l = !0)
        }

        var l = !1, c = window.document, f = c.documentElement, p = {}, g = "touchstart", h = "touchend",
            d = "touchmove", v = "tapping", _ = "touchcancel", m = "aplus_tap" + n(1, 1e5);
        t.exports = {
            on: function (t, e) {
                s(), t && t.addEventListener && e && (u(t), t.addEventListener(m, e._aplus_tap_callback = function (t) {
                    e(t, t.target)
                }, !1))
            }, un: function (t, e) {
                t && t.removeEventListener && e && e._aplus_tap_callback && t.removeEventListener(m, e._aplus_tap_callback, !1)
            }
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
    }, function (t, e, n) {
        "use strict";
        var o = n(8), r = n(9), a = n(2), i = n(12), u = n(6), s = n(13), l = n(14), c = n(16), f = n(10), p = window,
            g = document, h = o.extend({
                getEleAttributes: function (t, e) {
                    var n = "";
                    if (t && e) {
                        var o = [t.getAttribute(e.filter)], r = e.props || [];
                        if (r) for (var a = 0; a < r.length; a++) o.push(t.getAttribute(r[a]));
                        n = o.join("_")
                    }
                    return n
                }, getSpmObj: function (t) {
                    var e = t.getAttribute("data-spm-anchor-id");
                    if (e) {
                        var n = e.split(".");
                        return {a: n[0], b: n[1], c: n[2], d: n[3], e: n[4]}
                    }
                }, handler_dom_change: function (t, e) {
                    try {
                        for (var n = this.autoExpConfig || [], o = 0; o < n.length; o++) for (var a = n[o], i = a.logkey || "", f = r.getElements(a, g), p = 0; p < f.length; p++) {
                            var h = f[p], d = "", v = this.getSpmObj(h) || g_SPM.getParam(h),
                                _ = this.getEleAttributes(h, a), m = "", y = "eindex" + p;
                            if (v.a && v.b && v.c && v.d) {
                                var b = /^i/.test(v.d) ? y : v.d;
                                m = v.a + "_" + v.b + "_" + v.c + "_" + b + "_" + v.e
                            } else m = y, goldlog.pvid && (m += goldlog.pvid);
                            if (m += i + "_", m += a.elementSelector + "_", m += _, d = s.hash(m), !c.checkIsRecord(h, d) && !l.checkIsInHashMap({
                                logkey: i,
                                hash_value: d
                            })) {
                                var w = {
                                    expConfig: a,
                                    hash_value: d,
                                    element: h,
                                    status: 0,
                                    elementSelector: a.elementSelector
                                };
                                l.updateHashMap(i, w, "ADD")
                            }
                        }
                        goldlog.aplus_pubsub.publish("APLUS_AE_DOM_CHANGE", e || {})
                    } catch (t) {
                        u.logger({msg: t && t.message})
                    }
                }, throttle_handler_dom_change: l.throttle(function (t, e) {
                    this.handler_dom_change(t, e)
                }, window.IntersectionObserver ? 200 : 100), init_watch_dom: function () {
                    var t = this, e = goldlog._aplus_auto_exp || {};
                    t._loop_observer = setTimeout(function () {
                        "blur" !== e.current_win_status ? (goldlog.aplusDebug && u.logger({msg: "watch_dom LOOP_TIME is " + f.LOOP_TIME + "ms total: " + ++e.watch_times}), t.handler_dom_change(null, {type: "polling"}), t.init_watch_dom()) : e.watch_dom_running = !1
                    }, f.LOOP_TIME)
                }, onFocusHandler: function () {
                    var t = this, e = goldlog._aplus_auto_exp || {};
                    e.current_win_status = "focus", e.watch_dom_running || t.init_watch_dom()
                }, onBlurHandler: function () {
                    var t = goldlog._aplus_auto_exp || {};
                    t.current_win_status = "blur"
                }, onVisibilityChange: function () {
                    var t = this;
                    "visible" === g.visibilityState ? t.onFocusHandler() : "hidden" === g.visibilityState && t.onBlurHandler()
                }, addAllListener: function () {
                    var t = this, e = goldlog._aplus_auto_exp || {};
                    e.watch_times = 0, e.watch_dom_running = !0, t.init_watch_dom(), p.WindVane && g.addEventListener && (i.on(g, "WV.Event.APP.Active", t.onFocusHandler, !1), i.on(g, "WV.Event.APP.Background", t.onBlurHandler, !1)), "hidden" in g ? i.on(p, "visibilitychange", t.onVisibilityChange) : (i.on(p, "blur", t.onBlurHandler), i.on(p, "focus", t.onFocusHandler))
                }, removeAllListener: function () {
                    var t = this;
                    p.WindVane && g.removeEventListener && (i.un(g, "WV.Event.APP.Active", t.onFocusHandler, !1), i.un(g, "WV.Event.APP.Background", t.onBlurHandler, !1)), "hidden" in g ? i.un(p, "visibilitychange", t.onVisibilityChange) : (i.un(p, "blur", t.onBlurHandler), i.un(p, "focus", t.onFocusHandler))
                }, init_observer: function (t, e) {
                    var n = ["IFRAME", "BODY", "OBJECT", "SCRIPT", "NOSCRIPT", "LINK", "STYLE"], o = ["class", "style"],
                        i = function (t) {
                            return "characterData" === t.type ? [t.target] : "attributes" === t.type && o.indexOf(t.attributeName) > -1 ? [t.target] : "childList" !== t.type ? [] : void 0
                        }, s = function (t, o) {
                            if (t && t.length > 0) for (var r = 0; r < t.length; r++) {
                                var i = t[r] || {}, u = i.nodeName, s = goldlog._aplus_auto_exp.tags || {};
                                s[u] || (s[u] = 0), s[u]++, goldlog._aplus_auto_exp.tags = s, n.indexOf(u) === -1 && a.wrap(function () {
                                    var t = goldlog._aplus_auto_exp || {};
                                    ++t.observer_times;
                                    var n = o.attributeName;
                                    e(i, {type: o.type + (n ? "_" + n : "")})
                                }, "init_observer_init_elements")
                            }
                        };
                    this._observer || (this._observer = new t(function (t) {
                        if (t && t.length > 0) for (var e = 0; e < t.length; e++) {
                            var n = t[e] || {}, o = r.nodelistToArray(n.addedNodes || []);
                            o = r.nodelistToArray(i(n), o), s(o, n)
                        }
                    }));
                    var l = {attributes: !0, childList: !0, characterData: !0, subtree: !0};
                    this._observer.observe(g.body, l), r.IS_DEBUG && u.logger({msg: "aplus_auto_exp init MutationObserver success!"})
                }, init: function (t) {
                    var e = this, n = goldlog._aplus_auto_exp || {};
                    t && "reset" !== t.type && !n.hash_value && (n.hash_value = {}), e.handler_dom_change(null, {type: "aplus_init"});
                    var o = p.MutationObserver || p.WebKitMutationObserver || p.MozMutationObserver;
                    o ? (n.observer_times = 0, e.init_observer(o, function (t, n) {
                        var o = t && t.parentElement ? t.parentElement : t;
                        e.throttle_handler_dom_change(o, n)
                    })) : e.addAllListener()
                }, clear: function () {
                    var t = goldlog._aplus_auto_exp || {};
                    t._acHashMap && (t._acHashMap = {}), t.hash_value && (t.hash_value = {}), goldlog._aplus_auto_exp = t, this._loop_observer && (clearTimeout(this._loop_observer), this._loop_observer = null), this._observer ? (this._observer.takeRecords(), this._observer.disconnect()) : this.removeAllListener()
                }, clearDom: function (t, e) {
                    var n = this.autoExpConfig || [];
                    if (e && "appendMetaInfo" !== e.from) for (var o = 0; o < n.length; o++) try {
                        var r = n[o].elementSelector, a = g.querySelector(r);
                        a.setAttribute(f.DATA_APLUS_AE_KEY, "")
                    } catch (t) {
                    }
                    this.autoExpConfig = t && t.autoExpConfig ? t.autoExpConfig : []
                }, reset: function (t, e) {
                    this.clearDom(t, e), this.init({type: "reset"})
                }
            });
        t.exports = h
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
        var o = document, r = n(6), a = n(10), i = function (t) {
            return "[object Array]" === Object.prototype.toString.call(t)
        };
        e.isArray = i, e.getXPath = function (t) {
            var e, n, r, a, i, u, s = o.getElementsByTagName("*");
            for (e = []; t && 1 == t.nodeType; t = t.parentNode) if (t.id) {
                for (u = t.id, a = 0, n = 0; n < s.length; n++) if (i = s[n], i.id && i.id == u) {
                    a++;
                    break
                }
                if (e.unshift(t.tagName.toLowerCase() + '[@id="' + u + '"]'), 1 == a) return e.unshift("/"), e.join("/")
            } else {
                for (n = 1, r = t.previousSibling; r; r = r.previousSibling) r.tagName == t.tagName && n++;
                e.unshift(t.tagName.toLowerCase() + "[" + n + "]")
            }
            return e.length ? "/" + e.join("/") : null
        };
        var u = function (t, e) {
            if (e && 0 !== e.length || (e = []), t && t.length > 0) for (var n = 0; n < t.length; n++) e.push(t[n]);
            return e
        };
        e.nodelistToArray = u, e.getElements = function (t, e) {
            var n = e || o, r = [];
            if (n.querySelectorAll) r = u(n.querySelectorAll(t.elementSelector) || []); else for (var a = document.getElementsByTagName(t.tag), i = t.filter.split("="), s = i.length > 0 ? i[0].trim() : "", l = i.length > 1 ? i[1].trim() : "", c = 0; c < a.length; c++) {
                var f = a[c], p = f.getAttribute(s), g = f.hasAttribute(s);
                !g || l && l !== p || r.push(f)
            }
            return r
        };
        var s = function () {
            return /aplusDebug=true/.test(location.search)
        }, l = s();
        e.IS_DEBUG = l, e.fillPropsData = function (t, e, n) {
            n || (n = {});
            try {
                var o = t.props || [];
                if (o && i(o) && o.length > 0) for (var a = 0; a < o.length; a++) if (e && e.getAttribute) {
                    var u = o[a], s = e.getAttribute(u);
                    void 0 !== typeof s && null !== s && "" !== s && (n[u] = encodeURIComponent(s))
                }
            } catch (t) {
                r.logger({msg: t && t.message})
            }
            return n
        }, e.fillFilterData = function (t, e, n) {
            n || (n = {});
            try {
                var o = t.filter || "", a = o.split("=");
                if (i(a) && a[1]) n[a[0]] = a[1]; else if (a[0] && e && e.getAttribute) {
                    var u = e.getAttribute(a[0]) || "";
                    void 0 !== typeof u && null !== u && "" !== u && (n[a[0]] = u)
                }
            } catch (t) {
                r.logger({msg: t && t.message})
            }
            return n
        };
        var c = function (t) {
            return !!/^POST|GET$/i.test(t)
        };
        e.isMethod = c;
        var f = function (t) {
            var e = !!/^\d+$/.test(t);
            return !!(e && parseInt(t) > 0)
        };
        e.isPkgSize = f, e.filterExpConfigRequestCfg = function (t) {
            var e = a.getDefaultRequestCfg() || {};
            try {
                var n = t || {};
                c(n.method) && (e.method = n.method), f(n.pkgSize) && (e.pkgSize = parseInt(n.pkgSize))
            } catch (t) {
                r.logger({msg: t && t.message})
            }
            return e
        }, e.autoUserFnHandler = function (t, e, n) {
            var o = "";
            try {
                o = t(e, n)
            } catch (t) {
                o = ""
            }
            if (o) {
                if ("string" == typeof o) return encodeURIComponent(o);
                if ("object" == typeof o) return {userdata: encodeURIComponent(o.userdata), spm: o.spm, scm: o.scm}
            }
            return ""
        }
    }, function (t, e, n) {
        "use strict";
        var o = n(11);
        e.DATA_APLUS_AE_KEY = "data-aplus-ae", e.DATA_APLUS_AC_KEY = "data-aplus-clk-logkey", e.LOOP_TIME = 1e3, e.getDefaultRequestCfg = function () {
            return {method: "POST", pkgSize: 10}
        };
        var r = function (t) {
            var e = t;
            try {
                var n = goldlog.getMetaInfo("aplus-auto-exp-visible");
                n && (e = parseFloat(n)), e <= 0 && (e = t)
            } catch (n) {
                e = t
            } finally {
                return e
            }
        };
        e.AUTO_AT_VIEW_RATE = r(.3);
        var a = function (t) {
            var e = t;
            try {
                var n = goldlog.getMetaInfo("aplus-auto-exp-duration"), o = parseInt(n);
                o + "" != "NaN" && (e = o)
            } catch (t) {
            } finally {
                return e
            }
        };
        e.EXP_DURATION = a(300);
        var i = function (t, e) {
            var n, r = [], a = [];
            try {
                n = e || goldlog.getMetaInfo(t);
                var i = [];
                if (n && "string" == typeof n) try {
                    i = JSON.parse(n)
                } catch (t) {
                    i = JSON.parse(n.replace(/'/g, '"'))
                } else "object" == typeof n && n.constructor === Array && (i = n);
                if (i && i.constructor === Array) for (var u = 0; u < i.length; u++) {
                    var s = i[u] || {}, l = s.logkey || "", c = s.tag ? s.tag : "", f = s.filter, p = s.cssSelector,
                        g = p || c && f;
                    if (!l || !g) throw new Error("meta " + t + " config error, " + JSON.stringify(s));
                    f = "string" == typeof f ? f.split("=") : [];
                    var h = c;
                    if (f.length >= 2 ? h += "[" + f.shift() + '="' + decodeURIComponent(f.join("")) + '"]' : 1 == f.length && f[0] && (h += "[" + decodeURIComponent(f[0]) + "]"), p && (h += p), s.elementSelector = h, o.indexof(a, h) > -1) throw new Error("meta " + t + " config error, tag_filter_cssSelector " + h + " repeated");
                    a.push(h), r.push(s)
                }
            } catch (t) {
            } finally {
                return r
            }
        };
        e.getAutoExpConfig = function (t) {
            return i("aplus-auto-exp", t) || []
        }, e.getAutoExpUserFn = function () {
            var t = goldlog.getMetaInfo("aplus-auto-exp-userfn");
            if (t) {
                var e = window[t] || t;
                if ("function" == typeof e) return e
            }
            return null
        }, e.isThrottleWatchDom = function () {
            var t = !1;
            try {
                t = "throttle" === goldlog.getMetaInfo("aplus-auto-exp-watchdom")
            } catch (t) {
            }
            return t
        }, e.getAutoClkConfig = function (t) {
            return i("aplus-auto-clk", t) || []
        }, e.getAutoClkUserFn = function () {
            var t = goldlog.getMetaInfo("aplus-auto-clk-userfn");
            if (t) {
                var e = window[t] || t;
                if ("function" == typeof e) return e
            }
            return null
        }
    }, function (t, e) {
        "use strict";
        e.indexof = function (t, e) {
            var n = -1;
            try {
                n = t.indexOf(e)
            } catch (r) {
                for (var o = 0; o < t.length; o++) t[o] === e && (n = o)
            } finally {
                return n
            }
        }
    }, function (t, e, n) {
        "use strict";

        function o(t, e) {
            var n = goldlog._$ || {}, o = n.meta_info || {}, r = o.aplus_ctap || {}, a = o["aplus-touch"];
            if (r && "function" == typeof r.on) r.on(t, e); else {
                var s = "ontouchend" in document.createElement("div");
                s && "tap" === a ? i.on(t, e) : u(t, s ? "touchstart" : "mousedown", e)
            }
        }

        function r(t, e) {
            var n = goldlog._$ || {}, o = n.meta_info || {}, r = o.aplus_ctap || {};
            if (r && "function" == typeof r.un) r.un(t, e); else {
                var a = "ontouchend" in document.createElement("div"), i = a ? "touchstart" : "mousedown";
                s(t, i, e)
            }
        }

        var a = !!document.attachEvent, i = n(5), u = function (t, e, n) {
            return "tap" === e ? void o(t, n) : void(a ? t.attachEvent(e, n) : t.addEventListener(e, n))
        };
        e.on = u;
        var s = function (t, e, n) {
            return "tap" === e ? void r(t, n) : void(a ? t.detachEvent(e, n) : t.removeEventListener(e, n))
        };
        e.un = s
    }, function (t, e) {
        "use strict";
        var n = 1315423911;
        e.hash = function (t, e) {
            var o, r, a = e || n;
            for (o = t.length - 1; o >= 0; o--) r = t.charCodeAt(o), a ^= (a << 5) + r + (a >> 2);
            var i = (2147483647 & a).toString(16);
            return i
        }
    }, function (t, e, n) {
        "use strict";

        function o(t, e) {
            var n = e.hash_value, o = r.getGoldlogVal("_aplus_auto_exp") || {};
            if (o.hash_value || (o.hash_value = {}), o.hash_value[t] || (o.hash_value[t] = i.Map ? new i.Map : {}), i.Map) {
                var a = o.hash_value[t].get(n);
                a ? ++a : a = 1, o.hash_value[t].set(n, a)
            } else o.hash_value[t][n] ? ++o.hash_value[t][n] : o.hash_value[t][n] = 1
        }

        var r = n(15), a = n(10), i = window;
        e.filterUnloadAttr = function (t) {
            return t && (t = t.replace(/(href|style|data-spm-anchor-id)=[\'|\"][\w|\W|\.]+[\'|\"]/, ""), t = t.replace(/\s\>/g, ">"), t = t.replace(new RegExp(a.DATA_APLUS_AE_KEY + "=[\\'|\\\"]\\w+[\\'|\\\"]"), "")), t
        };
        var u = function (t, e) {
            for (var n, o = 0, r = t.length; o < r;) {
                var a = t[o] || {};
                if (a.hash_value === e.hash_value) return t[o] = e, n = !0, t;
                o++
            }
            return n || t.push(e), t
        };
        e.updateHashMap = function (t, e, n) {
            if (n || (n = "ADD"), t && "object" == typeof e) {
                var a = r.getGoldlogVal("_aplus_auto_exp") || {}, i = a._acHashMap || {}, s = i[t] || [],
                    l = function () {
                        for (var t = 0, n = s.length; t < n;) {
                            var o = s[t] || {};
                            if (o.hash_value === e.hash_value) return t;
                            t++
                        }
                        return -1
                    }, c = l();
                "ADD" === n && c === -1 ? (s.push(e), o(t, e)) : "CLEAR" === n && c > -1 ? s.splice(c, 1) : "UPDATE" === n && (s = u(s, e)), i[t] = s, a._acHashMap = i, r.setGoldlogVal("_aplus_auto_exp", a)
            }
        };
        var s = function () {
            return (new Date).getTime()
        };
        e.throttle = function (t, e, n) {
            var o, r, a, i, u = 0;
            n || (n = {});
            var l = function () {
                u = n.leading === !1 ? 0 : s(), o = null, i = t.apply(r, a), o || (r = a = null)
            }, c = function () {
                var c = s();
                u || n.leading !== !1 || (u = c);
                var f = e - (c - u);
                return r = this, a = arguments, f <= 0 || f > e ? (o && (clearTimeout(o), o = null), u = c, i = t.apply(r, a), o || (r = a = null)) : o || n.trailing === !1 || (o = setTimeout(l, f)), i
            };
            return c.cancel = function () {
                clearTimeout(o), u = 0, o = r = a = null
            }, c
        }, e.checkIsInHashMap = function (t) {
            var e = r.getGoldlogVal("_aplus_auto_exp") || {}, n = e.hash_value || {},
                o = n[t.logkey] || (i.Map ? new i.Map : {}), a = o && o.get ? o.get(t.hash_value) : o[t.hash_value];
            if (a > 1) return !0;
            for (var u = e._acHashMap || {}, s = u[t.logkey] || [], l = s.length, c = 0; c < l; c++) if (s[c].hash_value === t.hash_value) return !0;
            return !1
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
        var o = n(10), r = document, a = function (t, e) {
            return e.x >= t.pLeftTop[0] && e.x <= t.pRightBottom[0] && e.y >= t.pLeftTop[1] && e.y <= t.pRightBottom[1]
        }, i = function (t, e) {
            var n = 0, o = a(t, e), r = a(t, {x: e.x + e.width, y: e.y}), i = a(t, {x: e.x, y: e.y + e.height}),
                u = a(t, {x: e.x + e.width, y: e.y + e.height}), s = function () {
                    var t = 0;
                    return o && u && (t = e.size / e.size), t
                }, l = function () {
                    var n = 0, a = 0;
                    return o && r && !i && !u ? (n = e.width, a = t.pLeftBottom[1] - e.y) : !o && r && !i && u ? (n = t.pLeftTop[0] - e.x, a = e.y) : !o && !r && i && u ? (n = e.width, a = t.pLeftTop[1] - e.y) : o && !r && i && !u && (n = t.pRightTop[0] - e.x, a = e.y), e.size > 0 ? Math.abs(n * a) / e.size : 0
                }, c = function () {
                    var n = 0, a = 0;
                    return !o || r || i || u ? o || !r || i || u ? o || r || !i || u ? o || r || i || !u || (n = t.pLeftTop[0] - e.x, a = t.pLeftTop[1] - e.y) : (n = t.pRightTop[0] - e.x, a = t.pRightTop[1] - e.y) : (n = t.pLeftBottom[0] - e.x, a = t.pLeftBottom[1] - e.y) : (n = t.pRightBottom[0] - e.x, a = t.pRightBottom[1] - e.y), e.size > 0 ? Math.abs(n * a) / e.size : 0
                };
            return n = s(), n > 0 ? n : (n = l(), n > 0 ? n : (n = c(), n > 0 ? n : n))
        };
        e.wrapViewabilityRate = function (t, e, n) {
            var o = 0;
            if (t) for (var r = 0; r < t.length; r++) if (o = i(t[r], e), o < n) return !1;
            return o
        };
        var u = function (t) {
            return "number" == typeof t && NaN !== t
        }, s = function (t) {
            var e = {};
            return t && ("function" == typeof t.getBoundingClientRect && (e = t.getBoundingClientRect() || {}), u(e.x) || u(e.left) && (e.x = e.left), u(e.y) || u(e.top) && (e.y = e.top), u(e.width) || (e.width = t.offsetWidth), u(e.height) || (e.height = t.offsetHeight)), e
        };
        e.getElementPosition = s, e.getWinPositions = function (t) {
            var e = [];
            if (t && "function" == typeof document.querySelector) {
                var n = document.querySelector(t);
                if (n) {
                    var o = s(n) || {};
                    u(o.x) && u(o.y) && u(o.width) && u(o.height) && e.push({
                        pLeftTop: [o.x, o.y],
                        pRightTop: [o.x + o.width, o.y],
                        pLeftBottom: [o.x, o.y + o.height],
                        pRightBottom: [o.x + o.width, o.y + o.height]
                    })
                }
            }
            var a = r.documentElement, i = r.body, l = a.clientWidth || i.offsetWidth || 0,
                c = a.clientHeight || i.offsetHeight || 0;
            return e.push({pLeftTop: [0, 0], pRightTop: [l, 0], pLeftBottom: [0, c], pRightBottom: [l, c]}), e
        }, e.setRecordSuccess = function (t) {
            try {
                var e = t ? t.element : {}, n = t.hash_value || "";
                e && e.setAttribute && e.setAttribute(o.DATA_APLUS_AE_KEY, n)
            } catch (t) {
            }
        }, e.checkIsRecord = function (t, e) {
            var n;
            try {
                if (t && t.getAttribute) {
                    var r = t.getAttribute(o.DATA_APLUS_AE_KEY) || "";
                    n = e ? r === e : !!r
                }
            } catch (t) {
            }
            return n
        }
    }, function (t, e, n) {
        "use strict";

        function o(t, e) {
            var n = 0, o = s.getGoldlogVal("_aplus_auto_exp") || {}, r = o._acHashMap || {};
            for (var a in r) for (var i = r[a] || [], l = 0; l < i.length; l++) {
                var p = i[l] || {};
                if (0 === p.status && p.expConfig && p.element === e.target) {
                    p.eventType = "IObserver";
                    var v = e.boundingClientRect || {};
                    if (v.width && v.height) {
                        p = u.assign(p, v), p.x = v.x || v.left, p.y = v.y || v.top, p.width = v.width, p.height = v.height, p.size = v.width * v.height;
                        var _ = g.checkIsRecord(p.element, p.hash_value);
                        if (e.intersectionRatio >= d && !_) {
                            p.exposureTime = t, p.status = 1;
                            var m = c.getAutoExpUserFn();
                            m && (p.userParams = h.autoUserFnHandler(m, p.element, p.elementSelector)), c.EXP_DURATION || (p.viewabilityRate = e.intersectionRatio, p.status = 2), f.updateHashMap(a, p, "UPDATE"), ++n
                        }
                    }
                }
            }
            return n
        }

        function r(t, e) {
            var n = "APLUS_AE_EXPOSURE_CHANGE", r = t && t.type ? t.type : "IObserver", a = (new Date).getTime(), i = 0;
            i = e ? p.filterStartExposureSize(a, t) : o(a, t), i > 0 && (c.EXP_DURATION ? setTimeout(function () {
                i = p.filterEndExposureSize(a, r), i > 0 && goldlog.aplus_pubsub.publish(n, {size: i, eventType: r})
            }, c.EXP_DURATION) : goldlog.aplus_pubsub.publish(n, {size: i, eventType: r}))
        }

        function a(t) {
            var e = {root: null, rootMargin: "0px", threshold: d};
            return new _(function (t) {
                l(t, function (t) {
                    t.intersectionRatio > 0 && r(t)
                })
            }, u.assign(e, t))
        }

        function i(t) {
            if (_) {
                m.io_base || (m.io_base = a());
                var e = s.getGoldlogVal("_aplus_auto_exp") || {}, n = e._acHashMap || {};
                for (var o in n) for (var r = n[o] || [], i = 0; i < r.length; i++) {
                    var u = r[i] || {};
                    if (!u.inObserver) {
                        var l, c = "io_v_" + encodeURIComponent(u.positionSelector);
                        u.positionSelector && !m[c] && (l = a({
                            root: document.querySelector(u.positionSelector),
                            expConfig: t
                        }), m[c] = l), l ? l.observe(u.element) : m.io_base.observe(u.element), u.inObserver = !0
                    }
                }
            }
            return !0
        }

        var u = n(18), s = n(15), l = n(19), c = n(10), f = n(14), p = n(20), g = n(16), h = n(9),
            d = c.AUTO_AT_VIEW_RATE, v = window, _ = v.IntersectionObserver, m = {};
        goldlog._aplus_auto_exp.iobserverMap = m, e.watch_exposure_change = function (t) {
            goldlog.aplus_pubsub.subscribe("APLUS_AE_DOM_CHANGE", function () {
                i(t)
            }), i(t)
        }, e.clear = function () {
            for (var t in m) {
                var e = m[t];
                e.disconnect()
            }
        }
    }, function (t, e, n) {
        "use strict";

        function o(t, e) {
            return "function" != typeof Object.assign ? function (t) {
                if (null === t) throw new TypeError("Cannot convert undefined or null to object");
                for (var e = Object(t), n = 1; n < arguments.length; n++) {
                    var o = arguments[n];
                    if (null !== o) for (var r in o) Object.prototype.hasOwnProperty.call(o, r) && (e[r] = o[r])
                }
                return e
            }(t, e) : Object.assign({}, t, e)
        }

        function r(t) {
            return "function" == typeof t
        }

        function a(t) {
            return "string" == typeof t
        }

        function i(t) {
            return "undefined" == typeof t
        }

        function u(t, e) {
            return t.indexOf(e) > -1
        }

        var s = window;
        e.assign = o, e.makeCacheNum = function () {
            return Math.floor(268435456 * Math.random()).toString(16)
        }, e.each = n(19), e.isStartWith = function (t, e) {
            return 0 === t.indexOf(e)
        }, e.isEndWith = function (t, e) {
            var n = t.length, o = e.length;
            return n >= o && t.indexOf(e) == n - o
        }, e.any = function (t, e) {
            var n, o = t.length;
            for (n = 0; n < o; n++) if (e(t[n])) return !0;
            return !1
        }, e.isFunction = r, e.isArray = function (t) {
            return Array.isArray ? Array.isArray(t) : /Array/.test(Object.prototype.toString.call(t))
        }, e.isString = a, e.isNumber = function (t) {
            return "number" == typeof t
        }, e.isUnDefined = i, e.isContain = u;
        var l = function (t) {
            var e, n = t.constructor === Array ? [] : {};
            if ("object" == typeof t) {
                if (s.JSON && s.JSON.parse) e = JSON.stringify(t), n = JSON.parse(e); else for (var o in t) n[o] = "object" == typeof t[o] ? l(t[o]) : t[o];
                return n
            }
        };
        e.cloneObj = l, e.cloneDeep = l
    }, function (t, e) {
        "use strict";
        t.exports = function (t, e) {
            var n, o = t.length;
            for (n = 0; n < o; n++) e(t[n], n)
        }
    }, function (t, e, n) {
        "use strict";
        var o, r = n(16), a = n(14), i = n(15), u = n(10), s = n(9), l = u.AUTO_AT_VIEW_RATE, c = function (t) {
            for (var e; t && "HTML" !== t.tagName;) {
                e = t.style.display;
                {
                    if ("none" === e) break;
                    t = t.parentNode
                }
            }
            return "none" === e
        };
        e.filterStartExposureSize = function (t, e) {
            var n = 0;
            o || (o = r.getWinPositions());
            var f = i.getGoldlogVal("_aplus_auto_exp") || {}, p = f._acHashMap || {};
            for (var g in p) for (var h = p[g] || [], d = 0; d < h.length; d++) {
                var v = h[d] || {};
                if (0 === v.status && v.expConfig && (v.eventType = e, !c(v.element))) {
                    var _ = r.getElementPosition(v.element);
                    if (_.width && _.height) {
                        v.x = _.x, v.y = _.y, v.width = _.width, v.height = _.height, v.size = _.width * _.height;
                        var m = !1;
                        v.expConfig.positionSelector && (o = r.getWinPositions(v.expConfig.positionSelector)), m = r.wrapViewabilityRate(o, v, l);
                        var y = r.checkIsRecord(v.element, v.hash_value);
                        if (m && !y) {
                            v.exposureTime = t, v.status = 1;
                            var b = u.getAutoExpUserFn();
                            b && (v.userParams = s.autoUserFnHandler(b, v.element, v.elementSelector)), u.EXP_DURATION || (v.viewabilityRate = m, v.status = 2), a.updateHashMap(g, v, "UPDATE"), ++n
                        }
                    }
                }
            }
            return n
        }, e.filterEndExposureSize = function (t, e) {
            var n = 0;
            o || (o = r.getWinPositions());
            var u = i.getGoldlogVal("_aplus_auto_exp") || {}, s = u._acHashMap || {};
            for (var c in s) for (var f = s[c] || [], p = 0; p < f.length; p++) {
                var g = f[p] || {};
                if (1 === g.status && g.exposureTime === t && g.expConfig) {
                    g.eventType = e, g.expConfig.positionSelector && (o = r.getWinPositions(g.expConfig.positionSelector));
                    var h = r.wrapViewabilityRate(o, g, l), d = r.checkIsRecord(g.element, g.hash_value);
                    h && !d ? (g.viewabilityRate = h, g.status = 2, a.updateHashMap(c, g, "UPDATE"), ++n) : (g.status = 0, g.exposureTime = "", a.updateHashMap(c, g, "UPDATE"))
                }
            }
            return n
        }
    }, function (t, e, n) {
        "use strict";
        var o = n(12), r = n(20), a = n(14), i = n(10), u = function (t) {
            var e = "APLUS_AE_EXPOSURE_CHANGE", n = t && t.type ? t.type : "init", o = (new Date).getTime(),
                a = r.filterStartExposureSize(o, n);
            a > 0 && (i.EXP_DURATION ? setTimeout(function () {
                a = r.filterEndExposureSize(o, n), a > 0 && goldlog.aplus_pubsub.publish(e, {size: a, eventType: n})
            }, i.EXP_DURATION) : goldlog.aplus_pubsub.publish(e, {size: a, eventType: n}))
        }, s = a.throttle(function (t) {
            u(t)
        }, 100), l = {}, c = function (t, e) {
            if (t && t.forEach && Object.keys && document.querySelector) {
                t.forEach(function (t) {
                    t.positionSelector && document.querySelector(t.positionSelector) && (l[t.positionSelector] = !0)
                });
                var n = Object.keys(l);
                n.forEach(function (t) {
                    o[e] && o[e](document.querySelector(t), "scroll", function (t) {
                        s(t)
                    })
                })
            }
        };
        e.watch_exposure_change = function (t) {
            goldlog.aplus_pubsub.subscribe("APLUS_AE_DOM_CHANGE", u), o.on(window, "touchmove", s), o.on(window, "scroll", s), o.on(window, "resize", u), c(t, "on")
        }, e.clear = function (t) {
            o.un(window, "touchmove", s), o.un(window, "scroll", s), o.un(window, "resize", u), c(t, "un")
        }
    }, function (t, e, n) {
        "use strict";
        var o = n(2), r = n(18), a = n(15), i = n(6), u = n(23), s = n(14), l = n(16), c = n(9), f = n(10),
            p = function () {
                var t = {}, e = f.getDefaultRequestCfg(), n = a.getGoldlogVal("_aplus_auto_exp") || {},
                    o = n._acHashMap || {};
                return u(o, function (o, r) {
                    for (var a = r || [], i = 0, u = a.length; i < u; i++) {
                        var l = a[i] || {};
                        if (2 === l.status) {
                            l.status = 3, s.updateHashMap(o, l, "UPDATE"), n.exp_times++;
                            var f, p = goldlog.spm_ab ? goldlog.spm_ab.join(".") : "0.0.0.0", g = window.g_SPM || {},
                                h = "function" == typeof g.spm ? g.spm(l.element) : p, d = "";
                            try {
                                var v = new Number(l.viewabilityRate);
                                f = v.toFixed(2)
                            } catch (t) {
                                f = l.viewabilityRate
                            }
                            var _ = {_w: l.width, _h: l.height, _x: l.x, _y: l.y, _rate: f};
                            "string" == typeof l.userParams ? _._ud = l.userParams : "object" == typeof l.userParams && (_._ud = l.userParams.userdata, l.userParams.spm && (h = l.userParams.spm), l.userParams.scm && (d = l.userParams.scm));
                            var m = l.expConfig || {};
                            (c.isMethod(m.method) || c.isPkgSize(m.pkgSize)) && (e = c.filterExpConfigRequestCfg(m));
                            var y = c.fillPropsData(m, l.element, _);
                            y = c.fillFilterData(m, l.element, _);
                            var b = {exargs: y, scm: d, spm: h, aplusContentId: ""};
                            t[o] || (t[o] = []), t[o].push(b)
                        }
                    }
                }), {logkeyContainer: t, request_cfg: e}
            }, g = function (t) {
                for (var e = [], n = 0, o = t.length; n < o; n++) {
                    var a = t[n] || {}, i = {};
                    u(a, function (t, e) {
                        "element" !== t && (i[t] = e)
                    });
                    var s = r.cloneObj(i);
                    s.element = a.element, e.push(s)
                }
                return e
            }, h = function (t) {
                var e = a.getGoldlogVal("_aplus_auto_exp") || {}, n = e._acHashMap || {}, o = [];
                u(n, function (e, n) {
                    for (var r = g(n) || [], a = 0, u = r.length; a < u; a++) {
                        var c = r[a] || {}, f = n[a] || {};
                        if (3 === c.status) try {
                            l.setRecordSuccess(f), goldlog.aplus_pubsub.publish("APLUS_ELEMENT_EXPOSURE", {
                                logkey: e,
                                v_origin: f,
                                options: t
                            }), o.push(f)
                        } catch (t) {
                            i.logger({msg: t && t.message})
                        }
                    }
                    for (; o.length > 0;) s.updateHashMap(e, o.pop(), "CLEAR")
                })
            }, d = function (t, e, n) {
                var r = t.logkeyContainer || [], a = t.request_cfg || {};
                o.wrap(function () {
                    u(r, function (t, o) {
                        if (o && o.length > 0) {
                            for (var r = 0; r < o.length;) {
                                var i = [], u = JSON.stringify(o.slice(r, r + a.pkgSize));
                                i.push("expdata=" + u), i.push("_is_auto_exp=1"), i.push("_eventType=" + e.eventType), i.push("_method=" + a.method), i.push("_pkgSize=" + a.pkgSize), goldlog.record(t, "EXP", i.join("&"), a.method || "POST"), r += a.pkgSize
                            }
                            n(e)
                        }
                    })
                }, "recordAplusAt")
            }, v = function (t) {
                if (t.size > 0) {
                    var e = p() || {};
                    d(e, t, h)
                }
            };
        e.watch_data_change = function () {
            goldlog.aplus_pubsub.subscribe("APLUS_AE_EXPOSURE_CHANGE", v)
        }, e.clear = function () {
            goldlog.aplus_pubsub.unsubscribe("APLUS_AE_EXPOSURE_CHANGE", v)
        }
    }, function (t, e) {
        "use strict";
        t.exports = function (t, e) {
            if (Object && Object.keys) for (var n = Object.keys(t), o = n.length, r = 0; r < o; r++) {
                var a = n[r];
                e(a, t[a])
            } else for (var i in t) e(i, t[i])
        }
    }]);
    /*! 2018-10-25 14:13:49 v8.7.1 */
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
        e.lver = "8.7.1", e.toUtVersion = "v20181025", e.script_name = "aplus_std"
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
            return "http:" !== t && "https:" !== t && (t = "http:"), t
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
    /*! 2018-10-25 14:14:00 v8.7.1 */
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
    <script type="text/javascript">
        var projectInfo = {
            "ProjectID": 166083,
            "CityID": 1580,
            "Name": "2018中国大运河庙会音乐节",
            "ShowTime": "2018.11.03-11.04",
            "Price": 180.00,
            "SiteStatus": 3,
            "VenueName": "杭州智慧网谷小镇",
            "IsOnlyXuanZuo": false,
            "QuestionPass": false,
            "TicketValidateType": 0,
            "htmlName": null,
            "Tabcontrol": 0,
            "IsShowStartTime": false,
            "StartTicketTime": "\/Date(1539751773000)\/",
            "SellStartTime": "\/Date(1539751773000)\/",
            "OptimizationTicket": 0
        };
        var hostName = "hz", itemDomain = "piao.damai.cn", categoryId = 1, is_show_perform_calendar = 0;
        is_show_perform_calendar = 1;
        var PrivelegePId = 108944;

        var is_show_qr_code = 0;
    </script>

</head>
<body data-spm="project">

<div class="g-hd" style="position:static;">
    <div class="g-hdc">
        <%--<input type="hidden" value="2018%e4%b8%ad%e5%9b%bd%e5%a4%a7%e8%bf%90%e6%b2%b3%e5%ba%99%e4%bc%9a%e9%9f%b3%e4%b9%90%e8%8a%82" id="Hidden1">--%>
        <%--<input type="hidden" value="我在@大麦网 『www.damai.cn』发现了一个非常不错的演出:『${detailList.showName}』,时间是${detailList.showTime}，场馆在${detailList.showPlace},强烈推荐！分享一下&gt;&gt;&gt;&gt;&gt;&gt;" id="Title">--%>
        <%--<input type="hidden" value="2018%d6%d0%b9%fa%b4%f3%d4%cb%ba%d3%c3%ed%bb%e1%d2%f4%c0%d6%bd%da" id="NameCN">--%>
        <%--<input type="hidden" value="https%3a%2f%2fpiao.damai.cn%2f166083.html" id="LinkCN">--%>
        <%--<input type="hidden" value="${detailList.tareainfo.areainfoId}" id="cityId">--%>
        <%--<input type="hidden" value="${detailList.tareainfo.areainfoName}" id="cityName">--%>
        <%--<input type="hidden" value="${detailList.categorieId}" id="CategoryID">--%>
        <%--<input type="hidden" value="120" id="epconfig">--%>
        <!-- logo begin -->
        <h1 class="m-logo"><a href="${pageContext.request.contextPath }/show/index" title="大麦网">大麦</a></h1>
        <!-- logo end -->

        <!-- 城市切换 begin -->
        <div class="m-citys">
            <a class="tt" href="javascript:;"><span class="txt">杭州站</span><span class="arrow arrow-down"></span></a>
            <div class="ct">
                <dl>
                    <dt>华北东北</dt>
                    <dd>
                        <ul>
                            <li>
                                <a title="北京" href="https://www.damai.cn/bj/" target="_blank">北京</a>
                                <cite>597</cite>
                            </li>
                            <li>
                                <a title="西安" href="https://www.damai.cn/xa/" target="_blank">西安</a>
                                <cite>101</cite>
                            </li>
                            <li>
                                <a title="济南" href="https://www.damai.cn/jn/" target="_blank">济南</a>
                                <cite>59</cite>
                            </li>
                            <li>
                                <a title="太原" href="https://www.damai.cn/ty/" target="_blank">太原</a>
                                <cite>30</cite>
                            </li>
                            <li>
                                <a title="哈尔滨" href="https://www.damai.cn/hrb/" target="_blank">哈尔滨</a>
                                <cite>18</cite>
                            </li>
                            <li>
                                <a title="天津" href="https://www.damai.cn/tj/" target="_blank">天津</a>
                                <cite>133</cite>
                            </li>
                            <li>
                                <a title="郑州" href="https://www.damai.cn/zhengzhou/" target="_blank">郑州</a>
                                <cite>23</cite>
                            </li>
                            <li>
                                <a title="石家庄" href="https://www.damai.cn/sjz/" target="_blank">石家庄</a>
                                <cite>37</cite>
                            </li>
                            <li>
                                <a title="沈阳" href="https://www.damai.cn/sy/" target="_blank">沈阳</a>
                                <cite>34</cite>
                            </li>
                            <li>
                                <a title="内蒙古" href="https://www.damai.cn/neimeng/" target="_blank">内蒙古</a>
                                <cite>22</cite>
                            </li>
                            <li>
                                <a title="长春" href="https://www.damai.cn/changchun/" target="_blank">长春</a>
                                <cite>36</cite>
                            </li>
                            <li>
                                <a title="青岛" href="https://www.damai.cn/qd/" target="_blank">青岛</a>
                                <cite>24</cite>
                            </li>
                            <li>
                                <a title="大连" href="https://www.damai.cn/dl/" target="_blank">大连</a>
                                <cite>37</cite>
                            </li>
                            <li>
                                <a title="唐山" href="https://www.damai.cn/tangshan/" target="_blank">唐山</a>
                                <cite>5</cite>
                            </li>
                            <li>
                                <a title="银川" href="https://www.damai.cn/ych/" target="_blank">银川</a>
                                <cite>9</cite>
                            </li>
                            <li>
                                <a title="晋城" href="https://www.damai.cn/jc/" target="_blank">晋城</a>
                                <cite>6</cite>
                            </li>
                            <li>
                                <a title="海外" href="https://www.damai.cn/hwz/" target="_blank">海外</a>
                                <cite>17</cite>
                            </li>
                            <li>
                                <a title="吉林" href="https://www.damai.cn/jilin/" target="_blank">吉林</a>
                                <cite>1</cite>
                            </li>
                            <li>
                                <a title="潍坊" href="https://www.damai.cn/weifang/" target="_blank">潍坊</a>
                                <cite>2</cite>
                            </li>
                            <li>
                                <a title="营口" href="https://www.damai.cn/yingkou/" target="_blank">营口</a>
                                <cite>1</cite>
                            </li>
                        </ul>
                    </dd>
                </dl>
                <dl>
                    <dt>华东地区</dt>
                    <dd>
                        <ul>
                            <li>
                                <a title="上海" href="https://www.damai.cn/sh/" target="_blank">上海</a>
                                <cite>604</cite>
                            </li>
                            <li>
                                <a title="南京" href="https://www.damai.cn/nj/" target="_blank">南京</a>
                                <cite>153</cite>
                            </li>
                            <li>
                                <a title="台州" href="https://www.damai.cn/taizhou/" target="_blank">台州</a>
                                <cite>12</cite>
                            </li>
                            <li>
                                <a title="杭州" href="https://www.damai.cn/hz/" target="_blank">杭州</a>
                                <cite>163</cite>
                            </li>
                            <li>
                                <a title="宁波" href="https://www.damai.cn/ningbo/" target="_blank">宁波</a>
                                <cite>44</cite>
                            </li>
                            <li>
                                <a title="无锡" href="https://www.damai.cn/wuxi/" target="_blank">无锡</a>
                                <cite>28</cite>
                            </li>
                            <li>
                                <a title="温州" href="https://www.damai.cn/wenzhou/" target="_blank">温州</a>
                                <cite>10</cite>
                            </li>
                            <li>
                                <a title="苏州" href="https://www.damai.cn/suz/" target="_blank">苏州</a>
                                <cite>66</cite>
                            </li>
                            <li>
                                <a title="常州" href="https://www.damai.cn/changzhou/" target="_blank">常州</a>
                                <cite>19</cite>
                            </li>
                            <li>
                                <a title="南通" href="https://www.damai.cn/nantong/" target="_blank">南通</a>
                                <cite>10</cite>
                            </li>
                            <li>
                                <a title="扬州" href="https://www.damai.cn/yangzhou/" target="_blank">扬州</a>
                                <cite>6</cite>
                            </li>
                            <li>
                                <a title="合肥" href="https://www.damai.cn/hf/" target="_blank">合肥</a>
                                <cite>41</cite>
                            </li>
                            <li>
                                <a title="嘉兴" href="https://www.damai.cn/jx/" target="_blank">嘉兴</a>
                                <cite>26</cite>
                            </li>
                            <li>
                                <a title="绍兴" href="https://www.damai.cn/sx/" target="_blank">绍兴</a>
                                <cite>18</cite>
                            </li>
                            <li>
                                <a title="金华" href="https://www.damai.cn/jinhua/" target="_blank">金华</a>
                                <cite>5</cite>
                            </li>
                            <li>
                                <a title="盐城" href="https://www.damai.cn/yancheng/" target="_blank">盐城</a>
                                <cite>1</cite>
                            </li>
                            <li>
                                <a title="安庆" href="https://www.damai.cn/anqing/" target="_blank">安庆</a>
                                <cite>2</cite>
                            </li>
                            <li>
                                <a title="蚌埠" href="https://www.damai.cn/bengbu/" target="_blank">蚌埠</a>
                                <cite>2</cite>
                            </li>
                            <li>
                                <a title="马鞍山" href="https://www.damai.cn/maanshan/" target="_blank">马鞍山</a>
                                <cite>4</cite>
                            </li>
                            <li>
                                <a title="铜陵" href="https://www.damai.cn/tongling/" target="_blank">铜陵</a>
                                <cite>1</cite>
                            </li>
                            <li>
                                <a title="黄山" href="https://www.damai.cn/huangshan/" target="_blank">黄山</a>
                                <cite>1</cite>
                            </li>
                            <li>
                                <a title="湖州" href="https://www.damai.cn/huzhou/" target="_blank">湖州</a>
                                <cite>1</cite>
                            </li>
                        </ul>
                    </dd>
                </dl>
                <dl>
                    <dt>华南地区</dt>
                    <dd>
                        <ul>
                            <li>
                                <a title="广州" href="https://www.damai.cn/gz/" target="_blank">广州</a>
                                <cite>120</cite>
                            </li>
                            <li>
                                <a title="港澳台" href="https://www.damai.cn/hk/" target="_blank">港澳台</a>
                                <cite>58</cite>
                            </li>
                            <li>
                                <a title="深圳" href="https://www.damai.cn/sz/" target="_blank">深圳</a>
                                <cite>100</cite>
                            </li>
                            <li>
                                <a title="南宁" href="https://www.damai.cn/nn/" target="_blank">南宁</a>
                                <cite>19</cite>
                            </li>
                            <li>
                                <a title="佛山" href="https://www.damai.cn/foshan/" target="_blank">佛山</a>
                                <cite>24</cite>
                            </li>
                            <li>
                                <a title="福州" href="https://www.damai.cn/fuzhou/" target="_blank">福州</a>
                                <cite>19</cite>
                            </li>
                            <li>
                                <a title="东莞" href="https://www.damai.cn/dg/" target="_blank">东莞</a>
                                <cite>11</cite>
                            </li>
                            <li>
                                <a title="厦门" href="https://www.damai.cn/xiamen/" target="_blank">厦门</a>
                                <cite>27</cite>
                            </li>
                            <li>
                                <a title="海口" href="https://www.damai.cn/haikou/" target="_blank">海口</a>
                                <cite>9</cite>
                            </li>
                            <li>
                                <a title="珠海" href="https://www.damai.cn/zhuhai/" target="_blank">珠海</a>
                                <cite>17</cite>
                            </li>
                            <li>
                                <a title="泉州" href="https://www.damai.cn/quanzhou/" target="_blank">泉州</a>
                                <cite>10</cite>
                            </li>
                            <li>
                                <a title="中山" href="https://www.damai.cn/zs/" target="_blank">中山</a>
                                <cite>17</cite>
                            </li>
                            <li>
                                <a title="惠州" href="https://www.damai.cn/huizhou/" target="_blank">惠州</a>
                                <cite>3</cite>
                            </li>
                            <li>
                                <a title="柳州" href="https://www.damai.cn/lz/" target="_blank">柳州</a>
                                <cite>5</cite>
                            </li>
                            <li>
                                <a title="桂林" href="https://www.damai.cn/gl/" target="_blank">桂林</a>
                                <cite>6</cite>
                            </li>
                            <li>
                                <a title="江门" href="https://www.damai.cn/jiangmen/" target="_blank">江门</a>
                                <cite>6</cite>
                            </li>
                            <li>
                                <a title="北海" href="https://www.damai.cn/beihai/" target="_blank">北海</a>
                                <cite>2</cite>
                            </li>
                            <li>
                                <a title="汕头" href="https://www.damai.cn/shantou/" target="_blank">汕头</a>
                                <cite>2</cite>
                            </li>
                        </ul>
                    </dd>
                </dl>
                <dl>
                    <dt>中西部</dt>
                    <dd>
                        <ul>
                            <li>
                                <a title="成都" href="https://www.damai.cn/cd/" target="_blank">成都</a>
                                <cite>203</cite>
                            </li>
                            <li>
                                <a title="重庆" href="https://www.damai.cn/cq/" target="_blank">重庆</a>
                                <cite>134</cite>
                            </li>
                            <li>
                                <a title="武汉" href="https://www.damai.cn/wuhan/" target="_blank">武汉</a>
                                <cite>98</cite>
                            </li>
                            <li>
                                <a title="昆明" href="https://www.damai.cn/km/" target="_blank">昆明</a>
                                <cite>30</cite>
                            </li>
                            <li>
                                <a title="南昌" href="https://www.damai.cn/nanchang/" target="_blank">南昌</a>
                                <cite>41</cite>
                            </li>
                            <li>
                                <a title="长沙" href="https://www.damai.cn/cs/" target="_blank">长沙</a>
                                <cite>81</cite>
                            </li>
                            <li>
                                <a title="贵阳" href="https://www.damai.cn/gy/" target="_blank">贵阳</a>
                                <cite>27</cite>
                            </li>
                            <li>
                                <a title="兰州" href="https://www.damai.cn/lanzhou/" target="_blank">兰州</a>
                                <cite>6</cite>
                            </li>
                            <li>
                                <a title="株洲" href="https://www.damai.cn/zhuzhou/" target="_blank">株洲</a>
                                <cite>81</cite>
                            </li>
                            <li>
                                <a title="乌鲁木齐" href="https://www.damai.cn/wulumuqi/" target="_blank">乌鲁木</a>
                                <cite>6</cite>
                            </li>
                            <li>
                                <a title="洛阳" href="https://www.damai.cn/luoyang/" target="_blank">洛阳</a>
                                <cite>1</cite>
                            </li>
                            <li>
                                <a title="拉萨" href="https://www.damai.cn/ls/" target="_blank">拉萨</a>
                                <cite>17</cite>
                            </li>
                        </ul>
                    </dd>
                </dl>
            </div>
        </div>
        <!-- 城市切换 end -->


        <!-- 顶部栏 begin -->
        <ul class="m-topbar">
            <li class="itm first">
                <!-- 搜索 begin -->
                <div class="m-sch">
                    <input type="text" class="ipt" id="txtSearchText" placeholder="请输入演出、赛事、艺人、场馆名称..."
                           autocomplete="off">
                    <a class="btn" href="javascript:;" id="btnSearch">搜索</a>
                    <div class="m-suggest" id="rlist_txtSearchText">
                    </div>
                </div>
                <!-- 搜索 end -->
            </li>
            <li class="itm">
                <!-- 用户登录 begin -->
                <div class="m-sign m-sign-log">
                    <label id="userLoginInfo">
                        <a class="user" href="javascript:;"><img
                                original="//dui.dmcdn.cn/dm_2015/goods//images/user.png"
                                src="${ctx}/static/image/user.png" style="display: block;"></a>
                        <span class="sign"><a href="https://www.damai.cn/redirect.aspx?type=login">登录</a> | <a
                                href="https://www.damai.cn/redirect.aspx?type=reg">注册</a></span>
                    </label>
                    <div class="menu" my="menu" style="display:none;">
                        <a href="https://my.damai.cn/account/myinfo.aspx" target="_blank" class="first">个人信息</a>
                        <a href="https://order.damai.cn/index.aspx" target="_blank">订单管理</a>
                        <a href="https://coupon.damai.cn/coupon-web-damai/mycoupon/myCoupon" target="_blank">我的优惠券</a>
                        <a href="https://www.damai.cn/redirect.aspx?type=loginout" class="exit">退出</a>
                    </div>
                </div>
                <!-- 用户登录 end -->
            </li>
        </ul>
        <!-- 顶部栏 end -->
    </div>
</div>
<div class="g-bd" data-image="" data-color="" data-spm-anchor-id="a2o6e.project.0.i1.3c2c1bf9uOcuDS"
     style="background-position: center 50px;">
    <div class="g-bdc">
        <div class="g-mn">

            <!-- 终极页项目信息 begin -->
            <div class="m-box m-box-col2 m-box-goods" id="projectInfo">
                <div class="hd">
                    <!-- 面包屑 begin -->
                    <p class="m-crm">
                        <strong>${detailList.showName}</strong>
                    </p>
                    <!-- 面包屑 end -->
                </div>

                <div class="mn">
                    <!-- 项目海报 begin -->
                    <div class="m-poster">
                        <!-- 项目图 begin -->
                        <div class="m-picbox">
                            <img original="//pimg.dmcdn.cn/perform/project/1660/${detailList.showImg}" title="${detailList.showTitle}"
                                 alt="${detailList.showName}" width="277" height="373" src="${ctx}/static/image/${detailList.showImg}"
                                 style="display: block;">

                        </div>
                        <!-- 项目图 end -->

                        <!-- 分享 begin -->
                        <div class="m-share" data-spm="click">
                            <span class="txt">分享到：</span>
                            <!-- JiaThis Button BEGIN -->
                            <div class="jiathis_style">
                                <a href="http://service.weibo.com/share/share.php?title=%E6%88%91%E5%9C%A8@%E5%A4%A7%E9%BA%A6%E7%BD%91%20%E3%80%8Ewww.damai.cn%E3%80%8F%E5%8F%91%E7%8E%B0%E4%BA%86%E4%B8%80%E4%B8%AA%E9%9D%9E%E5%B8%B8%E4%B8%8D%E9%94%99%E7%9A%84%E6%BC%94%E5%87%BA:%E3%80%8E2018%E4%B8%AD%E5%9B%BD%E5%A4%A7%E8%BF%90%E6%B2%B3%E5%BA%99%E4%BC%9A%E9%9F%B3%E4%B9%90%E8%8A%82%E3%80%8F,%E6%97%B6%E9%97%B4%E6%98%AF2018.11.03-11.04%EF%BC%8C%E5%9C%BA%E9%A6%86%E5%9C%A8,%E5%BC%BA%E7%83%88%E6%8E%A8%E8%8D%90%EF%BC%81%E5%88%86%E4%BA%AB%E4%B8%80%E4%B8%8B%3E%3E%3E%3E%3E%3E&amp;url=https%3a%2f%2fpiao.damai.cn%2f166083.html&amp;source=bookmark&amp;appkey=3588246140&amp;pic=https%3A%2F%2Fpimg.dmcdn.cn%2Fperform%2Fproject%2F1660%2F166083_n.jpg&amp;ralateUid=1722647874"
                                   class="jiathis_button_tsina" title="分享到微博" target="_blank"
                                   data-spm-click="gostr=/damai_pc.default.click;localid=share_0;dclicktitle=微博&amp;ditem_id=166083"><span
                                        class="jiathis_txt jtico jtico_tsina"></span></a>
                                <a class="jiathis_button_weixin" title="分享到微信"
                                   data-spm-click="gostr=/damai_pc.default.click;localid=share_1;dclicktitle=微信&amp;ditem_id=166083"><span
                                        class="jiathis_txt jtico jtico_weixin"></span></a>
                                <a href="http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url=https%3A%2F%2Fpiao.damai.cn%2F166083.html&amp;title=%E6%88%91%E5%9C%A8@%E5%A4%A7%E9%BA%A6%E7%BD%91%20%E3%80%8Ewww.damai.cn%E3%80%8F%E5%8F%91%E7%8E%B0%E4%BA%86%E4%B8%80%E4%B8%AA%E9%9D%9E%E5%B8%B8%E4%B8%8D%E9%94%99%E7%9A%84%E6%BC%94%E5%87%BA:%E3%80%8E2018%E4%B8%AD%E5%9B%BD%E5%A4%A7%E8%BF%90%E6%B2%B3%E5%BA%99%E4%BC%9A%E9%9F%B3%E4%B9%90%E8%8A%82%E3%80%8F,%E6%97%B6%E9%97%B4%E6%98%AF2018.11.03-11.04%EF%BC%8C%E5%9C%BA%E9%A6%86%E5%9C%A8,%E5%BC%BA%E7%83%88%E6%8E%A8%E8%8D%90%EF%BC%81%E5%88%86%E4%BA%AB%E4%B8%80%E4%B8%8B%3E%3E%3E%3E%3E%3E&amp;pics=http%3A%2F%2Fpimg.dmcdn.cn%2Fperform%2Fproject%2F1660%2F166083_n.jpg&amp;summary="
                                   class="jiathis_button_qzone" title="分享到QQ空间" target="_blank"
                                   data-spm-click="gostr=/damai_pc.default.click;localid=share_2;dclicktitle=QQ空间&amp;ditem_id=166083"><span
                                        class="jiathis_txt jtico jtico_qzone"></span></a>
                            </div>
                            <!-- JiaThis Button END -->
                        </div>
                        <!-- 分享 end -->


                    </div>
                    <!-- 项目海报 end -->

                    <!-- 项目模块 begin -->
                    <div class="m-goods">
                        <h2 class="tt" data-spm="click">
                            <span class="txt">${detailList.showName}</span>
                            <a href="javascript:;" class="m-flowers"
                               data-spm-click="gostr=/damai_pc.default.click;localid=likebtn;ditem_id=166083">
                                <span class="ico ico-2"></span>
                                <span class="txt">送花</span>
                                <span class="num">4</span>
                                <span class="add">人气+1</span>
                            </a>
                        </h2>
                        <h3 class="stt">
                            <span class="quotl"></span>
                            <span class="txt">${detailList.showTitle}</span>
                            <span class="quotr"></span>
                        </h3>
                        <!-- 时间轴 begin -->
                        <div class="m-timeline m-timeline-3" id="projectAxis">
                            <div class="wrap">
                                <div class="box">
                                    <div class="bar">
                                        <div class="line" style="width:290px"></div>
                                    </div>
                                    <div class="itm itm-1 " style="width:145px"><h3 class="txt">项目待定</h3>
                                        <div class="ico"></div>
                                        <p class="date"></p></div>
                                    <div class="itm itm-2 " style="width:145px"><h3 class="txt">预售/预订</h3>
                                        <div class="ico"></div>
                                        <p class="date"></p></div>
                                    <div class="itm itm-3 itm-crt" style="width:145px"><h3 class="txt">售票中</h3>
                                        <div class="ico"></div>
                                        <p class="date"></p></div>
                                    <div class="itm itm-4 " style="width:145px"><h3 class="txt">演出开始</h3>
                                        <div class="ico"></div>
                                        <p class="date"></p></div>
                                </div>
                            </div>
                        </div>
                        <!-- 时间轴 end -->

                        <!-- 产品模块 begin -->
                        <div class="m-product m-product-2 -m-product-1 j_goodsDetails">
                            <div class="m-goodstips m-goodstips-2" id="projectStatusDescn" style="display:none;">
                                <div class="hd">
                                    <i class="ico"></i>
                                    <span class="txt txt-status" data-status="售票中">售票中</span>
                                </div>
                                <div class="bd">
                                    <div class="tips">
                                        <div class="box" style=""><p class="itm">
                                        </p></div>
                                        <div class="ops"><span class="btnsel"></span></div>
                                    </div>
                                </div>

                            </div>


                            <!-- 促销信息模块 begin -->
                            <div class="" id="yhcx" data-row="4" data-col="1"></div>
                            <div class="m-load z-hide" id="getInfoFail"><p class="txt"><i></i>加载失败</p></div>
                            <!-- 促销信息模块 end -->
                            <!-- 选择日历模块 begin -->
                            <div class="m-choose m-choose-picker" style="display:none" data-row="3" data-col="4">
                                <h3 class="tt" style="padding-top: 6px;">选择时间：</h3>
                                <div class="ct">
                                    <div class="m-datepicker">
                                        <div class="weekbox">
                                            <div class="box"></div>
                                        </div>
                                        <div class="datebox">
                                            <div class="box"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- 选择日历模块 end -->
                            <!-- 选择日期模块 begin -->
                            <div class="m-choose m-choose-date  " id="performList" data-col="4" data-spm="clicktime">
                                <h3 class="tt">
                                    演出时间：</h3>
                                <div class="ct">
                                    <ul class="lst">
                                        <li class="itm " data-performid="9106782" data-performtime="${detailList.showBeginTime}" data-buycount="20" id="firstperform">
                                            <a href="javascript:;" data-spm-click="gostr=/damai_pc.default.click;localid=item_0;dclicktitle=${detailList.showMinPrice}&amp;ditem_id=166083">
                                                <fmt:formatDate value="${detailList.showBeginTime}" pattern="yyyy.MM.dd"/>
                                            </a>
                                        </li>
                                            <li class="itm " data-performid="9106783" data-performtime="${detailList.showBeginTime}" data-buycount="20">
                                                <a href="javascript:;" data-spm-click="gostr=/damai_pc.default.click;localid=item_1;dclicktitle=${detailList.showMinPrice}&amp;ditem_id=166083">
                                                    <fmt:formatDate value="${detailList.showEndTime}" pattern="yyyy.MM.dd"/>
                                                </a>
                                            </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- 选择日期模块 end -->

                            <!-- 选择票价模块 begin -->
                            <div class="m-choose m-choose-price " id="priceList" data-col="4" data-spm="clickprice" data-performid="9106782">
                                <h3 class="tt">选择票价：</h3>
                                <div class="ct">
                                    <ul class="lst">
                                        <li class="itm" data-priceid="12534449" data-pricename="${detailList.showMinPrice}" data-price="180" data-taopiao="false" data-maxnum="20" data-status="1">
                                            <a href="javascript:;" data-spm-click="gostr=/damai_pc.default.click;localid=item_0;dclicktitle=${detailList.showMinPrice}&amp;ditem_id=166083">
                                                <span class="price">${detailList.showMinPrice}</span>
                                            </a>
                                        </li>
                                        <c:if test="${detailList.showMaxPrice != null and detailList.showMaxPrice != 0}">
                                            <li class="itm" data-priceid="12534449" data-pricename="${detailList.showMaxPrice}" data-price="180" data-taopiao="false" data-maxnum="20" data-status="1">
                                                <a href="javascript:;" data-spm-click="gostr=/damai_pc.default.click;localid=item_0;dclicktitle=${detailList.showMaxPrice}&amp;ditem_id=166083">
                                                    <span class="price">${detailList.showMaxPrice}</span>
                                                </a>
                                            </li>
                                        </c:if>
                                    </ul>
                                    <div class="tips-warn z-hide" id="warnXiangou"><span class="txt"></span></div>
                                    <div class="tips tips-oos"><span class="ico"></span><span
                                            class="txt">暂时无货，登录试试运气~</span></div>
                                </div>
                            </div>
                            <!-- 选择票价模块 end -->

                            <!-- 购物车模块 begin -->
                            <div class="m-cart  " id="cartList" style="" data-spm="click">
                                <h3 class="tt" style="display:none;">您选择了：</h3>
                                <div class="ct" style="display:none;">
                                    <ul class="lst"></ul>
                                </div>

                                <div class="ops">
                                    <a href="javascript:;" class="u-btn u-btn-c1 u-btn-choose" id="btnXuanzuo"
                                       style="display:none;"
                                       data-spm-click="gostr=/damai_pc.default.click;localid=buyselectseatbtn;ditem_id=166083">选座购买</a>
                                    <a class="u-btn u-btn-buynow" href="javascript:;" id="btnBuyNow"
                                       data-spm-click="gostr=/damai_pc.default.click;localid=fastbuybtn;ditem_id=166083">立即购买</a>
                                </div>

                            </div>
                            <!-- 购物车模块 end -->


                            <div class="m-qrcode"><!-- 大麦网客户端二维码 -->
                                <h3 class="tt"><span id="ErWeiMaTips">手机扫一扫<br>下单更快捷</span></h3>
                                <p class="ct"><img original="//static.dmcdn.cn/Erweima/1660/166083.jpg" alt="大麦网客户端"
                                                   width="109" height="108" src="${ctx}/static/image/166083.jpg"
                                                   style="display: block;"></p>
                            </div>
                            <div class="m_heighlight_tip"></div>
                        </div>
                        <!-- 产品模块 end -->
                    </div>
                    <!-- 项目模块 end -->
                </div>

                <!-- 侧栏 begin -->
                <div class="sd">
                    <div class="m-agent">
                        <div class="tt">
                            <img original="//dui.dmcdn.cn/dm_2015/goods/images/m-agent-logo.png" alt="票务总代" src="//dui.dmcdn.cn/dm_2015/goods/images/m-agent-logo.png" style="display: inline;">
                        </div>
                        <div class="ct">
                            <a class="itm" target="_blank">本项目由大麦网总代理</a>
                            <a class="itm" target="_blank">MAITIX独家票务系统支持</a>
                        </div>
                    </div>

                    <div class="m-sdbox m-showtime">


                        <h2 class="tt">演出时间</h2>
                        <div class="ct">
                            <span class="txt"><fmt:formatDate value="${detailList.showBeginTime}" pattern="yyyy.MM.dd"/>-<fmt:formatDate value="${detailList.showEndTime}" pattern="yyyy.MM.dd"/></span>
                            <a href="javascript:;" class="u-btn u-btn-cal" id="rili"
                               onclick="showcalendar(event, this); return false;" onfocus="showcalendar(event, this);"
                               data-value="2018.11.03"><i>日历</i></a>
                        </div>

                    </div>


                    <!-- 演出场馆 begin -->
                    <div class="m-sdbox m-venue">
                        <h2 class="tt">演出场馆</h2>
                        <div class="ct">
                            <p class="txt"> ${detailList.showPlace} </p>
                        </div>
                    </div>
                    <!-- 演出场馆 end -->

                    <!-- 票品支持 begin -->
                    <div class="m-sdbox m-support">
                        <h2 class="tt">票品支持</h2>
                        <div class="ct">
                            <ul class="m-mantab">
                                <li class="itm"><a href="javascript:;" class="u-btn u-btn-super"><i></i>超级票</a>
                                    <div class="layer">
                                        <div class="hd"><a href="javascript:;" class="btn-close">关闭</a></div>
                                        <div class="bd">
                                            <p>1.本项目支持使用【电子钱包-超级票账户】消费，支付时优先扣减超级票余额。</p>
                                            <p>2.超级票成功充值电子钱包后，享受全网通兑、分次消费、无有效期限制、无使用张数限制、秒杀、抢票等服务。</p>
                                        </div>
                                        <div class="ft">
                                            <a href="javascript:;" class="btn btn-close">关闭</a>
                                        </div>
                                    </div>
                                </li>
                                <li class="itm"><a href="javascript:;" class="u-btn u-btn-wallet"><i></i>电子钱包</a>
                                    <div class="layer">
                                        <div class="hd"><a href="javascript:;" class="btn-close">关闭</a></div>
                                        <div class="bd">
                                            <p>本项目支持电子钱包。</p>
                                            <p>1. 电子钱包是由大麦网自主研发的第三方支付平台</p>
                                            <p>2. 为每一个用户在购票过程中提供"简单、安全、快速"的在线支付解决方案</p>
                                        </div>
                                        <div class="ft">
                                            <a href="javascript:;" class="btn btn-close">关闭</a>
                                        </div>
                                    </div>
                                </li>

                                <li class="itm"><a href="javascript:;" class="u-btn u-btn-etkt"><i></i>电子票</a>
                                    <div class="layer">
                                        <div class="hd"><a href="javascript:;" class="btn-close">关闭</a></div>
                                        <div class="bd">
                                            <p>本项目支持二维码电子票</p>
                                        </div>
                                        <div class="ft">
                                            <a href="javascript:;" class="btn btn-close">关闭</a>
                                        </div>
                                    </div>
                                </li>
                                <li class="itm"><a href="javascript:;" class="u-btn u-btn-credit"><i></i>返积分</a>
                                    <div class="layer">
                                        <div class="hd"><a href="javascript:;" class="btn-close">关闭</a></div>
                                        <div class="bd">
                                            <p>【会员多倍积分】 大麦会员按不同等级可分别获得消费金额×50%到100%比例的积分返还</p>
                                            <p>您可以在积分商城兑换明星周边、演出票品、优惠卡券等商品，也可以参与抽奖活动，赢取幸运大礼。</p>
                                        </div>
                                        <div class="ft">
                                            <a href="javascript:;" class="btn btn-close">关闭</a>
                                        </div>
                                    </div>
                                </li>
                                <!-- -->


                                <li class="itm"><a href="javascript:;" class="u-btn u-btn-express"><i></i>快递</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- 票品支持 end -->

                    <!-- 实票配送 begin -->
                    <div class="m-sdbox m-entity" id="freight">
                        <h2 class="tt"> 实票配送</h2>
                        <div class="ct">
                            <div class="u-sel u-sel-c1 u-sel-entity">
                                <div class="hd">
                                    <span class="txt">杭州</span>
                                    <span class="ico"></span>
                                </div>
                                <div class="menu">
                                    <ul class="lst">
                                        <li class="itm first">安徽、浙江、江苏、上海 12元，发货后1-3天到达</li>
                                        <li class="itm ">澳门、香港、台湾 40元，发货后1-5天到达</li>
                                        <li class="itm ">其它地区 18元，发货后1-3天到达</li>
                                    </ul>
                                </div>
                            </div>
                            <p class="tips">同城10元，发货后1-3天到达</p>
                        </div>
                    </div>
                    <!-- 实票配送 end -->

                </div>
                <!-- 侧栏 end -->

            </div>
            <!-- 终极页项目信息 end -->

            <!-- 终极页项目详情 begin -->
            <div class="m-box m-box-col2">
                <div class="mn">
                    <!-- 项目详情 begin -->
                    <div class="m-detail">
                        <!-- 项目详情选项卡 begin -->
                        <div class="m-infonav" id="m-infonav">
                            <div class="hd">
                                <div class="nav">
                                    <ul class="tab">
                                        <li><a data-href="#m-infonav" href="javascript:;"
                                               class="itm itm-tab first z-crt" id="tabProjectDescn" data-show="1,2"
                                               data-idx="0"><i></i><span class="txt">演出信息</span></a></li>
                                        <li><a data-href="#m-infonav" href="javascript:;" class="itm itm-tab"
                                               data-idx="3"><i></i><span class="txt">购买说明</span></a></li>
                                        <li><a data-href="#m-infonav" href="javascript:;" class="itm itm-tab"
                                               data-idx="4"><i></i><span class="txt">付款方式</span></a></li>
                                    </ul>

                                    <div class="buy" id="buyButtonC" style="">
                                        <a href="javascript:;" class="u-btn u-btn-buy " id="btnXuanzuo2"
                                           style="display:none;"><i class="ico"></i><span class="txt">选座购买</span></a>
                                        <a href="javascript:;" class="u-btn u-btn-cart " id="btnBuyNow2"><i
                                                class="ico"></i><span class="txt">立即购买</span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="bd">
                                <div class="itm-tab z-show" rel="0">
                                    <!-- 演出信息 begin -->
                                    <div class="m-infobase m-liveinfo">
                                        <dl class="infoitm">
                                            <dt class="tt"><span class="txt">基本信息</span></dt>
                                            <dd class="ct">
                                                <div class="table-info">
                                                    <table class="m-table2">
                                                        <tbody>
                                                        <tr>
                                                            <td width="90" class="bg">演出时间</td>
                                                            <td><fmt:formatDate value="${detailList.showBeginTime}" pattern="yyyy.MM.dd"/>-<fmt:formatDate value="${detailList.showEndTime}" pattern="yyyy.MM.dd"/></td>
                                                            <td width="90" class="bg">演出场馆</td>
                                                            <td width="200">${detailList.showPlace}</td>
                                                        </tr>
                                                        <tr>
                                                            <td width="90" class="bg">演出时长</td>
                                                            <td>最低演出时长 5小时</td>
                                                            <td width="90" class="bg">入场时间</td>
                                                            <td width="200">演出前约30分钟</td>
                                                        </tr>
                                                        <tr></tr>
                                                        <tr></tr>
                                                        <tr></tr>
                                                        <tr>
                                                            <td class="bg">限购</td>
                                                            <td>选座购买每单限6张，立即购买每单限20张。</td>
                                                            <td class="bg">儿童入场提示</td>
                                                            <td>儿童一律凭票入场，须在家长陪同下观看，谢绝宠物入内</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="bg">座位类型</td>
                                                            <td>不对号入座</td>
                                                            <td class="bg">禁止携带物品</td>
                                                            <td>
                                                                由于安保和版权的原因，大多数演出、展览及比赛场所禁止携带食品、饮料、专业摄录设备、打火机等物品，请您注意现场工作人员和广播的提示，予以配合
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="bg">付款时效提醒</td>
                                                            <td>
                                                                购票下单成功后需在15分钟内完成支付，未支付成功的订单，将在下单15分钟后系统自动取消，所选价位将自动释放后重新点亮，大家可及时刷新购票页面进行购买。
                                                            </td>
                                                            <td class="bg">缺货登记提醒</td>
                                                            <td>所需票价若为灰色，说明已经售完。您可以在当前页面进行缺货登记，后期如果有票会以短信形式及时通知。</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="bg">发票说明</td>
                                                            <td>如需发票，请您在演出开始前通过订单页补开，发票将在演出结束后1个月左右，统一由开具方提供</td>
                                                            <td class="bg">实名制</td>
                                                            <td>无需实名制购票</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="bg">座位类型</td>
                                                            <td>现场无座位，请听从现场安排，有序进场</td>
                                                            <td class="bg">物品寄存</td>
                                                            <td>无寄存处，请自行保管携带物品</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="bg">主演演员（团体）</td>
                                                            <td>林宥嘉、谢天笑、谭维维、南征北战</td>
                                                            <td class="bg">大麦网首次开售时全场可售门票总张数</td>
                                                            <td>12000</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="bg">票品类型</td>
                                                            <td>纸质票、二维码电子票</td>
                                                            <td class="bg">入场方式</td>
                                                            <td>提供多种入场方式，请以订购后的提示为准</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="bg">班车信息</td>
                                                            <td>本场音乐节无班车提供，请自行安排出行，观演愉快</td>
                                                            <td class="bg">露营信息</td>
                                                            <td>本场音乐节不提供露营区，请谅解</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="bg">退换说明</td>
                                                            <td>票品不支持退换。如无法正常观看，还请自行处理，给您带来不便敬请谅解</td>
                                                            <td class="bg">最低演出曲目数</td>
                                                            <td>20首</td>
                                                        </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </dd>
                                        </dl>


                                        <dl class="infoitm">
                                            <dt class="tt"><span class="txt">项目介绍</span></dt>
                                            <dd class="ct">
                                                <div class="pre"><h4>
                                                    演出介绍
                                                </h4>
                                                    <p>
                                                        <br>
                                                    </p>
                                                    <div style="text-align:center;">
                                                        　　十一月的杭城迎来“大事”，
                                                    </div>
                                                    <div style="text-align:center;">
                                                        　　不羁的你依然是时代主角，无关岁月。
                                                    </div>
                                                    <div style="text-align:center;">
                                                        　　生活需要来一打鸡血！
                                                    </div>
                                                    <div style="text-align:center;">
                                                        　　是信仰，是欢呼，是身与心擦出的火！
                                                    </div>
                                                    <div style="text-align:center;">
                                                        　　重磅来袭！
                                                    </div>
                                                    <div style="text-align:center;">
                                                        　　2018中国大运河庙会音乐节将火热开启！
                                                    </div>
                                                    <div style="text-align:center;">
                                                        　　2018中国大运河庙会音乐节
                                                    </div>
                                                    <div style="text-align:center;">
                                                        　　时间：2018年11月3—4日
                                                    </div>
                                                    <div style="text-align:center;">
                                                        　　地点：杭州拱墅区·智慧网谷
                                                    </div>
                                                    <div style="text-align:center;">
                                                        <strong>　　一场狂欢派对</strong>
                                                    </div>
                                                    <div style="text-align:center;">
                                                        　　▼
                                                    </div>
                                                    <div style="text-align:center;">
                                                        　　和林宥嘉一起嗨翻现场；
                                                    </div>

                                                    <div style="text-align:center;">
                                                        <img original="https://damaipimg.oss-cn-beijing.aliyuncs.com/cfs/src/a430650d-b13e-4731-9917-8f3fe6fbcc2e" width="600" height="335" alt="" data-spm-anchor-id="a2o6e.project.0.i1.515e63f2wTUcO8" src="https://damaipimg.oss-cn-beijing.aliyuncs.com/cfs/src/a430650d-b13e-4731-9917-8f3fe6fbcc2e" style="display: inline;">
                                                    </div>
                                                    <div style="text-align:center;">
                                                        　　跟着中国摇滚英雄谢天笑感受摇滚音乐的魅力；
                                                    </div>
                                                    <div style="text-align:center;">
                                                        　　甩掉包袱来到音乐天堂享受谭维维的高音女声；
                                                    </div>
                                                    <div style="text-align:center;">
                                                        　　一同感受南征北战NZBZ的音乐正能量。
                                                    </div>
                                                    <div style="text-align:center;">
                                                        　　音乐世界的小火山即将爆发，
                                                    </div>
                                                    <div style="text-align:center;">
                                                        　　就等你来躁！
                                                    </div>
                                                    <h4>
                                                        演出嘉宾介绍
                                                    </h4>
                                                    <p>
                                                        <strong>　　林宥嘉</strong>
                                                    </p>

                                                    　　林宥嘉，自小展现歌唱天份，高中时成为校内热门乐团的主唱，2007年以20岁大学生身份，获得台湾歌唱选秀节目第一届《超级星光大道》冠军，与华研国际音乐签约成为歌手。<br>
                                                    　　2008年发行第一张个人专辑正式出道，目前共发行《神秘嘉宾》、《感官/世界》、《美妙生活》、《大小说家》及《今日营业中》五张精彩优质、为国语乐坛带来新面貌的音乐专辑，以及一张《JAZZ
                                                    CHANNEL》演唱会实况录音专辑。<br>
                                                    　　学生时代开始接触音乐加入乐团，喜欢各种音乐的他，对音乐的敏感度相当高，在音乐的世界里林宥嘉绝对是一个很特别的人。<br>
                                                    <strong>　　谢天笑</strong>

                                                    　　谢天笑是迄今为止中国摇滚乐历史上特立独行并始终如一的摇滚英雄。谢天笑自创的古筝与摇滚乐结合是属于谢天笑的标志与标签，开创出了全新的中国摇滚之声，他的音乐不仅仅是摇滚乐，还是西方现代文明与中国古老哲学思想的完美结合，是力量与思考的化身。他站在舞台中央与数万观众在身心的共鸣中唱和，那一刻，是谢天笑的世界。XTX，已经成为中国摇滚乐的符号，当仁不让，无可取代。<br>
                                                    <strong>　　谭维维</strong>


                                                    　　她音域宽广，嗓音极具个性，2016年她开启了自己的《观照》全新音乐之旅，从“夏长”开始，经过“秋收”、“冬藏”、“春生”，她希望借由音乐和大家一起对自己，对身外物，对心中事，用音乐的方式对自己做一次诚实的观照，她就是追寻自我的歌者——谭维维！<br>
                                                    　<strong>　南征北战NZBZ</strong>

                                                    　　中国多元流行组合，三位成员来自祖国的大江南北，其寓意为：年轻人要为自己的梦想和爱去努力征战拼搏。<br>
                                                    　　他们创造出的V-Pop（Various Pop
                                                    Muisc），被称为新时代“音乐强心剂”。自出道以来，先后为多部影视作品创作并演唱主题曲、推广曲等，从《我的天空》、《骄傲的少年》、好莱坞电影《忍者神龟2》中国区主题曲《破影而出》到闯入金马奖的《萨瓦迪卡》再到电影《长城》主题曲《饕餮》，他们是南征北战NZBZ组合。<br>
                                                    　　四大音乐重量级嘉宾即将在杭城掀起“超强音浪”<br>
                                                    　　音乐节当天更有众多嘉宾到场与你一起嗨，快来感受大运河庙会音乐节的诱耳魅力。<br>
                                                    <strong>　　五条人</strong>
                                                    　　五条人，中国民谣摇滚的代表性乐队，获得过很多音乐奖项，如华语音乐传媒大奖、台湾金音奖等，同时也跨界参加过不少当代艺术展览和活动。五条人的歌，是一代青年从乡土到县城再到国际大都市的悲欢离合，是大时代小人物的命运史诗。<br>
                                                    <strong>　　GG张思源</strong>

                                                    　　G.G(张思源)
                                                    ，优秀的Hip-Hop歌手，影视歌舞创作多元发展的全能艺人，标签化的潮流风向标。曾获得第三届网易云校园歌手大赛的冠军及人气奖。<br>
                                                    <strong>　　大波浪</strong>

                                                    　　大波浪乐队正式成立于2012年，是当下国内最具影响力的新浪潮、电子舞曲乐队。他们用极具个性与感染力的音乐，配合张力十足并赋有艺术性的舞台表演，成功征服国内外各大音乐节的现场。<br>
                                                    　<strong>　黑屋乐队</strong>
                                                    　　黑屋乐队，以独立流行的音乐风格记录着正值青春年少的他们初入现实社会最直接的内心感受。在音乐中强烈呼吁不同的个性应该得到应有的尊重，同时相信时间会让周遭变得更好。<br>
                                                    <strong>　　辛二(情绪波浪)</strong>

                                                    　　辛二，大学期间开始音乐创作，在2016年组建了情绪波浪乐队，从此开启一趟心智冒险。学不会叫嚣和逢迎，她依旧在做自己的过程中进行思维探索。懂和被懂都是幸福的事，peace
                                                    and love希望所有人都拥有。她认为当感官和思想被打开，当代的年轻人可以做得更多。<br>
                                                    <strong>　　跳跳番茄</strong>

                                                    　　跳跳番茄，他们的歌被自己定义为lowpower风格（也就是杭州话里落炮的意思），听起来很呆萌，有的是写给小朋友的鼓励，有的讲述了一个人在变成大人的过程中要经历的一些难过的时刻，但骨子里却有一种“歪了头由自己说”的硬核精神，温暖中带着要和世界的不美好对抗到底的倔强。?<br>
                                                    <strong>　　大牛&amp;肆君子</strong>

                                                    　　大牛&amp;肆君子乐队：梅（傲）兰（幽）竹（坚）菊（逸），古时称之于“君子”品行，表现不屈、谦逊、纯洁而有气节的品性。取此名用作激励自我寻求非固化生活方式的基本准则。乐队早期作品偏向于对古人豪情侠气的敬仰，后期则更倾注于江南绵绵情怀的表达。是一支来自江南，音乐表现充满下一却又不是温雅气质的乐队。<br>
                                                    <strong>　　桃金娘</strong>

                                                    　　桃金娘：新锐当红独立音乐人。生于江南旧弄小巷里，长于古老秀气的泉城，混迹在天南海北，闯荡过四野八荒。她崇尚一直在路上，记录生活的仪式感，她喜欢跟你我喝酒，谈论音乐里的往事。

                                                    <br/>
                                                    　　拒绝单调无聊，<br>
                                                    　　拒绝千篇一律，<br>
                                                    　　精彩内容不断，<br>
                                                    　　猛击你的心脏。<br>
                                                    　　本次音乐节不仅有好听的音乐，更汇聚了2018中国大运河庙会传统特色——创意集市、休闲娱乐活动、手工体验、亲子互动、各地美食等等，吃喝玩乐应有尽有，带给你视觉、听觉、味觉、嗅觉、触觉五大感官多重享受，赶快约上你的小伙伴一起来嗨吧！<br>
                                                    　　2018中国大运河庙会音乐节<br>
                                                    　　感受音乐power，为心灵充电，为梦想助力<br>
                                                    <h4>
                                                        温馨提示
                                                    </h4>
                                                    1、本次演出门票为电子票和纸质票。<br>
                                                    2、儿童一律凭票入场，须在家长陪同下观看，谢绝宠物入内。<br>
                                                    3、本次演出门票为单向门票入场制，一旦离开演出场地谢绝再度入场。<br>
                                                    4、本场演出不设坐席，均为站席观演。<br>
                                                    5、本项目下单成功后不支持退换票，请在下单前确认好自己要购买的价位和数量；如无法正常观看，还请自行处理。给您带来不便敬请谅解！<br>
                                                    <p>
                                                        6、实际演出内容以现场为准。
                                                    </p>
                                                    <h4>
                                                        交通指示
                                                    </h4>


                                                    <strong>　　关于2018第五届中国大运河庙会</strong><br>
                                                    　　2018第五届中国大运河庙会于10月1日当天隆重开幕。黄金周集市、中国大运河婚典、“无界之河”家居艺术展、运河文化使者招募、运河美食评选、中国大运河庙会音乐节、“运河杯”篮球邀请赛、超模大赛、双十一狂欢购集市、交响音乐会......精彩活动享不停！
                                                </div>
                                            </dd>
                                        </dl>

                                        <dl class="infoitm">
                                            <dt class="tt"><span class="txt">温馨提示</span></dt>
                                            <dd class="ct">
                                                <div class="table-info">
                                                    <table class="m-table2">
                                                        <tbody>
                                                        <tr>
                                                            <td class="bg">发票说明</td>
                                                            <td>如需发票，请您在演出开始前通过订单页补开，发票将在演出结束后1个月左右，统一由开具方提供</td>
                                                        </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </dd>
                                        </dl>

                                    </div>
                                    <!-- 演出信息 end -->
                                </div>
                                <!-- 1 -->

                                <div class="itm-tab" rel="3">
                                    <!-- 购票说明 begin -->
                                    <div class="m-infobase m-buydesc">
                                        <dl class="infoitm">
                                            <dt class="tt"><span class="txt">特别提示</span></dt>
                                            <dd>
                                                <h3 class="stt">售前提示</h3>
                                                <p>1.为避免快递配送不能及时送达，演出距开场时间少于3天时不提供【快递配送】服务，请您谅解！您可以选择电子票或在线支付后上门自取纸质票。
                                                    <a href="https://help.damai.cn/damai/contents/277/5966.html"
                                                       target="_blank" title="点击查看上门取票地址">点击查看上门取票地址&gt;&gt;</a></p>
                                            </dd>
                                            <dd>
                                                <p>2.凡演出票类商品，开票时间一般为演出前二到四周，正式开票后会第一时间短信通知您，请注意接收。</p>
                                            </dd>
                                            <dd>
                                                <p>
                                                    3.如您不是通过“选座购买”通道进行的票品购买，最终票品数量视项目主办方及场馆情况而定，正式开票后大麦网将根据用户付款先后顺序依次配票，可能存在票品不足不能为您配票的风险，如最终未能配票，大麦网承诺全额退款，但不承担其他损失。</p>
                                            </dd>
                                            <dd>
                                                <h3 class="stt">支付方式</h3>
                                                <p>网上银行（招商银行等） 支付平台（支付宝等） 转账汇款(招商银行等)　<a
                                                        href="https://help.damai.cn/damai/contents/281/5740.html"
                                                        target="_blank" title="查看详情">查看详情&gt;&gt;</a></p>
                                            </dd>
                                            <dd>
                                                <h3 class="stt">退/换货说明</h3>
                                                <p>针对不可抗力和非不可抗力的退/换票情况和处理，请点击查阅<a title="大麦网退换货说明" target="_blank"
                                                                                  href="https://help.damai.cn/damai/contents/299/2228.html">大麦网退换货说明&gt;&gt;</a>
                                                </p>
                                            </dd>
                                        </dl>
                                        <dl class="infoitm">
                                            <dt class="tt"><span class="txt">无线端购票</span></dt>
                                            <dd>
                                                <p>1. 使用智能设备用户在各应用商店中搜索"大麦"下载安装客户端，购票体验更流畅</p>
                                                <p>2. 非智能设备用户可浏览器访问m.damai.cn进行演出查询，随时购票</p>
                                            </dd>
                                            <dd class="appdown">
                                                <div class="applnk">
                                                    <a href="https://mapi.damai.cn/href.aspx?id=1" target="_blank"
                                                       class="iphone">iphone版</a>
                                                    <a href="https://mapi.damai.cn/href.aspx?id=2" target="_blank"
                                                       class="ipad">ipad版</a>
                                                    <a href="https://mapi.damai.cn/href.aspx?id=5" target="_blank"
                                                       class="android">android版</a>
                                                </div>
                                            </dd>
                                        </dl>
                                        <dl class="infoitm">
                                            <dt class="tt"><span class="txt">网上订购</span></dt>
                                            <dd><img original="//dui.dmcdn.cn/dm_2015/goods/images/process.jpg"
                                                     -src="//dui.dmcdn.cn/dm_2015/goods/img/process.jpg"></dd>
                                        </dl>
                                        <dl class="infoitm">
                                            <dt class="tt"><span class="txt">电话订购</span></dt>
                                            <dd><p>全国统一服务热线：<strong class="hotline">10103721 / 4006103721</strong></p>
                                            </dd>
                                        </dl>
                                        <dl class="infoitm" id="orderOnCompany">
                                            <dt class="tt"><span class="txt">上门订购</span></dt>
                                            <dd>
                                                <p>大麦网杭州分部</p>
                                                <p>办公地址：杭州市西湖区西溪路556号阿里中心·杭州Z空间1号楼一层旁 <a
                                                        href="https://map.damai.cn/Traffic/goThere.aspx?endCity=%e6%9d%ad%e5%b7%9e&amp;to=1&amp;end_x_y=120.107877,30.267042&amp;end=%e5%a4%a7%e9%ba%a6%e7%bd%91%e6%9d%ad%e5%b7%9e%e5%88%86%e9%83%a8"
                                                        class="c7" target="_blank" title="点击查看如何到达">点击查看如何到达</a></p>
                                                <p>营业时间：星期一至星期日9:00-18:00</p>
                                                <p>支付说明：支持现金和刷卡支付 <a
                                                        href="https://map.damai.cn/traffic/circumjacent.aspx?action=search&amp;cityName=%e6%9d%ad%e5%b7%9e&amp;cityId=1580&amp;Keyword=%e5%a4%a7%e9%ba%a6%e7%bd%91%e6%9d%ad%e5%b7%9e%e5%88%86%e9%83%a8&amp;option=bank&amp;CenterLngLat=120.107877,30.267042"
                                                        target="_blank" title="点击查看周边提款" class="c7">点击查看周边提款</a></p>
                                            </dd>
                                        </dl>
                                    </div>
                                    <!-- 购票说明 end -->
                                </div>
                                <div class="itm-tab" rel="4">
                                    <!-- 付款方式 begin -->
                                    <div class="m-infobase m-paymode" style="display: block;">
                                        <dl class="infoitm">
                                            <dt class="tt"><span class="txt">在线支付</span></dt>
                                            <dd><p>支持多家网上银行、支付平台（支付宝、快钱、银联、微信支付等）在线支付，<a
                                                    href="https://help.damai.cn/damai/channels/281.html"
                                                    target="_blank">查看详情&gt;&gt;</a></p></dd>
                                            <dd>
                                                <h3 class="stt">支付平台：</h3>
                                                <ul class="lst">
                                                    <li><img original="//static.dmcdn.cn/PayLogo/2.jpg" alt="支付宝"
                                                             style="display: inline;" src="${ctx}/static/image/2.jpg">
                                                    </li>
                                                    <li><img original="//static.dmcdn.cn/PayLogo/57.jpg" alt="微信扫码支付"
                                                             style="display: inline;" src="${ctx}/static/image/57.jpg">
                                                    </li>
                                                </ul>
                                            </dd>
                                            <dd>
                                                <h3 class="stt">网上银行：</h3>
                                                <ul class="lst">
                                                    <li><img original="//static.dmcdn.cn/PayLogo/10.jpg" alt="招商银行"
                                                             style="display: inline;" src="${ctx}/static/image/10.jpg">
                                                    </li>
                                                    <li><img original="//static.dmcdn.cn/PayLogo/11.jpg" alt="中国建设银行"
                                                             style="display: inline;" src="${ctx}/static/image/11.jpg">
                                                    </li>
                                                    <li><img original="//static.dmcdn.cn/PayLogo/12.jpg" alt="中国工商银行"
                                                             style="display: inline;" src="${ctx}/static/image/12.jpg">
                                                    </li>
                                                    <li><img original="//static.dmcdn.cn/PayLogo/13.jpg" alt="交通银行"
                                                             style="display: inline;" src="${ctx}/static/image/13.jpg">
                                                    </li>
                                                    <li><img original="//static.dmcdn.cn/PayLogo/14.jpg" alt="中国农业银行"
                                                             style="display: inline;" src="${ctx}/static/image/14.jpg">
                                                    </li>
                                                    <li><img original="//static.dmcdn.cn/PayLogo/15.jpg" alt="广东发展银行"
                                                             style="display: inline;" src="${ctx}/static/image/15.jpg">
                                                    </li>
                                                    <li><img original="//static.dmcdn.cn/PayLogo/17.jpg" alt="中国银行"
                                                             style="display: inline;" src="${ctx}/static/image/17.jpg">
                                                    </li>
                                                    <li><img original="//static.dmcdn.cn/PayLogo/23.jpg" alt="上海浦东发展银行"
                                                             style="display: inline;" src="${ctx}/static/image/23.jpg">
                                                    </li>
                                                </ul>
                                            </dd>
                                        </dl>
                                        <dl class="infoitm">
                                            <dt class="tt"><span class="txt">柜台付款</span></dt>
                                            <dd><p>您也可以选择就近的公司网点，到柜台直接付款购买，<a
                                                    href="https://help.damai.cn/damai/channels/284.html"
                                                    target="_blank">查看分公司上门地址&gt;&gt;</a></p></dd>
                                        </dl>
                                        <dl class="infoitm">
                                            <dt class="tt"><span class="txt">电子钱包</span></dt>
                                            <dd><p>电子钱包是由大麦网自主研发的第三方支付平台，为每一个用户在购票过程中提供"简单、安全、快速"的在线支付解决方案；<a
                                                    href="https://sale.damai.cn/2017dzqb/index.html" target="_blank">查看详情&gt;&gt;</a>
                                            </p></dd>
                                        </dl>
                                    </div>
                                    <!-- 付款方式 end -->
                                </div>

                                <div class="itm-tab" rel="5">
                                    <!-- 先付先抢 begin -->
                                    <div class="m-infobase m-payrob">
                                        <div class="infoitm">
                                            <dt class="tt"><span class="txt">详情介绍</span></dt>
                                            <dd>
                                                <p>
                                                    1.“先付先抢”是大麦网为广大用户推出的一项全新“特权”服务。凡是标有“先付先抢”活动图标的项目，只要在预售阶段付款成功，都将在正式开票前的2-24小时，获得优先于其他用户自主选座的权利。</p>
                                                <p>
                                                    2.付款成功后，您将在付款成功页面得到一个系统分配的排号，您也可以登录订单详情页面查看该号码。排号是完全按照付款成功的先后顺序分配，不区分票价。抢座开始前，会发送短信告知抢座时间，并对所有的排号进行分组，排号越靠前，被分入提前选座分组的机会越大，最大程度确保先付款用户的利益，所以，不要犹豫哦，马上占领先机！</p>
                                                <p>3.大麦网提供所有可售座位进行抢座，由用户自行选择；相对于传统预售配票，更加透明化，保证公平、公正、公开！</p>
                                                <p>4.如果因为时间关系或其他原因，未能及时参与抢座，您也无需担心。抢座结束后，大麦网工作人员会按照付款先后顺序依次挑选座位进行配票。</p>
                                                <p><a href="https://help.damai.cn/damai/contents/292/5706.html"
                                                      target="_blank"><img
                                                        original="//dui.dmcdn.cn/damai_v2/goods/img/grab-pic02.jpg"
                                                        alt=""></a></p>
                                            </dd>
                                        </div>
                                        <div class="infoitm">
                                            <dt class="tt"><span class="txt">无线端先付先抢详情</span></dt>
                                            <dd>
                                                <p>为方便用户随时随地抢票，大麦客户端同样支持先付先抢功能，且比网站更快更流畅的购买成功。</p>
                                                <p>请您按照如下提示下载大麦客户端：</p>
                                                <ul class="tab-ul-txt">
                                                    <li>iPhone、iPad、Android、Windows Phone等智能设备用户可在各应用市场（如App
                                                        Store、安卓市场等）搜索"大麦"进行下载安装
                                                    </li>
                                                    <li>无法安装客户端的用户可浏览器访问m.damai.cn进行购票。</li>
                                                </ul>
                                            </dd>
                                        </div>
                                        <div class="infoitm">
                                            <dt class="tt"><span class="txt">温馨提示</span></dt>
                                            <dd>
                                                <p>
                                                    1.现金支付、转账汇款、第三方渠道购买和上门付款的订单不支持本次抢座活动，付款成功后您将获得系统分配的排号，请您留意支付成功页面，或登录网站“订单管理-订单详情”查看排号；</p>
                                                <p>2.正式抢座从可以入场开始，直到抢座结束，期间任何时候都能进行抢座；</p>
                                                <p>3.部分手机或软件存在短信屏蔽功能，可能导致您收不到大麦网发送的短信提醒。</p>
                                                <div class="tab-grab-map-tis clear">
                                                    <a target="_blank" href="https://mobile.damai.cn/"
                                                       class="mtn fl"><img style="display:inline;"
                                                                           original="//dui.dmcdn.cn/damai_v2/goods/img/grab-pic03.png"></a>
                                                    <a target="_blank"
                                                       href="https://news.damai.cn/trends/a/20120528/1365.shtml"
                                                       class="fr"><img style="display: inline;"
                                                                       original="//dui.dmcdn.cn/damai_v2/goods/img/grab-pic04.png"></a>
                                                </div>
                                            </dd>
                                        </div>
                                    </div>
                                    <!-- 先付先抢 end -->
                                </div>

                            </div>
                        </div>
                        <!-- 项目详情选项卡 end -->
                    </div>
                    <!-- 项目详情 end -->
                </div>
                <div class="sd">
                    <div class="subitem">
                        <ul>
                            <li class="s-ion1">
                                <a>
                                    <p class="s-t1">大麦客户端</p>
                                    <p class="s-t2">抢票神器！随时随地尊享优惠</p>
                                    <span class="s-ewm" style="display: none;"><img
                                            src="${ctx}/static/image/kehuduan.png"><strong
                                            class="f14">比PC更迅猛</strong><br><strong>提前开抢</strong></span>
                                </a>
                            </li>
                        </ul>
                    </div>

                    <!-- 热门推荐 begin -->
                    <div class="m-sdbox2-first m-sdbox2 m-hot" id="hotProjects">
                        <div class="hd"><h2 class="tt">热门推荐</h2></div>
                        <div class="bd">
                            <ul class="m-sdlst" id="gexhTuijian">
                                <c:forEach items="${hotShowList}" var="obj" varStatus="index">
                                    <c:if test="${index.index < 5}">
                                        <li class="itm z-crt">
                                            <div class="hot">
                                                <a id="newitem_recom_1007.16925.95435.;i2i#desc" href="javascript:void(0);" class="thumb" target="_blank" data-idx="1" data-projectid="166294" title="${obj.showName}">
                                                    <img src="${ctx}/static/image/${obj.showImg}" alt="${obj.showName}">
                                                </a>
                                                <h3 class="tt">
                                                    <a id="newitem_recom_1007.16925.95435.;i2i#desc" href="https://piao.damai.cn/166294.html" target="_blank" data-idx="1" data-projectid="166294" title="${obj.showName}">
                                                            ${obj.showName}
                                                    </a>
                                                </h3>
                                            </div>
                                            <div class="info">
                                                <div class="row">
                                                    <a id="newitem_recom_1007.16925.95435.;i2i#desc" href="https://piao.damai.cn/166294.html" target="_blank" title="${obj.showName}" data-idx="1" data-projectid="166294">
                                                            ${obj.showName}
                                                    </a>
                                                </div>
                                                <div class="row"><span class="datetime">${obj.showImg}</span></div>
                                            </div>
                                        </li>
                                    </c:if>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                    <!-- 热门推荐 end-->

                    <!-- 抢票速度榜 begin -->
                    <!-- 抢票速度榜 end -->

                    <!-- 浏览历史 begin -->
                    <div class="m-sdbox2 m-sdbox2-first m-history" id="lishiurl" style="">
                        <div class="hd">
                            <h2 class="tt">浏览历史</h2>
                        </div>
                        <div class="bd">
                            <ul class="m-sdlst">
                                <li class="itm">
                                    <a href="https://piao.damai.cn/165672.html" target="_blank" title="4H潮流音乐节">
                                        4H潮流音乐节
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- 浏览历史 end -->
                    <!-- 大麦微博 begin -->

                    <!-- 大麦微博 end -->

                </div>
            </div>
            <!-- 终极页项目详情 end -->
        </div>

    </div>
</div>
<div class="g-ft">
    <div class="m-ft1">
        <div class="bd">
            <!-- 底部链接 begin -->
            <div class="m-lnks">
                <a href="https://help.damai.cn/helpPage.htm" target="_blank">帮助中心</a>
                |<a href="https://help.damai.cn/helpPage.htm?pageId=69" target="_blank">公司介绍</a>
                |<a href="https://help.damai.cn/helpPage.htm?pageId=70" target="_blank">品牌识别</a>
                |<a href="https://help.damai.cn/helpPage.htm?pageId=72" target="_blank">大麦大事记</a>
                |<a href="https://help.damai.cn/helpPage.htm?pageId=40" target="_blank">隐私权专项政策</a>
                |<a href="https://jubao.alibaba.com/internet/readme.htm" target="_blank">廉正举报</a>
                |<a href="https://help.damai.cn/helpPage.htm?pageId=58" target="_blank">联系合作</a>
                |<a href="https://job.alibaba.com/zhaopin/positionList.htm" target="_blank">招聘信息</a>
                |<a href="https://x.damai.cn/markets/special/fangzhapian" target="_blank">防骗秘籍</a>
            </div>
            <!-- 底部链接 end -->
        </div>
    </div>
    <div class="m-ft2">
        <div class="bd">
            <!-- 版权信息 begin -->
            <div class="m-cprt">
                <p>
                    <a href="http://www.miitbeian.gov.cn/" target="_blank">京ICP证031057号</a><span>|</span>
                    <a href="http://www.miitbeian.gov.cn/" target="_blank">京ICP备11043884号</a><span>|</span>
                    <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010102000430"
                       target="_blank">
                        <img src="${ctx}/static/image/police.png" class="vm">京公网安备11010102000430号
                    </a>
                    <a href="https://dui.dmcdn.cn/dm_2014/common/img/logo/gbdsjm.jpg" target="_blank">广播电视节目制作经营许可证
                        (京)字第02253号</a>
                    <br>
                    <a href="https://dui.dmcdn.cn/dm_2014/common/img/logo/wlwhjy.jpg?v2016" target="_blank">网络文化经营许可证
                        京网文[2016]3438-413号</a><span>|</span>
                    <a href="https://dui.dmcdn.cn/dm_2014/common/img/logo/yyxyc.jpg" target="_blank">营业性演出许可证
                        京市演587号</a>
                </p>
                <p>北京红马传媒文化发展有限公司 版权所有 大麦网 Copyright 2003-2018 All Rights Reserved</p>
                <p>
                    <a rel="nofollow" title="中国票务在线" target="_blank" href="https://www.damai.cn/"><img class="mr10"
                                                                                                       alt=""
                                                                                                       original="//dui.dmcdn.cn/dm_2014/common/img/logo/piao.png"></a>
                    <a href="https://dui.dmcdn.cn/dm_2014/common/img/logo/dzyyzz.jpg" target="_blank" title="电子营业执照"
                       rel="nofollow"><img original="//dui.dmcdn.cn/dm_2014/common/img/logo/dzyy.png" alt=""
                                           class="mr10" src="${ctx}/static/image/dzyy.png" style="display: inline;"></a>
                    <span id="siteseal">
		   <script async="" type="text/javascript">
	function verifySeal() {
        var bgHeight = "null";
        var bgWidth = "593";
        var url = "https:\/\/seal.godaddy.com\/verifySeal?sealID=LU6rXPgk5BZ67ZEYpYS2JcN3AyCJOs6aD3HBo4dwA3iGeqp6csKFmqgB0zLL";
        window.open(url, 'SealVerfication', 'menubar=no,toolbar=no,personalbar=no,location=yes,status=no,resizable=yes,fullscreen=no,scrollbars=no,width=' + bgWidth + ',height=' + bgHeight);
    }
</script>
<img style="cursor:pointer;cursor:hand" src="${ctx}/static/image/siteseal_gd_3_h_l_m.gif" onclick="verifySeal();"
     alt="SSL site seal - click to verify">		  </span>
                    <a rel="nofollow" target="_blank" href="https://www.pcisecuritystandards.org/"><img
                            original="//dui.dmcdn.cn/dm_2014/common/img/logo/pci.png" class="mr10"></a>
                    <a rel="nofollow" target="_blank"
                       href="http://www.itrust.org.cn/home/index/itrust_certifi/wm/1756737221"><img
                            original="//dui.dmcdn.cn/dm_2014/common/img/logo/xin.png" class="mr10"></a>
                    <a target="_blank" href="https://search.szfw.org/cert/l/CX20130327002367002885"
                       id="___szfw_logo___"><img original="//www.damai.cn/images/chengxin.png"></a>
                </p>
            </div>
            <!-- 版权信息 end -->
        </div>
    </div>
</div>

<!-- 蒙版 begin -->
<div class="m-mask z-hide"></div>
<!-- 蒙版 end -->

<!-- 订阅弹层 begin -->
<div class="m-layer m-layer-rss z-hide" id="dylayer">
    <div class="hd">
        <h2 class="tt">订阅Ta的演出行程</h2>
        <a href="javascript:;" class="u-btn u-btn-close"><span class="ico"></span></a>
    </div>
    <div class="bd">
        <div class="new-mark"></div>
        <div class="new-loading"><img src="${ctx}/static/image/imgload.gif"></div>
        <!-- 订阅模块 begin -->
        <div class="m-rss">
            <div class="mn">
                <!-- 订阅表单 begin -->
                <div class="m-rssfm">
                    <div class="desc">
                        <p>点击“提交订阅”订阅Ta的演出行程,有新的演出<br>上架会通知你噢！</p>
                    </div>
                    <div class="mode">
                        <h4 class="tt" style="text-align:center;">您可以选择以下方式接收订阅信息</h4>
                        <ul class="lst">
                            <li class="itm">
                                <div class="itm-hd">
                                    <input class="chk" type="checkbox" checked="checked" name="receive_mode"
                                           id="mode_client" autocomplete="off"><label class="lab">客户端</label><a
                                        href="https://mobile.damai.cn/" target="_blank">点击或者扫描下载大麦客户端</a>
                                </div>
                            </li>
                            <li class="itm">
                                <div class="itm-hd">
                                    <input class="chk" type="checkbox" name="receive_mode" id="mode_sms"
                                           autocomplete="off"><label class="lab">短　信</label><span
                                        class="txt txt-2"><span id="dyphonenum"></span></span><span
                                        id="phoneoperate"></span>
                                </div>
                                <div class="itm-bd" style="display:none" id="phonechange">
                                    <div class="modify modify-crt">
                                        <div class="fmitm fmitm-ico"></div>
                                        <div class="fmitm">
                                            <label class="lab">手机号码：</label>
                                            <div class="ipt">
                                                <input type="text" id="changephonenum" class="u-ipt u-ipt-md"
                                                       autocomplete="off">
                                                <a href="javascript:;" class="u-btn u-btn-auth"
                                                   id="getcode_btnl">获取验证码</a>
                                                <div class="tips z-hide">短信已发送，验证有效期为3分钟</div>
                                            </div>
                                        </div>
                                        <div class="fmitm">
                                            <label class="lab">验证码：</label>
                                            <div class="ipt">
                                                <input type="text" id="verifyCode" class="u-ipt u-ipt-sm"
                                                       autocomplete="off">
                                            </div>
                                        </div>
                                        <div class="fmitm fmitm-1"><a href="javascript:setphoneChannel();"
                                                                      class="u-btn">确定</a></div>
                                    </div>
                                </div>
                            </li>
                            <li class="itm">
                                <div class="itm-hd">
                                    <input class="chk" type="checkbox" name="receive_mode" id="mode_email"
                                           autocomplete="off"><label class="lab">邮　件</label><span
                                        class="txt txt-2"><span id="dyMail"></span></span><span id="mailoperate"></span>
                                </div>
                                <div class="itm-bd" style="display:none" id="mailchange">
                                    <div class="modify modify-crt">
                                        <div class="fmitm fmitm-ico"></div>
                                        <div class="fmitm">
                                            <label class="lab">邮箱地址：</label>
                                            <div class="ipt">
                                                <input type="text" id="changemailnum" class="u-ipt u-ipt-md">
                                                <a href="javascript:;" class="u-btn u-btn-auth"
                                                   id="getmail_btn">获取验证码</a>
                                                <div class="tips">邮箱已发送，验证有效期为5分钟</div>
                                            </div>
                                        </div>
                                        <div class="fmitm">
                                            <label class="lab">验证码：</label>
                                            <div class="ipt">
                                                <input type="text" id="mailverifyCode" class="u-ipt u-ipt-sm">
                                            </div>
                                        </div>
                                        <div class="fmitm fmitm-1"><a href="javascript:setmailChannel();" class="u-btn">确定</a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="ops">
                        <a href="javascript:;" id="dysbmit" class="u-btn -u-btn-dis">提交订阅</a>
                        <a href="javascript:;" id="dycancel" class="u-btn u-btn-c3">取消</a>
                    </div>
                </div>
                <!-- 订阅表单 end -->
            </div>
        </div>
        <!-- 订阅模块 end -->
    </div>
</div>
<!-- 订阅弹层 end -->

<!-- 缺货登记弹层 begin -->
<div class="m-layer m-layer-oos z-hide -m-hu" id="layerQuehuodengji">
    <form>
        <div class="hd">
            <h2 class="tt">缺货登记</h2>
            <a href="javascript:;" class="u-btn u-btn-close"><span class="ico"></span></a>
        </div>
        <div class="bd">
            <!-- 缺货登记模块 begin -->
            <div class="m-oos">
                <div class="desc">
                    <p>此价格票品暂时缺货，您可以进行缺货登记。</p>
                    <p>为了方便有票时能够按照登记顺序通知您，我们将记录您的相关信息；若始终缺货，将不做另行通知。</p>
                </div>
                <ul class="fm">
                    <li class="fmitm">
                        <label class="lab">数&nbsp;&nbsp;&nbsp;&nbsp;量：</label>
                        <div class="ipt">
                            <!-- <div class="u-sel"> -->
                            <div class="u-sel" data-context=".fmitm">
                                <div class="hd">
                                    <span class="txt">1</span>
                                    <span class="btnsel"></span>
                                </div>
                                <div class="menu">
                                    <ul class="lst j_count">
                                        <li><a class="itm z-crt" href="javascript:;">1</a></li>
                                        <script type="text/javascript">
                                            for (var i = 2; i <= 20; i++) {
                                                document.write('<li><a class="itm" href="javascript:;">' + i + '</a></li>');
                                            }
                                        </script>
                                        <li><a class="itm" href="javascript:;">2</a></li>
                                        <li><a class="itm" href="javascript:;">3</a></li>
                                        <li><a class="itm" href="javascript:;">4</a></li>
                                        <li><a class="itm" href="javascript:;">5</a></li>
                                        <li><a class="itm" href="javascript:;">6</a></li>
                                        <li><a class="itm" href="javascript:;">7</a></li>
                                        <li><a class="itm" href="javascript:;">8</a></li>
                                        <li><a class="itm" href="javascript:;">9</a></li>
                                        <li><a class="itm" href="javascript:;">10</a></li>
                                        <li><a class="itm" href="javascript:;">11</a></li>
                                        <li><a class="itm" href="javascript:;">12</a></li>
                                        <li><a class="itm" href="javascript:;">13</a></li>
                                        <li><a class="itm" href="javascript:;">14</a></li>
                                        <li><a class="itm" href="javascript:;">15</a></li>
                                        <li><a class="itm" href="javascript:;">16</a></li>
                                        <li><a class="itm" href="javascript:;">17</a></li>
                                        <li><a class="itm" href="javascript:;">18</a></li>
                                        <li><a class="itm" href="javascript:;">19</a></li>
                                        <li><a class="itm" href="javascript:;">20</a></li>
                                    </ul>
                                    <input type="hidden" name="count" value="1">
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="fmitm">
                        <label class="lab">手机号码：</label>
                        <div class="ipt">
                            <input type="text" name="mobilePhone" class="u-ipt u-ipt-sm" value="">
                            <span class="c1">*</span>
                        </div>
                    </li>
                    <li class="fmitm">
                        <label class="lab">留&nbsp;&nbsp;&nbsp;&nbsp;言：</label>
                        <div class="ipt">
                            <textarea class="u-ipt u-ipt-lg" name="notes"></textarea>
                        </div>
                    </li>
                    <li class="fmitm fmitm-1">
                        <div class="ipt"><a href="javascript:;" class="u-btn" id="btnQuehuodengji">提交</a></div>
                    </li>
                </ul>
            </div>
            <!-- 缺货登记模块 end -->
        </div>
        <input type="hidden" name="performId" value="">
        <input type="hidden" name="performName" value="">
        <input type="hidden" name="performTime" value="">
        <input type="hidden" name="priceId" value="">
        <input type="hidden" name="price" value="">
        <input type="hidden" name="pricename" value="">
        <input type="hidden" name="enStr" value="">
    </form>
</div>
<!-- 缺货登记弹层 end -->

<!-- 手机客户端下载弹层 begin -->
<div class="m-layer m-layer-appdown z-hide" id="appDownLayer">
    <div class="hd">
        <h2 class="tt">手机客户端下载</h2>
        <a href="javascript:;" class="u-btn u-btn-close"><span class="ico"></span></a>
    </div>
    <div class="bd">
        <div class="m-appdown">
            <div class="qrcode">
                <div class="code"></div>
                <p class="txt">手机扫描快速下载</p>
            </div>
            <ul class="lst">
                <li class="itm iphone"><a href="http://itunes.apple.com/cn/app/da-mai/id513829338?mt=8" target="_blank">iPhone版</a>
                </li>
                <li class="itm android"><a href="https://mapi.damai.cn/href.aspx?id=11" target="_blank">Android版</a>
                </li>
                <li class="itm ipad"><a href="http://itunes.apple.com/cn/app//id481947980?mt=8"
                                        target="_blank">iPad版</a></li>
            </ul>
        </div>
    </div>
</div>
<!-- 手机客户端下载弹层 end -->

<!-- 开售提醒弹层 begin -->
<div class="m-layer m-layer-remind z-hide" id="layerRemind">
    <div class="hd">
        <h2 class="tt">提示</h2>
        <a href="javascript:;" class="u-btn u-btn-close"><span class="ico"></span></a>
    </div>
    <div class="bd">
        <!-- 开售提醒模块 begin -->
        <div class="m-remind">
            <p class="tips"><i class="ico ico-succ"></i><span class="txt">成功设置项目开售提醒！</span></p>
            <p class="desc">我们将在项目开售前以短信的方式通知您</p>
            <div class="star">
                <div class="thumb"><img
                        original="//static.dmcdn.cn/Artist/Artist/2010/6/21/2/4/64e09790-00c6-4215-8f8c-fc5015da130b.jpg"
                        alt="GG"></div>
                <div class="name">GG</div>
            </div>
            <div class="ops">
                <a href="javascript:;" class="u-btn u-btn-rss u-btn-rss-c1" id="dy2" data-artistid="33469"
                   data-artistname="GG"><i class="ico"></i><span class="txt">立即订阅接收Ta的动态消息</span></a>
            </div>
            <!-- 开售提醒模块 end -->
        </div>
    </div>
</div>
<!-- 开售提醒弹层 end -->


<!--您输入的特权码无效，请重试 begin-->
<div class="m-layer m-layer-error z-hide" id="privilege_error">
    <div class="hd">
        <a href="javascript:;" class="u-btn u-btn-close"><span class="ico"></span></a>
    </div>
    <div class="bd">
        <div class="m-error">
            <p class="tips"><i class="ico-tips"></i><span class="txt" id="privilegeErrorMsg">您输入的特权码无效，请重试</span></p>
            <div class="ops">
                <a href="javascript:;" class="u-btn j_btnOk">确定</a>
            </div>
        </div>
    </div>
</div>
<!--您输入的特权码无效，请重试 end-->

<!--您的操作过于频繁，请稍后重试 begin-->
<div class="m-layer m-layer-error z-hide" id="privilege_error_307">
    <div class="hd">
        <a href="javascript:;" class="u-btn u-btn-close"><span class="ico"></span></a>
    </div>
    <div class="bd">
        <div class="m-error">
            <p class="tips"><i class="ico-tips"></i><span class="txt">您的操作过于频繁，请稍后重试</span></p>
            <div class="ops">
                <a href="javascript:;" class="u-btn">确定</a>
            </div>
        </div>
    </div>
</div>
<!--您的操作过于频繁，请稍后重试 end-->

<!--本项目需M3、M4 会员等级用户才可购买 begin-->
<div class="m-layer m-layer-error z-hide">
    <div class="hd">
        <a href="javascript:;" class="u-btn u-btn-close"><span class="ico"></span></a>
    </div>
    <div class="bd">
        <div class="m-error">
            <p class="tips"><i class="ico-tips"></i><span class="txt">本项目需M3、M4 <br>会员等级用户才可购买</span></p>
            <div class="ops">
                <a href="javascript:;" class="u-btn">查看等级</a>
                <a href="javascript:;" class="u-btn u-btn-c2">取消</a>
            </div>
        </div>
    </div>
</div>
<!--本项目需M3、M4 会员等级用户才可购买 end-->

<!--您的账户未完成实名认证 begin-->
<div class="m-layer m-layer-error z-hide">
    <div class="hd">
        <a href="javascript:;" class="u-btn u-btn-close"><span class="ico"></span></a>
    </div>
    <div class="bd">
        <div class="m-error">
            <p class="tips"><i class="ico-tips"></i><span class="txt">您的账户未完成实名认证</span></p>
            <div class="ops">
                <a href="javascript:;" class="u-btn">去认证</a>
                <a href="javascript:;" class="u-btn u-btn-c2">取消</a>
            </div>
        </div>
    </div>
</div>
<!--您的账户未完成实名认证 end-->

<!--请输入特权码 begin-->
<div class="m-layer m-layer-code z-hide" id="privilege_error_404">
    <div class="bd">
        <div class="m-error">
            <p class="tips"><i class="ico-tips"></i><span class="txt">请输入用户特权码</span></p>
            <div class="ops">
                <a href="javascript:;" class="u-btn">确定</a>
            </div>
        </div>
    </div>
</div>
<!--请输入特权码 end-->

<div class="m-layer z-hide" id="layerWeiShare">
    <div class="hd">
        <h2 class="tt" style="font-size:12px;">分享到微信朋友圈</h2>
        <a href="javascript:;" class="u-btn u-btn-close"><span class="ico"></span></a>
    </div>
    <div class="bd">
        <div class="m-viewseat" style="background:#fff url(img/loading.gif) no-repeat center center;">
            <div class="seat" style="padding:20px 60px;width:220px; height: 220px;"><img
                    lazy-src="//piao.damai.cn/ShowBarcode.aspx?content=https%3A%2F%2Fpiao.damai.cn%2F166083.html" alt=""
                    style="width:220px; height: 220px; display:none;"></div>
        </div>
    </div>
    <div style="background:#fff;border-top:1px solid #e6e6e6; padding:8px 0px 8px 20px">
        <p>打开微信，点击底部的“发现”，使用 “扫一扫”<br>即可将网页分享到我的朋友圈。</p>
    </div>
</div>


<!-- 选择商品弹层 begin -->
<div class="m-layer m-layer-choosegoods z-hide" id="chooseGoodsLayer">
    <div class="hd">
        <h2 class="tt">请选择您要的商品信息</h2>
        <a href="javascript:;" class="u-btn u-btn-close"><span class="ico"></span></a>
    </div>
    <div class="bd">
        <div class="m-choosegoods j_goodsDetails">
            <!-- 选择日期模块 begin -->
            <div class="m-choose m-choose-date " data-row="2" data-col="4">
                <h3 class="tt">选择时间：</h3>
                <div class="ct">
                    <ul class="lst"></ul>
                </div>
            </div>
            <!-- 选择日期模块 end -->

            <!-- 选择票价模块 begin -->
            <div class="m-choose m-choose-price" data-row="3" data-col="4">
                <h3 class="tt">选择票价：</h3>
                <div class="ct">
                    <ul class="lst"></ul>
                    <div class="tips tips-oos"><span class="ico"></span><span class="txt">暂时无货，登录试试运气~</span></div>
                </div>
            </div>
            <!-- 选择票价模块 end -->

            <!-- 购物车模块 begin -->
            <div class="m-cart">
                <h3 class="tt" style="display:none;">您选择了：</h3>
                <div class="ct" style="display:none;">
                    <ul class="lst"></ul>
                </div>
                <div class="ops">
                    <a class="u-btn u-btn-c1 u-btn-choose" href="javascript:;" id="btnXuanzuo3" style="display:none;">选座购买</a>
                    <a class="u-btn u-btn-buynow" href="javascript:;" id="btnBuyNow3">立即购买</a>
                </div>
            </div>
            <!-- 购物车模块 end -->
        </div>

    </div>
</div>
<!-- 选择商品弹层 end -->

<!-- 固定侧栏 begin -->
<div class="m-sdfix">
    <span class="itm weixin xiaonengService" style="cursor:pointer;">在线<br>客服</span>

    <a class="itm resch" target="_blank" href="https://www.wenjuan.com/s/QV7vm2/">
        <i class="ico"></i>
        <span class="txt">调查问卷</span>
    </a>
    <a class="itm weixin" href="javascript:;" id="siteWeixinQR" style="">
        <i class="ico"></i>
        <span class="code"><img original="img/qrcode.png" alt="杭州站" src="${ctx}/static/image/hzweixin.jpg"></span>
    </a>
    <a class="itm totop" href="javascript:;" id="gotop">
        <i class="ico"></i>
        <span class="txt">返回顶部</span>
    </a>
</div>
<!-- 固定侧栏 end -->

<script type="text/javascript">
    var performCount = 3;
</script>
<iframe id="mapview" name="mapview" scrolling="no" frameborder="no" border="0" style="display: none; z-index: 0;"
        data-spm-anchor-id="a2o6e.project.0.i0.3c2c1bf9uOcuDS" data-spm-act-id="a2o6e.project.0.i0.3c2c1bf9uOcuDS"

<script type="text/javascript">
    var showCalendar = 0;
</script>
<!-- 日历插件 begin -->
<div class="m-calendar">
    <div class="hd"></div>
    <div class="bd"></div>
</div>
<!-- 日历插件 end -->
<script type="text/javascript">
    var projectDates = {};
    jQuery("#rili").attr("data-value", '2018.11.03');
    projectDates['D20181103'] = true;
    projectDates['D20181104'] = true;
    projectDates['D20181104'] = true;
    showCalendar = 1;
</script>

<div>
    <div id="calendar" style="display:none; position:absolute; z-index:9;" onclick="_cancelBubble(event)">
        <div style="width:auto; border:2px solid #c6cdd2; margin-top:10px;">
            <table class="tableborder" cellspacing="0" cellpadding="0" width="100%" style="text-align: center;">
                <tbody>
                <tr align="center">
                    <td colspan="7" class="dateheader" style="text-align: left; padding-left:20px; height: 30px;"><a
                            href="javascript:;" onclick="refreshcalendar(yy, mm-1);return false" title="上一月"
                            class="mr15">&lt;</a><a href="javascript:;"
                                                    onclick="showdiv(&#39;year&#39;);_cancelBubble(event);return false"
                                                    title="点击选择年份" id="year" style=" font-weight:400"></a><span
                            class="ml5 mr10 f16 c1">年</span><a id="month" title="点击选择月份" href="javascript:;"
                                                               style=" font-weight:400"
                                                               onclick="showdiv(&#39;month&#39;);_cancelBubble(event);return false"></a><span
                            class="ml5 mr10 f16 c1">月</span><a href="javascript:;"
                                                               onclick="refreshcalendar(yy, mm+1);return false"
                                                               title="下一月" class="ml15">&gt;</a><a href="javascript:;"
                                                                                                   class="new-today"
                                                                                                   onclick="gotoToday();"
                                                                                                   style="font-size:12px; font-weight:400">返回今天</a><a
                            href="javascript:;" class="new-error" style="font-size:12px; font-weight:400"
                            onclick="hideCalendar();"></a></td>
                </tr>
                <tr class="category">
                    <td style="height: 30px;">星期日</td>
                    <td style="height: 30px;">星期一</td>
                    <td style="height: 30px;">星期二</td>
                    <td style="height: 30px;">星期三</td>
                    <td style="height: 30px;">星期四</td>
                    <td style="height: 30px;">星期五</td>
                    <td style="height: 30px;">星期六</td>
                </tr>
                <tr class="altbg2">
                    <td id="d1" height="190">0<br>111</td>
                    <td id="d2" height="190">0<br>111</td>
                    <td id="d3" height="190">0<br>111</td>
                    <td id="d4" height="190">0<br>111</td>
                    <td id="d5" height="190">0<br>111</td>
                    <td id="d6" height="190">0<br>111</td>
                    <td id="d7" height="190">0<br>111</td>
                </tr>
                <tr class="altbg2">
                    <td id="d8" height="190">0<br>111</td>
                    <td id="d9" height="190">0<br>111</td>
                    <td id="d10" height="190">0<br>111</td>
                    <td id="d11" height="190">0<br>111</td>
                    <td id="d12" height="190">0<br>111</td>
                    <td id="d13" height="190">0<br>111</td>
                    <td id="d14" height="190">0<br>111</td>
                </tr>
                <tr class="altbg2">
                    <td id="d15" height="190">0<br>111</td>
                    <td id="d16" height="190">0<br>111</td>
                    <td id="d17" height="190">0<br>111</td>
                    <td id="d18" height="190">0<br>111</td>
                    <td id="d19" height="190">0<br>111</td>
                    <td id="d20" height="190">0<br>111</td>
                    <td id="d21" height="190">0<br>111</td>
                </tr>
                <tr class="altbg2">
                    <td id="d22" height="190">0<br>111</td>
                    <td id="d23" height="190">0<br>111</td>
                    <td id="d24" height="190">0<br>111</td>
                    <td id="d25" height="190">0<br>111</td>
                    <td id="d26" height="190">0<br>111</td>
                    <td id="d27" height="190">0<br>111</td>
                    <td id="d28" height="190">0<br>111</td>
                </tr>
                <tr class="altbg2">
                    <td id="d29" height="190">0<br>111</td>
                    <td id="d30" height="190">0<br>111</td>
                    <td id="d31" height="190">0<br>111</td>
                    <td id="d32" height="190">0<br>111</td>
                    <td id="d33" height="190">0<br>111</td>
                    <td id="d34" height="190">0<br>111</td>
                    <td id="d35" height="190">0<br>111</td>
                </tr>
                <tr class="altbg2">
                    <td id="d36" height="190">0<br>111</td>
                    <td id="d37" height="190">0<br>111</td>
                    <td id="d38" height="190">0<br>111</td>
                    <td id="d39" height="190">0<br>111</td>
                    <td id="d40" height="190">0<br>111</td>
                    <td id="d41" height="190">0<br>111</td>
                    <td id="d42" height="190">0<br>111</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div id="calendar_year" onclick="_cancelBubble(event)">
        <div class="col"><a href="javascript:;"
                            onclick="refreshcalendar(2014, mm);document.getElementById(&#39;calendar_year&#39;).style.display=&#39;none&#39;;return false"><span
                id="calendar_year_2014">2014</span></a><br><a href="javascript:;"
                                                              onclick="refreshcalendar(2015, mm);document.getElementById(&#39;calendar_year&#39;).style.display=&#39;none&#39;;return false"><span
                id="calendar_year_2015">2015</span></a><br><a href="javascript:;"
                                                              onclick="refreshcalendar(2016, mm);document.getElementById(&#39;calendar_year&#39;).style.display=&#39;none&#39;;return false"><span
                id="calendar_year_2016">2016</span></a><br><a href="javascript:;"
                                                              onclick="refreshcalendar(2017, mm);document.getElementById(&#39;calendar_year&#39;).style.display=&#39;none&#39;;return false"><span
                id="calendar_year_2017">2017</span></a><br><a href="javascript:;"
                                                              onclick="refreshcalendar(2018, mm);document.getElementById(&#39;calendar_year&#39;).style.display=&#39;none&#39;;return false"><span
                class="today" id="calendar_year_2018">2018</span></a><br></div>
    </div>
    <div id="calendar_month" onclick="_cancelBubble(event)"><a href="javascript:;"
                                                               onclick="refreshcalendar(yy, 0);document.getElementById(&#39;calendar_month&#39;).style.display=&#39;none&#39;;return false"><span
            id="calendar_month_1">1  月</span></a><br><a href="javascript:;"
                                                        onclick="refreshcalendar(yy, 1);document.getElementById(&#39;calendar_month&#39;).style.display=&#39;none&#39;;return false"><span
            id="calendar_month_2">2  月</span></a><br><a href="javascript:;"
                                                        onclick="refreshcalendar(yy, 2);document.getElementById(&#39;calendar_month&#39;).style.display=&#39;none&#39;;return false"><span
            id="calendar_month_3">3  月</span></a><br><a href="javascript:;"
                                                        onclick="refreshcalendar(yy, 3);document.getElementById(&#39;calendar_month&#39;).style.display=&#39;none&#39;;return false"><span
            id="calendar_month_4">4  月</span></a><br><a href="javascript:;"
                                                        onclick="refreshcalendar(yy, 4);document.getElementById(&#39;calendar_month&#39;).style.display=&#39;none&#39;;return false"><span
            id="calendar_month_5">5  月</span></a><br><a href="javascript:;"
                                                        onclick="refreshcalendar(yy, 5);document.getElementById(&#39;calendar_month&#39;).style.display=&#39;none&#39;;return false"><span
            id="calendar_month_6">6  月</span></a><br><a href="javascript:;"
                                                        onclick="refreshcalendar(yy, 6);document.getElementById(&#39;calendar_month&#39;).style.display=&#39;none&#39;;return false"><span
            id="calendar_month_7">7  月</span></a><br><a href="javascript:;"
                                                        onclick="refreshcalendar(yy, 7);document.getElementById(&#39;calendar_month&#39;).style.display=&#39;none&#39;;return false"><span
            id="calendar_month_8">8  月</span></a><br><a href="javascript:;"
                                                        onclick="refreshcalendar(yy, 8);document.getElementById(&#39;calendar_month&#39;).style.display=&#39;none&#39;;return false"><span
            id="calendar_month_9">9  月</span></a><br><a href="javascript:;"
                                                        onclick="refreshcalendar(yy, 9);document.getElementById(&#39;calendar_month&#39;).style.display=&#39;none&#39;;return false"><span
            class="today" id="calendar_month_10">10 月</span></a><br><a href="javascript:;"
                                                                       onclick="refreshcalendar(yy, 10);document.getElementById(&#39;calendar_month&#39;).style.display=&#39;none&#39;;return false"><span
            id="calendar_month_11">11 月</span></a><br><a href="javascript:;"
                                                         onclick="refreshcalendar(yy, 11);document.getElementById(&#39;calendar_month&#39;).style.display=&#39;none&#39;;return false"><span
            id="calendar_month_12">12 月</span></a><br></div>
</div>

<script type="text/javascript">
    var title = $("#Title").val();
    var ShowSpeedList = 0, ShowTotalMoney = 0;
    ShowSpeedList = 0;
    ShowTotalMoney = 0;
    (function () {
        $('#showVenueMap').on('click', function () {
            $('#mapview').on('load', dm_mapview.show).attr("src", jQuery(this).attr("map-src")).show();
            return false;
        });
    })();
</script>

<script type="text/javascript">
    $(document).on("click", ".xiaonengService", function () {
        window.open("https://online.damai.cn/alime/toalime?from=damai_itemdetail&page=" + encodeURIComponent(location.href));
    });
</script>
<!-- start Dplus -->
<script type="text/javascript">!function (a, b) {
    if (!b.__SV) {
        var c, d, e, f;
        window.dplus = b, b._i = [], b.init = function (a, c, d) {
            function g(a, b) {
                var c = b.split(".");
                2 == c.length && (a = a[c[0]], b = c[1]), a[b] = function () {
                    a.push([b].concat(Array.prototype.slice.call(arguments, 0)))
                }
            }

            var h = b;
            for ("undefined" != typeof d ? h = b[d] = [] : d = "dplus", h.people = h.people || [], h.toString = function (a) {
                var b = "dplus";
                return "dplus" !== d && (b += "." + d), a || (b += " (stub)"), b
            }, h.people.toString = function () {
                return h.toString(1) + ".people (stub)"
            }, e = "disable track track_links track_forms register unregister get_property identify clear set_config get_config get_distinct_id track_pageview register_once track_with_tag time_event people.set people.unset people.delete_user".split(" "), f = 0; f < e.length; f++) g(h, e[f]);
            b._i.push([a, c, d])
        }, b.__SV = 1.1, c = a.createElement("script"), c.type = "text/javascript", c.charset = "utf-8", c.async = !0, c.src = "//w.cnzz.com/dplus.php?token=7415364c9dab5n09ff68", d = a.getElementsByTagName("script")[0], d.parentNode.insertBefore(c, d)
    }
}(document, window.dplus || []), dplus.init("7415364c9dab5n09ff68");</script><!-- end Dplus -->
<!-- start Dplus Define -->
<script type="text/javascript">!function (a, b) {
    var c, d;
    window.__dplusDefineCacheQueue = [], b.define = function () {
        window.__dplusDefineCacheQueue.push(Array.prototype.slice.call(arguments))
    }, c = a.createElement("script"), c.type = "text/javascript", c.charset = "utf-8", c.async = !0, c.src = "//w.cnzz.com/dplus.define.php", d = a.getElementsByTagName("script")[0], d.parentNode.insertBefore(c, d)
}(document, window.dplus);</script>
<!-- end Dplus Define -->

<script type="text/javascript">
    (function () {
        dplus.define('page', function (page) {
            page.init("7415364c9dab5n09ff68", {
                'page_duration': true, //默认不跟踪页面停留时间
                'clean_url': true //默认是clean url
            });
        });
        dplus.define('page', function (page) {
            page.setType('project');//设置页面类型
            page.setTitle("2018中国大运河庙会音乐节");//设置页面标题,不填默认取document.title，建议填演出名
            page.setCategory(['演唱会', '演唱会']);//该演出对应的三级类目
            page.setTags([]);//该演出的其他TAG
            page.view({
                '$avn': "杭州智慧网谷小镇",
                '$alr': "GG/南征北战NZBZ/谭维维/谢天笑/林宥嘉",
                '$aad': "杭州"
            });
        });
    })();
    $(document)
        .on("click", "#gexhTuijian li a", function () {
            var $this = $(this);
            dplus.track('recclick', {
                '$tti': 'project',
                '$tul': location.href,
                '$tna': '热门推荐',
                '$tdx': $this.closest("li").index() - 0 + 1,
                '$pid': $this.attr("data-projectId"),
                'tag': $this.attr('id'),
                '$na': $this.attr('title')
            });//
        }).on("click", "#dysbmit:not(.u-btn-dis)", function () {
        jQuery.getJSON("/ajax/GetUserInfo.html", {projectId: projectInfo.ProjectID, t: Math.random()}, function (rsp) {
            abc(rsp.Data.userInfo.code);
        });

        function abc(code) {
            var params = {"$tti": "project", "$pid": projectInfo.ProjectID + "", "$userid": code + ""};
            dplus.track('rssclick', params);
        }
    });
    $(document).ready(function () {
        var cityid = projectInfo.CityID;
        if (cityid != "" && cityid == "2279") {
            cityid = "2148";
        }
        var uid = getwidgetUID(cityid);
        if (location.protocol == "http:" && uid) {
            $("#weibo_con_").html("<iframe width=\"100%\" height=\"550\" class=\"share_self\"  frameborder=\"0\" scrolling=\"no\" src=\"http://service.t.sina.com.cn/widget/WeiboShow.php?width=0&height=550&fansRow=2&ptype=1&speed=0&skin=5&isTitle=0&noborder=0&isWeibo=1&isFans=0&uid=" + uid + "\"></iframe>");
            $("div.m-weibo").show();
            var uuid = uid.split('&')[0];
            $("#wbFollowIframe_").attr("src", "http://widget.weibo.com/relationship/followbutton.php?btn=light&style=2&uid={0}&width=136&height=24&language=zh_cn".format(uuid));
        } else if (location.protocol == "https:" && uid) {
            var uuid = uid.split('&')[0];
            $("#wbFollowIframe_").attr("src", "//www.damai.cn/WeiboAgent.aspx?uid={0}".format(uuid));
            $("#weibo_con_").parent().parent().remove();
        } else {
            $("#wbFollowIframe_").parent().remove();
            $("#weibo_con_").parent().parent().remove();
        }
    });
</script>

</body>
</html>
