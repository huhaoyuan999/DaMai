<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title> - 大麦搜索</title>
    <meta name="spm-id" content="a2oeg"/>
    <meta name="keywords" content=",,,,大麦网"/>
    <meta name="description" content="大麦网-中国最大票务平台,包括：,演出票,电影,球馆预订,门票,在线订票购票服务"/>
    <link rel="shortcut icon"
          href="${pageContext.request.contextPath}/static/images/TB1fGH0fgMPMeJjy1XcXXXpppXa-16-16.ico"
          type="image/x-icon">
    <link href="${ctx}/static/cssGoods/index.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/static/cssGoods/ui.css" rel="stylesheet" type="text/css"/>
</head>
<body data-spm="search_category">
<script>
    with (document) with (body) with (insertBefore(createElement("script"), firstChild)) setAttribute("exparams", "pu_i=&userid=&aplus&asid=AQAAAAAhNeJblkUteQAAAAD6dt52SRsA9w==&sidx=0&ckx=|", id = "tb-beacon-aplus", src = "//g.alicdn.com/alilog/mlog/aplus_v2.js")
</script>
<!--页面头部 start-->

<div class="dm-header-wrap">
    <div class="dm-header-box" data-spm="top">
        <a href="//www.damai.cn"><img class="i-logo" src="//img.alicdn.com/tfs/TB1Qim7xL5TBuNjSspmXXaDRVXa-230-104.png"
                                      alt="大麦"/></a>
        <div class="location-header">
            <img class="i-icon-location" src="//img.alicdn.com/tfs/TB1XHDuxNGYBuNjy0FnXXX5lpXa-28-32.png" alt="定位"/>
            <span class="city-location">全国</span>
            <img class="i-arrow-location" src="https://img.alicdn.com/tfs/TB1vnUBxStYBeNjSspaXXaOOFXa-20-12.png"
                 alt="箭头"/>
            <div class="city-header-wrap">
                <div class="city-header" data-spm="city">
                    <div class="now-city">
                        <span class="title-city">当前城市:</span>
                        <span class="name-city select-city">全国</span>
                    </div>
                    <div class="hot-city">
                        <span class="title-city">热门城市:</span>
                        <div class="list-other"></div>
                    </div>
                    <div class="other-city">
                        <span class="title-city">其他城市:</span>
                        <div class="list-other"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="recommend-header">
            <a href="//www.damai.cn" class="type-recommend select" data-spm="dhome">首页</a>
            <a href="//search.damai.cn/search.htm?order=1" class="type-recommend" data-spm="dcategory">分类</a>


        </div>
        <div class="right-header" data-spm="nick">
            <div class="box-header user-header">
                <a href="javascript:void(0)" class="J_userinfo_img" data-spm="duserinfo"><img
                        class="i-box-header i-user"
                        src="//img.alicdn.com/tfs/TB14UKCGQyWBuNjy0FpXXassXXa-54-54.png"/></a>
                <a href="//passport.damai.cn/accountinfo/myinfo" class="J_userinfo_name" data-spm="duserinfo">
                    <div class="span-box-header name-user"></div>
                </a>
                <div class="login-user show">
                    <span class="span-box-header span-user" data-spm="dlogin">登录</span>
                </div>
                <div class="list-wrap">
                    <div class="list-login">
                        <a href="//passport.damai.cn/accountinfo/myinfo" class="li-login select" data-spm="duserinfo">个人信息</a>
                        <a href="//my.damai.cn/account/accountSafe" class="li-login" data-spm="daccountsetting">账号设置</a>
                        <a href="//orders.damai.cn/orderList" class="li-login" data-spm="dordermanage">订单管理</a>
                        <a href="//www.damai.cn/redirect.aspx?type=logout" data-spm="dexit" class="li-login out-login">退出登录</a>
                    </div>
                </div>
            </div>
            <div class="box-header download-header">
                <img class="i-box-header i-download" src="//img.alicdn.com/tfs/TB1A9eIGKuSBuNjy1XcXXcYjFXa-54-54.png"
                     alt="下载"/>
                <span class="span-box-header">下载</span>
                <div class="ewm-download">
                    <img class="i-ewm" src="//img.alicdn.com/tfs/TB1r0uFxHSYBuNjSspiXXXNzpXa-280-280.png"/>
                </div>
            </div>
            <div class="box-header">
                <a href="//en.damai.cn/" data-spm="denglish">
                    <img class="i-box-header" src="//img.alicdn.com/tfs/TB13UKCGQyWBuNjy0FpXXassXXa-54-54.png"
                         alt="英文站"/>
                    <span class="span-box-header">English</span>
                </a>
            </div>
        </div>
        <div class="search-header" data-spm="searchtxt">
            <img class="i-search" src="//img.alicdn.com/tfs/TB1qv3jxGmWBuNjy1XaXXXCbXXa-34-36.png" alt="搜索"/>
            <input class="input-search" placeholder="搜索明星、演出、体育赛事" data-spm="dsearchbtn"/>
            <div class="btn-search" data-spm="dsearchbtn2">搜索</div>
            <div class="list-search-wrap">
                <div class="list-search">
                </div>
            </div>
        </div>

    </div>
