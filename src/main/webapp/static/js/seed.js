/*!
Copyright 2015, KISSY v6.2.4
MIT Licensed
*/
(function e(t, n, r) {
    function s(o, u) {
        if (!n[o]) {
            if (!t[o]) {
                var a = typeof require == "function" && require;
                if (!u && a) return a(o, !0);
                if (i) return i(o, !0);
                throw new Error("Cannot find module '" + o + "'")
            }
            var f = n[o] = {exports: {}};
            t[o][0].call(f.exports, function (e) {
                var n = t[o][1][e];
                return s(n ? n : e)
            }, f, f.exports, e, t, n, r)
        }
        return n[o].exports
    }

    var i = typeof require == "function" && require;
    for (var o = 0; o < r.length; o++) s(r[o]);
    return s
})({
    1: [function (require, module, exports) {
        var KISSY = require('runtime');
        var Querystring = require('querystring');
        var Util = require('util');
        var Path = require('path');
        var Url = require('url');
        var UA = require('ua');
        var Feature = require('feature');
        require('loader');
        var Logger = require('logger-manager');
        require('meta');

        function noop() {
        }

// modules
        KISSY.add('querystring', function () {
            return Querystring;
        });

        KISSY.add('util', function () {
            return Util;
        });

        KISSY.add('util-base', function () {
            return Util;
        });

        KISSY.add('util-extra', function () {
            return Util;
        });

        KISSY.add('path', function () {
            return Path;
        });

        KISSY.add('url', function () {
            return Url;
        });

        KISSY.add('ua', function () {
            return UA;
        });

        KISSY.add('feature', function () {
            return Feature;
        });

        KISSY.add('io-script', function () {
            return KISSY.getScript;
        });

        KISSY.add('logger-manager', function () {
            return Logger;
        });

// If url contains '?ks-debug', debug mode will turn on automatically.
        if (location && (location.search || '').indexOf('ks-debug') !== -1) {
            KISSY.Config.debug = true;
        }

// compatible with 1.4.x
        KISSY.addMember('UA', UA);
        KISSY.addMember('Feature', Feature);
        Util.mix(KISSY, Util);
        KISSY.addMember('getLogger', Logger.getLogger);
        KISSY.addMember('log', KISSY.Config.debug ? Logger.log : noop);
        KISSY.addMember('error', KISSY.Config.debug ? Logger.error : noop);


    }, {
        "feature": 2,
        "loader": 4,
        "logger-manager": 21,
        "meta": 23,
        "path": 24,
        "querystring": 26,
        "runtime": 28,
        "ua": 29,
        "url": 31,
        "util": 33
    }],
    2: [function (require, module, exports) {
        var Feature = require('./lib/feature');
        module.exports = Feature;
    }, {"./lib/feature": 3}],
    3: [function (require, module, exports) {
        /**
         * @ignore
         * detect if current browser supports various features.
         * @author yiminghe@gmail.com
         */
        var win = window;
        var propertyPrefixes = [
            'Webkit',
            'Moz',
            'O',
            'ms' // ms is special .... !
        ];
        var propertyPrefixesLength = propertyPrefixes.length;

// for nodejs
        var doc = win.document || {};
        var isMsPointerSupported,
            documentElementStyle,
            isPointerSupported, // ie11
            isTransform3dSupported;

// nodejs
        var documentElement = doc && doc.documentElement;
        var isClassListSupportedState = true;
        var isQuerySelectorSupportedState = false;

// phantomjs issue: http://code.google.com/p/phantomjs/issues/detail?id=375
        var isTouchEventSupportedState = ('ontouchstart' in doc) && !(window.callPhantom);
        var vendorInfos = {};
        var ie = doc.documentMode;

        if (documentElement) {
            // broken ie8
            if (documentElement.querySelector && ie !== 8) {
                isQuerySelectorSupportedState = true;
            }
            documentElementStyle = documentElement.style;
            isClassListSupportedState = 'classList' in documentElement;
            isMsPointerSupported = 'msPointerEnabled' in navigator;
            isPointerSupported = 'pointerEnabled' in navigator;
        }

        var RE_DASH = /-([a-z])/ig;

        function upperCase() {
            return arguments[1].toUpperCase();
        }

// return prefixed css prefix name
        function getVendorInfo(name) {
            if (name.indexOf('-') !== -1) {
                name = name.replace(RE_DASH, upperCase);
            }
            if (name in vendorInfos) {
                return vendorInfos[name];
            }
            // if already prefixed or need not to prefix
            if (!documentElementStyle || name in documentElementStyle) {
                vendorInfos[name] = {
                    propertyName: name,
                    propertyNamePrefix: ''
                };
            } else {
                var upperFirstName = name.charAt(0).toUpperCase() + name.slice(1);
                var vendorName;

                for (var i = 0; i < propertyPrefixesLength; i++) {
                    var propertyNamePrefix = propertyPrefixes[i];
                    vendorName = propertyNamePrefix + upperFirstName;
                    if (vendorName in documentElementStyle) {
                        vendorInfos[name] = {
                            propertyName: vendorName,
                            propertyNamePrefix: propertyNamePrefix
                        };
                    }
                }

                vendorInfos[name] = vendorInfos[name] || null;
            }
            return vendorInfos[name];
        }

        /**
         * browser features detection
         * @class KISSY.Feature
         * @private
         * @singleton
         */
        module.exports = {

            // http://blogs.msdn.com/b/ie/archive/2011/09/20/touch-input-for-ie10-and-metro-style-apps.aspx
            /**
             * whether support microsoft pointer event.
             * @type {Boolean}
             */
            isMsPointerSupported: function () {
                // ie11 onMSPointerDown but e.type==pointerdown
                return isMsPointerSupported;
            },

            /**
             * whether support microsoft pointer event (ie11).
             * @type {Boolean}
             */
            isPointerSupported: function () {
                // ie11
                return isPointerSupported;
            },

            /**
             * whether support touch event.
             * @return {Boolean}
             */
            isTouchEventSupported: function () {
                return isTouchEventSupportedState;
            },

            isTouchGestureSupported: function () {
                return isTouchEventSupportedState || isPointerSupported || isMsPointerSupported;
            },

            /**
             * whether support device motion event
             * @returns {boolean}
             */
            isDeviceMotionSupported: function () {
                return !!win.DeviceMotionEvent;
            },

            /**
             * whether support hashchange event
             * @returns {boolean}
             */
            isHashChangeSupported: function () {
                // ie8 支持 hashchange
                // 但 ie8 以上切换浏览器模式到 ie7（兼容模式），
                // 会导致 'onhashchange' in window === true，但是不触发事件
                return ('onhashchange' in win) && (!ie || ie > 7);
            },

            isInputEventSupported: function () {
                return ('oninput' in win) && (!ie || ie > 9);
            },

            /**
             * whether support css transform 3d
             * @returns {boolean}
             */
            isTransform3dSupported: function () {
                if (isTransform3dSupported !== undefined) {
                    return isTransform3dSupported;
                }

                if (!documentElement || !getVendorInfo('transform')) {
                    isTransform3dSupported = false;
                } else {
                    // https://gist.github.com/lorenzopolidori/3794226
                    // ie9 does not support 3d transform
                    // http://msdn.microsoft.com/en-us/ie/ff468705
                    try {
                        var el = doc.createElement('p');
                        var transformProperty = getVendorInfo('transform').propertyName;
                        documentElement.insertBefore(el, documentElement.firstChild);
                        el.style[transformProperty] = 'translate3d(1px,1px,1px)';
                        var computedStyle = win.getComputedStyle(el);
                        var has3d = computedStyle.getPropertyValue(transformProperty) || computedStyle[transformProperty];
                        documentElement.removeChild(el);
                        isTransform3dSupported = (has3d !== undefined && has3d.length > 0 && has3d !== 'none');
                    } catch (e) {
                        // https://github.com/kissyteam/kissy/issues/563
                        isTransform3dSupported = true;
                    }
                }

                return isTransform3dSupported;
            },

            /**
             * whether support class list api
             * @returns {boolean}
             */
            isClassListSupported: function () {
                return isClassListSupportedState;
            },

            /**
             * whether support querySelectorAll
             * @returns {boolean}
             */
            isQuerySelectorSupported: function () {
                // force to use js selector engine
                return isQuerySelectorSupportedState;
            },

            getCssVendorInfo: function (name) {
                return getVendorInfo(name);
            }
        };
    }, {}],
    4: [function (require, module, exports) {
        var KISSY = require('runtime');
        var getScript = require('io-script');

        var fns = require('./lib/fns');
        var Loader = require('./lib/setup');
        var config = require('./lib/config');
        var Utils = require('./lib/utils');
        var ds = require('./lib/data-structure');
        var configs = require('./lib/configs');
        var ComboLoader = require('./lib/combo-loader');
        var loader = require('./lib/loader');
        require('./lib/init');
        require('./lib/i18n');

        /**
         * config.js
         * setup.js
         * utils.js
         *   css-onload.js
         * data-structure.js
         * get-script.js // moved to io-script
         * get-script-nodejs.js // XXX not yet transformed
         * configs.js
         * combo-loader.js
         * loader.js
         * init.js
         * i18n.js
         */

        Loader.config = config;
        Loader.Utils = Utils;
        Loader.getScript = getScript;
        Loader.ComboLoader = ComboLoader;
        Loader.WaitingModules = loader.WaitingModules;

        KISSY.addMember('config', config);
        KISSY.addMember('getScript', getScript);
        KISSY.addMember('add', loader.add);
        KISSY.addMember('use', loader.use);
        KISSY.addMember('require', loader.require);
        KISSY.addMember('setImmediate', fns.setImmediate);

        module.exports = Loader;
    }, {
        "./lib/combo-loader": 5,
        "./lib/config": 6,
        "./lib/configs": 7,
        "./lib/data-structure": 8,
        "./lib/fns": 9,
        "./lib/i18n": 10,
        "./lib/init": 11,
        "./lib/loader": 12,
        "./lib/setup": 13,
        "./lib/utils": 15,
        "io-script": 16,
        "runtime": 28
    }],
    5: [function (require, module, exports) {
        /**
         * combo loader for KISSY. using combo to load module files.
         * @ignore
         * @author yiminghe@gmail.com
         */
        var KISSY = require('runtime/index');
        var fns = require('./fns');
        var Utils = require('./utils');
        var Status = require('./setup').Status;

// ie11 is a new one!
        var oldIE = fns.ieMode < 10;

        var getHash = Utils.getHash,
            LOADING = Status.LOADING,
            LOADED = Status.LOADED,
            READY_TO_ATTACH = Status.READY_TO_ATTACH,
            ERROR = Status.ERROR,
            groupTag = new Date().valueOf();

        function loadScripts(runtime, rss, callback, charset, timeout) {
            var count = rss && rss.length,
                errorList = [],
                successList = [];

            function complete() {
                if (!(--count)) {
                    callback(successList, errorList);
                }
            }

            fns.each(rss, function (rs) {
                var mod;
                var config = {
                    timeout: timeout,
                    success: function () {
                        successList.push(rs);
                        if (mod && currentMod) {
                            // standard browser(except ie9) fire load after KISSY.add immediately
                            Utils.registerModule(runtime, mod.name, currentMod.factory, currentMod.config);
                            currentMod = undefined;
                        }
                        complete();
                    },
                    error: function () {
                        errorList.push(rs);
                        complete();
                    },
                    charset: charset
                };
                if (!rs.combine) {
                    mod = rs.mods[0];
                    if (mod.getType() === 'css') {
                        mod = undefined;
                    }
                    else if (oldIE) {
                        startLoadModName = mod.name;
                        startLoadModTime = new Date().valueOf();
                        config.attrs = {
                            'data-mod-name': mod.name
                        };
                    }
                }
                KISSY.Config.loadModsFn(rs, config);
            });
        }

        /**
         * @class KISSY.Loader.ComboLoader
         * using combo to load module files
         * @param runtime KISSY
         * @param waitingModules
         * @private
         */
        function ComboLoader(runtime, waitingModules) {
            fns.mix(this, {
                runtime: runtime,
                waitingModules: waitingModules
            });
        }

        ComboLoader.groupTag = groupTag;

        var currentMod;
        var startLoadModName;
        var startLoadModTime;

        function checkKISSYRequire(config, factory) {
            // use require primitive statement
            // function(S,require){require('node')}
            if (!config && typeof factory === 'function' && (factory.length > 1 || factory.define)) {
                var requires = Utils.getRequiresFromFn(factory);
                if (requires.length) {
                    config = config || {};
                    config.requires = requires;
                }
            } else {
                // KISSY.add(function(){},{requires:[]})
                if (config && config.requires && !config.cjs) {
                    config.cjs = 0;
                }
            }
            return config;
        }

        ComboLoader.add = function (name, factory, config, runtime, argsLen) {
            // KISSY.add('xx',[],function(){});
            if (argsLen === 3 && fns.isArray(factory)) {
                var tmp = factory;
                factory = config;
                config = {
                    requires: tmp,
                    cjs: 1
                };
            }
            // KISSY.add(function(){}), KISSY.add('a'), KISSY.add(function(){},{requires:[]})
            if (typeof name === 'function' || argsLen === 1) {
                config = factory;
                factory = name;
                config = checkKISSYRequire(config, factory);
                if (oldIE) {
                    // http://groups.google.com/group/commonjs/browse_thread/thread/5a3358ece35e688e/43145ceccfb1dc02#43145ceccfb1dc02
                    name = findModuleNameByInteractive();
                    // S.log('oldIE get modName by interactive: ' + name);
                    Utils.registerModule(runtime, name, factory, config);
                    startLoadModName = null;
                    startLoadModTime = 0;
                } else {
                    // 其他浏览器 onload 时，关联模块名与模块定义
                    currentMod = {
                        factory: factory,
                        config: config
                    };
                }
            } else {
                // KISSY.add('x',function(){},{requires:[]})
                if (oldIE) {
                    startLoadModName = null;
                    startLoadModTime = 0;
                } else {
                    currentMod = undefined;
                }
                config = checkKISSYRequire(config, factory);
                Utils.registerModule(runtime, name, factory, config);
            }
        };

// oldIE 特有，找到当前正在交互的脚本，根据脚本名确定模块名
// 如果找不到，返回发送前那个脚本
        function findModuleNameByInteractive() {
            var scripts = KISSY.Env.host.document.getElementsByTagName('script'),
                re,
                i,
                name,
                script;

            for (i = scripts.length - 1; i >= 0; i--) {
                script = scripts[i];
                if (script.readyState === 'interactive') {
                    re = script;
                    break;
                }
            }
            if (re) {
                name = re.getAttribute('data-mod-name');
            } else {
                // sometimes when read module file from cache,
                // interactive status is not triggered
                // module code is executed right after inserting into dom
                // i has to preserve module name before insert module script into dom,
                // then get it back here
                name = startLoadModName;
            }
            return name;
        }

        function debugRemoteModules(rss) {
            fns.each(rss, function (rs) {
                var ms = [];
                fns.each(rs.mods, function (m) {
                    if (m.status === LOADED) {
                        ms.push(m.name);
                    }
                });
            });
        }

        function getCommonPrefix(str1, str2) {
            str1 = str1.split(/\//);
            str2 = str2.split(/\//);
            var l = Math.min(str1.length, str2.length);
            for (var i = 0; i < l; i++) {
                if (str1[i] !== str2[i]) {
                    break;
                }
            }
            return str1.slice(0, i).join('/') + '/';
        }

        fns.mix(ComboLoader.prototype, {
            /**
             * load modules asynchronously
             */
            use: function (normalizedModNames) {
                var self = this,
                    allModNames,
                    comboUrls,
                    timeout = KISSY.Config.timeout,// XXX Config.timeout here already defined?
                    runtime = self.runtime;

                allModNames = fns.keys(self.calculate(normalizedModNames));

                Utils.createModulesInfo(runtime, allModNames);

                comboUrls = self.getComboUrls(allModNames);

                // load css first to avoid page blink
                fns.each(comboUrls.css, function (cssOne) {
                    loadScripts(runtime, cssOne, function (success, error) {
                        if ('@DEBUG@') {
                            debugRemoteModules(success);
                        }

                        fns.each(success, function (one) {
                            fns.each(one.mods, function (mod) {
                                Utils.registerModule(runtime, mod.name, KISSY.noop);
                                // notify all loader instance
                                mod.notifyAll();
                            });
                        });

                        fns.each(error, function (one) {
                            fns.each(one.mods, function (mod) {
                                var msg = mod.name +
                                    ' is not loaded! can not find module in path : ' +
                                    one.fullpath;
                                console && console.error(msg);
                                mod.status = ERROR;
                                // notify all loader instance
                                mod.notifyAll();
                            });
                        });
                    }, cssOne.charset, timeout);
                });

                // jss css download in parallel
                fns.each(comboUrls.js, function (jsOne) {
                    loadScripts(runtime, jsOne, function (success) {
                        if ('@DEBUG@') {
                            debugRemoteModules(success);
                        }

                        fns.each(jsOne, function (one) {
                            fns.each(one.mods, function (mod) {
                                // fix #111
                                // https://github.com/kissyteam/kissy/issues/111
                                if (!mod.factory) {
                                    var msg = mod.name +
                                        ' is not loaded! can not find module in path : ' +
                                        one.fullpath;
                                    console && console.error(msg);
                                    mod.status = ERROR;
                                }
                                // notify all loader instance
                                mod.notifyAll();
                            });
                        });
                    }, jsOne.charset, timeout);
                });
            },

            /**
             * calculate dependency
             */
            calculate: function (modNames, cache, ret) {
                var i,
                    m,
                    mod,
                    modStatus,
                    self = this,
                    waitingModules = self.waitingModules,
                    runtime = self.runtime;

                ret = ret || {};
                // 提高性能，不用每个模块都再次全部依赖计算
                // 做个缓存，每个模块对应的待动态加载模块
                cache = cache || {};

                for (i = 0; i < modNames.length; i++) {
                    m = modNames[i];
                    if (cache[m]) {
                        continue;
                    }
                    cache[m] = 1;
                    mod = Utils.createModuleInfo(runtime, m);
                    modStatus = mod.status;
                    if (modStatus >= READY_TO_ATTACH) {
                        continue;
                    }
                    if (modStatus !== LOADED) {
                        if (!waitingModules.contains(m)) {
                            if (modStatus !== LOADING) {
                                mod.status = LOADING;
                                ret[m] = 1;
                            }
                            /*jshint loopfunc:true*/
                            mod.wait(function (mod) {
                                waitingModules.remove(mod.name);
                                // notify current loader instance
                                waitingModules.notifyAll();
                            });
                            waitingModules.add(m);
                        }
                    }
                    self.calculate(mod.getNormalizedRequires(), cache, ret);
                }

                return ret;
            },

            /**
             * get combo mods for modNames
             */
            getComboMods: function (modNames, comboPrefixes) {
                var comboMods = {},
                    packageUri,
                    runtime = this.runtime,
                    i = 0,
                    l = modNames.length,
                    modName, mod, packageInfo, type, typedCombos, mods,
                    tag, charset, packagePath,
                    packageName, group, fullpath;

                for (; i < l; ++i) {
                    modName = modNames[i];
                    mod = Utils.createModuleInfo(runtime, modName);
                    type = mod.getType();
                    fullpath = mod.getFullPath();
                    packageInfo = mod.getPackage();
                    packageName = packageInfo.name;
                    charset = packageInfo.getCharset();
                    tag = packageInfo.getTag();
                    group = packageInfo.getGroup();
                    packagePath = packageInfo.getPrefixUriForCombo();
                    packageUri = packageInfo.getPackageUri();

                    var comboName = packageName;
                    // whether group packages can be combined (except default package and non-combo modules)
                    if ((mod.canBeCombined = packageInfo.isCombine() &&
                        fns.startsWith(fullpath, packagePath)) && group) {
                        // combined package name
                        comboName = group + '_' + charset + '_' + groupTag;

                        var groupPrefixUri;
                        if ((groupPrefixUri = comboPrefixes[comboName])) {
                            if (groupPrefixUri.isSameOriginAs(packageUri)) {
                                groupPrefixUri.setPath(getCommonPrefix(groupPrefixUri.getPath(),
                                    packageUri.getPath()));
                            } else {
                                comboName = packageName;
                                comboPrefixes[packageName] = packageUri;
                            }
                        } else {
                            comboPrefixes[comboName] = packageUri.clone();
                        }
                    } else {
                        comboPrefixes[packageName] = packageUri;
                    }

                    typedCombos = comboMods[type] = comboMods[type] || {};
                    if (!(mods = typedCombos[comboName])) {
                        mods = typedCombos[comboName] = [];
                        mods.charset = charset;
                        mods.tags = [tag]; // [package tag]
                    } else {
                        if (!(mods.tags.length === 1 && mods.tags[0] === tag)) {
                            mods.tags.push(tag);
                        }
                    }
                    mods.push(mod);
                }

                return comboMods;
            },

            /**
             * Get combo urls
             */
            getComboUrls: function (modNames) {
                var runtime = this.runtime,
                    Config = runtime.Config,
                    comboPrefix = Config.comboPrefix,
                    comboSep = Config.comboSep,
                    maxFileNum = Config.comboMaxFileNum,
                    maxUrlLength = Config.comboMaxUrlLength;

                var comboPrefixes = {};
                // {type, {comboName, [modInfo]}}}
                var comboMods = this.getComboMods(modNames, comboPrefixes);
                // {type, {comboName, [url]}}}
                var comboRes = {};

                // generate combo urls
                for (var type in comboMods) {
                    comboRes[type] = {};
                    for (var comboName in comboMods[type]) {
                        var currentComboUrls = [];
                        var currentComboMods = [];
                        var mods = comboMods[type][comboName];
                        var tags = mods.tags;
                        var tag = tags.length > 1 ? getHash(tags.join('')) : tags[0];

                        var suffix = (tag ? '?t=' + encodeURIComponent(tag) + '.' + type : ''),
                            suffixLength = suffix.length,
                            basePrefix = comboPrefixes[comboName].toString(),
                            baseLen = basePrefix.length,
                            prefix = basePrefix + comboPrefix,
                            res = comboRes[type][comboName] = [];

                        var l = prefix.length;
                        res.charset = mods.charset;
                        res.mods = [];

                        /*jshint loopfunc:true*/
                        var pushComboUrl = function () {
                            //noinspection JSReferencingMutableVariableFromClosure
                            res.push({
                                combine: 1,
                                fullpath: prefix + currentComboUrls.join(comboSep) + suffix,
                                mods: currentComboMods
                            });
                        };

                        for (var i = 0; i < mods.length; i++) {
                            var currentMod = mods[i];
                            res.mods.push(currentMod);
                            var fullpath = currentMod.getFullPath();
                            if (!currentMod.canBeCombined) {
                                res.push({
                                    combine: 0,
                                    fullpath: fullpath,
                                    mods: [currentMod]
                                });
                                continue;
                            }
                            // ignore query parameter
                            var path = fullpath.slice(baseLen).replace(/\?.*$/, '');
                            currentComboUrls.push(path);
                            currentComboMods.push(currentMod);

                            if (currentComboUrls.length > maxFileNum ||
                                (l + currentComboUrls.join(comboSep).length + suffixLength > maxUrlLength)) {
                                currentComboUrls.pop();
                                currentComboMods.pop();
                                pushComboUrl();
                                currentComboUrls = [];
                                currentComboMods = [];
                                i--;
                            }
                        }
                        if (currentComboUrls.length) {
                            pushComboUrl();
                        }
                    }
                }
                return comboRes;
            }
        });

        module.exports = ComboLoader;

        /*
 2013-09-11
 - union simple loader and combo loader

 2013-07-25 阿古, yiminghe
 - support group combo for packages

 2013-06-04 yiminghe@gmail.com
 - refactor merge combo loader and simple loader
 - support error callback

 2012-02-20 yiminghe note:
 - three status
 0: initialized
 LOADED: load into page
 ATTACHED: factory executed
 */

    }, {"./fns": 9, "./setup": 13, "./utils": 15, "runtime/index": 28}],
    6: [function (require, module, exports) {
        var KISSY = require('runtime/index');
        var fns = require('./fns');

        /**
         * set KISSY configuration
         * @param {Object|String} configName Config object or config key.
         * @param {String} configName.base KISSY 's base path. Default: get from kissy(-min).js or seed(-min).js
         * @param {String} configName.tag KISSY 's timestamp for native module. Default: KISSY 's build time.
         * @param {Boolean} configName.debug whether to enable debug mod.
         * @param {Boolean} configName.combine whether to enable combo.
         * @param {Object} configName.logger logger config
         * @param {Object[]} configName.logger.excludes  exclude configs
         * @param {Object} configName.logger.excludes.0 a single exclude config
         * @param {RegExp} configName.logger.excludes.0.logger  matched logger will be excluded from logging
         * @param {KISSY.Logger.Level} configName.logger.excludes.0.minLevel  minimum logger level
         * @param {KISSY.Logger.Level} configName.logger.excludes.0.maxLevel  maximum logger level
         * @param {Object[]} configName.logger.includes include configs
         * @param {Object} configName.logger.includes.0 a single include config
         * @param {RegExp} configName.logger.includes.0.logger  matched logger will be included from logging
         * @param {KISSY.Logger.Level} configName.logger.excludes.0.minLevel  minimum logger level
         * @param {KISSY.Logger.Level} configName.logger.excludes.0.maxLevel  maximum logger level
         * @param {Object} configName.packages Packages definition with package name as the key.
         * @param {String} configName.packages.base Package base path.
         * @param {String} configName.packages.tag  Timestamp for this package's module file.
         * @param {String} configName.packages.debug Whether force debug mode for current package.
         * @param {String} configName.packages.combine Whether allow combine for current package modules.
         * @param {String} [configName.packages.ignorePackageNameInUri=false] whether remove packageName from module request uri,
         * can only be used in production mode.
         * @param [configValue] config value.
         *
         * for example:
         *     @example
         *     KISSY.config({
 *         combine: true,
 *         base: '',
 *         packages: {
 *             'gallery': {
 *                 base: 'http://a.tbcdn.cn/s/kissy/gallery/'
 *             }
 *         },
 *         modules: {
 *             'gallery/x/y': {
 *                 requires: ['gallery/x/z']
 *             }
 *         }
 *     });
         */
        var config = function (configName, configValue) {

            var cfg,
                r,
                self = KISSY,
                fn,
                Config = KISSY.Config,
                configFns = Config.fns;

            // replace of KISSY.isObject
            if (fns.isObject(configName)) {
                fns.each(configName, function (configValue, p) {
                    fn = configFns[p];
                    if (fn) {
                        fn.call(self, configValue);
                    } else {
                        Config[p] = configValue;
                    }
                });
            } else {
                cfg = configFns[configName];
                if (configValue === undefined) {
                    if (cfg) {
                        r = cfg.call(self);
                    } else {
                        r = Config[configName];
                    }
                } else {
                    if (cfg) {
                        r = cfg.call(self, configValue);
                    } else {
                        Config[configName] = configValue;
                    }
                }
            }
            return r;
        };

        module.exports = config;
    }, {"./fns": 9, "runtime/index": 28}],
    7: [function (require, module, exports) {
        /**
         * @ignore
         * Declare config info for KISSY.
         * @author yiminghe@gmail.com
         */
        var KISSY = require('runtime');
        var getScript = require('io-script');
        var Uri = require('./uri');
        var Utils = require('./utils');
        var Status = require('./setup').Status;
        var ds = require('./data-structure');
        var fns = require('./fns');

        var host = KISSY.Env.host,
            location = host.location,
            simulatedLocation,
            locationHref;

        var configFns = KISSY.Config.fns;

        if (!fns.nodejs && location && (locationHref = location.href)) {
            simulatedLocation = new Uri(locationHref);
        }

        function normalizeBase(base) {
            var baseUri;
            base = base.replace(/\\/g, '/');
            if (base.charAt(base.length - 1) !== '/') {
                base += '/';
            }
            if (simulatedLocation) {
                baseUri = simulatedLocation.resolve(base);
            } else {
                // add scheme for S.Uri
                // currently only for nodejs
                if (!fns.startsWith(base, 'file:')) {
                    base = 'file:' + base;
                }
                baseUri = new Uri(base);
            }
            return baseUri;
        }

        KISSY.Config.loadModsFn = function (rs, config) {
            getScript(rs.fullpath, config);
        };

        configFns.packages = function (config) {
            var name,
                Config = this.Config,
                ps = Config.packages = Config.packages || {};
            if (config) {
                fns.each(config, function (cfg, key) {
                    // 兼容数组方式
                    name = cfg.name || key;
                    // 兼容 path
                    var baseUri = normalizeBase(cfg.base || cfg.path);

                    cfg.name = name;
                    cfg.base = baseUri.toString();
                    cfg.baseUri = baseUri;
                    cfg.runtime = KISSY;
                    delete cfg.path;
                    if (ps[name]) {
                        ps[name].reset(cfg);
                    } else {
                        ps[name] = new ds.Package(cfg);
                    }
                });
                return undefined;
            } else if (config === false) {
                Config.packages = {};
                return undefined;
            } else {
                return ps;
            }
        };

        configFns.modules = function (modules) {
            var self = this;
            if (modules) {
                fns.each(modules, function (modCfg, modName) {
                    var mod = Utils.createModuleInfo(self, modName, modCfg);
                    // #485, invalid after add
                    if (mod.status === Status.INIT) {
                        fns.mix(mod, modCfg);
                    }
                });
            }
        };

        configFns.base = function (base) {
            var self = this,
                Config = self.Config,
                baseUri;
            if (!base) {
                return Config.base;
            }
            baseUri = normalizeBase(base);
            Config.base = baseUri.toString();
            Config.baseUri = baseUri;
            return undefined;
        };

    }, {"./data-structure": 8, "./fns": 9, "./setup": 13, "./uri": 14, "./utils": 15, "io-script": 16, "runtime": 28}],
    8: [function (require, module, exports) {
        /**
         * @ignore
         * setup data structure for kissy loader
         * @author yiminghe@gmail.com
         */
        var KISSY = require('runtime/index');
        var Path = require('path/index');
        var Uri = require('./uri');
        var fns = require('./fns');
        var Loader = require('./setup');
        var Status = Loader.Status;
        var Utils = require('./utils');
// var loader = require('./loader'); // XXX circle dependencies, replaced with KISSY.xxx

        var ds = {};

        var IGNORE_PACKAGE_NAME_IN_URI = 'ignorePackageNameInUri';

        function forwardSystemPackage(self, property) {
            return property in self ?
                self[property] :
                self.runtime.Config[property];
        }

        /**
         * @class KISSY.Loader.Package
         * @private
         * This class should not be instantiated manually.
         */
        function Package(cfg) {
            fns.mix(this, cfg);
        }

        Package.prototype = {
            constructor: Package,

            reset: function (cfg) {
                fns.mix(this, cfg);
            },

            /**
             * Tag for package.
             * tag can not contain ".", eg: Math.random() !
             * @return {String}
             */
            getTag: function () {
                return forwardSystemPackage(this, 'tag');
            },

            /**
             * Get package name.
             * @return {String}
             */
            getName: function () {
                return this.name;
            },

            /**
             * Get package base.
             * @return {String}
             */
            'getBase': function () {
                return forwardSystemPackage(this, 'base');
            },

            getPrefixUriForCombo: function () {
                var self = this,
                    packageName = self.name;
                return self.getBase() + (
                    packageName && !self.isIgnorePackageNameInUri() ?
                        (packageName + '/') :
                        ''
                );
            },

            /**
             * get package uri
             */
            getPackageUri: function () {
                var self = this;
                self.packageUri = new Uri(this.getPrefixUriForCombo());
                return self.packageUri;
            },

            /**
             * Get package baseUri
             * @return {KISSY.Uri}
             */
            getBaseUri: function () {
                return forwardSystemPackage(this, 'baseUri');
            },

            /**
             * Whether is debug for this package.
             * @return {Boolean}
             */
            isDebug: function () {
                return forwardSystemPackage(this, 'debug');
            },

            /**
             *  whether request mod file without insert package name into package base
             *  @return {Boolean}
             */
            isIgnorePackageNameInUri: function () {
                return forwardSystemPackage(this, IGNORE_PACKAGE_NAME_IN_URI);
            },

            /**
             * Get charset for package.
             * @return {String}
             */
            getCharset: function () {
                return forwardSystemPackage(this, 'charset');
            },

            /**
             * Whether modules are combined for this package.
             * @return {Boolean}
             */
            isCombine: function () {
                return forwardSystemPackage(this, 'combine');
            },

            /**
             * Get package group (for combo).
             * @returns {String}
             */
            getGroup: function () {
                return forwardSystemPackage(this, 'group');
            }
        };

        ds.Package = Package;

        /**
         * @class KISSY.Loader.Module
         * @private
         * This class should not be instantiated manually.
         */
        function Module(cfg) {
            var module = this;
            /**
             * exports of this module
             */
            module.exports = {};

            /**
             * status of current modules
             */
            module.status = Status.INIT;

            /**
             * name of this module
             */
            module.name = undefined;
            /**
             * factory of this module
             */
            module.factory = undefined;
            // lazy initialize and commonjs module format
            module.cjs = 1;

            fns.mix(module, cfg);
            module.waitedCallbacks = [];
        }

        function makeArray(arr) {
            var ret = [];
            for (var i = 0; i < arr.length; i++) {
                ret[i] = arr[i];
            }
            return ret;
        }

        function wrapUse(fn) {
            if (typeof fn === 'function') {
                fn = {
                    success: fn
                };
            }
            if (fn && fn.success) {
                var original = fn.success;
                fn.success = function () {
                    original.apply(this, makeArray(arguments).slice(1));
                };
                fn.sync = 1;
                return fn;
            }
        }

        Module.prototype = {
            kissy: 1,

            constructor: Module,

            /**
             * resolve module by name.
             * @param {String|String[]} relativeName relative module's name
             * @param {Function|Object} fn KISSY.use callback
             * @returns {String} resolved module name
             */
            'use': function (relativeName, fn) {
                relativeName = Utils.getModNamesAsArray(relativeName);
                return KISSY.use(Utils.normalDepModuleName(this.name, relativeName), fn);
            },

            /**
             * resolve path
             * @param {String} relativePath relative path
             * @returns {KISSY.Uri} resolve uri
             */
            'resolve': function (relativePath) {
                return this.getFullPathUri().resolve(relativePath);
            },

            // use by xtemplate include
            'resolveByName': function (relativeName) {
                return Utils.normalDepModuleName(this.name, relativeName);
            },

            /**
             * require other modules from current modules
             * @param {String} moduleName name of module to be required
             * @returns {*} required module exports
             */
            require: function (moduleName) {
                var self = this;
                if (typeof moduleName === 'string') {
                    return KISSY.require(moduleName, this.name);
                } else {
                    var mods = moduleName;
                    for (var i = 0; i < mods.length; i++) {
                        mods[i] = self.resolveByName(mods[i]);
                    }
                    var args = makeArray(arguments);
                    args[0] = mods;
                    args[1] = wrapUse(args[1]);
                    KISSY.use.apply(KISSY, args);
                }

            },

            wait: function (callback) {
                this.waitedCallbacks.push(callback);
            },

            notifyAll: function () {
                var callback;
                var len = this.waitedCallbacks.length,
                    i = 0;
                for (; i < len; i++) {
                    callback = this.waitedCallbacks[i];
                    callback(this);
                }
                this.waitedCallbacks = [];
            },

            /**
             * Get the type if current Module
             * @return {String} css or js
             */
            getType: function () {
                var self = this,
                    v = self.type;
                if (!v) {
                    if (Path.extname(self.name).toLowerCase() === '.css') {
                        v = 'css';
                    } else {
                        v = 'js';
                    }
                    self.type = v;
                }
                return v;
            },

            /**
             * Get the fullpath uri of current module if load dynamically
             * @return {KISSY.Uri}
             */
            getFullPathUri: function () {
                var self = this,
                    t,
                    fullPathUri,
                    packageBaseUri,
                    packageInfo,
                    packageName,
                    path;
                if (!self.fullPathUri) {
                    // fullpath can be specified
                    if (self.fullpath) {
                        fullPathUri = new Uri(self.fullpath);
                    } else {
                        packageInfo = self.getPackage();
                        packageBaseUri = packageInfo.getBaseUri();
                        path = self.getPath();
                        // #262
                        if (packageInfo.isIgnorePackageNameInUri() &&
                            // native mod does not allow ignore package name
                            (packageName = packageInfo.name)) {
                            path = Path.relative(packageName, path);
                        }
                        fullPathUri = packageBaseUri.resolve(path);
                        if ((t = self.getTag())) {
                            t += '.' + self.getType();
                            fullPathUri.query.set('t', t);
                        }
                    }
                    self.fullPathUri = fullPathUri;
                }
                return self.fullPathUri;
            },

            /**
             * Get the fullpath of current module if load dynamically
             * @return {String}
             */
            getFullPath: function () {
                var self = this,
                    fullPathUri;
                if (!self.fullpath) {
                    fullPathUri = self.getFullPathUri();
                    self.fullpath = fullPathUri.toString();
                }
                return self.fullpath;
            },

            /**
             * Get the path (without package base)
             * @return {String}
             */
            getPath: function () {
                var self = this;
                return self.path || (self.path = defaultComponentJsName(self));
            },

            /**
             * Get the name of current module
             * @return {String}
             */
            getName: function () {
                return this.name;
            },

            /**
             * Get the package which current module belongs to.
             * @return {KISSY.Loader.Package}
             */
            getPackage: function () {
                var self = this;
                return self.packageInfo ||
                    (self.packageInfo = getPackage(self.runtime, self.name));
            },

            /**
             * Get the tag of current module.
             * tag can not contain ".", eg: Math.random() !
             * @return {String}
             */
            getTag: function () {
                var self = this;
                return self.tag || self.getPackage().getTag();
            },

            /**
             * Get the charset of current module
             * @return {String}
             */
            getCharset: function () {
                var self = this;
                return self.charset || self.getPackage().getCharset();
            },

            /**
             * get alias required module names
             * @returns {String[]} alias required module names
             */
            getRequiresWithAlias: function () {
                var self = this,
                    requiresWithAlias = self.requiresWithAlias,
                    requires = self.requires;
                if (!requires || requires.length === 0) {
                    return requires || [];
                } else if (!requiresWithAlias) {
                    self.requiresWithAlias = requiresWithAlias =
                        Utils.normalizeModNamesWithAlias(self.runtime, requires, self.name);
                }
                return requiresWithAlias;
            },

            /**
             * Get module objects required by this module
             * @return {KISSY.Loader.Module[]}
             */
            getRequiredMods: function () {
                var self = this,
                    runtime = self.runtime;
                return fns.map(self.getNormalizedRequires(), function (r) {
                    return Utils.createModuleInfo(runtime, r);
                });
            },

            /**
             * Get module names required by this module
             * @return {String[]}
             */
            getNormalizedRequires: function () {
                var self = this,
                    normalizedRequires,
                    normalizedRequiresStatus = self.normalizedRequiresStatus,
                    status = self.status,
                    requires = self.requires;
                if (!requires || requires.length === 0) {
                    return requires || [];
                } else if ((normalizedRequires = self.normalizedRequires) &&
                    // 事先声明的依赖不能当做 loaded 状态下真正的依赖
                    (normalizedRequiresStatus === status)) {
                    return normalizedRequires;
                } else {
                    self.normalizedRequiresStatus = status;
                    self.normalizedRequires = Utils.normalizeModNames(self.runtime, requires, self.name);
                    return self.normalizedRequires;
                }
            }
        };

        ds.Module = Module;

        function defaultComponentJsName(m) {
            var name = m.name,
                extname = '.' + m.getType(),
                min = '-min';

            name = Path.join(Path.dirname(name), Path.basename(name, extname));

            if (m.getPackage().isDebug()) {
                min = '';
            }

            return name + min + extname;
        }

        var systemPackage = new Package({
            name: '',
            runtime: KISSY
        });

        function getPackage(self, modName) {
            var packages = self.config('packages'),
                modNameSlash = modName + '/',
                pName = '',
                p;
            for (p in packages) {
                if (fns.startsWith(modNameSlash, p + '/') && p.length > pName.length) {
                    pName = p;
                }
            }
            return packages[pName] || systemPackage;
        }

        Loader.Package = ds.Package;
        Loader.Module = ds.Module;

        module.exports = ds;

    }, {"./fns": 9, "./setup": 13, "./uri": 14, "./utils": 15, "path/index": 24, "runtime/index": 28}],
    9: [function (require, module, exports) {
        var KISSY = require('runtime/index');
        var querystring = require('querystring');

        var host = KISSY.Env.host;
        var m;
        var ua = (host.navigator || {}).userAgent || '';

        var isArray = Array.isArray || function (obj) {
            return Object.prototype.toString.call(obj) === '[object Array]';
        };

        function keys(obj) {
            var ret = [];
            for (var key in obj) {
                ret.push(key);
            }
            return ret;
        }

        function numberify(s) {
            var c = 0;
            // convert '1.2.3.4' to 1.234
            return parseFloat(s.replace(/\./g, function () {
                return (c++ === 0) ? '.' : '';
            }));
        }

        function bindFn(r, fn, obj) {
            function FNOP() {
            }

            var slice = [].slice,
                args = slice.call(arguments, 3),
                bound = function () {
                    var inArgs = slice.call(arguments);
                    return fn.apply(
                        this instanceof FNOP ? this :
                            // fix: y.x=S.bind(fn);
                            obj || this,
                        (r ? inArgs.concat(args) : args.concat(inArgs))
                    );
                };
            FNOP.prototype = fn.prototype;
            bound.prototype = new FNOP();
            return bound;
        }

        if ((m = ua.match(/Trident\/([\d.]*)/))) {
            exports.trident = numberify(m[1]);
        }

        if ((m = ua.match(/Gecko/))) {
            exports.gecko = 0.1; // Gecko detected, look for revision
            if ((m = ua.match(/rv:([\d.]*)/)) && m[1]) {
                exports.gecko = numberify(m[1]);
            }
        }

        if ((m = ua.match(/MSIE ([^;]*)|Trident.*; rv(?:\s|:)?([0-9.]+)/)) &&
            (v = (m[1] || m[2]))) {
            exports.ie = numberify(v);
            exports.ieMode = host.document.documentMode || exports.ie;
            exports.trident = exports.trident || 1;
        }

        (function () {

            var queue = [];
            var flushing = 0;

            function flush() {
                var i = 0, item;
                while ((item = queue[i++])) {
                    if ('@DEBUG@') {
                        item();
                    } else {
                        try {
                            item();
                        } catch (e) {
                            /*jshint loopfunc:true*/
                            setTimeout(function () {
                                throw e;
                            }, 0);
                        }
                    }
                }
                if (i > 1) {
                    queue = [];
                }
                flushing = 0;
            }

            exports.setImmediate = function (fn) {
                queue.push(fn);
                if (!flushing) {
                    flushing = 1;
                    requestFlush();
                }
            };

            var requestFlush;
            if (typeof setImmediate === 'function') {
                requestFlush = function () {
                    setImmediate(flush);
                };
            } else if (typeof MessageChannel !== 'undefined') {
                // modern browsers
                // http://msdn.microsoft.com/en-us/library/windows/apps/hh441303.aspx
                var channel = new MessageChannel();
                // At least Safari Version 6.0.5 (8536.30.1) intermittently cannot create
                // working message ports the first time a page loads.
                channel.port1.onmessage = function () {
                    requestFlush = realRequestFlush;
                    channel.port1.onmessage = flush;
                    flush();
                };
                var realRequestFlush = function () {
                    // Opera requires us to provide a message payload, regardless of
                    // whether we use it.
                    channel.port2.postMessage(0);
                };
                requestFlush = function () {
                    setTimeout(flush, 0);
                    realRequestFlush();
                };

            } else {
                // old browsers
                requestFlush = function () {
                    setTimeout(flush, 0);
                };
            }
        })();

        exports.isArray = isArray;

        exports.keys = keys;

        function urlEncode(s) {
            return encodeURIComponent(String(s));
        }

        /**
         * Call decodeURIComponent to decode a url component
         * and replace '+' with space.
         * @param {String} s part of url to be decoded.
         * @return {String} decoded url part string.
         * @member KISSY
         */
        function urlDecode(s) {
            return decodeURIComponent(s.replace(/\+/g, ' '));
        }

        function isValidParamValue(val) {
            var t = typeof val;
            // If the type of val is null, undefined, number, string, boolean, return TRUE.
            return val == null || (t !== 'object' && t !== 'function');
        }

        exports.bind = bindFn(0, bindFn, null, 0);

        exports.indexOfArray = Array.prototype.indexOf ?
            function (item, arr) {
                return Array.prototype.indexOf.call(arr, item);
            } :
            function (item, arr) {
                for (var i = 0, len = arr.length; i < len; ++i) {
                    if (arr[i] === item) {
                        return i;
                    }
                }
                return -1;
            };

        exports.map = Array.prototype.map ?
            function (arr, fn, context) {
                return Array.prototype.map.call(arr, fn, context || this);
            } :
            function (arr, fn, context) {
                var len = arr.length,
                    res = new Array(len);
                for (var i = 0; i < len; i++) {
                    var el = typeof arr === 'string' ? arr.charAt(i) : arr[i];
                    if (el ||
                        //ie<9 in invalid when typeof arr == string
                        i in arr) {
                        res[i] = fn.call(context || this, el, i, arr);
                    }
                }
                return res;
            };

        exports.reduce = function (arr, callback, initialValue) {
            var len = arr.length;
            if (typeof callback !== 'function') {
                throw new TypeError('callback is not function!');
            }

            // no value to return if no initial value and an empty array
            if (len === 0 && arguments.length === 2) {
                throw new TypeError('arguments invalid');
            }

            var k = 0;
            var accumulator;
            if (arguments.length >= 3) {
                accumulator = initialValue;
            }
            else {
                do {
                    if (k in arr) {
                        accumulator = arr[k++];
                        break;
                    }

                    // if array contains no values, no initial value to return
                    k += 1;
                    if (k >= len) {
                        throw new TypeError();
                    }
                }
                while (true);
            }

            while (k < len) {
                if (k in arr) {
                    accumulator = callback.call(undefined, accumulator, arr[k], k, arr);
                }
                k++;
            }

            return accumulator;
        };

        exports.isObject = function (o) {
            return Object.prototype.toString.call(o) == '[object Object]';
        };

        exports.isEmptyObject = function (o) {
            for (var p in o) {
                if (p !== undefined) {
                    return false;
                }
            }
            return true;
        };

        exports.mix = function (to, from) {
            for (var i in from) {
                to[i] = from[i];
            }
            return to;
        };

        exports.endsWith = function endsWith(s, matchedValue) {
            var matchedIndex = s.length - matchedValue.length;
            return 0 <= matchedIndex && s.indexOf(matchedValue, matchedIndex) == matchedIndex;
        };

        exports.startsWith = function startsWith(s, matchedValue) {
            return 0 === s.lastIndexOf(matchedValue, 0)
        };

        exports.each = function (obj, fn) {
            var i = 0;
            var myKeys, l;
            if (isArray(obj)) {
                l = obj.length;
                for (; i < l; i++) {
                    if (fn(obj[i], i, obj) === false) {
                        break;
                    }
                }
            } else {
                myKeys = keys(obj);
                l = myKeys.length;
                for (; i < l; i++) {
                    if (fn(obj[myKeys[i]], myKeys[i], obj) === false) {
                        break;
                    }
                }
            }
        };

        var SEP = '&',
            EMPTY = '',
            EQ = '=',
            TRUE = true;

        var RE_TRIM = /^[\s\xa0]+|[\s\xa0]+$/g;

        var trim = String.prototype.trim ?
            function (str) {
                return str == null ? EMPTY : String.prototype.trim.call(str);
            } :
            function (str) {
                return str == null ? EMPTY : (str + '').replace(RE_TRIM, EMPTY);
            };

        /**
         * Creates a serialized string of an array or object.
         *
         * for example:
         *     @example
         *     {foo: 1, bar: 2}    // -> 'foo=1&bar=2'
         *     {foo: 1, bar: [2, 3]}    // -> 'foo=1&bar=2&bar=3'
         *     {foo: '', bar: 2}    // -> 'foo=&bar=2'
         *     {foo: undefined, bar: 2}    // -> 'foo=undefined&bar=2'
         *     {foo: TRUE, bar: 2}    // -> 'foo=TRUE&bar=2'
         *
         * @param {Object} o json data
         * @param {String} [sep='&'] separator between each pair of data
         * @param {String} [eq='='] separator between key and value of data
         * @param {Boolean} [serializeArray=true] whether add '[]' to array key of data
         * @return {String}
         * @member KISSY
         */
        exports.param = querystring.stringify;

        /**
         * Parses a URI-like query string and returns an object composed of parameter/value pairs.
         *
         * for example:
         *      @example
         *      'section=blog&id=45'        // -> {section: 'blog', id: '45'}
         *      'section=blog&tag=js&tag=doc' // -> {section: 'blog', tag: ['js', 'doc']}
         *      'tag=ruby%20on%20rails'        // -> {tag: 'ruby on rails'}
         *      'id=45&raw'        // -> {id: '45', raw: ''}
         * @param {String} str param string
         * @param {String} [sep='&'] separator between each pair of data
         * @param {String} [eq='='] separator between key and value of data
         * @return {Object} json data
         * @member KISSY
         */
        exports.unparam = querystring.parse;

        exports.urlDecode = urlDecode;

        exports.urlEncode = urlEncode;

    }, {"querystring": 26, "runtime/index": 28}],
    10: [function (require, module, exports) {
        /**
         * @ignore
         * i18n plugin for kissy loader
         * @author yiminghe@gmail.com
         */
        var KISSY = require('runtime/index');
        var loader = require('./loader');

        loader.add('i18n', {
            alias: function (S, name) {
                return name + '/i18n/' + KISSY.Config.lang;
            }
        });
    }, {"./loader": 12, "runtime/index": 28}],
    11: [function (require, module, exports) {
        /**
         * @ignore
         * init loader, set config
         */
        var KISSY = require('runtime/index');
        var fns = require('./fns');
        var Utils = require('./utils');
        var config = require('./config');
        var loader = require('./loader');

        var host = KISSY.Env.host;
        var doc = host && host.document;
        var TIMESTAMP = '1450252392754';
        var defaultComboPrefix = '??';
        var defaultComboSep = ',';

        function returnJson(s) {
            /*jshint evil:true*/
            return (new Function('return ' + s))();
        }

        var baseReg = /^(.*)(seed|kissy|loader)(?:-min)?\.js[^/]*/i,
            baseTestReg = /(seed|kissy|loader)(?:-min)?\.js/i;

        function getBaseInfoFromOneScript(script) {
            // can not use KISSY.Uri
            // /??x.js,dom.js for tbcdn
            var src = script.src || '';
            if (!src.match(baseTestReg)) {
                return 0;
            }

            var baseInfo = script.getAttribute('data-config');

            if (baseInfo) {
                baseInfo = returnJson(baseInfo);
            } else {
                baseInfo = {};
            }

            var comboPrefix = baseInfo.comboPrefix || defaultComboPrefix;
            var comboSep = baseInfo.comboSep || defaultComboSep;

            var parts,
                base,
                index = src.indexOf(comboPrefix);

            // no combo
            if (index === -1) {
                base = src.replace(baseReg, '$1');
            } else {
                base = src.substring(0, index);
                // a.tbcdn.cn??y.js, ie does not insert / after host
                // a.tbcdn.cn/combo? comboPrefix=/combo?
                if (base.charAt(base.length - 1) !== '/') {
                    base += '/';
                }
                parts = src.substring(index + comboPrefix.length).split(comboSep);
                fns.each(parts, function (part) {
                    if (part.match(baseTestReg)) {
                        base += part.replace(baseReg, '$1');
                        return false;
                    }
                    return undefined;
                });
            }

            if (!('tag' in baseInfo)) {
                var queryIndex = src.lastIndexOf('?t=');
                if (queryIndex !== -1) {
                    var query = src.substring(queryIndex + 1);
                    // kissy 's tag will be determined by build time and user specified tag
                    baseInfo.tag = Utils.getHash(TIMESTAMP + query);
                }
            }

            baseInfo.base = baseInfo.base || base;

            return baseInfo;
        }

        /**
         * get base from seed.js
         * @return {Object} base for kissy
         * @ignore
         *
         * for example:
         *      @example
         *      http://a.tbcdn.cn/??s/kissy/x.y.z/seed.js,p/global/global.js
         *      note about custom combo rules, such as yui3:
         *      combo-prefix='combo?' combo-sep='&'
         */
        function getBaseInfo() {
            // get base from current script file path
            // notice: timestamp
            var scripts = doc.getElementsByTagName('script'),
                i,
                info;

            for (i = scripts.length - 1; i >= 0; i--) {
                if ((info = getBaseInfoFromOneScript(scripts[i]))) {
                    return info;
                }
            }

            console && console.error('must load kissy by file name in browser environment: seed.js or seed-min.js');
            return null;
        }

        config({
            comboPrefix: defaultComboPrefix,
            comboSep: defaultComboSep,
            charset: 'utf-8',
            lang: 'zh-cn'
        });

//if (fns.nodejs) {
//    // nodejs: no tag
//    // noinspection JSUnresolvedVariable
//    config({
//        charset: 'utf-8',
//        /*global __dirname*/
//        base: __dirname.replace(/\\/g, '/').replace(/\/$/, '') + '/'
//    });
//    // ejecta
//} else
        if (doc && doc.getElementsByTagName) {
            // will transform base to absolute path
            config(fns.mix({
                // 2k(2048) url length
                comboMaxUrlLength: 2000,
                // file limit number for a single combo url
                comboMaxFileNum: 40
            }, getBaseInfo()));
        }

// define
        host.define = function (name, deps, factory) {

            // define('name', [], fn)
            if (deps && fns.isArray(deps)) {
                factory.define = 1; // distinguish with KISSY.add( ... )
            } else if (typeof name === 'function') { // define(fn)
                name.define = 1;
            }

            loader.add(name, deps, factory);
        };

    }, {"./config": 6, "./fns": 9, "./loader": 12, "./utils": 15, "runtime/index": 28}],
    12: [function (require, module, exports) {
        /**
         * @ignore
         * mix loader into KISSY and infer KISSY baseUrl if not set
         * @author yiminghe@gmail.com
         */
        var KISSY = require('runtime/index');
        var fns = require('./fns');
        var Utils = require('./utils');
        var ComboLoader = require('./combo-loader');

        var Env = KISSY.Env,
            processImmediate = fns.setImmediate;

        function WaitingModules(fn) {
            fns.mix(this, {
                fn: fn,
                waitMods: {}
            });
        }

        WaitingModules.prototype = {
            constructor: WaitingModules,

            notifyAll: function () {
                var self = this,
                    fn = self.fn;
                if (fn && fns.isEmptyObject(self.waitMods)) {
                    self.fn = null;
                    fn();
                }
            },

            add: function (modName) {
                this.waitMods[modName] = 1;
            },

            remove: function (modName) {
                delete this.waitMods[modName];
            },

            contains: function (modName) {
                return this.waitMods[modName];
            }
        };

        var loader = {};

        loader.WaitingModules = WaitingModules;

        fns.mix(loader, {
            /**
             * Registers a module with the KISSY global.
             * @param {String} name module name.
             * it must be set if combine is true in {@link KISSY#config}
             * @param {Function} factory module definition function that is used to return
             * exports of this module
             * @param {KISSY} factory.S KISSY global instance
             * @param {Object} [cfg] module optional config data
             * @param {String[]} cfg.requires this module's required module name list
             * @member KISSY
             *
             *
             *      // dom module's definition
             *      KISSY.add('dom', function(S, xx) {
     *          return {css: function(el, name, val){}};
     *      },{
     *          requires:['xx']
     *      });
             */
            add: function (name, factory, cfg) {
                ComboLoader.add(name, factory, cfg, KISSY, arguments.length);
            },

            /**
             * Attached one or more modules to global KISSY instance.
             * @param {String|String[]} modNames moduleNames. 1-n modules to bind(use comma to separate)
             * @param {Function} success callback function executed
             * when KISSY has the required functionality.
             * @param {Function} error callback
             * @param {KISSY} success.S KISSY instance
             * @param success.x... modules exports
             * @member KISSY
             *
             *
             *      // loads and attached overlay,dd and its dependencies
             *      KISSY.use('overlay,dd', function(S, Overlay){});
             */
            use: function (modNames, success, error) {
                var normalizedModNames,
                    loaderInstance,
                    sync,
                    tryCount = 0,
                    finalSuccess,
                    waitingModules = new WaitingModules(loadReady);

                if (typeof success === 'object') {
                    //noinspection JSUnresolvedVariable
                    sync = success.sync;
                    //noinspection JSUnresolvedVariable
                    error = success.error;
                    //noinspection JSUnresolvedVariable
                    success = success.success;
                }

                finalSuccess = function () {
                    success.apply(KISSY, Utils.getModules(KISSY, modNames));
                };

                modNames = Utils.getModNamesAsArray(modNames);
                modNames = Utils.normalizeModNamesWithAlias(KISSY, modNames);

                normalizedModNames = Utils.unalias(KISSY, modNames);

                function loadReady() {
                    ++tryCount;
                    var errorList = [],
                        start = new Date().valueOf(),
                        ret;
                    ret = Utils.checkModsLoadRecursively(normalizedModNames, KISSY, undefined, errorList);
                    if (ret) {
                        Utils.attachModsRecursively(normalizedModNames, KISSY);
                        if (success) {
                            if (sync) {
                                finalSuccess();
                            } else {
                                // standalone error trace
                                processImmediate(finalSuccess);
                            }
                        }
                    } else if (errorList.length) {
                        if (error) {
                            if (sync) {
                                error.apply(KISSY, errorList);
                            } else {
                                processImmediate(function () {
                                    error.apply(KISSY, errorList);
                                });
                            }
                        }
                    } else {
                        waitingModules.fn = loadReady;
                        loaderInstance.use(normalizedModNames);
                    }
                }

                loaderInstance = new ComboLoader(KISSY, waitingModules);

                // in case modules is loaded statically
                // synchronous check
                // but always async for loader
                if (sync) {
                    waitingModules.notifyAll();
                } else {
                    processImmediate(function () {
                        waitingModules.notifyAll();
                    });
                }
                return KISSY || loader; // XXX
            },

            /**
             * get module exports from KISSY module cache
             * @param {String} moduleName module name
             * @param {String} refName internal usage
             * @member KISSY
             * @return {*} exports of specified module
             */
            require: function (moduleName, refName) {
                if (moduleName) {
                    var moduleNames = Utils.unalias(KISSY, Utils.normalizeModNamesWithAlias(KISSY, [moduleName], refName));
                    Utils.attachModsRecursively(moduleNames, KISSY);
                    return Utils.getModules(KISSY, moduleNames)[1];
                }
            }
        });

        Env.mods = {}; // all added mods

        module.exports = loader;

        /*
 2013-06-04 yiminghe@gmail.com
 - refactor merge combo loader and simple loader
 - support error callback
 */
    }, {"./combo-loader": 5, "./fns": 9, "./utils": 15, "runtime/index": 28}],
    13: [function (require, module, exports) {
        /**
         * @ignore
         * setup data structure for kissy loader
         * @author yiminghe@gmail.com
         */
        var KISSY = require('runtime/index');
        var Loader = {};
        KISSY.addMember('Loader', Loader);

        /**
         * Loader Status Enum
         * @enum {Number} Loader.Status
         */
        Loader.Status = {
            /** error */
            'ERROR': -1,
            /** init */
            'INIT': 0,
            /** loading */
            'LOADING': 1,
            /** loaded */
            'LOADED': 2,
            /**dependencies are loaded or attached*/
            'READY_TO_ATTACH': 3,
            /** attaching */
            'ATTACHING': 4,
            /** attached */
            'ATTACHED': 5
        };

        module.exports = Loader;

    }, {"runtime/index": 28}],
    14: [function (require, module, exports) {
        /**
         * @ignore
         * Uri class for KISSY.
         * @author yiminghe@gmail.com
         */
        var path = require('path');
        var url = require('url');
        var fns = require('./fns');


// ?? combo of taobao

        var REG_INFO = {
            scheme: 1,
            userInfo: 2,
            hostname: 3,
            port: 4,
            path: 5,
            query: 6,
            fragment: 7
        };

        function parseQuery(self) {
            if (!self._queryMap) {
                self._queryMap = fns.unparam(self._query);
            }
        }

        /**
         * @class KISSY.Uri.Query
         * Query data structure.
         * @param {String} [query] encoded query string(without question mask).
         */
        function Query(query) {
            this._query = query || '';
        }

        Query.prototype = {
            constructor: Query,

            /**
             * Cloned new instance.
             * @return {KISSY.Uri.Query}
             */
            clone: function () {
                return new Query(this.toString());
            },

            /**
             * Return parameter value corresponding to current key
             * @param {String} [key]
             */
            get: function (key) {
                var self = this, _queryMap;
                parseQuery(self);
                _queryMap = self._queryMap;
                if (key) {
                    return _queryMap[key];
                } else {
                    return _queryMap;
                }
            },

            /**
             * Set parameter value corresponding to current key
             * @param {String} key
             * @param value
             * @chainable
             */
            set: function (key, value) {
                var self = this, _queryMap;
                parseQuery(self);
                _queryMap = self._queryMap;
                if (typeof key === 'string') {
                    self._queryMap[key] = value;
                } else {
                    if (key instanceof Query) {
                        key = key.get();
                    }
                    fns.each(key, function (v, k) {
                        _queryMap[k] = v;
                    });
                }
                return self;
            },

            /**
             * Serialize query to string.
             * @param {Boolean} [serializeArray=true]
             * whether append [] to key name when value 's type is array
             */
            toString: function (serializeArray) {
                var self = this;
                parseQuery(self);
                return fns.param(self._queryMap, undefined, undefined, serializeArray);
            }
        };

        function equalsIgnoreCase(str1, str2) {
            return str1.toLowerCase() === str2.toLowerCase();
        }

        /**
         * @class KISSY.Uri
         * Uri class for KISSY.
         * Most of its interfaces are same with window.location.
         * @param {String|KISSY.Uri} [uriStr] Encoded uri string.
         */
        function Uri(uriStr) {

            if (uriStr instanceof Uri) {
                return uriStr.clone();
            }

            var components, self = this;

            fns.mix(self, {
                /**
                 * scheme such as 'http:'. aka protocol without colon
                 * @type {String}
                 */
                scheme: '',
                /**
                 * User credentials such as 'yiminghe:gmail'
                 * @type {String}
                 */
                userInfo: '',
                /**
                 * hostname such as 'https://g.alicdn.com/kissy/k/6.2.4/docs.kissyui.com'. aka domain
                 * @type {String}
                 */
                hostname: '',
                /**
                 * Port such as '8080'
                 * @type {String}
                 */
                port: '',
                /**
                 * path such as 'https://g.alicdn.com/index.htm'. aka pathname
                 * @type {String}
                 */
                path: '',
                /**
                 * Query object for search string. aka search
                 * @type {KISSY.Uri.Query}
                 */
                query: '',
                /**
                 * fragment such as '#!/test/2'. aka hash
                 */
                fragment: ''
            });

            components = url.parse(uriStr);

            fns.each(components, function (v, key) {
                v = v || '';
                if (key === 'query') {
                    // need encoded content
                    self.query = new Query(v);
                } else {
                    // https://github.com/kissyteam/kissy/issues/298
                    try {
                        v = fns.urlDecode(v);
                    } catch (e) {
                        new Error(e + 'urlDecode error : ' + v);
                    }
                    // need to decode to get data structure in memory
                    self[key] = v;
                }
            });

            return self;
        }

        Uri.prototype = {
            constructor: Uri,

            /**
             * Return a cloned new instance.
             * @return {KISSY.Uri}
             */
            clone: function () {
                var uri = new Uri(), self = this;
                fns.each(REG_INFO, function (index, key) {
                    uri[key] = self[key];
                });
                uri.query = uri.query.clone();
                return uri;
            },


            /**
             * The reference resolution algorithm.rfc 5.2
             * return a resolved uri corresponding to current uri
             * @param {KISSY.Uri|String} relativeUri
             *
             * for example:
             *      @example
             *      this: 'http://y/yy/z.com?t=1#v=2'
             *      'https:/y/' => 'https:/y/'
             *      '//foo' => 'http://foo/'
             *      'foo' => 'http://y/yy/foo'
             *      '/foo' => 'http://y/foo'
             *      '?foo' => 'http://y/yy/z.com?foo'
             *      '#foo' => http://y/yy/z.com?t=1#foo'
             *
             * @return {KISSY.Uri}
             */
            resolve: function (relativeUri) {

                if (typeof relativeUri !== 'string') {
                    relativeUri = url.format(relativeUri);
                }

                var ret = new Uri(url.resolve(this.toString(), relativeUri));

                ret.query = new Query(ret.query);

                return ret;

            },

            /**
             * Set path
             * @param {string} path
             * @chainable
             */
            setPath: function (path) {
                this.path = path;
                return this;
            },

            /**
             * Get path
             * @return {String}
             */
            getPath: function () {
                return this.path;
            },

            /**
             * Judge whether two uri has same domain.
             * @param {KISSY.Uri} other
             * @return {Boolean}
             */
            isSameOriginAs: function (other) {
                var self = this;
                // port and hostname has to be same
                return equalsIgnoreCase(self.hostname, other.hostname) &&
                    equalsIgnoreCase(self.scheme, other.scheme) &&
                    equalsIgnoreCase(self.port, other.port);
            },

            /**
             * Serialize to string.
             * See rfc 5.3 Component Recomposition.
             * But kissy does not differentiate between undefined and empty.
             * @param {Boolean} [serializeArray=true]
             * whether append [] to key name when value 's type is array
             * @return {String}
             */
            toString: function (serializeArray) {

                return url.format(this, serializeArray);

            }
        };

        Uri.Query = Query;

        module.exports = Uri;
        /*
 Refer
 - application/x-www-form-urlencoded
 - http://www.ietf.org/rfc/rfc3986.txt
 - http://en.wikipedia.org/wiki/URI_scheme
 - http://unixpapa.com/js/querystring.html
 - http://code.stephenmorley.org/javascript/parsing-query-strings-for-get-data/
 - same origin: http://tools.ietf.org/html/rfc6454
 */

    }, {"./fns": 9, "path": 24, "url": 31}],
    15: [function (require, module, exports) {
        /**
         * @ignore
         * Utils for kissy loader
         * @author yiminghe@gmail.com
         */
        var KISSY = require('runtime/index');
        var Path = require('path/index');
        var fns = require('./fns');
        var Status = require('./setup').Status;
// var ds = require('./data-structure'); // XXX circle dependencies, replaced with KISSY.Loader.xxx
// var loader = require('./loader'); // XXX circle dependencies, replaced with KISSY.xxx

        var ATTACHED = Status.ATTACHED,
            READY_TO_ATTACH = Status.READY_TO_ATTACH,
            LOADED = Status.LOADED,
            ATTACHING = Status.ATTACHING,
            ERROR = Status.ERROR;

        var TRUE = !0,
            FALSE = !1,
            host = KISSY.Env.host,
            doc = host.document;

        /**
         * @class Loader.Utils
         * Utils for KISSY Loader
         * @singleton
         * @private
         */
        var Utils = {};

        var commentRegExp = /(\/\*([\s\S]*?)\*\/|([^:]|^)\/\/(.*)$)/mg,
            requireRegExp = /[^.'"]\s*require\s*\(([^)]+)\)/g;

// http://wiki.commonjs.org/wiki/Packages/Mappings/A
// 如果模块名以 / 结尾，自动加 index
        function addIndexAndRemoveJsExt(s) {
            if (typeof s === 'string') {
                return addIndexAndRemoveJsExtFromName(s);
            } else {
                var ret = [],
                    i = 0,
                    l = s.length;
                for (; i < l; i++) {
                    ret[i] = addIndexAndRemoveJsExtFromName(s[i]);
                }
                return ret;
            }
        }

        function addIndexAndRemoveJsExtFromName(name) {
            // 'x/' 'x/y/z/'
            if (name.charAt(name.length - 1) === '/') {
                name += 'index';
            }
            if (fns.endsWith(name, '.js')) {
                name = name.slice(0, -3);
            }
            return name;
        }

        function pluginAlias(runtime, name) {
            var index = name.indexOf('!');
            if (index !== -1) {
                var pluginName = name.substring(0, index);
                name = name.substring(index + 1);
                KISSY.use(pluginName, {
                    sync: true,
                    success: function (S, Plugin) {
                        if (Plugin.alias) {
                            //noinspection JSReferencingMutableVariableFromClosure
                            name = Plugin.alias(runtime, name, pluginName);
                        }
                    }
                });
            }
            return name;
        }

        function getRequireVal(str) {
            var m;
            // simple string
            if (!(m = str.match(/^\s*["']([^'"\s]+)["']\s*$/))) {
                console && console.error('can not find required mod in require call: ' + str);
            }
            return m[1];
        }

        /**
         * Get absolute path of dep module. Similar to {@link KISSY.Path#resolve}
         * @param {String} moduleName current module's name
         * @param {String|String[]} depName dependency module's name
         * @return {String|String[]} normalized dependency module's name
         */
        Utils.normalDepModuleName = function (moduleName, depName) {
            var i = 0, l;

            if (!depName) {
                return depName;
            }

            if (typeof depName === 'string') {
                if (fns.startsWith(depName, '../') || fns.startsWith(depName, './')) {
                    // x/y/z -> x/y/
                    return Path.resolve(Path.dirname(moduleName), depName);
                }

                return Path.normalize(depName);
            }

            for (l = depName.length; i < l; i++) {
                depName[i] = Utils.normalDepModuleName(moduleName, depName[i]);
            }
            return depName;
        };

        /**
         * create modules info
         * @param runtime Module container, such as KISSY
         * @param {String[]} modNames to be created module names
         */
        Utils.createModulesInfo = function (runtime, modNames) {
            for (var i = 0; i < modNames.length; i++) {
                var m = modNames[i];
                Utils.createModuleInfo(runtime, m);
            }
        };

        /**
         * create single module info
         * @param runtime Module container, such as KISSY
         * @param {String} modName to be created module name
         * @param {Object} [cfg] module config
         * @return {KISSY.Loader.Module}
         */
        Utils.createModuleInfo = function (runtime, modName, cfg) {
            modName = addIndexAndRemoveJsExtFromName(modName);

            var mods = runtime.Env.mods,
                module = mods[modName];

            if (module) {
                return module;
            }

            // 防止 cfg 里有 tag，构建 fullpath 需要
            mods[modName] = module = new KISSY.Loader.Module(fns.mix({
                name: modName,
                runtime: runtime
            }, cfg));

            return module;
        };

        /**
         * Get modules exports
         * @param runtime Module container, such as KISSY
         * @param {String[]} modNames module names
         * @return {Array} modules exports
         */
        Utils.getModules = function (runtime, modNames) {
            var mods = [runtime], module,
                unalias,
                allOk,
                m,
                runtimeMods = runtime.Env.mods;

            fns.each(modNames, function (modName) {
                module = runtimeMods[modName];
                if (!module || module.getType() !== 'css') {
                    unalias = Utils.unalias(runtime, modName);
                    allOk = fns.reduce(unalias, function (a, n) {
                        m = runtimeMods[n];
                        // allow partial module (circular dependency)
                        return a && m && m.status >= ATTACHING;
                    }, true);
                    if (allOk) {
                        mods.push(runtimeMods[unalias[0]].exports);
                    } else {
                        mods.push(null);
                    }
                } else {
                    mods.push(undefined);
                }
            });

            return mods;
        };

        /**
         * attach modules and their dependency modules recursively
         * @param {String[]} modNames module names
         * @param runtime Module container, such as KISSY
         */
        Utils.attachModsRecursively = function (modNames, runtime) {
            var i,
                l = modNames.length;
            for (i = 0; i < l; i++) {
                Utils.attachModRecursively(modNames[i], runtime);
            }
        };

        Utils.checkModsLoadRecursively = function (modNames, runtime, stack, errorList, cache) {
            // for debug. prevent circular dependency
            stack = stack || [];
            // for efficiency. avoid duplicate non-attach check
            cache = cache || {};
            var i,
                s = 1,
                l = modNames.length,
                stackDepth = stack.length;
            for (i = 0; i < l; i++) {
                s = s && Utils.checkModLoadRecursively(modNames[i], runtime, stack, errorList, cache);
                stack.length = stackDepth;
            }
            return !!s;
        };

        Utils.checkModLoadRecursively = function (modName, runtime, stack, errorList, cache) {
            var mods = runtime.Env.mods,
                status,
                m = mods[modName];
            if (modName in cache) {
                return cache[modName];
            }
            if (!m) {
                cache[modName] = FALSE;
                return FALSE;
            }
            status = m.status;
            if (status === ERROR) {
                errorList.push(m);
                cache[modName] = FALSE;
                return FALSE;
            }
            if (status >= READY_TO_ATTACH) {
                cache[modName] = TRUE;
                return TRUE;
            }
            if (status !== LOADED) {
                cache[modName] = FALSE;
                return FALSE;
            }
            if ('@DEBUG@') {
                // in array
                if (fns.indexOfArray(modName, stack) > -1) {
                    console && console.warn('find cyclic dependency between mods: ' + stack);
                    cache[modName] = TRUE;
                    return TRUE;
                }
                stack.push(modName);
            }

            if (Utils.checkModsLoadRecursively(m.getNormalizedRequires(),
                runtime, stack, errorList, cache)) {
                m.status = READY_TO_ATTACH;
                cache[modName] = TRUE;
                return TRUE;
            }

            cache[modName] = FALSE;
            return FALSE;
        };

        /**
         * attach module and its dependency modules recursively
         * @param {String} modName module name
         * @param runtime Module container, such as KISSY
         */
        Utils.attachModRecursively = function (modName, runtime) {
            var mods = runtime.Env.mods,
                status,
                m = mods[modName];
            status = m.status;
            // attached or circular dependency
            if (status >= ATTACHING) {
                return;
            }
            m.status = ATTACHING;
            if (m.cjs) {
                // commonjs format will call require in module code again
                Utils.attachMod(runtime, m);
            } else {
                Utils.attachModsRecursively(m.getNormalizedRequires(), runtime);
                Utils.attachMod(runtime, m);
            }
        };

        /**
         * Attach specified module.
         * @param runtime Module container, such as KISSY
         * @param {KISSY.Loader.Module} module module instance
         */
        Utils.attachMod = function (runtime, module) {
            var factory = module.factory,
                exports;

            if (typeof factory === 'function') {
                // compatible and efficiency
                // KISSY.add(function(S,undefined){})
                var require;
                if (module.cjs && (factory.length > 1 || factory.define)) {
                    require = fns.bind(module.require, module);
                }
                // 需要解开 index，相对路径
                // 但是需要保留 alias，防止值不对应
                //noinspection JSUnresolvedFunction
                exports = factory.apply(module,
                    // KISSY.add(function(S){module.require}) lazy initialize
                    (module.cjs ?
                        (module.factory.define ? [require, module.exports, module] : [runtime, require, module.exports, module]) :
                        Utils.getModules(runtime, module.getRequiresWithAlias())));
                if (exports !== undefined) {
                    //noinspection JSUndefinedPropertyAssignment
                    module.exports = exports;
                }
            } else {
                //noinspection JSUndefinedPropertyAssignment
                module.exports = factory;
            }

            module.status = ATTACHED;
        };

        /**
         * Get module names as array.
         * @param {String|String[]} modNames module names array or  module names string separated by ','
         * @return {String[]}
         */
        Utils.getModNamesAsArray = function (modNames) {
            if (typeof modNames === 'string') {
                modNames = modNames.replace(/\s+/g, '').split(',');
            }
            return modNames;
        };

        /**
         * normalize module names
         * 1. add index : / => /index
         * 2. unalias : core => dom,event,ua
         * 3. relative to absolute : ./x => y/x
         * @param {KISSY} runtime Global KISSY instance
         * @param {String|String[]} modNames Array of module names
         *  or module names string separated by comma
         * @param {String} [refModName]
         * @return {String[]} normalized module names
         */
        Utils.normalizeModNames = function (runtime, modNames, refModName) {
            return Utils.unalias(runtime,
                Utils.normalizeModNamesWithAlias(runtime, modNames, refModName));
        };

        /**
         * unalias module name.
         * @param runtime Module container, such as KISSY
         * @param {String|String[]} names moduleNames
         * @return {String[]} unalias module names
         */
        Utils.unalias = function (runtime, names) {
            var ret = [].concat(names),
                i,
                m,
                alias,
                ok = 0,
                j,
                mods = runtime.Env.mods;
            while (!ok) {
                ok = 1;
                for (i = ret.length - 1; i >= 0; i--) {
                    if ((m = mods[ret[i]]) && ('alias' in m)) {
                        ok = 0;
                        alias = m.alias;
                        if (typeof alias === 'string') {
                            alias = [alias];
                        }
                        for (j = alias.length - 1; j >= 0; j--) {
                            if (!alias[j]) {
                                alias.splice(j, 1);
                            }
                        }
                        ret.splice.apply(ret, [i, 1].concat(addIndexAndRemoveJsExt(alias)));
                    }
                }
            }
            return ret;
        };

        /**
         * normalize module names with alias
         * @param runtime Module container, such as KISSY
         * @param {String[]} modNames module names
         * @param [refModName] module to be referred if module name path is relative
         * @return {String[]} normalize module names with alias
         */
        Utils.normalizeModNamesWithAlias = function (runtime, modNames, refModName) {
            var ret = [], i, l;
            if (modNames) {
                // 1. index map
                for (i = 0, l = modNames.length; i < l; i++) {
                    // conditional loader
                    // requires:[window.localStorage?"local-storage":""]
                    if (modNames[i]) {
                        ret.push(pluginAlias(runtime, addIndexAndRemoveJsExt(modNames[i])));
                    }
                }
            }
            // 2. relative to absolute (optional)
            if (refModName) {
                ret = Utils.normalDepModuleName(refModName, ret);
            }
            return ret;
        };

        /**
         * register module with factory
         * @param runtime Module container, such as KISSY
         * @param {String} name module name
         * @param {Function|*} factory module's factory or exports
         * @param [config] module config, such as dependency
         */
        Utils.registerModule = function (runtime, name, factory, config) {
            name = addIndexAndRemoveJsExtFromName(name);

            var mods = runtime.Env.mods,
                module = mods[name];

            if (module && module.factory !== undefined) {
                console && console.warn(name + ' is defined more than once');
                return;
            }

            // 没有 use，静态载入的 add 可能执行
            Utils.createModuleInfo(runtime, name);

            module = mods[name];

            // 注意：通过 S.add(name[, factory[, config]]) 注册的代码，无论是页面中的代码，
            // 还是 js 文件里的代码，add 执行时，都意味着该模块已经 LOADED
            fns.mix(module, {
                name: name,
                status: LOADED,
                factory: factory
            });

            fns.mix(module, config);
        };

        /**
         * Returns hash code of a string djb2 algorithm
         * @param {String} str
         * @returns {String} hash code
         */
        Utils.getHash = function (str) {
            var hash = 5381,
                i;
            for (i = str.length; --i > -1;) {
                hash = ((hash << 5) + hash) + str.charCodeAt(i);
                /* hash * 33 + char */
            }
            return hash + '';
        };

        Utils.getRequiresFromFn = function (fn) {
            var requires = [];
            // Remove comments from the callback string,
            // look for require calls, and pull them into the dependencies,
            // but only if there are function args.
            fn.toString()
                .replace(commentRegExp, '')
                .replace(requireRegExp, function (match, dep) {
                    requires.push(getRequireVal(dep));
                });
            return requires;
        };

        module.exports = Utils;
    }, {"./fns": 9, "./setup": 13, "path/index": 24, "runtime/index": 28}],
    16: [function (require, module, exports) {
        module.exports = require('./lib/get-script');
    }, {"./lib/get-script": 19}],
    17: [function (require, module, exports) {
        /**
         * @ignore
         * script/css load across browser
         * @author yiminghe@gmail.com
         */
        var fns = require('./fns');

        var CSS_POLL_INTERVAL = 30,

// central poll for link node
            timer = 0,
// node.id:{callback:callback,node:node}
            monitors = {};

        function startCssTimer() {
            if (!timer) {
                log('start css poll timer');
                cssPoll();
            }
        }

        function log(msg) {
            if (console && console.debug) {
                console.debug(msg);
            }
        }

        function isCssLoaded(node, url) {
            var loaded = 0;
            if (fns.webkit) {
                // http://www.w3.org/TR/Dom-Level-2-Style/stylesheets.html
                if (node.sheet) {
                    log('webkit css poll loaded: ' + url);
                    loaded = 1;
                }
            } else if (node.sheet) {
                try {
                    var cssRules = node.sheet.cssRules;
                    if (cssRules) {
                        log('same domain css poll loaded: ' + url);
                        loaded = 1;
                    }
                } catch (ex) {
                    var exName = ex.name;
                    log('css poll exception: ' + exName + ' ' + ex.code + ' ' + url);
                    // http://www.w3.org/TR/dom/#dom-domexception-code
                    if (// exName == 'SecurityError' ||
                    // for old firefox
                        exName === 'NS_ERROR_DOM_SECURITY_ERR') {
                        log('css poll exception: ' + exName + 'loaded : ' + url);
                        loaded = 1;
                    }
                }
            }
            return loaded;
        }

// single thread is ok
        function cssPoll() {
            for (var url in monitors) {
                var callbackObj = monitors[url],
                    node = callbackObj.node;
                if (isCssLoaded(node, url)) {
                    if (callbackObj.callback) {
                        callbackObj.callback.call(node);
                    }
                    delete monitors[url];
                }
            }

            if (fns.isEmptyObject(monitors)) {
                log('clear css poll timer');
                timer = 0;
            } else {
                timer = setTimeout(cssPoll, CSS_POLL_INTERVAL);
            }
        }

// refer : http://lifesinger.org/lab/2011/load-js-css/css-preload.html
// 暂时不考虑如何判断失败，如 404 等
        exports.pollCss = function (node, callback) {
            var href = node.href,
                arr;
            arr = monitors[href] = {};
            arr.node = node;
            arr.callback = callback;
            startCssTimer();
        };

        exports.isCssLoaded = isCssLoaded;
        /*
 References:
 - http://unixpapa.com/js/dyna.html
 - http://www.blaze.io/technical/ies-premature-execution-problem/

 `onload` event is supported in WebKit since 535.23
 - https://bugs.webkit.org/show_activity.cgi?id=38995
 `onload/onerror` event is supported since Firefox 9.0
 - https://bugzilla.mozilla.org/show_bug.cgi?id=185236
 - https://developer.mozilla.org/en/HTML/Element/link#Stylesheet_load_events

 monitor css onload across browsers.issue about 404 failure.
 - firefox not ok（4 is wrong）：
 - http://yearofmoo.com/2011/03/cross-browser-stylesheet-preloading/
 - all is ok
 - http://lifesinger.org/lab/2011/load-js-css/css-preload.html
 - others
 - http://www.zachleat.com/web/load-css-dynamically/
 */
    }, {"./fns": 18}],
    18: [function (require, module, exports) {
        var m;
        var ua = (window.navigator || {}).userAgent || '';

        var isArray = Array.isArray || function (obj) {
            return Object.prototype.toString.call(obj) === '[object Array]';
        };

        if (((m = ua.match(/AppleWebKit\/*\s*([\d.]*)/i)) || (m = ua.match(/Safari[\/]{0,1}([\d.]*)/))) && m[1]) {
            exports.webkit = numberify(m[1]);
        }

        function keys(obj) {
            var ret = [];
            for (var key in obj) {
                ret.push(key);
            }
            return ret;
        }

        function numberify(s) {
            var c = 0;
            // convert '1.2.3.4' to 1.234
            return parseFloat(s.replace(/\./g, function () {
                return (c++ === 0) ? '.' : '';
            }));
        }

        exports.isEmptyObject = function (o) {
            for (var p in o) {
                if (p !== undefined) {
                    return false;
                }
            }
            return true;
        };

        exports.startsWith = function startsWith(s, matchedValue) {
            return 0 === s.lastIndexOf(matchedValue, 0);
        };

        exports.each = function (obj, fn) {
            var i = 0;
            var myKeys, l;
            if (isArray(obj)) {
                l = obj.length;
                for (; i < l; i++) {
                    if (fn(obj[i], i, obj) === false) {
                        break;
                    }
                }
            } else {
                myKeys = keys(obj);
                l = myKeys.length;
                for (; i < l; i++) {
                    if (fn(obj[myKeys[i]], myKeys[i], obj) === false) {
                        break;
                    }
                }
            }
        };

    }, {}],
    19: [function (require, module, exports) {
        /**
         * @ignore
         * getScript support for css and js callback after load
         * @author yiminghe@gmail.com
         */
        var Path = require('path');
        var fns = require('./fns');
        var Utils = require('./utils');

        var MILLISECONDS_OF_SECOND = 1000,
            doc = window.document,
            jsCssCallbacks = {},
            headNode;

        /* global KISSY */
        var Config = (typeof KISSY !== 'undefined') ? KISSY.Config : {};

        var getScript;

        /**
         * Load a javascript/css file from the server using a GET HTTP request,
         * then execute it.
         *
         * for example:
         *      @example
         *      getScript(url, success, charset);
         *      // or
         *      getScript(url, {
     *          charset: string
     *          success: fn,
     *          error: fn,
     *          timeout: number
     *      });
         *
         * Note 404/500 status in ie<9 will trigger success callback.
         * If you want a jsonp operation, please use {@link KISSY.IO} instead.
         *
         * @param {String} url resource's url
         * @param {Function|Object} [success] success callback or config
         * @param {Function} [success.success] success callback
         * @param {Function} [success.error] error callback
         * @param {Number} [success.timeout] timeout (s)
         * @param {String} [success.charset] charset of current resource
         * @param {String} [charset] charset of current resource
         * @return {HTMLElement} script/style node
         * @member KISSY
         */
        module.exports = getScript = function (url, success, charset) {
            // can not use KISSY.Uri, url can not be encoded for some url
            // eg: /??dom.js,event.js , ? , should not be encoded
            var config = success,
                css = 0,
                error,
                timeout,
                attrs,
                callbacks,
                timer;

            if (fns.startsWith(Path.extname(url).toLowerCase(), '.css')) {
                css = 1;
            }

            if (typeof config === 'object') {
                success = config.success;
                error = config.error;
                timeout = config.timeout;
                charset = config.charset;
                attrs = config.attrs;
            }

            callbacks = jsCssCallbacks[url] = jsCssCallbacks[url] || [];

            callbacks.push([success, error]);

            if (callbacks.length > 1) {
                return callbacks.node;
            }

            var node = doc.createElement(css ? 'link' : 'script'),
                clearTimer = function () {
                    if (timer) {
                        clearTimeout(timer);
                        timer = undefined;
                    }
                };

            if (attrs) {
                fns.each(attrs, function (v, n) {
                    node.setAttribute(n, v);
                });
            }

            if (charset) {
                node.charset = charset;
            }

            if (css) {
                node.href = url;
                node.rel = 'stylesheet';
            } else {
                node.src = url;
                node.async = true;
            }

            callbacks.node = node;

            var end = function (error) {
                var index = error,
                    fn;
                clearTimer();
                fns.each(jsCssCallbacks[url], function (callback) {
                    if ((fn = callback[index])) {
                        fn.call(node);
                    }
                });
                delete jsCssCallbacks[url];
            };

            var useNative = 'onload' in node;
            // onload for webkit 535.23  Firefox 9.0
            // https://bugs.webkit.org/show_activity.cgi?id=38995
            // https://bugzilla.mozilla.org/show_bug.cgi?id=185236
            // https://developer.mozilla.org/en/HTML/Element/link#Stylesheet_load_events
            // phantomjs 1.7 == webkit 534.34
            var forceCssPoll = Config.forceCssPoll || (fns.webkit && fns.webkit < 536);

            if (css && forceCssPoll && useNative) {
                useNative = false;
            }

            function onload() {
                var readyState = node.readyState;
                if (!readyState ||
                    readyState === 'loaded' ||
                    readyState === 'complete') {
                    node.onreadystatechange = node.onload = null;
                    end(0);
                }
            }

            //标准浏览器 css and all script
            if (useNative) {
                node.onload = onload;
                node.onerror = function () {
                    node.onerror = null;
                    end(1);
                };
            } else if (css) { // old chrome/firefox for css
                Utils.pollCss(node, function () {
                    end(0);
                });
            } else {
                node.onreadystatechange = onload;
            }

            if (timeout) {
                timer = setTimeout(function () {
                    end(1);
                }, timeout * MILLISECONDS_OF_SECOND);
            }
            if (!headNode) {
                headNode = Utils.docHead();
            }
            if (css) {
                // css order matters
                // so can not use css in head
                headNode.appendChild(node);
            } else {
                // can use js in head
                headNode.insertBefore(node, headNode.firstChild);
            }
            return node;
        };
        /*
 yiminghe@gmail.com refactor@2012-03-29
 - 考虑连续重复请求单个 script 的情况，内部排队

 yiminghe@gmail.com 2012-03-13
 - getScript
 - 404 in ie<9 trigger success , others trigger error
 - syntax error in all trigger success
 */
    }, {"./fns": 18, "./utils": 20, "path": 24}],
    20: [function (require, module, exports) {
        var cssOnload = require('./css-onload');

        var doc = window.document;

        var Utils = {};

        /**
         * get document head
         * @return {HTMLElement}
         */
        Utils.docHead = function () {
            return doc.getElementsByTagName('head')[0] || doc.documentElement;
        };

        Utils.pollCss = cssOnload.pollCss;

        module.exports = Utils;
    }, {"./css-onload": 17}],
    21: [function (require, module, exports) {
        var logger = require('./lib/logger-manager');
        module.exports = logger;
    }, {"./lib/logger-manager": 22}],
    22: [function (require, module, exports) {
        /**
         * simple logger management.
         * @author yiminghe@gmail.com
         */

        var config = {};
        var loggerLevel = {
            debug: 10,
            info: 20,
            warn: 30,
            error: 40
        };

        var Logger;

        function getLogger(logger) {
            var obj = {};
            for (var cat in loggerLevel) {
                /*jshint loopfunc: true*/
                (function (obj, cat) {
                    obj[cat] = function (msg) {
                        return Logger.log(msg, cat, logger);
                    };
                })(obj, cat);
            }
            return obj;
        }

        Logger = module.exports = {

            config: function (cfg) {
                if (cfg) {
                    config = cfg;
                }
                return config;
            },
            /**
             * Prints debug info.
             * @param msg {String} the message to log.
             * @param {String} [cat] the log category for the message. Default
             *        categories are 'info', 'warn', 'error', 'time' etc.
             * @param {String} [logger] the logger of the the message (opt)
             */
            log: function (msg, cat, logger) {
                var matched = 1;
                if (logger) {
                    matched = 0;
                    var list, i, l, level, minLevel, maxLevel, reg;
                    cat = cat || 'debug';
                    level = loggerLevel[cat] || loggerLevel.debug;
                    if ((list = config.includes)) {
                        matched = 0;
                        for (i = 0; i < list.length; i++) {
                            l = list[i];
                            reg = l.logger;
                            maxLevel = loggerLevel[l.maxLevel] || loggerLevel.error;
                            minLevel = loggerLevel[l.minLevel] || loggerLevel.debug;
                            if (minLevel <= level && maxLevel >= level && logger.match(reg)) {
                                matched = 1;
                                break;
                            }
                        }
                    } else if ((list = config.excludes)) {
                        matched = 1;
                        for (i = 0; i < list.length; i++) {
                            l = list[i];
                            reg = l.logger;
                            maxLevel = loggerLevel[l.maxLevel] || loggerLevel.error;
                            minLevel = loggerLevel[l.minLevel] || loggerLevel.debug;
                            if (minLevel <= level && maxLevel >= level && logger.match(reg)) {
                                matched = 0;
                                break;
                            }
                        }
                    }
                    if (matched) {
                        msg = logger + ': ' + msg;
                    }
                }
                /*global console*/
                if (matched) {
                    if (typeof console !== 'undefined' && console.log) {
                        console[cat && console[cat] ? cat : 'log'](msg);
                    }
                    return msg;
                }
                return undefined;
            },

            /**
             * get log instance for specified logger
             * @param {String} logger logger name
             * @returns log instance
             */
            getLogger: function (logger) {
                return getLogger(logger);
            },

            /**
             * Throws error message.
             */
            error: function (msg) {
                // with stack info!
                throw msg instanceof Error ? msg : new Error(msg);
            }
        };
    }, {}],
    23: [function (require, module, exports) {
        var KISSY = require('runtime/index');
        var UA = require('ua/index');
        var Feature = require('feature/index');

        KISSY.config({
            "modules": {
                "anim-base": {
                    "requires": [
                        "dom",
                        "promise",
                        "util"
                    ]
                },
                "anim-timer": {
                    "requires": [
                        "dom",
                        "util",
                        "anim-base",
                        "feature"
                    ]
                },
                "anim-transition": {
                    "requires": [
                        "util",
                        "dom",
                        "anim-base",
                        "feature"
                    ]
                },
                "attribute": {
                    "requires": [
                        "util",
                        "event-custom"
                    ]
                },
                "base": {
                    "requires": [
                        "util",
                        "attribute"
                    ]
                },
                "dom-base": {
                    "requires": [
                        "util",
                        "io-script",
                        "feature",
                        "query-selector"
                    ]
                },
                "dom-extra": {
                    "requires": [
                        "util",
                        "dom-base",
                        "feature"
                    ]
                },
                "dom-ie": {
                    "requires": [
                        "util",
                        "dom-base",
                        "ua"
                    ]
                },
                "event": {
                    "requires": [
                        "event-dom",
                        "event-custom"
                    ]
                },
                "event-base": {
                    "requires": [
                        "util"
                    ]
                },
                "event-custom": {
                    "requires": [
                        "util",
                        "event-base"
                    ]
                },
                "event-dom-base": {
                    "requires": [
                        "util",
                        "event-base",
                        "dom"
                    ]
                },
                "event-dom-extra": {
                    "requires": [
                        "event-dom-base",
                        "dom",
                        "util",
                        "feature",
                        "ua"
                    ]
                },
                "event-dom-ie": {
                    "requires": [
                        "event-dom-base",
                        "dom"
                    ]
                },
                "event-gesture": {
                    "requires": [
                        "event-touch",
                        "event-dom",
                        "util",
                        "feature"
                    ]
                },
                "event-touch": {
                    "requires": [
                        "event-dom",
                        "dom",
                        "util",
                        "feature"
                    ]
                },
                "io": {
                    "requires": [
                        "util",
                        "io-extra",
                        "io-form"
                    ]
                },
                "io-base": {
                    "requires": [
                        "util",
                        "io-script",
                        "url",
                        "promise",
                        "querystring"
                    ]
                },
                "io-extra": {
                    "requires": [
                        "io-base",
                        "util",
                        "dom",
                        "querystring"
                    ]
                },
                "io-form": {
                    "requires": [
                        "io-base",
                        "util",
                        "dom",
                        "querystring"
                    ]
                },
                //"io-script": {
                //    "requires": [
                //        "path"
                //    ]
                //},
                "node": {
                    "requires": [
                        "node-base",
                        "node-event",
                        "node-anim"
                    ]
                },
                "node-anim": {
                    "requires": [
                        "util",
                        "node-base",
                        "anim"
                    ]
                },
                "node-base": {
                    "requires": [
                        "dom",
                        "util"
                    ]
                },
                "node-event": {
                    "requires": [
                        "util",
                        "node-base",
                        "event-dom"
                    ]
                }
                //"url": {
                //    "requires": [
                //        "querystring",
                //        "path"
                //    ]
                //},
                //"util-base": {
                //    "requires": [
                //        "querystring"
                //    ]
                //},
                //"util-extra": {
                //    "requires": [
                //        "util-base"
                //    ]
                //},
                //"util-ie": {
                //    "requires": [
                //        "util-base"
                //    ]
                //}
            }
        });

        KISSY.config({
            "modules": {
                "anim": {
                    "alias": Feature.getCssVendorInfo("transition") ? "anim-transition" : "anim-timer"
                },
                "dom": {
                    "alias": [
                        "dom-base",
                        "dom-extra",
                        UA.ieMode < 10 ? "dom-ie" : ""
                    ]
                },
                "event-dom": {
                    "alias": [
                        "event-dom-base",
                        "event-dom-extra",
                        Feature.isTouchEventSupported ? 'event-gesture' : '',
                        UA.ieMode < 9 ? "event-dom-ie" : ""
                    ]
                },
                "json": {
                    alias: [
                        UA.ieMode < 8 ? "json-ie" : "json-base"
                    ]
                },
                "query-selector": {
                    "alias": Feature.isQuerySelectorSupported() ? "query-selector-base" : "query-selector-ie"
                },
                //"util": {
                //    "alias": [
                //        "util-base",
                //        "util-extra",
                //        UA.ieMode < 9 ? 'util-ie' : ''
                //    ]
                //},
                "core": {
                    "alias": [
                        "dom",
                        "event",
                        "io",
                        "anim",
                        "base",
                        "node",
                        "json",
                        "ua",
                        "cookie"
                    ]
                },
                "ajax": {
                    "alias": "io"
                },
                "rich-base": {
                    "alias": "base"
                }
            },
            packages: {
                kg: {
                    base: '//g.alicdn.com/'
                }
            }
        });


    }, {"feature/index": 2, "runtime/index": 28, "ua/index": 29}],
    24: [function (require, module, exports) {
        var path = require('./lib/path');

        module.exports = path;
    }, {"./lib/path": 25}],
    25: [function (require, module, exports) {
        /**
         * @ignore
         * Port Node Utils For KISSY.
         * Note: Only posix mode.
         * @author yiminghe@gmail.com
         */
// [root, dir, basename, ext]
        var splitPathRe = /^(\/?)([\s\S]+\/(?!$)|\/)?((?:\.{1,2}$|[\s\S]+?)?(\.[^.\/]*)?)$/;

        function splitPathToArray(str) {
            var arr = str.split(/\/+/);
            if (!arr[arr.length - 1]) {
                arr = arr.slice(0, -1);
            }
            if (!arr[0]) {
                arr = arr.slice(1);
            }
            return arr;
        }

// Remove .. and . in path array
        function normalizeArray(parts, allowAboveRoot) {
            // level above root
            var up = 0;
            var i = parts.length - 1;
            // splice costs a lot in ie
            // use new array instead
            var newParts = [];
            var last;

            for (; i >= 0; i--) {
                last = parts[i];
                if (last !== '.') {
                    if (last === '..') {
                        up++;
                    } else if (up) {
                        up--;
                    } else {
                        newParts[newParts.length] = last;
                    }
                }
            }

            // if allow above root, has to add ..
            if (allowAboveRoot) {
                for (; up--; up) {
                    newParts[newParts.length] = '..';
                }
            }

            newParts = newParts.reverse();

            return newParts;
        }

        /**
         * Path Utils For KISSY.
         * @class KISSY.Path
         * @singleton
         */
        var Path = {

            /**
             * resolve([from ...], to)
             * @return {String} Resolved path.
             */
            resolve: function () {
                var resolvedPath = '';
                var resolvedPathStr;
                var i;
                var args = (arguments);
                var path;
                var absolute = 0;

                for (i = args.length - 1; i >= 0 && !absolute; i--) {
                    path = args[i];
                    if (typeof path !== 'string' || !path) {
                        continue;
                    }
                    resolvedPath = path + '/' + resolvedPath;
                    absolute = path.charAt(0) === '/';
                }

                resolvedPathStr = normalizeArray(splitPathToArray(resolvedPath), !absolute).join('/');

                return ((absolute ? '/' : '') + resolvedPathStr) || '.';
            },

            /**
             * normalize .. and . in path
             * @param {String} path Path tobe normalized
             *
             *
             *      'x/y/../z' => 'x/z'
             *      'x/y/z/../' => 'x/y/'
             *
             * @return {String}
             */
            normalize: function (path) {
                var absolute = path.charAt(0) === '/';
                var trailingSlash = path.slice(0 - 1) === '/';

                path = normalizeArray(splitPathToArray(path), !absolute).join('/');

                if (!path && !absolute) {
                    path = '.';
                }

                if (path && trailingSlash) {
                    path += '/';
                }

                return (absolute ? '/' : '') + path;
            },

            /**
             * join([path ...]) and normalize
             * @return {String}
             */
            join: function () {
                var args = Array.prototype.slice.call(arguments);
                return Path.normalize(args.join('/'));
            },

            /**
             * Get string which is to relative to from
             * @param {String} from
             * @param {String} to
             *
             *
             *      relative('x/','x/y/z') => 'y/z'
             *      relative('x/t/z','x/') => '../..'
             *
             * @return {String}
             */
            relative: function (from, to) {
                from = Path.normalize(from);
                to = Path.normalize(to);

                var fromParts = splitPathToArray(from);
                var path = [];
                var sameIndex;
                var sameIndex2;
                var toParts = splitPathToArray(to);
                var commonLength = Math.min(fromParts.length, toParts.length);

                for (sameIndex = 0; sameIndex < commonLength; sameIndex++) {
                    if (fromParts[sameIndex] !== toParts[sameIndex]) {
                        break;
                    }
                }

                sameIndex2 = sameIndex;

                while (sameIndex < fromParts.length) {
                    path.push('..');
                    sameIndex++;
                }

                path = path.concat(toParts.slice(sameIndex2));

                return path.join('/');
            },

            /**
             * Get base name of path
             * @param {String} path
             * @param {String} [ext] ext to be stripped from result returned.
             * @return {String}
             */
            basename: function (path, ext) {
                var result = path.match(splitPathRe) || [];
                var basename = result[3] || '';
                if (ext && basename && basename.slice(ext.length * -1) === ext) {
                    basename = basename.slice(0, -1 * ext.length);
                }
                return basename;
            },

            /**
             * Get dirname of path
             * @param {String} path
             * @return {String}
             */
            dirname: function (path) {
                var result = path.match(splitPathRe) || [];
                var root = result[1] || '';
                var dir = result[2] || '';

                if (!root && !dir) {
                    // No dirname
                    return '.';
                }

                if (dir) {
                    // It has a dirname, strip trailing slash
                    dir = dir.substring(0, dir.length - 1);
                }

                return root + dir;
            },

            /**
             * Get extension name of file in path
             * @param {String} path
             * @return {String}
             */
            extname: function (path) {
                return (path.match(splitPathRe) || [])[4] || '';
            }
        };

        module.exports = Path;
        /*
 Refer
 - https://github.com/joyent/node/blob/master/lib/path.js
 */

    }, {}],
    26: [function (require, module, exports) {
        module.exports = require('./lib/querystring');

    }, {"./lib/querystring": 27}],
    27: [function (require, module, exports) {
        /**
         * utilities for dealing with query strings.
         * conforms to nodejs api.
         * @author yiminghe@gmail.com
         */
        var SEP = '&';
        var EMPTY = '';
        var undef;
        var urlEncode = encodeURIComponent;
        var toString = ({}).toString;
        var EQ = '=';

        function isValidParamValue(val) {
            var t = typeof val;
            // If the type of val is null, undef, number, string, boolean, return TRUE.
            return val == null || (t !== 'object' && t !== 'function');
        }

        function isArray(o) {
            return toString.apply(o) === '[object Array]';
        }

        function urlDecode(s) {
            return decodeURIComponent(s.replace(/\+/g, ' '));
        }

        module.exports = {

            _debug: '@DEBUG@',

            /**
             * Creates a serialized string of an array or object.
             *
             * for example:
             *     @example
             *     {foo: 1, bar: 2}    // -> 'foo=1&bar=2'
             *     {foo: 1, bar: [2, 3]}    // -> 'foo=1&bar=2&bar=3'
             *     {foo: '', bar: 2}    // -> 'foo=&bar=2'
             *     {foo: undef, bar: 2}    // -> 'foo=undef&bar=2'
             *     {foo: TRUE, bar: 2}    // -> 'foo=TRUE&bar=2'
             *
             * @param {Object} o json data
             * @param {String} [sep='&'] separator between each pair of data
             * @param {String} [eq='='] separator between key and value of data
             * @param {Boolean} [serializeArray=true] whether add '[]' to array key of data
             * @return {String}
             * @member KISSY
             */
            stringify: function (o, sep, eq, serializeArray) {
                sep = sep || SEP;
                eq = eq || EQ;
                if (serializeArray === undef) {
                    serializeArray = true;
                }
                var buf = [];
                var key;
                var i;
                var v;
                var len;
                var val;
                for (key in o) {
                    val = o[key];
                    var originalKey = key;
                    key = urlEncode(key);

                    // val is valid non-array value
                    if (isValidParamValue(val)) {
                        buf.push(key);
                        if (val !== undef) {
                            buf.push(eq, urlEncode(val + EMPTY));
                        }
                        buf.push(sep);
                    } else if (isArray(val)) {
                        // val is not empty array
                        for (i = 0, len = val.length; i < len; ++i) {
                            v = val[i];
                            if (isValidParamValue(v)) {
                                buf.push(key, (serializeArray && (originalKey.slice(0 - 2) !== '[]') ? urlEncode('[]') : EMPTY));
                                if (v !== undef) {
                                    buf.push(eq, urlEncode(v + EMPTY));
                                }
                                buf.push(sep);
                            }
                        }
                    }
                    // ignore other cases, including empty array, Function, RegExp, Date etc.
                }
                buf.pop();
                return buf.join(EMPTY);
            },

            /**
             * Parses a URI-like query string and returns an object composed of parameter/value pairs.
             *
             * for example:
             *      @example
             *      'section=blog&id=45'        // -> {section: 'blog', id: '45'}
             *      'section=blog&tag=js&tag=doc' // -> {section: 'blog', tag: ['js', 'doc']}
             *      'tag=ruby%20on%20rails'        // -> {tag: 'ruby on rails'}
             *      'id=45&raw'        // -> {id: '45', raw: ''}
             * @param {String} str param string
             * @param {String} [sep='&'] separator between each pair of data
             * @param {String} [eq='='] separator between key and value of data
             * @return {Object} json data
             * @member KISSY
             */
            parse: function (str, sep, eq) {
                if (typeof str !== 'string' || !(str = str.replace(/^[\s\xa0]+|[\s\xa0]+$/g, ''))) {
                    return {};
                }
                sep = sep || SEP;
                eq = eq || EQ;
                var ret = {};
                var eqIndex;
                var key;
                var val;
                var pairs = str.split(sep);
                var i = 0;
                var len = pairs.length;

                for (; i < len; ++i) {
                    eqIndex = pairs[i].indexOf(eq);
                    if (eqIndex === -1) {
                        key = urlDecode(pairs[i]);
                        val = undef;
                    } else {
                        // remember to decode key!
                        key = urlDecode(pairs[i].substring(0, eqIndex));
                        val = pairs[i].substring(eqIndex + 1);
                        try {
                            // http://stackoverflow.com/questions/9064536/javascript-decodeuricomponent-malformed-uri-exception
                            val = urlDecode(val);
                        } catch (e) {
                            throw new Error('decodeURIComponent error : ' + val);
                            // throw new Error(e);
                        }

                        if (key.slice(0 - 2) === '[]') {
                            key = key.slice(0, 0 - 2);
                        }
                    }
                    if (key in ret) {
                        if (isArray(ret[key])) {
                            ret[key].push(val);
                        } else {
                            ret[key] = [ret[key], val];
                        }
                    } else {
                        ret[key] = val;
                    }
                }
                return ret;
            }
        };

    }, {}],
    28: [function (require, module, exports) {
        (function (global) {
// Namespace exports.
            var host;

            'undefined' != typeof window ?
                host = window :
                'undefined' != typeof global ?
                    host = global :
                    'undefined' != typeof self &&
                    (host = self);

            /**
             * The KISSY global namespace object. you can use
             *
             *
             *      KISSY.each/mix
             *
             * to do basic operation. or
             *
             *
             *      KISSY.use('overlay,node', function(S, Overlay, Node){
 *          //
 *      });
             *
             * to do complex task with modules.
             * @singleton
             * @class KISSY
             */
            var KISSY = host['KISSY'];

            if (!KISSY) {

                KISSY = {};

                /**
                 * The build time of the library.
                 * NOTICE: '1450252392754' will replace with current timestamp when compressing.
                 * @private
                 * @type {String}
                 */
                KISSY.__BUILD_TIME = '1450252392754';

                /**
                 * KISSY Environment.
                 * @private
                 * @type {Object}
                 */
                KISSY.Env = {
                    host: host
                };

                /**
                 * KISSY Config.
                 * If load kissy-debug.js, Config.debug defaults to true.
                 * Else If load kissy.js, Config.debug defaults to false.
                 * @private
                 * @property {Object} Config
                 * @property {Boolean} Config.debug
                 * @member KISSY
                 */
                KISSY.Config = {
                    debug: '@DEBUG@',
                    fns: {}
                };

                /**
                 * The version of the library.
                 * NOTICE: '6.2.4' will replace with current version when compressing.
                 * @type {String}
                 */
                KISSY.version = '6.2.4';

                /**
                 * Attach a member to the global KISSY object.
                 *
                 * @param key {String} Key of member.
                 * @param value {*} Value of member.
                 * @param overwriting {Boolean} Overwrite the existed member forcely.
                 * @returns {KISSY} The global KISSY object.
                 */
                KISSY.addMember = function (key, value, overwriting) {

                    if (key in KISSY && !overwriting) {
                        throw new Error('The member that you want to add to KISSY already exists!');
                    } else {
                        KISSY[key] = value;
                    }
                };
            }

            module.exports = host['KISSY'] = KISSY;

        }).call(this, typeof self !== "undefined" ? self : typeof window !== "undefined" ? window : {})
    }, {}],
    29: [function (require, module, exports) {
        module.exports = require('./lib/ua');
    }, {"./lib/ua": 30}],
    30: [function (require, module, exports) {
        /**
         * @ignore
         * ua
         */

        var win = typeof window !== 'undefined' ? window : {};
        var undef;
        var doc = win.document;
        var ua = win.navigator && win.navigator.userAgent || '';

        var UA;

        function numberify(s) {
            var c = 0;
            // convert '1.2.3.4' to 1.234
            return parseFloat(s.replace(/\./g, function () {
                return (c++ === 0) ? '.' : '';
            }));
        }

        function setTridentVersion(uaStr, uaObj) {
            var core;
            var m;
            uaObj[core = 'trident'] = 0.1; // Trident detected, look for revision

            // Get the Trident's accurate version
            if ((m = uaStr.match(/Trident\/([\d.]*)/)) && m[1]) {
                uaObj[core] = numberify(m[1]);
            }

            uaObj.core = core;
        }

        function getIEVersion(uaStr) {
            var m;
            var v;
            if ((m = uaStr.match(/MSIE ([^;]*)|Trident.*; rv(?:\s|:)?([0-9.]+)/)) && (v = (m[1] || m[2]))) {
                return numberify(v);
            }
            return 0;
        }

        function getDescriptorFromUserAgent(uaStr) {
            var EMPTY = '';
            var os;
            var core = EMPTY;
            var shell = EMPTY;
            var m;
            var IE_DETECT_RANGE = [6, 9];
            var ieVersion;
            var v;
            var end;
            var VERSION_PLACEHOLDER = '{{version}}';
            var IE_DETECT_TPL = '<!--[if IE ' + VERSION_PLACEHOLDER + ']><' + 's></s><![endif]-->';
            var div = doc && doc.createElement('div');
            var s = [];

            /**
             * KISSY UA
             * @class KISSY.uaObj
             * @singleton
             */
            var uaObj = {
                /**
                 * webkit version
                 * @type undef|Number
                 * @member KISSY.uaObj
                 */
                webkit: undef,
                /**
                 * edge version
                 * @type undef|Number
                 * @member KISSY.uaObj
                 */
                edge: undef,
                /**
                 * trident version
                 * @type undef|Number
                 * @member KISSY.uaObj
                 */
                trident: undef,
                /**
                 * gecko version
                 * @type undef|Number
                 * @member KISSY.uaObj
                 */
                gecko: undef,
                /**
                 * presto version
                 * @type undef|Number
                 * @member KISSY.uaObj
                 */
                presto: undef,
                /**
                 * chrome version
                 * @type undef|Number
                 * @member KISSY.uaObj
                 */
                chrome: undef,
                /**
                 * safari version
                 * @type undef|Number
                 * @member KISSY.uaObj
                 */
                safari: undef,
                /**
                 * firefox version
                 * @type undef|Number
                 * @member KISSY.uaObj
                 */
                firefox: undef,
                /**
                 * ie version
                 * @type undef|Number
                 * @member KISSY.uaObj
                 */
                ie: undef,
                /**
                 * ie document mode
                 * @type undef|Number
                 * @member KISSY.uaObj
                 */
                ieMode: undef,
                /**
                 * opera version
                 * @type undef|Number
                 * @member KISSY.uaObj
                 */
                opera: undef,
                /**
                 * mobile browser. apple, android.
                 * @type String
                 * @member KISSY.uaObj
                 */
                mobile: undef,
                /**
                 * browser render engine name. webkit, trident
                 * @type String
                 * @member KISSY.uaObj
                 */
                core: undef,
                /**
                 * browser shell name. ie, chrome, firefox
                 * @type String
                 * @member KISSY.uaObj
                 */
                shell: undef,

                /**
                 * PhantomJS version number
                 * @type undef|Number
                 * @member KISSY.uaObj
                 */
                phantomjs: undef,

                /**
                 * operating system. android, ios, linux, windows
                 * @type string
                 * @member KISSY.uaObj
                 */
                os: undef,

                /**
                 * ipad ios version
                 * @type Number
                 * @member KISSY.uaObj
                 */
                ipad: undef,
                /**
                 * iphone ios version
                 * @type Number
                 * @member KISSY.uaObj
                 */
                iphone: undef,
                /**
                 * ipod ios
                 * @type Number
                 * @member KISSY.uaObj
                 */
                ipod: undef,
                /**
                 * ios version
                 * @type Number
                 * @member KISSY.uaObj
                 */
                ios: undef,

                /**
                 * android version
                 * @type Number
                 * @member KISSY.uaObj
                 */
                android: undef,

                /**
                 * nodejs version
                 * @type Number
                 * @member KISSY.uaObj
                 */
                nodejs: undef
            };

            // ejecta
            if (div && div.getElementsByTagName) {
                // try to use IE-Conditional-Comment detect IE more accurately
                // IE10 doesn't support this method, @ref: http://blogs.msdn.com/b/ie/archive/2011/07/06/html5-parsing-in-ie10.aspx
                div.innerHTML = IE_DETECT_TPL.replace(VERSION_PLACEHOLDER, '');
                s = div.getElementsByTagName('s');
            }

            if (s.length > 0) {
                setTridentVersion(uaStr, uaObj);

                // Detect the accurate version
                // 注意：
                //  UA.shell = ie, 表示外壳是 ie
                //  但 UA.ie = 7, 并不代表外壳是 ie7, 还有可能是 ie8 的兼容模式
                //  对于 ie8 的兼容模式，还要通过 documentMode 去判断。但此处不能让 UA.ie = 8, 否则
                //  很多脚本判断会失误。因为 ie8 的兼容模式表现行为和 ie7 相同，而不是和 ie8 相同
                for (v = IE_DETECT_RANGE[0], end = IE_DETECT_RANGE[1]; v <= end; v++) {
                    div.innerHTML = IE_DETECT_TPL.replace(VERSION_PLACEHOLDER, v);
                    if (s.length > 0) {
                        uaObj[shell = 'ie'] = v;
                        break;
                    }
                }

                // https://github.com/kissyteam/kissy/issues/321
                // win8 embed app
                if (!uaObj.ie && (ieVersion = getIEVersion(uaStr))) {
                    uaObj[shell = 'ie'] = ieVersion;
                }
            } else {
                // WebKit
                // https://github.com/kissyteam/kissy/issues/545
                if (((m = uaStr.match(/AppleWebKit\/*\s*([\d.]*)/i)) || (m = uaStr.match(/Safari\/([\d.]*)/))) && m[1]) {
                    uaObj[core = 'webkit'] = numberify(m[1]);

                    if ((m = uaStr.match(/OPR\/(\d+\.\d+)/)) && m[1]) {
                        uaObj[shell = 'opera'] = numberify(m[1]);
                    } else if ((m = uaStr.match(/Chrome\/([\d.]*)/)) && m[1]) {
                        uaObj[shell = 'chrome'] = numberify(m[1]);
                    } else if ((m = uaStr.match(/\/([\d.]*) Safari/)) && m[1]) {
                        uaObj[shell = 'safari'] = numberify(m[1]);
                    } else {
                        // default to mobile safari
                        uaObj.safari = uaObj.webkit;
                    }

                    // Microsoft Edge
                    if ((m = uaStr.match(/Edge\/([\d.]*)/)) && m[1]) {
                        core = shell = 'edge';
                        uaObj[core] = numberify(m[1]);
                    }

                    // Apple Mobile
                    if (/ Mobile\//.test(uaStr) && uaStr.match(/iPad|iPod|iPhone/)) {
                        uaObj.mobile = 'apple'; // iPad, iPhone or iPod Touch

                        m = uaStr.match(/OS ([^\s]*)/);
                        if (m && m[1]) {
                            uaObj.ios = numberify(m[1].replace('_', '.'));
                        }
                        os = 'ios';
                        m = uaStr.match(/iPad|iPod|iPhone/);
                        if (m && m[0]) {
                            uaObj[m[0].toLowerCase()] = uaObj.ios;
                        }
                    } else if (/ Android/i.test(uaStr)) {
                        if (/Mobile/.test(uaStr)) {
                            os = uaObj.mobile = 'android';
                        }
                        m = uaStr.match(/Android ([^\s]*);/);
                        if (m && m[1]) {
                            uaObj.android = numberify(m[1]);
                        }
                    } else if ((m = uaStr.match(/NokiaN[^\/]*|Android \d\.\d|webOS\/\d\.\d/))) {
                        uaObj.mobile = m[0].toLowerCase(); // Nokia N-series, Android, webOS, ex: NokiaN95
                    }

                    if ((m = uaStr.match(/PhantomJS\/([^\s]*)/)) && m[1]) {
                        uaObj.phantomjs = numberify(m[1]);
                    }
                } else {
                    // Presto
                    // ref: http://www.useragentstring.com/pages/useragentstring.php
                    if ((m = uaStr.match(/Presto\/([\d.]*)/)) && m[1]) {
                        uaObj[core = 'presto'] = numberify(m[1]);

                        // Opera
                        if ((m = uaStr.match(/Opera\/([\d.]*)/)) && m[1]) {
                            uaObj[shell = 'opera'] = numberify(m[1]); // Opera detected, look for revision

                            if ((m = uaStr.match(/Opera\/.* Version\/([\d.]*)/)) && m[1]) {
                                uaObj[shell] = numberify(m[1]);
                            }

                            // Opera Mini
                            if ((m = uaStr.match(/Opera Mini[^;]*/)) && m) {
                                uaObj.mobile = m[0].toLowerCase(); // ex: Opera Mini/2.0.4509/1316
                            } else if ((m = uaStr.match(/Opera Mobi[^;]*/)) && m) {
                                // Opera Mobile
                                // ex: Opera/9.80 (Windows NT 6.1; Opera Mobi/49; U; en) Presto/2.4.18 Version/10.00
                                // issue: 由于 Opera Mobile 有 Version/ 字段，可能会与 Opera 混淆，同时对于 Opera Mobile 的版本号也比较混乱
                                uaObj.mobile = m[0];
                            }
                        }
                        // NOT WebKit or Presto
                    } else {
                        // MSIE
                        // 由于最开始已经使用了 IE 条件注释判断，因此落到这里的唯一可能性只有 IE10+
                        // and analysis tools in nodejs
                        if ((ieVersion = getIEVersion(uaStr))) {
                            uaObj[shell = 'ie'] = ieVersion;
                            setTridentVersion(uaStr, uaObj);
                            // NOT WebKit, Presto or IE
                        } else {
                            // Gecko
                            if ((m = uaStr.match(/Gecko/))) {
                                uaObj[core = 'gecko'] = 0.1; // Gecko detected, look for revision
                                if ((m = uaStr.match(/rv:([\d.]*)/)) && m[1]) {
                                    uaObj[core] = numberify(m[1]);
                                    if (/Mobile|Tablet/.test(uaStr)) {
                                        uaObj.mobile = 'firefox';
                                    }
                                }
                                // Firefox
                                if ((m = uaStr.match(/Firefox\/([\d.]*)/)) && m[1]) {
                                    uaObj[shell = 'firefox'] = numberify(m[1]);
                                }
                            }
                        }
                    }
                }
            }

            if (!os) {
                if ((/windows|win32/i).test(uaStr)) {
                    os = 'windows';
                } else if ((/macintosh|mac_powerpc/i).test(uaStr)) {
                    os = 'macintosh';
                } else if ((/linux/i).test(uaStr)) {
                    os = 'linux';
                } else if ((/rhino/i).test(uaStr)) {
                    os = 'rhino';
                }
            }

            uaObj.os = os;
            uaObj.core = uaObj.core || core;
            uaObj.shell = shell;
            uaObj.ieMode = uaObj.ie && doc.documentMode || uaObj.ie;

            return uaObj;
        }

        UA = getDescriptorFromUserAgent(ua);

// nodejs
// if (typeof process === 'object') {
//    var versions, nodeVersion;
//    if ((versions = process.versions) && (nodeVersion = versions.node)) {
//        UA.os = process.platform;
//        UA.nodejs = numberify(nodeVersion);
//    }
// }

// use by analysis tools in nodejs
        UA.getDescriptorFromUserAgent = getDescriptorFromUserAgent;

        var browsers = [
// browser core type
            'webkit', 'trident', 'gecko', 'presto',
// browser type
            'chrome', 'safari', 'firefox', 'ie', 'opera'];
        var documentElement = doc && doc.documentElement;
        var className = '';

        if (documentElement) {
            for (var i = 0; i < browsers.length; i++) {
                var key = browsers[i];
                var v = UA[key];
                if (v) {
                    className += ' ks-' + key + (parseInt(v, 10) + '');
                    className += ' ks-' + key;
                }
            }
            if (className) {
                documentElement.className = (documentElement.className + className)
                    .replace(/^[\s\xa0]+|[\s\xa0]+$/g, '');
            }
        }

        module.exports = UA;

        /*
 NOTES:
 2013.07.08 yiminghe@gmail.com
 - support ie11 and opera(using blink)

 2013.01.17 yiminghe@gmail.com
 - expose getDescriptorFromUserAgent for analysis tool in nodejs

 2012.11.27 yiminghe@gmail.com
 - moved to seed for conditional loading and better code share

 2012.11.21 yiminghe@gmail.com
 - touch and os support

 2011.11.08 gonghaocn@gmail.com
 - ie < 10 使用条件注释判断内核，更精确

 2010.03
 - jQuery, YUI 等类库都推荐用特性探测替代浏览器嗅探。特性探测的好处是能自动适应未来设备和未知设备，比如
 if(document.addEventListener) 假设 IE9 支持标准事件，则代码不用修改，就自适应了“未来浏览器”。
 对于未知浏览器也是如此。但是，这并不意味着浏览器嗅探就得彻底抛弃。当代码很明确就是针对已知特定浏览器的，
 同时并非是某个特性探测可以解决时，用浏览器嗅探反而能带来代码的简洁，同时也也不会有什么后患。总之，一切
 皆权衡。
 - UA.ie && UA.ie < 8 并不意味着浏览器就不是 IE8, 有可能是 IE8 的兼容模式。进一步的判断需要使用 documentMode.
 */

    }, {}],
    31: [function (require, module, exports) {
        module.exports = require('./lib/url');

    }, {"./lib/url": 32}],
    32: [function (require, module, exports) {
        /**
         * @ignore
         * url utilities
         * @author yiminghe@gmail.com
         */
        var querystring = require('querystring');
        var Path = require('path');

        var undef;
        var reDisallowedInProtocolOrAuth = /[#\/\?@]/g;
        var reDisallowedInPathName = /[#\?]/g;
        var reDisallowedInHash = /#/g;
        var URI_SPLIT_REG = new RegExp(
            '^' +
            /*
     Scheme names consist of a sequence of characters beginning with a
     letter and followed by any combination of letters, digits, plus
     ('+'), period ('.'), or hyphen ('-').
     */
            '([\\w\\d+.-]+:)?' + // protocol

            '(?://' +
            /*
     The authority component is preceded by a double slash ('//') and is
     terminated by the next slash ('/'), question mark ('?'), or number
     sign ('#') character, or by the end of the URI.
     */
            '(?:([^/?#@]*)@)?' + // auth

            '(' +
            '[\\w\\d\\-\\u0100-\\uffff.+%]*' +
            '|' +
            // ipv6
            '\\[[^\\]]+\\]' +
            ')' + // hostname - restrict to letters,
            // digits, dashes, dots, percent
            // escapes, and unicode characters.
            '(?::([0-9]+))?' + // port
            ')?' +
            /*
     The path is terminated
     by the first question mark ('?') or number sign ('#') character, or
     by the end of the URI.
     */
            '([^?#]+)?' + // pathname. hierarchical part
            /*
     The query component is indicated by the first question
     mark ('?') character and terminated by a number sign ('#') character
     or by the end of the URI.
     */
            '(\\?[^#]*)?' + // search. non-hierarchical data
            /*
     The hash identifier component of a URI allows indirect
     identification of a secondary resource by reference to a primary
     resource and additional identifying information.

     A
     hash identifier component is indicated by the presence of a
     number sign ('#') character and terminated by the end of the URI.
     */
            '(#.*)?' + // hash
            '$');

        var REG_INFO = {
            protocol: 1,
            auth: 2,
            hostname: 3,
            port: 4,
            pathname: 5,
            search: 6,
            hash: 7
        };

        function needDoubleSlash(str) {
            if (str.slice(0 - 1) === ':') {
                str = str.slice(0, -1);
            }
            return str === 'http' ||
                str === 'https' ||
                str === 'ftp' ||
                str === 'gopher' ||
                str === 'file';
        }

        function padding2(str) {
            return str.length === 1 ? '0' + str : str;
        }

// www.ta#bao.com // => www.ta.com/#bao.com
// www.ta%23bao.com
// Percent-Encoding
        function encodeSpecialChars(str, specialCharsReg) {
            // encodeURI( ) is intended to encode complete URIs,
            // the following ASCII punctuation characters,
            // which have special meaning in URIs, are not escaped either:
            // ; / ? : @ & = + $ , #
            return encodeURI(str).replace(specialCharsReg, function (m) {
                return '%' + padding2(m.charCodeAt(0).toString(16));
            });
        }

        var url = {

            /**
             * parse a url to a structured object
             * @param {String} str url string
             * @param {Boolean} [parseQueryString] whether parse query string to structured object
             * @return {Object}
             */
            parse: function (str, parseQueryString) {
                str = str || '';
                var m = str.match(URI_SPLIT_REG) || [];
                var ret = {};

                // old ie 7:  return "" for unmatched regexp ...

                for (var part in REG_INFO) {
                    ret[part] = m[REG_INFO[part]];
                }

                if (ret.protocol) {
                    ret.protocol = ret.protocol.toLowerCase();
                }

                if (ret.hostname) {
                    ret.hostname = ret.hostname.toLowerCase();
                }

                var protocol = ret.protocol;

                if (protocol) {
                    ret.slashes = str.lastIndexOf(protocol + '//') !== -1;
                }

                // mailto: yiminghe@gmail.com
                if (protocol && !needDoubleSlash(protocol.slice(0, -1))) {
                    if (!ret.slashes) {
                        str = str.slice(0, protocol.length) + '//' + str.slice(protocol.length);
                        ret = url.parse(str, parseQueryString);
                        ret.slashes = null;
                        return ret;
                    }
                } else {
                    // http://www.g.cn
                    // pathname => /
                    if (ret.hostname && !ret.pathname) {
                        ret.pathname = '/';
                    }
                }

                ret.path = ret.pathname;
                if (ret.search) {
                    ret.path += ret.search;
                }
                ret.host = ret.hostname;
                if (ret.port) {
                    ret.host = ret.hostname + ':' + ret.port;
                }
                if (ret.search) {
                    ret.query = ret.search.substring(1);
                }
                if (parseQueryString && ret.query) {
                    ret.query = querystring.parse(ret.query);
                }
                ret.href = url.format(ret);
                return ret;
            },

            /**
             * Take a parsed URL object, and return a formatted URL string.
             * @param {Object} urlStr parsed from url.parse
             * @param {Boolean} [serializeArray=true] whether add '[]' to array key of query data
             */
            format: function (urlStr, serializeArray) {
                var host = urlStr.host;
                if (host === undef && urlStr.hostname) {
                    host = encodeURIComponent(urlStr.hostname);
                    if (urlStr.port) {
                        host += ':' + urlStr.port;
                    }
                }

                var search = urlStr.search;
                var query = urlStr.query;
                if (search === undef && query !== undef) {
                    if (typeof query !== 'string') {
                        query = querystring.stringify(query, undef, undef, serializeArray);
                    }
                    if (query) {
                        search = '?' + query;
                    }
                }

                if (search && search.charAt(0) !== '?') {
                    search = '?' + search;
                }

                var hash = urlStr.hash || '';
                if (hash && hash.charAt(0) !== '#') {
                    hash = '#' + hash;
                }

                var pathname = urlStr.pathname || '';

                var out = [];
                var protocol;
                var auth;

                if ((protocol = urlStr.protocol)) {
                    if (protocol.slice(0 - 1) !== ':') {
                        protocol += ':';
                    }

                    out.push(encodeSpecialChars(protocol, reDisallowedInProtocolOrAuth));
                }

                if (host !== undef) {
                    if (this.slashes || protocol && needDoubleSlash(protocol)) {
                        out.push('//');
                    }
                    if ((auth = urlStr.auth)) {
                        out.push(encodeSpecialChars(auth, reDisallowedInProtocolOrAuth));
                        out.push('@');
                    }
                    out.push(host);
                }

                if (pathname) {
                    out.push(encodeSpecialChars(pathname, reDisallowedInPathName));
                }

                if (search) {
                    out.push(search);
                }

                if (hash) {
                    out.push('#' + encodeSpecialChars(hash.substring(1), reDisallowedInHash));
                }

                return out.join('');
            },

            resolve: function (from, to) {
                var override = 0;
                var lastSlashIndex;
                var order = ['protocol', 'auth', 'host', 'pathname', 'search', 'hash'];
                var target = {};

                from = url.parse(from);
                to = url.parse(to);

                for (var i = 0; i < order.length; i++) {
                    var o = order[i];

                    if (override) {
                        target[o] = to[o];
                        continue;
                    } else {
                        target[o] = from[o];
                    }

                    if (o === 'pathname') {
                        // relativeUri does not set for scheme/userInfo/hostname/port
                        var pathname = to.pathname;
                        if (pathname) {
                            // force to override target 's query with relative
                            override = 1;
                            if (pathname.charAt(0) !== '/') {
                                if (target.hostname && !target.pathname) {
                                    // RFC 3986, section 5.2.3, case 1
                                    pathname = '/' + pathname;
                                } else if (target.pathname) {
                                    if (pathname.slice(0 - 2) === '/.' || pathname.slice(0 - 3) === '/..' ||
                                        pathname === '.' || pathname === '..') {
                                        pathname = pathname + '/';
                                    }
                                    // RFC 3986, section 5.2.3, case 2
                                    lastSlashIndex = target.pathname.lastIndexOf('/');
                                    if (lastSlashIndex !== -1) {
                                        pathname = target.pathname.slice(0, lastSlashIndex + 1) + pathname;
                                    }
                                }
                            }
                            // remove .. / .  as part of the resolution process
                            target.pathname = Path.normalize(pathname);
                        }
                    } else if (o === 'search') {
                        if (to.search) {
                            target.search = to.search;
                            override = 1;
                        }
                    } else if (to[o]) {
                        // protocol auth host can inherit
                        override = override || target[o] !== to[o];
                        target[o] = to[o];
                    }
                }

                return url.format(target);
            }
        };

        url.stringify = url.format;

        module.exports = url;
        /*
 Refer
 - application/x-www-form-urlencoded
 - http://www.ietf.org/rfc/rfc3986.txt
 - http://en.wikipedia.org/wiki/URI_scheme
 - http://unixpapa.com/js/querystring.html
 - http://code.stephenmorley.org/javascript/parsing-query-strings-for-get-data/
 - same origin: http://tools.ietf.org/html/rfc6454
 */

    }, {"path": 24, "querystring": 26}],
    33: [function (require, module, exports) {
        var UA = require('ua');
        var util = require('util-base');
        require('util-extra');

        if (UA.ieMode < 9) {
            require('util-ie');
        }

        module.exports = util;
    }, {"ua": 29, "util-base": 34, "util-extra": 45, "util-ie": 52}],
    34: [function (require, module, exports) {
        module.exports = require('./lib/main');
    }, {"./lib/main": 35}],
    35: [function (require, module, exports) {
        var util = require('./main/base');

        require('./main/array');
        require('./main/function');
        require('./main/json');
        require('./main/object');
        require('./main/querystring');
        require('./main/string');
        require('./main/type');
        require('./main/web');

        module.exports = util;

    }, {
        "./main/array": 36,
        "./main/base": 37,
        "./main/function": 38,
        "./main/json": 39,
        "./main/object": 40,
        "./main/querystring": 41,
        "./main/string": 42,
        "./main/type": 43,
        "./main/web": 44
    }],
    36: [function (require, module, exports) {
        /**
         * @ignore
         * array utilities of lang
         * @author yiminghe@gmail.com
         */

        var undef,
            AP = Array.prototype,
            indexOf = AP.indexOf,
            filter = AP.filter,
            reduce = AP.reduce,
            reduce = AP.reduce,
            util = require('./base'),
            map = AP.map;

        util.mix(util, {
            /**
             * Search for a specified value within an array.
             * @param item individual item to be searched
             * @method
             * @member util
             * @param {Array} arr the array of items where item will be search
             * @return {number} item's index in array
             * Feature  Chrome  Firefox (Gecko) Internet Explorer   Opera   Safari
             Basic support  (Yes)   1.5 (1.8)   9              (Yes)   (Yes)
             */
            indexOf: function (item, arr, fromIndex) {
                return fromIndex === undef ?
                    indexOf.call(arr, item) :
                    indexOf.call(arr, item, fromIndex);
            },

            /**
             * Search for a specified value index within an array.
             * @param item individual item to be searched
             * @param {Array} arr the array of items where item will be search
             * @return {Boolean} the item exists in arr
             * @member util
             */
            inArray: function (item, arr) {
                return util.indexOf(item, arr) > -1;
            },

            /**
             * Executes the supplied function on each item in the array.
             * Returns a new array containing the items that the supplied
             * function returned TRUE for.
             * @member util
             * @method
             * @param arr {Array} the array to iterate
             * @param fn {Function} the function to execute on each item
             * @param [context] {Object} optional context object
             * @return {Array} The items on which the supplied function returned TRUE.
             * If no items matched an empty array is returned.
             */
            filter: function (arr, fn, context) {
                return filter.call(arr, fn, context || this);
            },

            /**
             * Executes the supplied function on each item in the array.
             * Returns a new array containing the items that the supplied
             * function returned for.
             * @method
             * @param arr {Array} the array to iterate
             * @param fn {Function} the function to execute on each item
             * @param [context] {Object} optional context object
             * refer: https://developer.mozilla.org/en/JavaScript/Reference/Global_Objects/Array/map
             * @return {Array} The items on which the supplied function returned
             * @member util
             */
            map: function (arr, fn, context) {
                return map.call(arr, fn, context || this);
            },

            /**
             * Executes the supplied function on each item in the array.
             * Returns a value which is accumulation of the value that the supplied
             * function returned.
             *
             * @param arr {Array} the array to iterate
             * @param callback {Function} the function to execute on each item
             * @param initialValue {number} optional context object
             * refer: https://developer.mozilla.org/en/JavaScript/Reference/Global_Objects/array/reduce
             * @return {Array} The items on which the supplied function returned
             * @member util
             */
            reduce: function (arr, callback, initialValue) {
                return reduce.call(arr, callback, initialValue);
            },

            /**
             * Converts object to a TRUE array.
             * do not pass form.elements to this function ie678 bug.
             * passing arguments is not recommended.
             * https://github.com/petkaantonov/bluebird/wiki/Optimization-killers
             * @param o {object|Array} array like object or array
             * @return {Array} native Array
             * @member util
             */
            makeArray: function (o) {
                if (o == null) {
                    return [];
                }
                if (util.isArray(o)) {
                    return o;
                }
                var lengthType = typeof o.length,
                    oType = typeof o;
                // The strings and functions also have 'length'
                if (lengthType !== 'number' ||
                    // select element
                    // https://github.com/kissyteam/kissy/issues/537
                    typeof o.nodeName === 'string' ||
                    // window
                    /*jshint eqeqeq:false*/
                    (o != null && o == o.window) ||
                    oType === 'string' ||
                    // https://github.com/ariya/phantomjs/issues/11478
                    (oType === 'function' && !('item' in o && lengthType === 'number'))) {
                    return [o];
                }
                var ret = [];
                for (var i = 0, l = o.length; i < l; i++) {
                    ret[i] = o[i];
                }
                return ret;
            }

        });
    }, {"./base": 37}],
    37: [function (require, module, exports) {
        var guid = 0,
            EMPTY = '';

        /**
         * utilities.
         * Provides Dom helper methods.
         * @class util
         * @singleton
         */
        module.exports = {

            _debug: '@DEBUG@',

            mix: function (to, from) {
                for (var i in from) {
                    to[i] = from[i];
                }
                return to;
            },
            /*
     * Generate a global unique id.
     * @param {String} [pre] guid prefix
     * @return {String} the guid
     */
            guid: function (pre) {
                return (pre || EMPTY) + guid++;
            }
        };
    }, {}],
    38: [function (require, module, exports) {
        /**
         * @ignore
         * function utilities of lang
         * @author yiminghe@gmail.com
         */

        var util = require('./base');

// ios Function.prototype.bind === undefine
        function bindFn(r, fn, obj) {
            function FNOP() {
            }

            var slice = [].slice,
                args = slice.call(arguments, 3),
                bound = function () {
                    var inArgs = slice.call(arguments);
                    return fn.apply(
                        this instanceof FNOP ? this :
                            // fix: y.x=util.bind(fn);
                            obj || this,
                        (r ? inArgs.concat(args) : args.concat(inArgs))
                    );
                };
            FNOP.prototype = fn.prototype;
            bound.prototype = new FNOP();
            return bound;
        }

        util.mix(util, {

            /**
             * empty function
             * @member util
             */
            noop: function () {
            },

            /**
             * Gets current date in milliseconds.
             * @method
             * refer:  https://developer.mozilla.org/en/JavaScript/Reference/Global_Objects/Date/now
             * http://j-query.blogspot.com/2011/02/timing-ecmascript-5-datenow-function.html
             * http://kangax.github.com/es5-compat-table/
             * @member util
             * @return {Number} current time
             */
            now: Date.now || function () {
                return +new Date();
            },

            /**
             * Executes the supplied function in the context of the supplied
             * object 'when' milliseconds later. Executes the function a
             * single time unless periodic is set to true.
             *
             * @param fn {Function|String} the function to execute or the name of the method in
             * the 'o' object to execute.
             *
             * @param [when=0] {Number} the number of milliseconds to wait until the fn is executed.
             *
             * @param {Boolean} [periodic] if true, executes continuously at supplied interval
             * until canceled.
             *
             * @param {Object} [context] the context object.
             *
             * @param [data] that is provided to the function. This accepts either a single
             * item or an array. If an array is provided, the function is executed with
             * one parameter for each array item. If you need to pass a single array
             * parameter, it needs to be wrapped in an array.
             *
             * @return {Object} a timer object. Call the cancel() method on this object to stop
             * the timer.
             *
             * @member util
             */
            later: function (fn, when, periodic, context, data) {
                when = when || 0;
                var m = fn,
                    d = util.makeArray(data),
                    f,
                    r;

                if (typeof fn === 'string') {
                    m = context[fn];
                }

                f = function () {
                    m.apply(context, d);
                };

                r = (periodic) ? setInterval(f, when) : setTimeout(f, when);

                return {
                    id: r,
                    interval: periodic,
                    cancel: function () {
                        if (this.interval) {
                            clearInterval(r);
                        } else {
                            clearTimeout(r);
                        }
                    }
                };
            },

            /**
             * buffers a call between a fixed time
             * @param {Function} fn
             * @param {Number} ms
             * @param {Object} [context]
             * @return {Function} Returns a wrapped function that calls fn buffered.
             * @member util
             */
            buffer: function (fn, ms, context) {
                ms = ms || 150;

                if (ms === -1) {
                    return function () {
                        fn.apply(context || this, arguments);
                    };
                }
                var bufferTimer = null;

                function f() {
                    f.stop();
                    bufferTimer = util.later(fn, ms, 0, context || this, arguments);
                }

                f.stop = function () {
                    if (bufferTimer) {
                        bufferTimer.cancel();
                        bufferTimer = 0;
                    }
                };

                return f;
            },

            /**
             * Creates a new function that, when called, itself calls this function in the context of the provided this value,
             * with a given sequence of arguments preceding any provided when the new function was called.
             * refer: https://developer.mozilla.org/en/JavaScript/Reference/Global_Objects/Function/bind
             * @param {Function} fn internal called function
             * @param {Object} obj context in which fn runs
             * @param {*...} var_args extra arguments
             * @member util
             * @return {Function} new function with context and arguments
             */
            bind: bindFn(0, bindFn, null, 0),

            /**
             * Creates a new function that, when called, itself calls this function in the context of the provided this value,
             * with a given sequence of arguments preceding any provided when the new function was called.
             * refer: https://developer.mozilla.org/en/JavaScript/Reference/Global_Objects/Function/bind
             * @param {Function} fn internal called function
             * @param {Object} obj context in which fn runs
             * @param {*...} var_args extra arguments
             * @member util
             * @return {Function} new function with context and arguments
             */
            rbind: bindFn(0, bindFn, null, 1)

        });
    }, {"./base": 37}],
    39: [function (require, module, exports) {
        var util = require('./base');
        var json = ('undefined' !== typeof JSON ? JSON : {});
        util.parseJson = json.parse;
    }, {"./base": 37}],
    40: [function (require, module, exports) {
        /**
         * @ignore
         * object utilities of lang
         * @author yiminghe@gmail.com
         */

        var util = require('./base');
        var undef;
        var MIX_CIRCULAR_DETECTION = '__MIX_CIRCULAR';
        var CLONE_MARKER = '__~ks_cloned';
        var STAMP_MARKER = '__~ks_stamped';
        var toString = ({}).toString;
        var objectCreate = Object.create;

        function removeConstructor(k, v) {
            return k === 'constructor' ? undef : v;
        }

        mix(util, {

            /**
             * Executes the supplied function on each item in the array.
             * @param object {Object} the object to iterate
             * @param fn {Function} the function to execute on each item. The function
             *        receives three arguments: the value, the index, the full array.
             * @param {Object} [context]
             * @member util
             */
            each: function (object, fn, context) {
                if (object) {
                    var key,
                        keys,
                        val,
                        i = 0,
                        length = object && object.length,
                        // do not use typeof obj == 'function': bug in phantomjs
                        isObj = length === undef || toString.call(object) === '[object Function]';

                    context = context || null;

                    if (isObj) {

                        keys = (typeof Object.keys === 'function') ?
                            Object.keys(object) : util.keys(object);

                        // iteration bug in ie8-
                        for (; i < keys.length; i++) {
                            key = keys[i];
                            // can not use hasOwnProperty
                            if (fn.call(context, object[key], key, object) === false) {
                                break;
                            }
                        }
                    } else {
                        for (val = object[0];
                             i < length; val = object[++i]) {
                            if (fn.call(context, val, i, object) === false) {
                                break;
                            }
                        }
                    }
                }
                return object;
            },

            /**
             * Checks to see if an object is empty.
             * @member util
             */
            isEmptyObject: function (o) {
                for (var p in o) {
                    if (p !== undef) {
                        return false;
                    }
                }
                return true;
            },

            /**
             * Get all the property names of o as array
             * @param {Object} o
             * @return {Array}
             * @member util
             */
            keys: Object.keys,

            /**
             * stamp a object by guid
             * @param {Object} o object needed to be stamped
             * @param {Boolean} [readOnly] while set marker on o if marker does not exist
             * @param {String} [marker] the marker will be set on Object
             * @return {String} guid associated with this object
             * @member util
             */
            stamp: function (o, readOnly, marker) {
                marker = marker || STAMP_MARKER;
                var guid = o[marker];
                if (guid) {
                    return guid;
                } else if (!readOnly) {
                    try {
                        guid = o[marker] = util.guid(marker);
                    }
                    catch (e) {
                        guid = undef;
                    }
                }
                return guid;
            },

            /**
             * Copies all the properties of s to r.
             * @method
             * @param {Object} r the augmented object
             * @param {Object} s the object need to augment
             * @param {Boolean|Object} [ov=true] whether overwrite existing property or config.
             * @param {Boolean} [ov.overwrite=true] whether overwrite existing property.
             * @param {String[]|Function} [ov.whitelist] array of white-list properties
             * @param {Boolean}[ov.deep=false] whether recursive mix if encounter object.
             * @param {String[]|Function} [wl] array of white-list properties
             * @param [deep=false] {Boolean} whether recursive mix if encounter object.
             * @return {Object} the augmented object
             * @member util
             *
             *     @example
             *     var t = {};
             *     util.mix({x: {y: 2, z: 4}}, {x: {y: 3, a: t}}, {deep: true}) => {x: {y: 3, z: 4, a: {}}}, a !== t
             *     util.mix({x: {y: 2, z: 4}}, {x: {y: 3, a: t}}, {deep: true, overwrite: false}) => {x: {y: 2, z: 4, a: {}}}, a !== t
             *     util.mix({x: {y: 2, z: 4}}, {x: {y: 3, a: t}}, 1) => {x: {y: 3, a: t}}
             */
            mix: function (r, s, ov, wl, deep) {
                var structured;
                if (typeof ov === 'object') {
                    wl = /**
                     @ignore
                     @type {String[]|Function}
                     */ov.whitelist;
                    deep = ov.deep;
                    structured = ov.structured;
                    ov = ov.overwrite;
                }

                if (wl && (typeof wl !== 'function')) {
                    var originalWl = wl;
                    wl = function (name, val) {
                        return util.inArray(name, originalWl) ? val : undef;
                    };
                }

                if (ov === undef) {
                    ov = true;
                }

                if (structured === undef) {
                    structured = true;
                }

                var cache = [];
                var i = 0;
                var c;
                mixInternal(r, s, ov, wl, deep, cache, structured);
                while ((c = cache[i++])) {
                    delete c[MIX_CIRCULAR_DETECTION];
                }
                return r;
            },

            /**
             * Applies prototype properties from the supplier to the receiver.
             * @param   {Object} r received object
             * @param   {...Object} varArgs object need to  augment
             *          {Boolean} [ov=true] whether overwrite existing property
             *          {String[]} [wl] array of white-list properties
             * @return  {Object} the augmented object
             * @member util
             */
            augment: function (r, varArgs) {
                var args = util.makeArray(arguments),
                    len = args.length - 2,
                    i = 1,
                    proto,
                    arg,
                    ov = args[len],
                    wl = args[len + 1];

                args[1] = varArgs;

                if (!util.isArray(wl)) {
                    ov = wl;
                    wl = undef;
                    len++;
                }
                if (typeof ov !== 'boolean') {
                    ov = undef;
                    len++;
                }

                for (; i < len; i++) {
                    arg = args[i];
                    if ((proto = arg.prototype)) {
                        arg = util.mix({}, proto, true, removeConstructor);
                    }
                    util.mix(r.prototype, arg, ov, wl);
                }

                return r;
            },

            /**
             * Returns a new object containing all of the properties of
             * all the supplied objects. The properties from later objects
             * will overwrite those in earlier objects. Passing in a
             * single object will create a shallow copy of it.
             * @param {...Object} varArgs objects need to be merged
             * @return {Object} the new merged object
             * @member util
             */
            merge: function (varArgs) {
                varArgs = util.makeArray(arguments);
                var o = {},
                    i,
                    l = varArgs.length;
                for (i = 0; i < l; i++) {
                    util.mix(o, varArgs[i]);
                }
                return o;
            },

            /**
             * Utility to set up the prototype, constructor and superclass properties to
             * support an inheritance strategy that can chain constructors and methods.
             * Static members will not be inherited.
             * @param r {Function} the object to modify
             * @param s {Function} the object to inherit
             * @param {Object} [px] prototype properties to add/override
             * @param {Object} [sx] static properties to add/override
             * @return r {Object}
             * @member util
             */
            extend: function (r, s, px, sx) {
                var sp = s.prototype,
                    rp;

                // in case parent does not set constructor
                // eg: parent.prototype={};
                sp.constructor = s;

                // add prototype chain
                rp = createObject(sp, r);
                r.prototype = util.mix(rp, r.prototype);
                r.superclass = sp;

                // add prototype overrides
                if (px) {
                    util.mix(rp, px);
                }

                // add object overrides
                if (sx) {
                    util.mix(r, sx);
                }

                return r;
            },

            /**
             * Creates a deep copy of a plain object or array. Others are returned untouched.
             * @param input
             * @member util
             * @param {Function} [filter] filter function
             * @return {Object} the new cloned object
             * refer: http://www.w3.org/TR/html5/common-dom-interfaces.html#safe-passing-of-structured-data
             */
            clone: function (input, filter) {
                // 稍微改改就和规范一样了 :)
                // Let memory be an association list of pairs of objects,
                // initially empty. This is used to handle duplicate references.
                // In each pair of objects, one is called the source object
                // and the other the destination object.
                var structured;
                if (typeof filter === 'object') {
                    structured = filter.structured;
                    filter = filter.filter;
                }
                if (structured === undef) {
                    structured = true;
                }
                var memory;
                if (structured) {
                    memory = {};
                }
                var ret = cloneInternal(input, filter, memory, structured);
                if (structured) {
                    util.each(memory, function (v) {
                        // 清理在源对象上做的标记
                        v = v.input;
                        if (v[CLONE_MARKER]) {
                            try {
                                delete v[CLONE_MARKER];
                            } catch (e) {
                                v[CLONE_MARKER] = undef;
                            }
                        }
                    });
                }
                memory = null;
                return ret;
            }

        });

        function Empty() {
        }

        function createObject(proto, constructor) {
            var newProto;
            if (objectCreate) {
                newProto = objectCreate(proto);
            } else {
                Empty.prototype = proto;
                newProto = new Empty();
            }
            newProto.constructor = constructor;
            return newProto;
        }

        function mix(r, s) {
            for (var i in s) {
                r[i] = s[i];
            }
        }

        function mixInternal(r, s, ov, wl, deep, cache, structured) {
            if (!s || !r) {
                return r;
            }
            var p;

            // 记录循环标志
            s[MIX_CIRCULAR_DETECTION] = r;

            // 记录被记录了循环标志的对像
            cache.push(s);

            // mix all properties

            for (var key in s) {
                p = key;
                if (p !== MIX_CIRCULAR_DETECTION) {
                    // no hasOwnProperty judge!
                    _mix(p, r, s, ov, wl, deep, cache, structured);
                }
            }

            return r;
        }

        function _mix(p, r, s, ov, wl, deep, cache, structured) {
            // 要求覆盖
            // 或者目的不存在
            // 或者深度mix
            if (ov || !(p in r) || deep) {
                var target = r[p],
                    src = s[p];
                // prevent never-end loop
                if (target === src) {
                    // util.mix({},{x:undef})
                    if (target === undef) {
                        r[p] = target;
                    }
                    return;
                }
                if (wl) {
                    src = wl.call(s, p, src);
                }
                // 来源是数组和对象，并且要求深度 mix
                if (deep && src && (util.isArray(src) || util.isPlainObject(src))) {
                    if (structured && src[MIX_CIRCULAR_DETECTION]) {
                        r[p] = src[MIX_CIRCULAR_DETECTION];
                    } else {
                        // 目标值为对象或数组，直接 mix
                        // 否则 新建一个和源值类型一样的空数组/对象，递归 mix
                        var clone = target && (util.isArray(target) || util.isPlainObject(target)) ?
                            target :
                            (util.isArray(src) ? [] : {});
                        r[p] = clone;
                        mixInternal(clone, src, ov, wl, true, cache, structured);
                    }
                } else if (src !== undef && (ov || !(p in r))) {
                    r[p] = src;
                }
            }
        }

        function cloneInternal(input, f, memory, structured) {
            var destination = input;
            var isArray, isPlainObject, k, stamp;

            if (!input) {
                return destination;
            }

            // If input is the source object of a pair of objects in memory,
            // then return the destination object in that pair of objects .
            // and abort these steps.
            if (structured && input[CLONE_MARKER]) {
                // 对应的克隆后对象
                return memory[input[CLONE_MARKER]].destination;
            } else if (typeof input === 'object') {
                // 引用类型要先记录
                var Constructor = input.constructor;
                if (util.inArray(Constructor, [Boolean, String, Number, Date, RegExp])) {
                    destination = new Constructor(input.valueOf());
                } else if ((isArray = util.isArray(input))) {
                    // ImageData , File, Blob , FileList .. etc
                    destination = f ? util.filter(input, f) : input.concat();
                } else if ((isPlainObject = util.isPlainObject(input))) {
                    destination = {};
                }
                if (structured) {
                    // Add a mapping from input (the source object)
                    // to output (the destination object) to memory.
                    // 做标记
                    // stamp can not be
                    input[CLONE_MARKER] = (stamp = util.guid('c'));
                    // 存储源对象以及克隆后的对象
                    memory[stamp] = {destination: destination, input: input};
                }
            }
            // If input is an Array object or an Object object,
            // then, for each enumerable property in input,
            // add a new property to output having the same name,
            // and having a value created from invoking the internal structured cloning algorithm recursively
            // with the value of the property as the 'input' argument and memory as the 'memory' argument.
            // The order of the properties in the input and output objects must be the same.

            // clone it
            if (isArray) {
                for (var i = 0; i < destination.length; i++) {
                    destination[i] = cloneInternal(destination[i], f, memory, structured);
                }
            } else if (isPlainObject) {
                for (k in input) {
                    if (k !== CLONE_MARKER &&
                        (!f || (f.call(input, input[k], k, input) !== false))) {
                        destination[k] = cloneInternal(input[k], f, memory, structured);
                    }
                }
            }

            return destination;
        }
    }, {"./base": 37}],
    41: [function (require, module, exports) {
        /**
         * utilities for dealing with query strings.
         * conforms to nodejs api.
         * @author yiminghe@gmail.com
         */
        var util = require('./base');
        var querystring = require('querystring');

        util.mix(util, {

            param: querystring.stringify,

            unparam: querystring.parse
        });
    }, {"./base": 37, "querystring": 26}],
    42: [function (require, module, exports) {
        /**
         * @ignore
         * string utilities of lang
         * @author yiminghe@gmail.com
         */

        var util = require('./base');

        var undef;
// IE doesn't include non-breaking-space (0xa0) in their \s character
// class (as required by section 7.2 of the ECMAScript spec), we explicitly
// include it in the regexp to enforce consistent cross-browser behavior.
        var SUBSTITUTE_REG = /\\?\{([^{}]+)\}/g,
            EMPTY = '';

        var trim = String.prototype.trim;

        var RE_DASH = /-([a-z])/ig;

        function upperCase() {
            return arguments[1].toUpperCase();
        }

        util.mix(util, {
            /**
             * Removes the whitespace from the beginning and end of a string.
             * @method
             * @member util
             */
            trim: function (str) {
                return str == null ? EMPTY : trim.call(str);
            },

            /**
             * test whether a string start with a specified substring
             * @param {String} str the whole string
             * @param {String} prefix a specified substring
             * @return {Boolean} whether str start with prefix
             * @member util
             */
            startsWith: function (str, prefix) {
                return str.lastIndexOf(prefix, 0) === 0;
            },

            /**
             * test whether a string end with a specified substring
             * @param {String} str the whole string
             * @param {String} suffix a specified substring
             * @return {Boolean} whether str end with suffix
             * @member util
             */
            endsWith: function (str, suffix) {
                var ind = str.length - suffix.length;
                return ind >= 0 && str.indexOf(suffix, ind) === ind;
            },

            camelCase: function (name) {
                if (name.indexOf('-') === -1) {
                    return name;
                }
                return name.replace(RE_DASH, upperCase);
            },

            /**
             * Call encodeURIComponent to encode a url component
             * @param {String} s part of url to be encoded.
             * @return {String} encoded url part string.
             * @member util
             */
            urlEncode: function (s) {
                return encodeURIComponent(String(s));
            },

            /**
             * Call decodeURIComponent to decode a url component
             * and replace '+' with space.
             * @param {String} s part of url to be decoded.
             * @return {String} decoded url part string.
             * @member util
             */
            urlDecode: function (s) {
                return decodeURIComponent(s.replace(/\+/g, ' '));
            },

            /** uppercase first character.
             * @member util
             * @param s
             * @return {String}
             */
            ucfirst: function (s) {
                s += '';
                return s.charAt(0).toUpperCase() + s.substring(1);
            },

            /**
             * Substitutes keywords in a string using an object/array.
             * Removes undef keywords and ignores escaped keywords.
             * @param {String} str template string
             * @param {Object} o json data
             * @member util
             * @param {RegExp} [regexp] to match a piece of template string
             */
            substitute: function (str, o, regexp) {
                if (typeof str !== 'string' || !o) {
                    return str;
                }

                return str.replace(regexp || SUBSTITUTE_REG, function (match, name) {
                    if (match.charAt(0) === '\\') {
                        return match.slice(1);
                    }
                    return (o[name] === undef) ? EMPTY : o[name];
                });
            }

        });
    }, {"./base": 37}],
    43: [function (require, module, exports) {
        /**
         * @ignore
         * type judgement
         * @author yiminghe@gmail.com, lifesinger@gmail.com
         */
        var util = require('./base');
// [[Class]] -> type pairs
        var class2type = {},
            FALSE = false,
            undef,
            noop = util.noop,
            OP = Object.prototype,
            toString = OP.toString;

        function hasOwnProperty(o, p) {
            return OP.hasOwnProperty.call(o, p);
        }

        util.mix(util, {
            /**
             * Determine the internal JavaScript [[Class]] of an object.
             * @member util
             */
            type: function (o) {
                return o == null ?
                    String(o) :
                    class2type[toString.call(o)] || 'object';
            },

            /**
             * Checks to see if an object is a plain object (created using '{}'
             * or 'new Object()' but not 'new FunctionClass()').
             * @member util
             */
            isPlainObject: function (obj) {
                // Must be an Object.
                // Because of IE, we also have to check the presence of the constructor property.
                // Make sure that Dom nodes and window objects don't pass through, as well
                if (!obj || util.type(obj) !== 'object' || obj.nodeType ||
                    /*jshint eqeqeq:false*/
                    // must == for ie8
                    obj.window == obj) {
                    return FALSE;
                }

                var key, objConstructor;

                try {
                    // Not own constructor property must be Object
                    if ((objConstructor = obj.constructor) && !hasOwnProperty(obj, 'constructor') && !hasOwnProperty(objConstructor.prototype, 'isPrototypeOf')) {
                        return FALSE;
                    }
                } catch (e) {
                    // IE8,9 Will throw exceptions on certain host objects
                    return FALSE;
                }

                // Own properties are enumerated firstly, so to speed up,
                // if last one is own, then all properties are own.
                /*jshint noempty:false*/
                for (key in obj) {
                }

                return ((key === undef) || hasOwnProperty(obj, key));
            }
        });

        if ('@DEBUG@') {
            util.mix(util, {
                /**
                 * test whether o is boolean
                 * @method
                 * @param  o
                 * @return {Boolean}
                 * @member util
                 */
                isBoolean: noop,

                /**
                 * test whether o is number
                 * @method
                 * @param  o
                 * @return {Boolean}
                 * @member util
                 */
                isNumber: noop,

                /**
                 * test whether o is String
                 * @method
                 * @param  o
                 * @return {Boolean}
                 * @member util
                 */
                isString: noop,

                /**
                 * test whether o is function
                 * @method
                 * @param  o
                 * @return {Boolean}
                 * @member util
                 */
                isFunction: noop,

                /**
                 * test whether o is Array
                 * @method
                 * @param  o
                 * @return {Boolean}
                 * @member util
                 */
                isArray: noop,

                /**
                 * test whether o is Date
                 * @method
                 * @param  o
                 * @return {Boolean}
                 * @member util
                 */
                isDate: noop,

                /**
                 * test whether o is RegExp
                 * @method
                 * @param  o
                 * @return {Boolean}
                 * @member util
                 */
                isRegExp: noop,

                /**
                 * test whether o is Object
                 * @method
                 * @param  o
                 * @return {Boolean}
                 * @member util
                 */
                isObject: noop,

                isNull: noop,

                isUndefined: noop
            });
        }

        var types = 'Boolean Number String Function Date RegExp Object Array Null Undefined'.split(' ');
        for (var i = 0; i < types.length; i++) {
            /*jshint loopfunc:true*/
            (function (name, lc) {
                // populate the class2type map
                class2type['[object ' + name + ']'] = (lc = name.toLowerCase());

                // add isBoolean/isNumber/...
                util['is' + name] = function (o) {
                    return util.type(o) === lc;
                };
            })(types[i], i);
        }

        util.isArray = Array.isArray || util.isArray;
    }, {"./base": 37}],
    44: [function (require, module, exports) {
        /**
         * this code can only run at browser environment
         * @ignore
         * @author lifesinger@gmail.com, yiminghe@gmail.com
         */

        var util = require('./base');
        var readyRE = /complete|loaded|interactive/;
        var win = typeof window !== 'undefined' ? window : {},
            RE_NOT_WHITESPACE = /\S/;

        util.mix(util, {
            /**
             * A crude way of determining if an object is a window
             * @member util
             */
            isWindow: function (obj) {
                // must use == for ie8
                /*jshint eqeqeq:false*/
                return obj != null && obj == obj.window;
            },

            /**
             * Specify a function to execute when the Dom is fully loaded.
             * from zepto http://gitlab.alibaba-inc.com/tb/kimi/blob/master/src/zepto.js
             * @param fn {Function} A function to execute after the Dom is ready
             * @chainable
             * @member util
             */
            ready: function (fn) {
                // need to check if document.body exists for IE as that browser reports
                // document ready when it hasn't yet created the body element
                if (readyRE.test(document.readyState) && document.body) {
                    fn();
                } else {
                    document.addEventListener('DOMContentLoaded', function () {
                        fn();
                    }, false);
                }
            },

            /**
             * Evaluates a script in a global context.
             * @member util
             */
            globalEval: function (data) {
                if (data && RE_NOT_WHITESPACE.test(data)) {
                    // http://weblogs.java.net/blog/driscoll/archive/2009/09/08/eval-javascript-global-context
                    // http://msdn.microsoft.com/en-us/library/ie/ms536420(v=vs.85).aspx always return null
                    /*jshint evil:true*/
                    if (win.execScript) {
                        win.execScript(data);
                    } else {
                        (function (data) {
                            win['eval'].call(win, data);
                        })(data);
                    }
                }
            }

        });
    }, {"./base": 37}],
    45: [function (require, module, exports) {
        module.exports = require('./lib/extra');
    }, {"./lib/extra": 46}],
    46: [function (require, module, exports) {
        var util = require('util-base');

        require('./extra/array');
        require('./extra/escape');
        require('./extra/function');
        require('./extra/object');
        require('./extra/web');

        module.exports = util;

    }, {
        "./extra/array": 47,
        "./extra/escape": 48,
        "./extra/function": 49,
        "./extra/object": 50,
        "./extra/web": 51,
        "util-base": 34
    }],
    47: [function (require, module, exports) {
        /**
         * @ignore
         * array utilities of lang
         * @author yiminghe@gmail.com
         */

        var undef,
            AP = Array.prototype,
            lastIndexOf = AP.lastIndexOf,
            every = AP.every,
            some = AP.some,
            util = require('util-base');

        util.mix(util, {
            /**
             * Returns the index of the last item in the array
             * that contains the specified value, -1 if the
             * value isn't found.
             * @method
             * @param item individual item to be searched
             * @param {Array} arr the array of items where item will be search
             * @return {number} item's last index in array
             * @member util
             * * Feature  Chrome  Firefox (Gecko) Internet Explorer   Opera   Safari
             Basic support  (Yes)   1.5 (1.8)   9              (Yes)   (Yes)
             */
            lastIndexOf: function (item, arr, fromIndex) {
                return fromIndex === undef ?
                    lastIndexOf.call(arr, item) :
                    lastIndexOf.call(arr, item, fromIndex);
            },

            /**
             * Returns a copy of the array with the duplicate entries removed
             * @param a {Array} the array to find the subset of unique for
             * @param [override] {Boolean} if override is TRUE, util.unique([a, b, a]) => [b, a].
             * if override is FALSE, util.unique([a, b, a]) => [a, b]
             * @return {Array} a copy of the array with duplicate entries removed
             * @member util
             */
            unique: function (a, override) {
                var b = a.slice();
                if (override) {
                    b.reverse();
                }
                var i = 0,
                    n,
                    item;

                while (i < b.length) {
                    item = b[i];
                    while ((n = util.lastIndexOf(item, b)) !== i) {
                        b.splice(n, 1);
                    }
                    i += 1;
                }

                if (override) {
                    b.reverse();
                }
                return b;
            },

            /**
             * Tests whether all elements in the array pass the test implemented by the provided function.
             * @method
             * @param arr {Array} the array to iterate
             * @param callback {Function} the function to execute on each item
             * @param [context] {Object} optional context object
             * @member util
             * @return {Boolean} whether all elements in the array pass the test implemented by the provided function.
             */
            every: function (arr, fn, context) {
                return every.call(arr, fn, context || this);
            },

            /**
             * Tests whether some element in the array passes the test implemented by the provided function.
             * @method
             * @param arr {Array} the array to iterate
             * @param callback {Function} the function to execute on each item
             * @param [context] {Object} optional context object
             * @member util
             * @return {Boolean} whether some element in the array passes the test implemented by the provided function.
             */
            some: function (arr, fn, context) {
                return some.call(arr, fn, context || this);
            }
        });
    }, {"util-base": 34}],
    48: [function (require, module, exports) {
        /**
         * @ignore
         * escape of lang
         * @author yiminghe@gmail.com
         */

        var util = require('util-base');
// IE doesn't include non-breaking-space (0xa0) in their \s character
// class (as required by section 7.2 of the ECMAScript spec), we explicitly
// include it in the regexp to enforce consistent cross-browser behavior.
        var HEX_BASE = 16;

        var EMPTY = '',
// FALSE = false,
// http://www.owasp.org/index.php/XSS_(Cross_Site_Scripting)_Prevention_Cheat_Sheet
// http://wonko.com/post/html-escaping
            htmlEntities = {
                '&amp;': '&',
                '&gt;': '>',
                '&lt;': '<',
                '&#x60;': '`',
                '&#x2F;': '/',
                '&quot;': '"',
                /*jshint quotmark:false*/
                '&#x27;': "'"
            },
            reverseEntities = {},
            escapeHtmlReg,
            unEscapeHtmlReg,
            possibleEscapeHtmlReg = /[&<>"'`]/,
// - # $ ^ * ( ) + [ ] { } | \ , . ?
            escapeRegExp = /[\-#$\^*()+\[\]{}|\\,.?\s]/g;
        (function () {
            for (var k in htmlEntities) {
                reverseEntities[htmlEntities[k]] = k;
            }
        })();

        escapeHtmlReg = getEscapeReg();
        unEscapeHtmlReg = getUnEscapeReg();

        function getEscapeReg() {
            var str = EMPTY;
            for (var e in htmlEntities) {
                var entity = htmlEntities[e];
                str += entity + '|';
            }
            str = str.slice(0, -1);
            escapeHtmlReg = new RegExp(str, 'g');
            return escapeHtmlReg;
        }

        function getUnEscapeReg() {
            var str = EMPTY;
            for (var e in reverseEntities) {
                var entity = reverseEntities[e];
                str += entity + '|';
            }
            str += '&#(\\d{1,5});';
            unEscapeHtmlReg = new RegExp(str, 'g');
            return unEscapeHtmlReg;
        }

        util.mix(util, {
            /**
             * get escaped string from html.
             * only escape
             *      & > < ` / " '
             * refer:
             *
             * [http://yiminghe.javaeye.com/blog/788929](http://yiminghe.javaeye.com/blog/788929)
             *
             * [http://wonko.com/post/html-escaping](http://wonko.com/post/html-escaping)
             * @param str {string} text2html show
             * @member util
             * @return {String} escaped html
             */
            escapeHtml: function (str) {
                if (!str && str !== 0) {
                    return '';
                }
                str = '' + str;
                if (!possibleEscapeHtmlReg.test(str)) {
                    return str;
                }
                return (str + '').replace(escapeHtmlReg, function (m) {
                    return reverseEntities[m];
                });
            },

            /**
             * get escaped regexp string for construct regexp.
             * @param str
             * @member util
             * @return {String} escaped regexp
             */
            escapeRegExp: function (str) {
                return str.replace(escapeRegExp, '\\$&');
            },

            /**
             * un-escape html to string.
             * only unescape
             *      &amp; &lt; &gt; &#x60; &#x2F; &quot; &#x27; &#\d{1,5}
             * @param str {string} html2text
             * @member util
             * @return {String} un-escaped html
             */
            unEscapeHtml: function (str) {
                return str.replace(unEscapeHtmlReg, function (m, n) {
                    return htmlEntities[m] || String.fromCharCode(+n);
                });
            },

            /**
             * frequently used in taobao cookie about nick
             * @member KISSY
             * @return {String} un-unicode string.
             */
            fromUnicode: function (str) {
                return str.replace(/\\u([a-f\d]{4})/ig, function (m, u) {
                    return String.fromCharCode(parseInt(u, HEX_BASE));
                });
            }
        });

        util.escapeHTML = util.escapeHtml;
        util.unEscapeHTML = util.unEscapeHtml;
    }, {"util-base": 34}],
    49: [function (require, module, exports) {
        /**
         * @ignore
         * function utilities of lang
         * @author yiminghe@gmail.com
         */

        var util = require('util-base');

        util.mix(util, {

            /**
             * Throttles a call to a method based on the time between calls.
             * @param {Function} fn The function call to throttle.
             * @param {Object} [context] context fn to run
             * @param {Number} [ms] The number of milliseconds to throttle the method call.
             * Passing a -1 will disable the throttle. Defaults to 150.
             * @return {Function} Returns a wrapped function that calls fn throttled.
             * @member util
             */
            throttle: function (fn, ms, context) {
                ms = ms || 150;

                if (ms === -1) {
                    return function () {
                        fn.apply(context || this, arguments);
                    };
                }

                var last = util.now();

                return function () {
                    var now = util.now();
                    if (now - last > ms) {
                        last = now;
                        fn.apply(context || this, arguments);
                    }
                };
            }

        });
    }, {"util-base": 34}],
    50: [function (require, module, exports) {
        (function (global) {
            /**
             * @ignore
             * object utilities of lang
             * @author yiminghe@gmail.com
             */

            var util = require('util-base');
            var undef;
            var host = typeof window === 'undefined' ? global : window;
            var COMPARE_MARKER = '__~ks_compared';

            function hasKey(obj, keyName) {
                return (obj !== null && obj !== undef) && obj[keyName] !== undef;
            }

            function cleanAndReturn(a, b, ret) {
                delete a[COMPARE_MARKER];
                delete b[COMPARE_MARKER];
                return ret;
            }

            function compareObjects(a, b) {
                // avoid circular reference
                if (a[COMPARE_MARKER] === b && b[COMPARE_MARKER] === a) {
                    return true;
                }
                a[COMPARE_MARKER] = b;
                b[COMPARE_MARKER] = a;
                for (var property in b) {
                    if (!hasKey(a, property) && hasKey(b, property)) {
                        return cleanAndReturn(a, b, false);
                        // mismatchKeys.push('expected has key ' + property + '", but missing from actual.');
                    }
                }
                for (property in a) {
                    if (!hasKey(b, property) && hasKey(a, property)) {
                        return cleanAndReturn(a, b, false);
                        // mismatchKeys.push('expected missing key "' + property + '", but present in actual.');
                    }
                }
                for (property in b) {
                    if (property === COMPARE_MARKER) {
                        continue;
                    }
                    if (!util.equals(a[property], b[property])) {
                        return cleanAndReturn(a, b, false);
//                mismatchValues.push('"' + property + '" was "' +
//                    (b[property] ? (b[property].toString()) : b[property]) +
//                    '" in expected, but was "' +
//                    (a[property] ? (a[property].toString()) : a[property]) + '" in actual.');
                    }
                }
                if (util.isArray(a) && util.isArray(b) && a.length !== b.length) {
                    return cleanAndReturn(a, b, false);
                    // mismatchValues.push('arrays were not the same length');
                }
                return cleanAndReturn(a, b, true);
            }

            mix(util, {
                /**
                 * Checks to see whether two object are equals.
                 * @param a
                 * @param b
                 * @member util
                 */
                equals: function (a, b) {
                    if (a === b) {
                        return true;
                    }
                    if (a === undef || a === null || b === undef || b === null) {
                        // need type coercion
                        return a == null && b == null;
                    }
                    if (a instanceof Date && b instanceof Date) {
                        return a.getTime() === b.getTime();
                    }
                    if (typeof a === 'string' && typeof b === 'string') {
                        return (a === b);
                    }
                    if (typeof a === 'number' && typeof b === 'number') {
                        return (a === b);
                    }
                    if (typeof a === 'object' && typeof b === 'object') {
                        return compareObjects(a, b);
                    }
                    // Straight check
                    return (a === b);
                },

                /**
                 * Returns the namespace specified and creates it if it doesn't exist. Be careful
                 * when naming packages. Reserved words may work in some browsers and not others.
                 *
                 *      @example
                 *      util.namespace('https://g.alicdn.com/kissy/k/6.2.4/app.Shop',a); // returns a.app.Shop
                 *      util.namespace('https://g.alicdn.com/kissy/k/6.2.4/app.Shop'); // returns app.Shop
                 *
                 * @return {Object}  A reference to the last namespace object created
                 * @member util
                 */
                namespace: function (name, holder) {
                    var o, j, p;
                    p = name.split('.');
                    o = holder || host;
                    for (j = 0; j < p.length; ++j) {
                        o = o[p[j]] = o[p[j]] || {};
                    }
                    return o;
                }
            });

            function mix(r, s) {
                for (var i in s) {
                    r[i] = s[i];
                }
            }

        }).call(this, typeof self !== "undefined" ? self : typeof window !== "undefined" ? window : {})
    }, {"util-base": 34}],
    51: [function (require, module, exports) {
        /**
         * this code can only run at browser environment
         * @ignore
         * @author lifesinger@gmail.com, yiminghe@gmail.com
         */

        var util = require('util-base');
        var win = typeof window !== 'undefined' ? window : {},
            doc = win.document || {},
            EMPTY = '',
            POLL_RETIRES = 500,
// The poll interval in milliseconds.
            POLL_INTERVAL = 40,
// #id or id
            RE_ID_STR = /^#?([\w-]+)$/;

        util.mix(util, {

            /**
             * get xml representation of data
             * @param {String} data
             * @member util
             */
            parseXml: function (data) {
                // already a xml
                if (data.documentElement) {
                    return data;
                }
                var xml;
                // Standard
                if (win.DOMParser) {
                    xml = new DOMParser().parseFromString(data, 'text/xml');
                } else { // IE
                    /*global ActiveXObject*/
                    xml = new ActiveXObject('Microsoft.XMLDOM');
                    xml.async = false;
                    xml.loadXML(data);
                }
                if (!xml || !xml.documentElement || xml.getElementsByTagName('parsererror').length) {
                    throw new Error('Invalid XML: ' + data);
                }
                return xml;
            },

            /**
             * Executes the supplied callback when the item with the supplied id is found.
             * @param id {String} The id of the element, or an array of ids to look for.
             * @param fn {Function} What to execute when the element is found.
             * @member util
             */
            available: function (id, fn) {
                id = (id + EMPTY).match(RE_ID_STR)[1];
                var retryCount = 1;
                var timer = util.later(function () {
                    if (++retryCount > POLL_RETIRES) {
                        timer.cancel();
                        return;
                    }
                    var node = doc.getElementById(id);
                    if (node) {
                        fn(node);
                        timer.cancel();
                    }
                }, POLL_INTERVAL, true);
            }
        });

        util.parseXML = util.parseXml;
    }, {"util-base": 34}],
    52: [function (require, module, exports) {
        arguments[4][45][0].apply(exports, arguments)
    }, {"./lib/extra": 53}],
    53: [function (require, module, exports) {
        var util = require('./extra/base');

        require('./extra/object');

        module.exports = util;
    }, {"./extra/base": 54, "./extra/object": 55}],
    54: [function (require, module, exports) {
        var util = require('../main');

        module.exports = util;
    }, {"../main": 56}],
    55: [function (require, module, exports) {
        var util = require('./base');

// bug in native ie678, not in simulated ie9
        var hasEnumBug = !({toString: 1}.propertyIsEnumerable('toString'));
        var enumProperties = [
            'constructor',
            'hasOwnProperty',
            'isPrototypeOf',
            'propertyIsEnumerable',
            'toString',
            'toLocaleString',
            'valueOf'
        ];

        util.keys = Object.keys || function (o) {
            var result = [], p, i;

            for (p in o) {
                // util.keys(new XX())
                if (o.hasOwnProperty(p)) {
                    result.push(p);
                }
            }

            if (hasEnumBug) {
                for (i = enumProperties.length - 1; i >= 0; i--) {
                    p = enumProperties[i];
                    if (o.hasOwnProperty(p)) {
                        result.push(p);
                    }
                }
            }

            return result;
        };

    }, {"./base": 54}],
    56: [function (require, module, exports) {
        var util = require('util-base');

        require('./main/array');
        require('./main/escape');
        require('./main/json');
        require('./main/string');
        require('./main/web');

        module.exports = util;

    }, {
        "./main/array": 57,
        "./main/escape": 58,
        "./main/json": 59,
        "./main/string": 60,
        "./main/web": 61,
        "util-base": 34
    }],
    57: [function (require, module, exports) {
        /**
         * @ignore
         * array utilities of lang
         * @author yiminghe@gmail.com
         */

        var TRUE = true,
            undef,
            AP = Array.prototype,
            indexOf = AP.indexOf,
            lastIndexOf = AP.lastIndexOf,
            filter = AP.filter,
            every = AP.every,
            some = AP.some,
            util = require('util-base'),
            map = AP.map,
            reduce = AP.reduce,
            FALSE = false;

        util.mix(util, {

            indexOf: indexOf ? util.indexOf :
                function (item, arr, fromIndex) {
                    for (var i = fromIndex || 0, len = arr.length; i < len; ++i) {
                        if (arr[i] === item) {
                            return i;
                        }
                    }
                    return -1;
                },

            /**
             * Returns the index of the last item in the array
             * that contains the specified value, -1 if the
             * value isn't found.
             * @method
             * @param item individual item to be searched
             * @param {Array} arr the array of items where item will be search
             * @return {number} item's last index in array
             * @member util
             */
            lastIndexOf: (lastIndexOf) ? util.lastIndexOf :
                function (item, arr, fromIndex) {
                    if (fromIndex === undef) {
                        fromIndex = arr.length - 1;
                    }
                    for (var i = fromIndex; i >= 0; i--) {
                        if (arr[i] === item) {
                            break;
                        }
                    }
                    return i;
                },

            /**
             * Executes the supplied function on each item in the array.
             * Returns a new array containing the items that the supplied
             * function returned TRUE for.
             * @member util
             * @method
             * @param arr {Array} the array to iterate
             * @param fn {Function} the function to execute on each item
             * @param [context] {Object} optional context object
             * @return {Array} The items on which the supplied function returned TRUE.
             * If no items matched an empty array is returned.
             */
            filter: filter ? util.filter :
                function (arr, fn, context) {
                    var ret = [];
                    util.each(arr, function (item, i, arr) {
                        if (fn.call(context || this, item, i, arr)) {
                            ret.push(item);
                        }
                    });
                    return ret;
                },

            /**
             * Executes the supplied function on each item in the array.
             * Returns a new array containing the items that the supplied
             * function returned for.
             * @method
             * @param arr {Array} the array to iterate
             * @param fn {Function} the function to execute on each item
             * @param [context] {Object} optional context object
             * refer: https://developer.mozilla.org/en/JavaScript/Reference/Global_Objects/Array/map
             * @return {Array} The items on which the supplied function returned
             * @member util
             */
            map: map ? util.map :

                function (arr, fn, context) {
                    var len = arr.length,
                        res = new Array(len);
                    for (var i = 0; i < len; i++) {
                        var el = typeof arr === 'string' ? arr.charAt(i) : arr[i];
                        if (el ||
                            //ie<9 in invalid when typeof arr == string
                            i in arr) {
                            res[i] = fn.call(context || this, el, i, arr);
                        }
                    }
                    return res;
                },

            /**
             * Executes the supplied function on each item in the array.
             * Returns a value which is accumulation of the value that the supplied
             * function returned.
             *
             * @param arr {Array} the array to iterate
             * @param callback {Function} the function to execute on each item
             * @param initialValue {number} optional context object
             * refer: https://developer.mozilla.org/en/JavaScript/Reference/Global_Objects/array/reduce
             * @return {Array} The items on which the supplied function returned
             * @member util
             */
            reduce: reduce ? util.reduce :

                function (arr, callback, initialValue) {
                    var len = arr.length;
                    if (typeof callback !== 'function') {
                        throw new TypeError('callback is not function!');
                    }

                    // no value to return if no initial value and an empty array
                    if (len === 0 && arguments.length === 2) {
                        throw new TypeError('arguments invalid');
                    }

                    var k = 0;
                    var accumulator;
                    if (arguments.length >= 3) {
                        accumulator = initialValue;
                    } else {
                        do {
                            if (k in arr) {
                                accumulator = arr[k++];
                                break;
                            }

                            // if array contains no values, no initial value to return
                            k += 1;
                            if (k >= len) {
                                throw new TypeError();
                            }
                        }
                        while (TRUE);
                    }

                    while (k < len) {
                        if (k in arr) {
                            accumulator = callback.call(undef, accumulator, arr[k], k, arr);
                        }
                        k++;
                    }

                    return accumulator;
                },

            /**
             * Tests whether all elements in the array pass the test implemented by the provided function.
             * @method
             * @param arr {Array} the array to iterate
             * @param callback {Function} the function to execute on each item
             * @param [context] {Object} optional context object
             * @member util
             * @return {Boolean} whether all elements in the array pass the test implemented by the provided function.
             */
            every: every ? util.every :
                function (arr, fn, context) {
                    var len = arr && arr.length || 0;
                    for (var i = 0; i < len; i++) {
                        if (i in arr && !fn.call(context || this, arr[i], i, arr)) {
                            return FALSE;
                        }
                    }
                    return TRUE;
                },

            /**
             * Tests whether some element in the array passes the test implemented by the provided function.
             * @method
             * @param arr {Array} the array to iterate
             * @param callback {Function} the function to execute on each item
             * @param [context] {Object} optional context object
             * @member util
             * @return {Boolean} whether some element in the array passes the test implemented by the provided function.
             */
            some: some ? util.some :
                function (arr, fn, context) {
                    var len = arr && arr.length || 0;
                    for (var i = 0; i < len; i++) {
                        if (i in arr && fn.call(context || this, arr[i], i, arr)) {
                            return TRUE;
                        }
                    }
                    return FALSE;
                }
        });

    }, {"util-base": 34}],
    58: [function (require, module, exports) {
        /**
         * @ignore
         * escape of lang
         * @author yiminghe@gmail.com
         */

        var util = require('util-base');
// IE doesn't include non-breaking-space (0xa0) in their \s character
// class (as required by section 7.2 of the ECMAScript spec), we explicitly
// include it in the regexp to enforce consistent cross-browser behavior.
        var SEP = '&';
        var EQ = '=';
        var TRUE = true;
        var HEX_BASE = 16;

        var EMPTY = '',
// FALSE = false,
// http://www.owasp.org/index.php/XSS_(Cross_Site_Scripting)_Prevention_Cheat_Sheet
// http://wonko.com/post/html-escaping
            htmlEntities = {
                '&amp;': '&',
                '&gt;': '>',
                '&lt;': '<',
                '&#x60;': '`',
                '&#x2F;': '/',
                '&quot;': '"',
                /*jshint quotmark:false*/
                '&#x27;': "'"
            },
            reverseEntities = {},
            escapeHtmlReg,
            unEscapeHtmlReg,
            possibleEscapeHtmlReg = /[&<>"'`]/,
// - # $ ^ * ( ) + [ ] { } | \ , . ?
            escapeRegExp = /[\-#$\^*()+\[\]{}|\\,.?\s]/g;
        (function () {
            for (var k in htmlEntities) {
                reverseEntities[htmlEntities[k]] = k;
            }
        })();

        function isValidParamValue(val) {
            var t = typeof val;
            // If the type of val is null, undefined, number, string, boolean, return TRUE.
            return val === null || (t !== 'object' && t !== 'function');
        }

        function getEscapeReg() {
            var str = EMPTY;
            for (var e in htmlEntities) {
                var entity = htmlEntities[e];
                str += entity + '|';
            }
            str = str.slice(0, -1);
            escapeHtmlReg = new RegExp(str, 'g');
            return escapeHtmlReg;
        }

        function getUnEscapeReg() {
            var str = EMPTY;
            for (var e in reverseEntities) {
                var entity = reverseEntities[e];
                str += entity + '|';
            }
            str += '&#(\\d{1,5});';
            unEscapeHtmlReg = new RegExp(str, 'g');
            return unEscapeHtmlReg;
        }

        escapeHtmlReg = getEscapeReg();
        unEscapeHtmlReg = getUnEscapeReg();

        util.mix(util, {
            /**
             * get escaped string from html.
             * only escape
             *      & > < ` / " '
             * refer:
             *
             * [http://yiminghe.javaeye.com/blog/788929](http://yiminghe.javaeye.com/blog/788929)
             *
             * [http://wonko.com/post/html-escaping](http://wonko.com/post/html-escaping)
             * @param str {string} text2html show
             * @member util
             * @return {String} escaped html
             */
            escapeHtml: function (str) {
                if (!str && str !== 0) {
                    return '';
                }
                str = '' + str;
                if (!possibleEscapeHtmlReg.test(str)) {
                    return str;
                }
                return (str + '').replace(escapeHtmlReg, function (m) {
                    return reverseEntities[m];
                });
            },

            /**
             * get escaped regexp string for construct regexp.
             * @param str
             * @member util
             * @return {String} escaped regexp
             */
            escapeRegExp: function (str) {
                return str.replace(escapeRegExp, '\\$&');
            },

            /**
             * un-escape html to string.
             * only unescape
             *      &amp; &lt; &gt; &#x60; &#x2F; &quot; &#x27; &#\d{1,5}
             * @param str {string} html2text
             * @member util
             * @return {String} un-escaped html
             */
            unEscapeHtml: function (str) {
                return str.replace(unEscapeHtmlReg, function (m, n) {
                    return htmlEntities[m] || String.fromCharCode(+n);
                });
            },

            /**
             * Creates a serialized string of an array or object.
             *
             * for example:
             *     @example
             *     {foo: 1, bar: 2}    // -> 'foo=1&bar=2'
             *     {foo: 1, bar: [2, 3]}    // -> 'foo=1&bar=2&bar=3'
             *     {foo: '', bar: 2}    // -> 'foo=&bar=2'
             *     {foo: undefined, bar: 2}    // -> 'foo=undefined&bar=2'
             *     {foo: TRUE, bar: 2}    // -> 'foo=TRUE&bar=2'
             *
             * @param {Object} o json data
             * @param {String} [sep='&'] separator between each pair of data
             * @param {String} [eq='='] separator between key and value of data
             * @param {Boolean} [serializeArray=true] whether add '[]' to array key of data
             * @return {String}
             * @member KISSY
             */
            param: function (o, sep, eq, serializeArray) {
                sep = sep || SEP;
                eq = eq || EQ;
                if (serializeArray === undefined) {
                    serializeArray = TRUE;
                }
                var buf = [], key, i, v, len, val,
                    encode = util.urlEncode;
                for (key in o) {

                    val = o[key];
                    key = encode(key);

                    // val is valid non-array value
                    if (isValidParamValue(val)) {
                        buf.push(key);
                        if (val !== undefined) {
                            buf.push(eq, encode(val + EMPTY));
                        }
                        buf.push(sep);
                    } else if (util.isArray(val) && val.length) {
                        // val is not empty array
                        for (i = 0, len = val.length; i < len; ++i) {
                            v = val[i];
                            if (isValidParamValue(v)) {
                                buf.push(key, (serializeArray ? encode('[]') : EMPTY));
                                if (v !== undefined) {
                                    buf.push(eq, encode(v + EMPTY));
                                }
                                buf.push(sep);
                            }
                        }
                    }
                    // ignore other cases, including empty array, Function, RegExp, Date etc.

                }
                buf.pop();
                return buf.join(EMPTY);
            },

            /**
             * Parses a URI-like query string and returns an object composed of parameter/value pairs.
             *
             * for example:
             *      @example
             *      'section=blog&id=45'        // -> {section: 'blog', id: '45'}
             *      'section=blog&tag=js&tag=doc' // -> {section: 'blog', tag: ['js', 'doc']}
             *      'tag=ruby%20on%20rails'        // -> {tag: 'ruby on rails'}
             *      'id=45&raw'        // -> {id: '45', raw: ''}
             * @param {String} str param string
             * @param {String} [sep='&'] separator between each pair of data
             * @param {String} [eq='='] separator between key and value of data
             * @return {Object} json data
             * @member KISSY
             */
            unparam: function (str, sep, eq) {
                if (typeof str !== 'string' || !(str = util.trim(str))) {
                    return {};
                }
                sep = sep || SEP;
                eq = eq || EQ;
                var ret = {},
                    eqIndex,
                    decode = util.urlDecode,
                    pairs = str.split(sep),
                    key, val,
                    i = 0, len = pairs.length;

                for (; i < len; ++i) {
                    eqIndex = pairs[i].indexOf(eq);
                    if (eqIndex === -1) {
                        key = decode(pairs[i]);
                        val = undefined;
                    } else {
                        // remember to decode key!
                        key = decode(pairs[i].substring(0, eqIndex));
                        val = pairs[i].substring(eqIndex + 1);
                        try {
                            val = decode(val);
                        } catch (e) {
                            //logger.error('decodeURIComponent error : ' + val);
                            //logger.error(e);
                        }
                        if (util.endsWith(key, '[]')) {
                            key = key.substring(0, key.length - 2);
                        }
                    }
                    if (key in ret) {
                        if (util.isArray(ret[key])) {
                            ret[key].push(val);
                        } else {
                            ret[key] = [ret[key], val];
                        }
                    } else {
                        ret[key] = val;
                    }
                }
                return ret;
            },

            /**
             * frequently used in taobao cookie about nick
             * @member KISSY
             * @return {String} un-unicode string.
             */
            fromUnicode: function (str) {
                return str.replace(/\\u([a-f\d]{4})/ig, function (m, u) {
                    return String.fromCharCode(parseInt(u, HEX_BASE));
                });
            }
        });

        util.escapeHTML = util.escapeHtml;
        util.unEscapeHTML = util.unEscapeHtml;
    }, {"util-base": 34}],
    59: [function (require, module, exports) {
        var util = require('util-base');
// Json RegExp
        var INVALID_CHARS_REG = /^[\],:{}\s]*$/,
            INVALID_BRACES_REG = /(?:^|:|,)(?:\s*\[)+/g,
            INVALID_ESCAPES_REG = /\\(?:["\\\/bfnrt]|u[\da-fA-F]{4})/g,
            INVALID_TOKENS_REG = /"[^"\\\r\n]*"|true|false|null|-?(?:\d+\.|)\d+(?:[eE][+-]?\d+|)/g;

        util.parseJson = window.JSON && window.JSON.parse ? window.JSON.parse : function (data) {
            if (data === null) {
                return data;
            }
            if (typeof data === 'string') {
                // for ie
                data = util.trim(data);
                if (data) {
                    // from json2
                    if (INVALID_CHARS_REG.test(data.replace(INVALID_ESCAPES_REG, '@')
                        .replace(INVALID_TOKENS_REG, ']')
                        .replace(INVALID_BRACES_REG, ''))) {
                        /*jshint evil:true*/
                        return (new Function('return ' + data))();
                    }
                }
            }
            throw new Error('Invalid Json: ' + data);
        };
    }, {"util-base": 34}],
    60: [function (require, module, exports) {
        /**
         * @ignore
         * string utilities of lang
         * @author yiminghe@gmail.com
         */

        var util = require('util-base');
// IE doesn't include non-breaking-space (0xa0) in their \s character
// class (as required by section 7.2 of the ECMAScript spec), we explicitly
// include it in the regexp to enforce consistent cross-browser behavior.
        var EMPTY = '';

        var RE_TRIM = /^[\s\xa0]+|[\s\xa0]+$/g,
            trim = String.prototype.trim;

        util.mix(util, {

            /**
             * Removes the whitespace from the beginning and end of a string.
             * @method
             * @member util
             */
            trim: trim ? util.trim :
                function (str) {
                    return str === null ? EMPTY : (str + '').replace(RE_TRIM, EMPTY);
                }

        });
    }, {"util-base": 34}],
    61: [function (require, module, exports) {
        /**
         * this code can only run at browser environment
         * @ignore
         * @author lifesinger@gmail.com, yiminghe@gmail.com
         */

        var util = require('util-base');
        var win = typeof window !== 'undefined' ? window : {},
            doc = win.document || {},
            docElem = doc.documentElement,
            domReady = 0,
            callbacks = [],
// The poll interval in milliseconds.
            POLL_INTERVAL = 40,
// #id or id
            standardEventModel = doc.addEventListener,
            supportEvent = doc.attachEvent || standardEventModel,
            DOM_READY_EVENT = 'DOMContentLoaded',
            READY_STATE_CHANGE_EVENT = 'readystatechange',
            LOAD_EVENT = 'load',
            COMPLETE = 'complete',
            /*global addEventListener:true, removeEventListener:true*/
            addEventListener = standardEventModel ? function (el, type, fn) {
                el.addEventListener(type, fn, false);
            } : function (el, type, fn) {
                el.attachEvent('on' + type, fn);
            },
            removeEventListener = standardEventModel ? function (el, type, fn) {
                el.removeEventListener(type, fn, false);
            } : function (el, type, fn) {
                el.detachEvent('on' + type, fn);
            };

        util.mix(util, {

            /**
             * Specify a function to execute when the Dom is fully loaded.
             * @param fn {Function} A function to execute after the Dom is ready
             * @chainable
             * @member util
             */
            ready: function (fn) {
                if (domReady) {
                    if ('@DEBUG@') {
                        fn();
                    } else {
                        try {
                            fn();
                        } catch (e) {
                            setTimeout(function () {
                                throw e;
                            }, 0);
                        }
                    }
                } else {
                    callbacks.push(fn);
                }
                return this;
            }
        });

        function fireReady() {
            if (domReady) {
                return;
            }
            // nodejs
            if (win && win.setTimeout) {
                removeEventListener(win, LOAD_EVENT, fireReady);
            }
            domReady = 1;
            for (var i = 0; i < callbacks.length; i++) {
                if ('@DEBUG@') {
                    callbacks[i]();
                } else {
                    try {
                        callbacks[i]();
                    } catch (e) {
                        /*jshint loopfunc:true*/
                        setTimeout(function () {
                            throw e;
                        }, 0);
                    }
                }
            }
        }

//  Binds ready events.
        function bindReady() {
            // Catch cases where ready() is called after the
            // browser event has already occurred.
            if (!doc || doc.readyState === COMPLETE) {
                fireReady();
                return;
            }

            // A fallback to window.onload, that will always work
            addEventListener(win, LOAD_EVENT, fireReady);

            // w3c mode
            if (standardEventModel) {
                var domReady = function () {
                    removeEventListener(doc, DOM_READY_EVENT, domReady);
                    fireReady();
                };

                addEventListener(doc, DOM_READY_EVENT, domReady);
            } else {
                var stateChange = function () {
                    if (doc.readyState === COMPLETE) {
                        removeEventListener(doc, READY_STATE_CHANGE_EVENT, stateChange);
                        fireReady();
                    }
                };

                // ensure firing before onload (but completed after all inner iframes is loaded)
                // maybe late but safe also for iframes
                addEventListener(doc, READY_STATE_CHANGE_EVENT, stateChange);

                // If IE and not a frame
                // continually check to see if the document is ready
                var notframe,
                    doScroll = docElem && docElem.doScroll;

                try {
                    notframe = (win.frameElement === null);
                } catch (e) {
                    notframe = false;
                }

                // can not use in iframe,parent window is dom ready so doScroll is ready too
                if (doScroll && notframe) {
                    var readyScroll = function () {
                        try {
                            // Ref: http://javascript.nwbox.com/IEContentLoaded/
                            doScroll('left');
                            fireReady();
                        } catch (ex) {
                            setTimeout(readyScroll, POLL_INTERVAL);
                        }
                    };
                    readyScroll();
                }
            }
        }

// bind on start
// in case when you bind but the DOMContentLoaded has triggered
// then you has to wait onload
// worst case no callback at all
        if (supportEvent) {
            bindReady();
        }

        try {
            if (doc.execCommand) {
                doc.execCommand('BackgroundImageCache', false, true);
            }
        } catch (e) {
        }
    }, {"util-base": 34}]
}, {}, [1])


