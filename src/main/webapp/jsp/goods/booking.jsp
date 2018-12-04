<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <meta name="aplus-auto-exp-visible" content="0.5">
    <meta name="aplus-auto-exp-duration" content="500">
    <meta name="aplus-auto-exp"
          content="[{&quot;logkey&quot;:&quot;/damai_pc.default.project_qr_purchase&quot;,&quot;tag&quot;:&quot;div&quot;,&quot;filter&quot;:&quot;data-spm-auto&quot;,&quot;props&quot;:[&quot;item_id&quot;]}]">
    <link rel="stylesheet" type="text/css" href="${ctx}/static/css/style2.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/static/css/style(2).css">
    <link rel="shortcut icon"
          href="${pageContext.request.contextPath}/static/images/TB1fGH0fgMPMeJjy1XcXXXpppXa-16-16.ico"
          type="image/x-icon">
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


</head>
<body data-spm="project">
<%--onload="bar(${detailList.showStatus})"--%>
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

                    <div style="display: none" id="nickname">
                        ${user.nickname}
                    </div>
                    <c:if test="${!empty user}">
                <div class="m-sign m-sign-log" onmouseenter="showInfo()" onmouseleave="hideInfo()">
                        <label id="userLoginInfo" ><a class="user" href="${ctx}/user/modular/1" target="_blank"><img my="head"
                                                                                                             src="${ctx}/static/images/55379493_50_50.jpg"
                                                                                                             onerror="this.src='${ctx}/static/images/user.png';"></a><a
                                class="name j_userName" href="${ctx}/user/modular/1" target="_blank"> ${user.nickname}</a><b></b></label>
                        <div class="menu" my="menu">
                            <a href="${ctx}/user/modular/1" target="_blank" class="first">个人信息</a>
                            <a href="${ctx}/order/query/${user.id}/0" target="_blank">订单管理</a>
                            <a href="${ctx}/order/reduce/${user.id}" target="_blank">我的优惠券</a>
                            <a href="javascript:;" class="exit" onclick="exits()">退出</a>
                        </div>
                    </c:if>

                    <c:if test="${empty user}">
                    <div class="m-sign m-sign-log">
                        <label id="userLoginInfo">
                            <a class="user" href="javascript:;"><img
                                    original="//dui.dmcdn.cn/dm_2015/goods//images/user.png"
                                    src="${ctx}/static/image/user.png" style="display: block;"></a>
                            <span class="sign"><a href="${pageContext.request.contextPath }/jsp/user/login.jsp">登录</a> | <a
                                    href="${pageContext.request.contextPath }/jsp/user/register.jsp">注册</a></span>
                        </label>
                    </c:if>
                </div>

                <!-- 用户登录 end -->
            </li>
        </ul>
        <!-- 顶部栏 end -->
    </div>