</div>
<div class="wrapper">
    <script type="text/javascript">var cityId = 0;</script>
    <form name="searchForm" action="search.html" method="post">
        <input type="hidden" name="keyword" id="keyword" value=""/>
        <input type="hidden" name="currPage" id="currPage" value="1"/>
        <input type="hidden" id="tsg" value="0"/>
        <input type="hidden" id="sttime" value=""/>
        <input type="hidden" id="ettime" value=""/>
        <input type="hidden" id="degrade" value=""/>
        <input type="hidden" id="cityId" value=""/>
        <input type="hidden" id="ptype" value=""/>
        <input type="hidden" id="simp_key" value=""/>
        <input type="hidden" id="curr_order" value="1"/>
        <input type="hidden" id="city_name" value=""/>
        <input type="hidden" id="destCity" value=""/>
        <input type="hidden" id="category_name" value=""/>
        <input type="hidden" id="tag_names" value=""/>
        <input type="hidden" id="subcategory_name" value=""/>
        <input type="hidden" id="isSingleChar" value=""/>
        <input type="hidden" id="projectids" value=""/>
        <input type="hidden" id="listmodle" value=""/>
    </form>

    <!--内容 start-->
    <!--如果搜索无结果 有关键字的 begin-->
    <div class="search-none-keywords" style="display:none">
        <div class="search-result">
            <p>哎呀！麦麦没有找到与“<span class="cf"></span>
                ”相关的商品</p>
        </div>
        <div class="clearfix change-box">
            <div class="change-left">
                <!--明星周边 begin-->
                <div id="artist_around_bottom"></div>
                <!--明星周边 end-->
                <!--猜您喜欢 begin-->
                <div class="guess_you_likemore"></div>
                <!--猜您喜欢 end-->
            </div>
            <div class="search_right">
                <!-- 艺人场馆展位 -->
                <div class="search_right_head"></div>
            </div>
        </div>
        <!--如果搜索有结果 end-->
    </div>

    <!--如果没有结果 有关键字的 end-->
    <!--如果搜索无结果 无关键字的 begin-->
    <div class="search-none" style="display:none">
        <div class="search-result">
            <p>哎呀！麦麦没有找到该筛选条件下相关的商品</p>
        </div>
        <div class="clearfix change-box">
            <div class="change-left">
                <!--明星周边 begin-->
                <div id="artist_around_bottom"></div>
                <!--明星周边 end-->
                <!--猜您喜欢 begin-->
                <div class="guess_you_likemore"></div>
                <!--猜您喜欢 end-->
            </div>
            <div class="search_right">
                <!-- 艺人场馆展位 -->
                <div class="search_right_head"></div>
            </div>
        </div>
        <!--如果搜索有结果 end-->
    </div>

    <!--如果没有结果 无关键字的 end-->
    <!--搜索有结果 start -->
    <!--如果搜索有结果 begin-->
    <div class="search_new clearfix">
        <div class="search_top">
            <p id="navigation_show">
            </p>
        </div>
        <div class="search_con clear">
            <div class="search_left">
                <!-- 猜您在找 start -->
                <div id="guess_position">
                </div>
                <!-- 猜您在找 end-->
                <!-- 条件筛选 start -->
                <div class="search_city">
                    <!-- 加载城市 start  -->
                    <a class="search_city_more" href="#">
                        <span class="search_city_up" onclick="javascript:citylinecontrol(0)">更多</span>
                        <span class="search_city_off" style="display:none;"
                              onclick="javascript:citylinecontrol(1)">收起</span>
                    </a>
                    <dl class="search_city_line" id="search_city_line">
                        <dt>城　市：</dt>
                        <dd>
                            <a class="active" href="javascript:void(0)" onclick="cityfilter('',this)">全部</a>
                        </dd>
                        <dd class="search_city_num" id="search_city_num_tj">
                            <ul class="search_city_all clear" style="height: auto;">
                                <c:forEach items="${cityList}" var="obj" varStatus="index">
                                    <li><a href="javascript:void(0)" data-city="ci">${obj.cityName}</a></li>
                                </c:forEach>
                            </ul>

                        </dd>
                    </dl>
                    <!-- 加载城市 end -->
                    <!-- 加载分类 start-->
                    <dl id="category_filter_id" class="search_city_line">
                        <dt>分　类：</dt>
                        <dd>
                            <a class="active" href="javascript:void(0)" onclick="categoryfilter('',this)">全部</a>
                        </dd>
                        <dd class="search_city_num">
                            <ul class="clear">
                            </ul>
                        </dd>
                    </dl>
                    <!-- 加载分类 end -->
                    <!--加载子类 start -->
                    <dl class="search_city_line" id="subcategory_filter_id" style="display:none">
                    </dl>
                    <!-- 加载子类 end -->
                    <!--时间筛选 start -->
                    <dl id="search_time">
                        <dt>时　间：</dt>
                        <dd>
                            <a id="alltime" class="active" href="javascript:void(0)" onclick="selectDatechange(0,this)">全部</a>
                        </dd>
                        <dd class="search_city_num">
                            <ul class="clear">
                                <li>
                                    <a href="javascript:void(0)" id="selectDate"
                                       onClick="selectDatechange(1,this)">今天</a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)" id="selectDate"
                                       onClick="selectDatechange(2,this)">明天</a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)" id="selectDate"
                                       onClick="selectDatechange(3,this)">本周末</a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)" id="selectDate"
                                       onClick="selectDatechange(4,this)">一个月内</a>
                                </li>
                                <li class="search_time">
                                <span class="dataTime" id="dataTime">按时间段:
                                    <input id="from" class="t" type="text" style="*z-index:100;*position:relative;"/>
                                    -
                                    <input id="to" class="t" type="text" style="*z-index:100;*position:relative;"/>
                                </span>
                                </li>
                                <li class="sarch-calen">
                                    <span id="testView"></span>
                                    <a class="search_calendar" href="javascript:;" id="test2" >按日历</a>
                                    <%--<a class="search_calendar" href="javascript:datepicker;"--%>
                                       <%--onclick="showcalendar(event, this);return false;"--%>
                                       <%--onfocus="showcalendar(event, this);" data-value="" id="test2" >按日历</a>--%>

                                </li>
                                <%--<span id="testView">1</span>--%>
                                <%--<div id="test2">2</div>--%>

                            </ul>
                        </dd>
                    </dl>
                    <!-- 时间筛选 end -->
                </div>
                <!-- 条件筛选 end -->
                <!-- 排序start -->
                <div class="search_main">
                    <div class="search_sort">
                        <div class="search_sort_page">
                            <div class="search_sort_com">
                                <a title="列表模式" href="javascript:void(0)" onclick="pageListModle(0)"
                                   class="search_lis_on"></a>
                                <a title="大图模式" href="javascript:void(0)" class="search_icon"
                                   onclick="pageListModle(1)"></a>
                            </div>
                            <div class="search_sort_num">
                                <a href="javascript:void(0)" class="search_sort_prev_gray"></a>
                                <a href="javascript:void(0)" class="search_sort_prev" onclick="pagesAjax('0')"></a>
                                <p class="search_sort_txt">
                                    <span>1</span>
                                    /<span>0</span>
                                </p>
                                <a class="search_sort_next_gray"></a>
                                <a class="search_sort_next" href="javascript:void(0)" onclick="pagesAjax('0')"></a>
                            </div>
                        </div>
                        <ul class="search_sort_way">
                            <li>
                                <a id="search_xgj" class="active" href="javascript:void(0)" onclick="orderajax(0,this)">相关度排序</a>
                            </li>
                            <li>
                                <a id="search_rm" href="javascript:void(0)" onclick="orderajax(1,this)">推荐排序</a>
                            </li>
                            <li>
                                <a id="search_ycsj" href="javascript:void(0)" onclick="orderajax(2,this)">最近开场</a>
                            </li>
                            <li>
                                <a id="search_sjsj" href="javascript:void(0)" onclick="orderajax(3,this)">最新上架</a>
                            </li>
                        </ul>
                    </div>
                    <ul class="search_list_loading">
                        <li style="border:none;display:none;margin-left:30px;height:40px; margin-top:25px;"
                            id="search_loading">
                            <div class="search_loading">努力加载中...</div>
                        </li>
                    </ul>
                    <!-- 搜索列表 start -->
                    <ul class="search_list" id="content_list">
                    </ul>
                </div>
            </div>
            <div class="search_right">
                <div class="search_right_head"></div>
                <!--热门推荐-->
                <div id="guess_you_like"></div>
            </div>
        </div>
    </div>

    <!--搜索有结果 end -->
    <!--内容 end-->
    <script src="${ctx}/static/js/classification/sufei-jquery.js"></script>
    <script type="text/javascript" src="${ctx}/static/js/classification/lib.js"></script>
    <script type="text/javascript" src="${ctx}/static/js/classification/ui.js"></script>
    <script type="text/javascript" src="${ctx}/static/js/classification/index3.js" crossorigin></script>
    <script type="text/javascript">
        var order = $("#curr_order").val();
        var orderobj = document.getElementById("search_xgj");
        if (1 == order) {
            orderobj = document.getElementById("search_rm");
        } else if (2 == order) {
            orderobj = document.getElementById("search_ycsj");
        } else if (3 == order) {
            orderobj = document.getElementById("search_sjsj");
        }
        var keyword = $("#keyword").val();
        var ctl = $("#category_name").val();
        var cty = $("#city_name").val();
        var tn = $("#tag_names").val();
        var sctl = $("#subcategory_name").val();
        var destCity = $("#destCity").val();
        var param = {
            "keyword": keyword,
            "cty": cty,
            "ctl": ctl,
            "tn": tn,
            "destCity": destCity,
            "sctl": sctl
        };
        // searchajax(param);
        $(".search_sort_way a").removeClass("active");
        $(orderobj).addClass("active");
    </script>

    <script type="text/javascript">
        //author: meizz
        Date.prototype.format = function (fmt) {
            var o = {
                "M+": this.getMonth() + 1, //月份
                "d+": this.getDate(), //日
                "h+": this.getHours(), //小时
                "m+": this.getMinutes(), //分
                "s+": this.getSeconds(), //秒
                "q+": Math.floor((this.getMonth() + 3) / 3), //季度
                "S": this.getMilliseconds() //毫秒
            };

            if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
            for (var k in o)
                if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
            return fmt;
        }

        var calendarSettings = [
            {
                year: 2018,
                month: 10,
                days: [{day: 1, holiday: true, festival: "国庆节"}, {day: [2, 3, 4, 5, 6, 7], holiday: true}, {
                    day: 17,
                    holiday: false,
                    festival: "重阳节"
                }]
            },
            {
                year: 2018,
                month: 11,
                days: [{day: 1, holiday: false, festival: "万圣节"}, {day: 7, holiday: false, festival: "立冬"}, {
                    day: 22,
                    holiday: false,
                    festival: "感恩节"
                }]
            },
            {
                year: 2018,
                month: 12,
                days: [{day: 24, holiday: false, festival: "平安夜"}, {
                    day: 25,
                    holiday: false,
                    festival: "圣诞节"
                }, {day: [30, 31], holiday: true}]
            },
            {year: 2019, month: 1, days: [{day: 1, holiday: true, festival: "元旦"}, {day: 13, festival: "腊八节"}]},
            {
                year: 2019,
                month: 2,
                days: [{day: 4, holiday: true, festival: "除夕"}, {
                    day: 5,
                    holiday: true,
                    festival: "春节"
                }, {day: [6, 7, 8, 9, 10], holiday: true}, {day: 14, festival: "情人节"}, {day: 19, festival: "元宵节"}]
            },
            {year: 2019, month: 3, days: [{day: 8, festival: "妇女节"}, {day: 12, festival: "植树节"}]},
            {
                year: 2019,
                month: 4,
                days: [{day: 1, festival: "愚人节"}, {day: [6, 7, 29, 30], holiday: true}, {
                    day: 5,
                    holiday: true,
                    festival: "清明节"
                }, {day: [27, 28], holiday: false}]
            },
            {
                year: 2019,
                month: 5,
                days: [{day: 1, holiday: true, festival: "劳动节"}, {day: 4, festival: "青年节"}, {day: 12, festival: "母亲节"}]
            },
            {
                year: 2019,
                month: 6,
                days: [{day: 1, festival: "儿童节"}, {day: [8, 9], holiday: true}, {day: 16, festival: "父亲节"}, {
                    day: 7,
                    holiday: true,
                    festival: "端午节"
                }]
            },
            {year: 2019, month: 7, days: [{day: 1, festival: "建党节"}]},
            {year: 2019, month: 8, days: [{day: 1, festival: "建军节"}, {day: 7, festival: "七夕"},]},
            {
                year: 2019,
                month: 9,
                days: [{day: 3, festival: "抗战胜利日"}, {day: 10, festival: "教师节"}, {day: [14, 15], holiday: true}, {
                    day: 13,
                    holiday: true,
                    festival: "中秋节"
                }]
            },
            {
                year: 2019,
                month: 10,
                days: [{day: 1, holiday: true, festival: "国庆节"}, {day: [2, 3, 4, 5, 6], holiday: true}, {
                    day: 7,
                    holiday: true,
                    festival: "重阳节"
                }]
            },
            {year: 2019, month: 11, days: [{day: 28, festival: "感恩节"}]},
            {year: 2019, month: 12, days: [{day: 24, festival: "平安夜"}, {day: 25, festival: "圣诞节"}]}
        ];

        function getSetting(date) {
            var ret = {};
            var month = date.getMonth() + 1, day = date.getDate(), year = date.getFullYear();
            for (var i = 0; i < calendarSettings.length; i++) {
                if (calendarSettings[i].month == month && calendarSettings[i].year == year) {
                    for (var j = 0; j < calendarSettings[i].days.length; j++) {
                        var sday = calendarSettings[i].days[j];
                        if (day == sday.day) {
                            ret = sday;
                        } else if (Object.prototype.toString.call(sday.day) == "[object Array]") {
                            for (var d = 0; d < sday.day.length; d++) {
                                if (sday.day[d] == day) ret = {
                                    day: day,
                                    holiday: sday.holiday,
                                    festival: sday.festival
                                };
                            }
                        }
                    }
                }
            }
            ret.hasProject = hasProject(date);
            ret.isSearchDate = isSearchDate(date);
            return ret;
        }

        function hasProject(date) {
            var k = "D" + date.format("yyyyMMdd");
            if (window.projectDates[k])
                return true;
            return false;
        }

        function isSearchDate(date) {
            if (typeof(searchDate) == 'string' && date.format("yyyy-MM-dd") == searchDate)
                return true;
            return false;
        }

        var controlid = null;
        var currdate = null;
        var startdate = null;
        var enddate = null;
        var yy = null;
        var mm = null;
        var hh = null;
        var ii = null;
        var currday = null;
        var addtime = false;
        var today = new Date();
        var lastcheckedyear = false;
        var lastcheckedmonth = false;

        function _cancelBubble(event) {
            e = event ? event : window.event;
            if (ie) {
                e.cancelBubble = true;
            } else {
                e.stopPropagation();
            }
        }

        function getposition(obj) {
            var r = new Array();
            r['x'] = obj.offsetLeft;
            r['y'] = obj.offsetTop;
            while (obj = obj.offsetParent) {
                r['x'] += obj.offsetLeft;
                r['y'] += obj.offsetTop;
            }
            return r;
        }

        function loadcalendar() {
            s = '';
            s += '<div id="calendar" style="display:none; position:absolute; z-index:100;" onclick="_cancelBubble(event)">';
            s += '<div style="width:auto; -moz-border-radius:8px; -webkit-border-radius:8px; border-radius:8px; box-shadow:0px 0px 10px #ccc;margin-top:10px;"><table class="tableborder" cellspacing="0" cellpadding="0" width="100%" style="text-align: center;">';
            s += '<tr align="center"><td colspan="7" class="dateheader" style="text-align: left; padding-left:20px; height:36px;border-top-left-radius: 5px; border-top-right-radius:5px;"><a id="calendarLeftButton" href="#" onclick="refreshcalendar(yy, mm-1);return false" title="上一月" class="mr15"><</a><a href="#" onclick="showdiv(\'year\');_cancelBubble(event);return false" title="点击选择年份" id="year" style=" font-weight:400"></a><span class="ml5 mr10 f16 c1">年</span><a id="month" title="点击选择月份" href="#" style=" font-weight:400" onclick="showdiv(\'month\');_cancelBubble(event);return false"></a><span class="ml5 mr10 f16 c1">月</span><A href="#" onclick="refreshcalendar(yy, mm+1);return false" title="下一月" class="ml15 red">></A><a href="#" class="new-today" onclick="gotoToday();" style="font-size:12px; font-weight:400">返回今天</a><a href="#" class="new-error" style="font-size:12px; font-weight:400" onclick="hideCalendar();"></a></td></tr>';
            s += '<tr class="category"><td style="height:25px; color:#ff3b3c;">星期日</td><td style="height:25px;">星期一</td><td style="height:25px;">星期二</td><td style="height:25px;">星期三</td><td style="height:25px;">星期四</td><td style="height:25px;">星期五</td><td style="height:25px; color:#ff3b3c;">星期六</td></tr>';
            for (var i = 0; i < 6; i++) {
                s += '<tr class="altbg2">';
                // 修改行数
                for (var j = 1; j <= 7; j++) {
                    s += "<td id=d" + (i * 7 + j) + " height=\"190\">0<br>111</td>";
                }
                s += "</tr>";
            }
            s += '</table></div></div>';
            s += '<div id="calendar_year" onclick="_cancelBubble(event)"><div class="col">';
            for (var k = 2017; k <= 2022; k++) {
                s += k != 2017 && k % 10 == 0 ? '</div><div class="col">' : '';
                s += '<a href="#" onclick="refreshcalendar(' + k + ', mm);document.getElementById(\'calendar_year\').style.display=\'none\';return false"><span' + (today.getFullYear() == k ? ' class="today"' : '') + ' id="calendar_year_' + k + '">' + k + '</span></a><br />';
            }
            s += '</div></div>';
            s += '<div id="calendar_month" onclick="_cancelBubble(event)">';
            for (var k = 1; k <= 12; k++) {
                s += '<a href="#" onclick="refreshcalendar(yy, ' + (k - 1) + ');document.getElementById(\'calendar_month\').style.display=\'none\';return false"><span' + (today.getMonth() + 1 == k ? ' class="today"' : '') + ' id="calendar_month_' + k + '">' + k + (k < 10 ? ' ' : '') + ' 月</span></a><br />';
            }
            s += '</div>';
            var nElement = document.createElement("div");
            nElement.innerHTML = s;
            document.getElementsByTagName("body")[0].appendChild(nElement);
            // document.write(s);
            document.onclick = function (event) {
                document.getElementById('calendar').style.display = 'none';
                document.getElementById('calendar_year').style.display = 'none';
                document.getElementById('calendar_month').style.display = 'none';
            }
            document.getElementById('calendar').onclick = function (event) {
                _cancelBubble(event);
                document.getElementById('calendar_year').style.display = 'none';
                document.getElementById('calendar_month').style.display = 'none';
            }
        }

        function parsedate(s) {
            /(\d+)\-(\d+)\-(\d+)\s*(\d*):?(\d*)/.exec(s);
            var m1 = (RegExp.$1 && RegExp.$1 > 1899 && RegExp.$1 < 2101) ? parseFloat(RegExp.$1) : today.getFullYear();
            var m2 = (RegExp.$2 && (RegExp.$2 > 0 && RegExp.$2 < 13)) ? parseFloat(RegExp.$2) : today.getMonth() + 1;
            var m3 = (RegExp.$3 && (RegExp.$3 > 0 && RegExp.$3 < 32)) ? parseFloat(RegExp.$3) : today.getDate();
            var m4 = (RegExp.$4 && (RegExp.$4 > -1 && RegExp.$4 < 24)) ? parseFloat(RegExp.$4) : 0;
            var m5 = (RegExp.$5 && (RegExp.$5 > -1 && RegExp.$5 < 60)) ? parseFloat(RegExp.$5) : 0;
            /(\d+)\-(\d+)\-(\d+)\s*(\d*):?(\d*)/.exec("0000-00-00 00\:00");
            return new Date(m1, m2 - 1, m3, m4, m5);
        }

        function settime(d) {
            document.getElementById('calendar').style.display = 'none';
            //controlid.value = yy + "-" + zerofill(mm + 1) + "-" + zerofill(d) + (addtime ? ' ' + zerofill(document.getElementById('hour').value) + ':' + zerofill(document.getElementById('minute').value) : '');
            window.search("date", yy + "-" + zerofill(mm - 0 + 1) + "-" + zerofill(d));
        }

        function showcalendar(event, controlid1, addtime1, startdate1, enddate1) {
            if (window.searchDate != window.searchDateReal && window.searchDateReal) {
                window.searchDate = window.searchDateReal;
            }
            controlid = controlid1;
            addtime = addtime1;
            startdate = startdate1 ? parsedate(startdate1) : false;
            enddate = enddate1 ? parsedate(enddate1) : false;
            var dv = controlid.getAttribute("data-value");
            if (dv && dv.length > 0)
                currday = parsedate(dv);
            else currday = today;
            hh = currday.getHours();
            ii = currday.getMinutes();
            var p = getposition(controlid);
            document.getElementById('calendar').style.display = 'block';
            document.getElementById('calendar').style.left = (p['x'] - 390) + 'px';//500+'px';
            document.getElementById('calendar').style.top = (p['y'] + 20) + 'px';
            _cancelBubble(event);

            if (null != window.searchDate) {
                var strs = new Array(); //定义一数组
                strs = window.searchDate.split("-");
                yy = parseInt(strs[0]);
                mm = parseInt(strs[1]) - 1;

                refreshcalendar(yy, mm);
            } else
                refreshcalendar(currday.getFullYear(), currday.getMonth());

            if (lastcheckedyear != false) {
                document.getElementById('calendar_year_' + lastcheckedyear).className = 'default';
                document.getElementById('calendar_year_' + today.getFullYear()).className = 'today';
            }
            if (lastcheckedmonth != false) {
                document.getElementById('calendar_month_' + lastcheckedmonth).className = 'default';
                document.getElementById('calendar_month_' + (today.getMonth() + 1)).className = 'today';
            }
            //document.getElementById('calendar_year_' + currday.getFullYear()).className = 'checked';
            //document.getElementById('calendar_month_' + (currday.getMonth() + 1)).className = 'checked';
            //document.getElementById('hourminute').style.display = addtime ? '' : 'none';
            lastcheckedyear = currday.getFullYear();
            lastcheckedmonth = currday.getMonth() + 1;
        }

        function refreshcalendar(y, m) {
            if (y <= today.getFullYear() && m < today.getMonth()) {
                return false;
            }

            var date = new Date();
            var month = date.getMonth();
            if (m == month) {
                $("#calendarLeftButton").addClass("gray");
            } else {
                $("#calendarLeftButton").removeClass("gray");
            }

            var x = new Date(y, m, 1);
            var mv = x.getDay();
            var d = x.getDate();
            var dd = null;
            yy = x.getFullYear();
            mm = x.getMonth();

            dateinit();
            document.getElementById("year").innerHTML = yy;
            document.getElementById("month").innerHTML = mm + 1 > 9 ? (mm + 1) : '0' + (mm + 1);
            for (var i = 1; i <= mv; i++) {
                dd = document.getElementById("d" + i);
                dd.innerHTML = " ";
                dd.className = "";
            }
            while (x.getMonth() == mm) {
                dd = document.getElementById("d" + (d + mv));
                var setting = getSetting(x);
                var clsN = "default ";
                var innerHTML = "";
                var isold = false;
                if (setting.holiday) {
                    clsN += 'new-pic-holiday ';
                } else if (setting.workday) {
                    clsN += 'new-pic-work ';
                }
                if ((x.getFullYear() <= today.getFullYear() && x.getMonth() < today.getMonth()) || (x.getFullYear() <= today.getFullYear() && x.getMonth() <= today.getMonth() && x.getDate() < today.getDate()) || (enddate && x.getTime() > enddate.getTime()) || (startdate && x.getTime() < startdate.getTime())) {
                    clsN += 'expire ';
                    //innerHTML = '<div class=calendar-relative calendar-active onmouseover="calendarOver(this)" onmouseout="calendarOut(this)"><span class=date>' + d + "</span></div>";

                    innerHTML = '<div class=calendar-relative calendar-active onmouseover="calendarOver(this)" onmouseout="calendarOut(this)"><span class=date>' + d + "</span>";
                    if (setting.festival && setting.festival.length > 0) {
                        innerHTML += "<span class=fest>" + setting.festival + "</span>";
                    }
                    innerHTML += "</div>";
                    isold = true;
                } else {
                    innerHTML = '<div class="calendar-relative calendar-active" onclick="settime(' + d + ');return false" onmouseover="calendarOver(this)" onmouseout="calendarOut(this)"><span class="date">' + d + '</span>';
                    if (setting.hasProject) {
                        clsN += 'new-pic-dian ';
                    }
                    if (x.getFullYear() == today.getFullYear() && x.getMonth() == today.getMonth() && x.getDate() == today.getDate()) {
                        //clsN += 'today ';
                        if (!window.searchDate)
                            clsN += "checked";
                        dd.title = '今天';
                    }
                    if (setting.isSearchDate) {
                        clsN += 'checked';
                    }
                }

                if (setting.festival && setting.festival.length > 0 && !isold) {
                    innerHTML += "<span class=fest>" + setting.festival + "</span>";
                }
                innerHTML += "</div>";
                dd.innerHTML = innerHTML;
                dd.className = clsN;
                x.setDate(++d);
            }
            while (d + mv <= 42) {
                dd = document.getElementById("d" + (d + mv));
                dd.innerHTML = " ";
                d++;
            }
            if (addtime) {
                document.getElementById('hour').value = zerofill(hh);
                document.getElementById('minute').value = zerofill(ii);
            }

            // add by chenxi begin at 2014-09-29 14:03
            // 隐藏最后一行为空的日历
            var calendar = document.getElementById('calendar');
            var table = calendar.getElementsByTagName('table')[0];
            var trs = table.getElementsByTagName('tr');
            var tds = table.getElementsByTagName('td');
            var days = [];
            var lines = [];

            // 获取所有行
            for (var i = 0, len = trs.length; i < len; i++) {
                if (trs[i].className.indexOf('altbg2') !== -1) lines.push(trs[i]);
            }

            // 去除空行
            for (var i = 0, len = lines.length; i < len; i++) {
                if (isEmptyLine(lines[i])) {
                    lines[i].style.display = 'none';
                } else {
                    lines[i].style.display = '';
                }
            }

            // 去除空日
            for (var i = 0, len = tds.length; i < len; i++) {
                if (tds[i].className.indexOf('new-pic-dian') !== -1) days.push(tds[i]);
            }

            for (var i = 0, len = days.length; i < len; i++) {
                if (!/[^\s\b\r\t]/i.test(days[i].innerHTML)) days[i].className = '';
            }

            function isEmptyLine(element) {
                var itms = element.getElementsByTagName('td');
                var empty = true;

                for (var i = 0, len = itms.length; i < len; i++) {
                    if (/[^\s\b\r\t]/i.test(itms[i].innerHTML)) {
                        empty = false;
                        break;
                    }
                }

                return empty;
            }

            // add by chenxi end at 2014-09-29 15:05
        }

        // 工具集
        var utlis = {
            // 去除多余空格
            trimb: function (value) {
                return value.replace(/((\s)+)/ig, '$2').replace(/^[\s\b]|[\s\b]$/ig, '');
            },
            // 增加 class
            addClass: function (element, value) {
                if ((' ' + element.className.toLowerCase() + ' ').indexOf(' ' + value + ' ') === -1)
                    element.className += (' ' + value);
                return this;
            },
            // 移除 class
            removeClass: function (element, value) {
                if ((' ' + element.className.toLowerCase() + ' ').indexOf(' ' + value + ' ') !== -1)
                    element.className = this.trimb(element.className.replace(value, ''));
                if (!element.className)
                    element.removeAttribute('class');
                return this;
            }
        };

        // 增加 hover 效果
        function calendarOver(element) {
            utlis.addClass(element, 'calendar-hover');
        }

        function calendarOut(element) {
            utlis.removeClass(element, 'calendar-hover');
        }

        // add by chenxi begin at 2014-09-29 15:05
        // 返回今天
        function gotoToday(ev, context) {
            var date = new Date();
            var year = date.getFullYear();
            var month = date.getMonth();
            window.searchDate = new Date().format("yyyy-MM-dd");
            refreshcalendar(year, month);
        }

        function hideCalendar() {
            var calendar = document.getElementById('calendar');
            calendar.style.display = 'none';
        }

        // add by chenxi end at 2014-09-29 15:05

        function showdiv(id) {
            var p = getposition(document.getElementById(id));
            document.getElementById('calendar_' + id).style.left = p['x'] + 'px';
            document.getElementById('calendar_' + id).style.top = (p['y'] + 16) + 'px';
            document.getElementById('calendar_' + id).style.display = 'block';
        }

        function zerofill(s) {
            var s = parseFloat(s.toString().replace(/(^[\s0]+)|(\s+$)/g, ''));
            s = isNaN(s) ? 0 : s;
            return (s < 10 ? '0' : '') + s.toString();
        }

        loadcalendar();

        var nkeyword = cutstrlength('', 35);
        $("#kwordspan").html(nkeyword);
    </script>

    <script type="text/javascript">
        (function (b) {
            var c = b(window);
            b.fn.lazyload = function (e) {
                var f = {threshold: 100, failurelimit: 10, event: "scroll", effect: "show", container: window};
                if (e) {
                    b.extend(f, e)
                }
                var d = this;
                if ("scroll" == f.event) {
                    b(f.container).bind("scroll", function (h) {
                        var g = 0;
                        d.each(function () {
                            if (b.abovethetop(this, f)) {
                            } else {
                                if (!b.belowthefold(this, f)) {
                                    b(this).trigger("appear")
                                } else {
                                    if (g++ > f.failurelimit) {
                                        return false
                                    }
                                }
                            }
                        });
                        var i = b.grep(d, function (j) {
                            return !j.loaded
                        });
                        d = b(i)
                    })
                }
                this.each(function () {
                    var g = this;
                    if (undefined != b(g).attr("original")) {
                        g.loaded = false;
                        b(g).one("appear", function () {
                            if (!this.loaded) {
                                b("<img />").bind("load", function () {
                                    b(g).hide().attr("src", b(g).attr("original"))[f.effect](f.effectspeed);
                                    g.loaded = true
                                }).attr("src", b(g).attr("original"))
                            }
                        })
                    }
                });
                b(f.container).trigger(f.event);
                return this
            };

            function a() {
            }

            b.belowthefold = function (e, d) {
                var f;
                if (d.container === undefined || d.container === window) {
                    f = (window.innerHeight ? window.innerHeight : b(window).height()) + b(window).scrollTop()
                } else {
                    f = b(d.container).offset().top + b(d.container).height()
                }
                return f <= b(e).offset().top - d.threshold
            };
            b.abovethetop = function (e, d) {
                var f;
                if (d.container === undefined || d.container === window) {
                    f = b(window).scrollTop()
                } else {
                    f = b(d.container).offset().top
                }
                return f >= b(e).offset().top + d.threshold + b(e).height()
            };
            b.extend(b.expr[":"], {
                "below-the-fold": "jQuery.belowthefold(a, {threshold : 0, container: window})",
                "above-the-fold": "!jQuery.belowthefold(a, {threshold : 0, container: window})"
            })
        })(jQuery);
        $(function () {
            $("img").lazyload({effect: "fadeIn", failurelimit: 0, threshold: 0});
        });
    </script>
</div>
<!--页面尾部  start-->


<div class="dm-footer">
    <div class="w1200">
        <ul class="footer__links">

            <li class="footer__links__list"><a href="//help.damai.cn" target="_blank" data-spm="flink0">帮助中心</a></li>
            <li class="footer__links__grep">|</li>

            <li class="footer__links__list"><a
                    href="&#x2F;&#x2F;help.damai.cn&#x2F;helpPage.htm?pageId=69&amp;categoryId=30" target="_blank"
                    data-spm="flink1">公司介绍</a></li>
            <li class="footer__links__grep">|</li>

            <li class="footer__links__list"><a
                    href="&#x2F;&#x2F;help.damai.cn&#x2F;helpPage.htm?pageId=70&amp;categoryId=30" target="_blank"
                    data-spm="flink2">品牌识别</a></li>
            <li class="footer__links__grep">|</li>

            <li class="footer__links__list"><a
                    href="&#x2F;&#x2F;help.damai.cn&#x2F;helpPage.htm?pageId=72&amp;categoryId=30" target="_blank"
                    data-spm="flink3">公司大事记</a></li>
            <li class="footer__links__grep">|</li>

            <li class="footer__links__list"><a
                    href="&#x2F;&#x2F;help.damai.cn&#x2F;helpPage.htm?pageId=40&amp;categoryId=14" target="_blank"
                    data-spm="flink4">隐私权专项政策</a></li>
            <li class="footer__links__grep">|</li>

            <li class="footer__links__list"><a
                    href="&#x2F;&#x2F;jubao.alibaba.com&#x2F;internet&#x2F;readme.htm?spm=a2o6e.search.0.0.72f44d15Votov6&amp;site=damai"
                    target="_blank" data-spm="flink5">廉正举报</a></li>
            <li class="footer__links__grep">|</li>

            <li class="footer__links__list"><a
                    href="&#x2F;&#x2F;help.damai.cn&#x2F;helpPage.htm?pageId=58&amp;categoryId=5" target="_blank"
                    data-spm="flink6">联系合作</a></li>
            <li class="footer__links__grep">|</li>

            <li class="footer__links__list"><a
                    href="&#x2F;&#x2F;job.alibaba.com&#x2F;zhaopin&#x2F;positionList.htm?keyWord=JXU1OTI3JXU5RUE2&amp;_input_charset=UTF-8"
                    target="_blank" data-spm="flink7">招聘信息</a></li>
            <li class="footer__links__grep">|</li>

            <li class="footer__links__list"><a
                    href="&#x2F;&#x2F;x.damai.cn&#x2F;markets&#x2F;special&#x2F;fangzhapian?spm=a2o6e.home.0.0.75df48d3hqGWGD&amp;wh_ttid=pc"
                    target="_blank" data-spm="flink8">防骗秘籍</a></li>


        </ul>
        <div class="footer__ft">
            <div class="footer__ft_fl">
                <a href="//www.damai.cn/?spm=a2o6e.home.0.0.591b48d3QzpG8B" target="_blank" class="footer__ft__logo">
                    <img src="https://img.alicdn.com/tfs/TB1A42zxNGYBuNjy0FnXXX5lpXa-167-60.png" alt="">
                </a>
                <div class="footer__ft__code__box">
                    <img class="footer__ft__code" src="//img.alicdn.com/tfs/TB1r0uFxHSYBuNjSspiXXXNzpXa-280-280.png"
                         alt="">
                    <span>APP下载</span>
                </div>
            </div>
            <div class="footer__ft_fr">
                <div class="footer__fr__contact">

                    <a style="margin-left:0;" href="//online.damai.cn/alime/index?from=damai_pc_item&v=3"
                       class="footer__fr__contact__btn alime">在线客服</a>
                </div>
                <ul class="footer__ft__words">
                    <li class="footer__ft__certificate"><a
                            href="http://www.miitbeian.gov.cn?spm=a2o6e.home.0.0.5b4d48d3mVzb2Z" target="_blank">京ICP证031057号</a>
                    </li>
                    <li class="footer__ft__grep">|</li>
                    <li class="footer__ft__certificate"><a href="http://www.miitbeian.gov.cn" target="_blank">京ICP备11043884号</a>
                    </li>
                    <li class="footer__ft__grep">|</li>
                    <li class="footer__ft__certificate"><a
                            href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010102000430"
                            target="_blank">京公网安备11010102000430号</a>
                    </li>
                    <li class="footer__ft__grep">|</li>
                    <li class="footer__ft__certificate"><a
                            href="//img.alicdn.com/tfs/TB1K9r6xN9YBuNjy0FfXXXIsVXa-1152-799.jpg" target="_blank">广播电视节目制作经营许可证
                        (京)字第02253号</a></li>
                </ul>
                <ul class="footer__ft__words">
                    <li class="footer__ft__certificate"><a
                            href="//img.alicdn.com/tfs/TB1AsH4xH9YBuNjy0FgXXcxcXXa-1420-1032.jpg" target="_blank">网络文化经营许可证
                        京网文[2016]3438-413号</a></li>
                    <li class="footer__ft__grep">|</li>
                    <li class="footer__ft__certificate"><a
                            href="//img.alicdn.com/tfs/TB1DfD6CxGYBuNjy0FnXXX5lpXa-1079-1527.jpg" target="_blank">营业性演出许可证
                        京市演587号</a></li>
                </ul>
                <ul class="footer__ft__words">
                    <li class="footer__ft__certificate">北京红马传媒文化发展有限公司 版权所有</li>
                    <li class="footer__ft__certificate"><a
                            href="//www.damai.cn/?spm=a2o6e.home.0.0.591b48d3QzpG8B">大麦网</a></li>
                    <li>Copyright 2003-2018 All Rights Reserved</li>
                </ul>
                <div class="footer__ft__img">
                    <span id="siteseal">
                    <script async="" type="text/javascript">
                            function verifySeal() {
                                var bgHeight = "null";
                                var bgWidth = "593";
                                var url = "https:\/\/seal.godaddy.com\/verifySeal?sealID=LU6rXPgk5BZ67ZEYpYS2JcN3AyCJOs6aD3HBo4dwA3iGeqp6csKFmqgB0zLL";
                                window.open(url, 'SealVerfication', 'menubar=no,toolbar=no,personalbar=no,location=yes,status=no,resizable=yes,fullscreen=no,scrollbars=no,width=' + bgWidth + ',height=' + bgHeight);
                            }
                    </script>
                    <img style="cursor:pointer;cursor:hand" class="footer__ft__img1"
                         src="//img.alicdn.com/tfs/TB1gw_ZxNWYBuNjy1zkXXXGGpXa-131-32.gif"
                         onclick="verifySeal();" alt="SSL site seal - click to verify"
                         data-spm-anchor-id="a2o6e.home.0.i1.5b4d48d3mVzb2Z">
                    </span>
                    <a rel="nofollow" title="电子营业执照" target="_blank"
                       href="//img.alicdn.com/tfs/TB16oonxSBYBeNjy0FeXXbnmFXa-555-825.jpg">
                        <img class="footer__ft__img2" alt=""
                             src="//img.alicdn.com/tfs/TB1ZO80pyOYBuNjSsD4XXbSkFXa-141-41.png">
                    </a>

                    <a rel="nofollow" target="_blank" href="https://www.pcisecuritystandards.org/">
                        <img src="//img.alicdn.com/tfs/TB1Y580pyOYBuNjSsD4XXbSkFXa-83-50.png" class="footer__ft__img3">
                    </a>
                    <a rel="nofollow" target="_blank"
                       href="http://www.itrust.org.cn/home/index/itrust_certifi/wm/1756737221">
                        <img src="//img.alicdn.com/tfs/TB1pM_ZxNWYBuNjy1zkXXXGGpXa-114-40.png"
                             class="footer__ft__img4w">
                    </a>
                    <a target="_blank" href="https://search.szfw.org/cert/l/CX20130327002367002885"
                       id="___szfw_logo___">
                        <img class="footer__ft__img4" src="//img.alicdn.com/tfs/TB1C4nNxTlYBeNjSszcXXbwhFXa-114-42.png">
                    </a>
                    <script type="text/javascript">(function () {
                        document.getElementById('___szfw_logo___').oncontextmenu = function () {
                            return false;
                        }
                    })();</script>
                </div>
            </div>
        </div>
    </div>
</div>
<style>
    .sidebar {
        top: 72.5%;
    }

    img {
        border: 0;
    }
</style>
<script type="text/javascript" src="${ctx}/static/js/classification/tracker.Tracker.js" crossorigin></script>

<script type="text/javascript">

    var tracker = new window.Tracker({
        pid: 'damaipc',
        plugins: [
            [window.interfaceTrackerPlugin],
            [window.performanceTrackerPlugin]
        ],
    });

    // 启动 tracker 并监听全局 JS 异常
    tracker.install();
</script>


<div class="server_info" style="display:none;color:#f3f3f3;text-align:center;">mec-guide-web011014067155.center.na61
</div>
<script data-config="{combine:true}" src="${ctx}/static/js/classification/seed.js"></script>
<script src="${ctx}/static/js/classification/index2.js" async="" crossorigin></script>
<script type="text/javascript" src="${ctx}/static/layui/layui.js"></script>
<script type="text/javascript">
    layui.use('laydate', function() {
        var laydate = layui.laydate;
        //直接嵌套显示
        laydate.render({
            elem: '#test2'
            ,position: 'static'
            ,change: function(value, date){ //监听日期被切换
                lay('#testView').html(value);
            }
        });
    });
</script>
</body>
</html>