</div>
<div id="showId" style="display: none">${detailList.showId}</div>
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
                            <img
                                    title="${detailList.showTitle}"
                                    alt="${detailList.showName}" width="277" height="373"
                                    src="${ctx}/static/image/${detailList.showImg}"
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
                        <div style="display: none">
                            <span>${detailList.showIptNum}</span>
                        </div>
                        <h2 class="tt" data-spm="click">
                            <span class="txt" id="detailListShowName">${detailList.showName}</span>
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
                        <c:choose>

                            <c:when test="${detailList.showStatus == 2}">
                                <div class="m-timeline m-timeline-2">
                                    <div class="wrap">
                                        <div class="box">
                                            <div class="bar">
                                                <div class="line" style="width: 145px;"></div>
                                            </div>
                                            <div class="itm itm-1" style="width:145px"><h3 class="txt">项目待定</h3>
                                                <div class="ico"></div>
                                                <p class="date"></p>
                                            </div>
                                            <div class="itm itm-2 itm-crt" style="width:145px"><h3 class="txt">
                                                预售/预订</h3>
                                                <div class="ico"></div>
                                                <p class="date"></p>
                                            </div>
                                            <div class="itm itm-3 " style="width:145px"><h3 class="txt">售票中</h3>
                                                <div class="ico"></div>
                                                <p class="date"></p>
                                            </div>
                                            <div class="itm itm-4" style="width:145px"><h3 class="txt">演出开始</h3>
                                                <div class="ico"></div>
                                                <p class="date"></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- 产品模块 begin -->
                                <div class="m-product m-product-2 -m-product-1 j_goodsDetails">
                                    <div class="m-goodstips m-goodstips-2">
                                        <div class="hd">
                                            <i class="ico"></i>
                                            <span class="txt txt-status">预售/预定</span>
                                        </div>
                                        <div class="bd">
                                            <div class="tips">
                                                <div class="box" style="">
                                                    <p class="itm">预售时间：<fmt:formatDate
                                                            value="${detailList.showBeginTime}"
                                                            pattern="yyyy.MM.dd HH:mm"/></p>
                                                </div>
                                                <div class="ops"><span class="btnsel"></span></div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 促销信息模块 begin -->
                                    <div class=""></div>
                                    <div class="m-load z-hide"><p class="txt"><i></i>加载失败</p></div>
                                    <!-- 促销信息模块 end -->
                                    <!-- 选择日历模块 begin -->
                                    <div class="m-choose m-choose-picker" style="display:none">
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
                                    <div class="m-choose m-choose-date">
                                        <h3 class="tt">演出时间：</h3>
                                        <div class="ct">
                                            <ul class="lst">
                                                <li class="itm" data-date="${detailList.showBeginTime}"
                                                    data-type="ticket">
                                                    <a href="javascript:;">
                                                        <fmt:formatDate value="${detailList.showBeginTime}"
                                                                        pattern="yyyy.MM.dd"/>
                                                    </a>
                                                </li>
                                                <li class="itm" data-date="${detailList.showEndTime}"
                                                    data-type="ticket">
                                                    <a href="javascript:;">
                                                        <fmt:formatDate value="${detailList.showEndTime}"
                                                                        pattern="yyyy.MM.dd"/>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- 选择日期模块 end -->

                                    <!-- 选择票价模块 begin -->
                                    <div class="m-choose m-choose-price ">
                                        <h3 class="tt">选择票价：</h3>
                                        <div class="ct">
                                            <ul class="lst">
                                                <li class="itm" data-spm="none" data-type="minPrice"
                                                    data-price="${detailList.showMinPrice}">
                                                    <a href="javascript:;">
                                                        <span class="price">${detailList.showMinPrice}</span>
                                                    </a>
                                                </li>
                                                <c:if test="${detailList.showMaxPrice != null and detailList.showMaxPrice != 0}">
                                                    <li class="itm" data-spm="none" data-type="maxPrice"
                                                        data-price="${detailList.showMaxPrice}">
                                                        <a href="javascript:;">
                                                            <span class="price">${detailList.showMaxPrice}</span>
                                                        </a>
                                                    </li>
                                                </c:if>
                                            </ul>
                                            <div class="tips-warn z-hide"><span class="txt"></span></div>
                                            <div class="tips tips-oos"><span class="ico"></span>
                                                <span class="txt">暂时无货，登录试试运气~</span>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 选择票价模块 end -->

                                    <!-- 购物车模块 begin -->
                                    <div class="m-cart" id="cartList" style="" data-spm="click">
                                        <h3 class="tt" style="display:none;">您选择了：</h3>
                                        <div class="ct" style="display:none;">
                                            <ul class="lst">

                                            </ul>
                                        </div>

                                        <div class="ops">
                                            <a href="javascript:;" class="u-btn u-btn-c1 u-btn-choose"
                                               style="display:none;">选座购买</a>
                                            <a class="u-btn u-btn-buynow" href="javascript:;">立即购买</a>
                                        </div>

                                    </div>
                                    <!-- 购物车模块 end -->


                                    <div class="m-qrcode"><!-- 大麦网客户端二维码 -->
                                        <h3 class="tt"><span id="ErWeiMaTips">手机扫一扫<br>下单更快捷</span></h3>
                                        <p class="ct">
                                            <img original="//static.dmcdn.cn/Erweima/1660/166083.jpg" alt="大麦网客户端"
                                                 width="109" height="108" src="${ctx}/static/image/166083.jpg"
                                                 style="display: block;">
                                        </p>
                                    </div>
                                    <div class="m_heighlight_tip"></div>
                                </div>
                                <!-- 产品模块 end -->
                            </c:when>

                            <c:when test="${detailList.showStatus == 3}">
                                <div class="m-timeline m-timeline-3">
                                    <div class="wrap">
                                        <div class="box">
                                            <div class="bar">
                                                <div class="line" style="width: 290px;"></div>
                                            </div>
                                            <div class="itm itm-1 " style="width:145px"><h3 class="txt">项目待定</h3>
                                                <div class="ico"></div>
                                                <p class="date"></p>
                                            </div>
                                            <div class="itm itm-2 " style="width:145px"><h3 class="txt">预售/预订</h3>
                                                <div class="ico"></div>
                                                <p class="date"></p>
                                            </div>
                                            <div class="itm itm-3 itm-crt" style="width:145px"><h3 class="txt">售票中</h3>
                                                <div class="ico"></div>
                                                <p class="date"></p>
                                            </div>
                                            <div class="itm itm-4" style="width:145px"><h3 class="txt">演出开始</h3>
                                                <div class="ico"></div>
                                                <p class="date"></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- 产品模块 begin -->
                                <div class="m-product m-product-2 -m-product-2 j_goodsDetails">
                                    <div class="m-goodstips m-goodstips-2">
                                        <div class="hd">
                                            <i class="ico"></i>
                                            <span class="txt txt-status">售票中</span>
                                        </div>
                                        <div class="bd">
                                            <div class="tips">
                                                <div class="box" style="">
                                                    <p class="itm">本场演出于【<fmt:formatDate
                                                            value="${detailList.showBeginTime}"
                                                            pattern="yyyy.MM.dd HH:mm"/>】正式开售</p>
                                                </div>
                                                <div class="ops"><span class="btnsel"></span></div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 促销信息模块 begin -->
                                    <div class=""></div>
                                    <div class="m-load z-hide"><p class="txt"><i></i>加载失败</p></div>
                                    <!-- 促销信息模块 end -->
                                    <!-- 选择日历模块 begin -->
                                    <div class="m-choose m-choose-picker" style="display:none">
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
                                    <div class="m-choose m-choose-date">
                                        <h3 class="tt">演出时间：</h3>
                                        <div class="ct">
                                            <ul class="lst">
                                                <li class="itm" data-date="${detailList.showBeginTime}"
                                                    data-type="ticket">
                                                    <a href="javascript:;">
                                                        <fmt:formatDate value="${detailList.showBeginTime}"
                                                                        pattern="yyyy.MM.dd"/>
                                                    </a>
                                                </li>
                                                <li class="itm" data-date="${detailList.showEndTime}"
                                                    data-type="ticket">
                                                    <a href="javascript:;">
                                                        <fmt:formatDate value="${detailList.showEndTime}"
                                                                        pattern="yyyy.MM.dd"/>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- 选择日期模块 end -->

                                    <!-- 选择票价模块 begin -->
                                    <div class="m-choose m-choose-price">
                                        <h3 class="tt">选择票价：</h3>
                                        <div class="ct">
                                            <ul class="lst">
                                                <li class="itm" data-spm="none" data-type="minPrice"
                                                    data-price="${detailList.showMinPrice}">
                                                    <a href="javascript:;">
                                                        <span class="price">${detailList.showMinPrice}</span>
                                                    </a>
                                                </li>
                                                <c:if test="${detailList.showMaxPrice != null and detailList.showMaxPrice != 0}">
                                                    <li class="itm" data-spm="none" data-type="maxPrice"
                                                        data-price="${detailList.showMaxPrice}">
                                                        <a href="javascript:;">
                                                            <span class="price">${detailList.showMaxPrice}</span>
                                                        </a>
                                                    </li>
                                                </c:if>
                                            </ul>
                                            <div class="tips-warn z-hide"><span class="txt"></span></div>
                                            <div class="tips tips-oos"><span class="ico"></span>
                                                <span class="txt">暂时无货，登录试试运气~</span>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 选择票价模块 end -->

                                    <!-- 购物车模块 begin -->
                                    <div class="m-cart" id="cartList">
                                        <h3 class="tt" style="display:none;">您选择了：</h3>
                                        <div class="ct" style="display:none;">
                                            <ul class="lst"></ul>
                                        </div>

                                        <div class="ops">
                                            <a href="javascript:;" class="u-btn u-btn-c1 u-btn-choose"
                                               style="display:none;">选座购买</a>
                                            <a class="u-btn u-btn-buynow" href="javascript:;">立即购买</a>
                                        </div>

                                    </div>
                                    <!-- 购物车模块 end -->


                                    <div class="m-qrcode"><!-- 大麦网客户端二维码 -->
                                        <h3 class="tt"><span>手机扫一扫<br>下单更快捷</span></h3>
                                        <p class="ct"><img original="//static.dmcdn.cn/Erweima/1660/166083.jpg"
                                                           alt="大麦网客户端"
                                                           width="109" height="108" src="${ctx}/static/image/166083.jpg"
                                                           style="display: block;"></p>
                                    </div>
                                    <div class="m_heighlight_tip"></div>
                                </div>
                                <!-- 产品模块 end -->
                            </c:when>


                        </c:choose>
                        <!-- 时间轴 end -->
                    </div>
                    <!-- 项目模块 end -->
                </div>

                <!-- 侧栏 begin -->
                <div class="sd">
                    <div class="m-agent">
                        <div class="tt">
                            <img original="//dui.dmcdn.cn/dm_2015/goods/images/m-agent-logo.png" alt="票务总代"
                                 src="//dui.dmcdn.cn/dm_2015/goods/images/m-agent-logo.png" style="display: inline;">
                        </div>
                        <div class="ct">
                            <a class="itm" target="_blank">本项目由大麦网总代理</a>
                            <a class="itm" target="_blank">MAITIX独家票务系统支持</a>
                        </div>
                    </div>

                    <div class="m-sdbox m-showtime">


                        <h2 class="tt">演出时间</h2>
                        <div class="ct">
                                <span class="txt"><fmt:formatDate value="${detailList.showBeginTime}"
                                                                  pattern="yyyy.MM.dd"/>-<fmt:formatDate
                                        value="${detailList.showEndTime}" pattern="yyyy.MM.dd"/></span>
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
                                                            <td><fmt:formatDate value="${detailList.showBeginTime}"
                                                                                pattern="yyyy.MM.dd"/>-<fmt:formatDate
                                                                    value="${detailList.showEndTime}"
                                                                    pattern="yyyy.MM.dd"/></td>
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
                                                        <img original="https://damaipimg.oss-cn-beijing.aliyuncs.com/cfs/src/a430650d-b13e-4731-9917-8f3fe6fbcc2e"
                                                             width="600" height="335" alt=""
                                                             data-spm-anchor-id="a2o6e.project.0.i1.515e63f2wTUcO8"
                                                             src="https://damaipimg.oss-cn-beijing.aliyuncs.com/cfs/src/a430650d-b13e-4731-9917-8f3fe6fbcc2e"
                                                             style="display: inline;">
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
                                                <a id="newitem_recom_1007.16925.95435.;i2i#desc"
                                                   href="javascript:void(0);" class="thumb" target="_blank" data-idx="1"
                                                   data-projectid="166294" title="${obj.showName}">
                                                    <img src="${ctx}/static/image/${obj.showImg}" alt="${obj.showName}">
                                                </a>
                                                <h3 class="tt">
                                                    <a id="newitem_recom_1007.16925.95435.;i2i#desc"
                                                       href="https://piao.damai.cn/166294.html" target="_blank"
                                                       data-idx="1" data-projectid="166294" title="${obj.showName}">
                                                            ${obj.showName}
                                                    </a>
                                                </h3>
                                            </div>
                                            <div class="info">
                                                <div class="row">
                                                    <a id="newitem_recom_1007.16925.95435.;i2i#desc"
                                                       href="https://piao.damai.cn/166294.html" target="_blank"
                                                       title="${obj.showName}" data-idx="1" data-projectid="166294">
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
                                        <img style="cursor:pointer;cursor:hand"
                                             src="${ctx}/static/image/siteseal_gd_3_h_l_m.gif" onclick="verifySeal();"
                                             alt="SSL site seal - click to verify">          </span>
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
                    <ul class="lst">
                        <li class="itm" data-date="${detailList.showBeginTime}" data-type="ticket">
                            <a href="javascript:;">
                                <fmt:formatDate value="${detailList.showBeginTime}" pattern="yyyy.MM.dd"/>
                            </a>
                        </li>
                        <li class="itm" data-date="${detailList.showEndTime}" data-type="ticket">
                            <a href="javascript:;">
                                <fmt:formatDate value="${detailList.showEndTime}" pattern="yyyy.MM.dd"/>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- 选择日期模块 end -->
            <!-- 选择票价模块 begin -->
            <div class="m-choose m-choose-price" data-row="3" data-col="4">
                <h3 class="tt">选择票价：</h3>
                <div class="ct">
                    <ul class="lst">
                        <li class="itm" data-spm="none" data-type="minPrice" data-price="${detailList.showMinPrice}">
                            <a href="javascript:;">
                                <span class="price">${detailList.showMinPrice}</span>
                            </a>
                        </li>
                        <c:if test="${detailList.showMaxPrice != null and detailList.showMaxPrice != 0}">
                            <li class="itm" data-spm="none" data-type="maxPrice"
                                data-price="${detailList.showMaxPrice}">
                                <a href="javascript:;">
                                    <span class="price">${detailList.showMaxPrice}</span>
                                </a>
                            </li>
                        </c:if>
                    </ul>
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

<div class="layers m-layer-newlogin" id="player"
     style="width: 508px; height: 411px; display: none; z-index: 200002; position: fixed; top: 10%; left: 50%; margin-left: -254px;">
    <b class="La"></b><b class="Lb"></b><b class="Lc"></b><b class="Ld"></b><a href="javascript:" title="关闭"
                                                                               class="close" onclick="hides()"></a>
    <div class="inner"><h2 id="cupter">用户登录<span class="f12 c3 fnor">中国票务在线用户可用已有账号登录</span></h2>
        <div id="play">
            <iframe name="layer" id="layer"
                    src="${ctx}/jsp/goods/bookLogin.jsp"
                    frameborder="0" scrolling="no" width="708" height="366"
                    style="width: 508px;margin-top: 35px"></iframe>
        </div>
    </div>
</div>
<div id="maskLevel"
     style="position: absolute; top: 0px; left: 0px; background: rgb(0, 0, 0); opacity: 0.3; z-index: 200001; width: 1899px; height: 4623px; display: none;">

</div>
<!-- 固定侧栏 end -->
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/booking/booking.js"></script>
</body>
</html>
