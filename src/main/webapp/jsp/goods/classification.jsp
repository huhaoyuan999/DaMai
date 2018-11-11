<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title> - 大麦搜索</title>
    <meta name="spm-id" content="a2oeg">
    <meta name="keywords" content=",,,,大麦网">
    <meta name="description" content="大麦网-中国最大票务平台,包括：,演出票,电影,球馆预订,门票,在线订票购票服务">
    <link rel="shortcut icon"
          href="${pageContext.request.contextPath}/static/images/TB1fGH0fgMPMeJjy1XcXXXpppXa-16-16.ico"
          type="image/x-icon">
    <link href="${ctx}/static/cssGoods/index.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/static/cssGoods/ui.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/static/layui/css/layui.css" rel="stylesheet" type="text/css"  media="all"/>


</head>
<body data-spm="search_category">


<!--页面头部 start-->
<jsp:include page="/jsp/comm/head.jsp"/>
<div class="wrapper">
    <script type="text/javascript">var cityId = 0;</script>
    <form name="searchForm" action="#" method="post">
        <input type="hidden" name="keyword" id="keyword" value="">
        <input type="hidden" name="currPage" id="currPage" value="1">
        <input type="hidden" id="tsg" value="0">
        <input type="hidden" id="sttime" value="">
        <input type="hidden" id="ettime" value="">
        <input type="hidden" id="degrade" value="">
        <input type="hidden" id="cityId" value="">
        <input type="hidden" id="ptype" value="">
        <input type="hidden" id="simp_key" value="">
        <input type="hidden" id="curr_order" value="1">
        <input type="hidden" id="city_name" value="">
        <input type="hidden" id="destCity" value="">
        <input type="hidden" id="category_name" value="">
        <input type="hidden" id="tag_names" value="">
        <input type="hidden" id="subcategory_name" value="">
        <input type="hidden" id="isSingleChar" value="">
        <input type="hidden" id="projectids"
               value="166939,166028,166083,166606,166715,165821,165799,165802,166479,166704,165383,165989,165763,163895,162901,166927,164170,163603,163506,162877,165847,165672,160502,161976,164298,166681,166968,167011,165951,162119,164917,166641,163531,166081,166084,166195,166805,164784,166920,165874,165396,166830,165807,166800,166754,166946,164259,166970,166040,78089,139556,166742,166187,165828,152109,166786,166925,166954,166921,166124">
        <input type="hidden" id="listmodle" value="">
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
            <p id="navigation_show">共<span class="cf">${pageInfo.total}</span>个商品</p>
        </div>
        <div id="pageNum" data-pageNum="${pageInfo.pageNum}" style="display: none">
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
                    <a class="search_city_more" href="javascript:void(0);" style="display: block;">
                        <span class="search_city_up" onclick="citylinecontrolg(0)">更多</span>
                        <span class="search_city_off" style="display:none;" onclick="citylinecontrolg(1)">收起</span>
                    </a>
                    <dl class="search_city_line" id="search_city_line">
                        <dt>城　市：</dt>
                        <dd>

                            <c:choose>
                                <c:when test="${areainfoId==null}">
                                    <a href="javascript:void(0)" class="active" data-city="ci" >全部</a>
                                </c:when>
                                <c:otherwise>
                                    <a href="javascript:void(0)" data-city="ci" >全部</a>
                                </c:otherwise>
                            </c:choose>
                        </dd>
                        <dd class="search_city_num" id="search_city_num_tj">
                            <ul class="search_city_all clear">
                                <c:forEach items="${cityList}" var="obj" varStatus="index">
                                    <c:choose>
                                        <c:when test="${areainfoId == obj.areainfoId }">
                                            <li><a href="javascript:void(0)" data-city="ci" class="active" data-ciy="ci" data-ctiy="${index.index}" data-weizhi="${index.count}">${obj.cityName}</a></li>
                                        </c:when>
                                        <c:otherwise>
                                            <li><a href="javascript:void(0)" data-city="ci" data-weizhi="${index.count}" >${obj.cityName}</a></li>
                                        </c:otherwise>
                                    </c:choose>

                                </c:forEach>
                            </ul>
                        </dd>
                    </dl>
                    <!-- 加载城市 end -->
                    <!-- 加载分类 start-->
                    <dl id="category_filter_id" class="search_city_line">
                        <dt>分　类：</dt>
                        <dd>
                            <c:choose>
                                <c:when test="${categorieId==0}">
                                    <a href="javascript:void(0)" data-categorie="categorie" data-categorieId="0"   class="active">全部</a>
                                </c:when>
                                <c:otherwise>
                                    <a href="javascript:void(0)" data-categorie="categorie" data-categorieId="0" >全部</a>
                                </c:otherwise>
                            </c:choose>

                        </dd>
                        <dd class="search_city_num">
                            <ul class="clear">
                                <c:forEach items="${tcategorieList}" var="obj" varStatus="index">
                                    <li>

                                        <c:choose>
                                            <c:when test="${categorieId==obj.categorieId}">
                                                <a href="javascript:void(0)" data-categorieId="${obj.categorieId}" data-categorie="categorie" class="active">${obj.categorieName}</a>
                                            </c:when>
                                            <c:otherwise>
                                                <a href="javascript:void(0)" data-categorieId="${obj.categorieId}" data-categorie="categorie" >${obj.categorieName}</a>
                                            </c:otherwise>
                                        </c:choose>
                                    </li>
                                </c:forEach>
                            </ul>
                        </dd>
                    </dl>
                    <!-- 加载分类 end -->
                    <!--加载子类 start -->
                    <%--<dl class="" id="subcategory_filter_id" style="display:none"></dl>--%>
                    <!-- 加载子类 end -->
                    <!--时间筛选 start -->
                    <dl id="search_time" class="search_city_line" class="layui-inline">
                        <dt>时　间：</dt>
                        <dd>
                            <a id="alltime" class="active" href="javascript:void(0)" data-date="selectDate" data-val="0">全部</a>
                        </dd>
                        <dd class="search_city_num">
                            <ul class="clear">
                                <li>
                                    <a href="javascript:void(0)" data-date="selectDate" data-val="1">今天</a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)" data-date="selectDate" data-val="2">明天</a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)" data-date="selectDate" data-val="3">7天内</a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)" data-date="selectDate" data-val="4">一个月内</a>
                                </li>
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
                                <a title="列表模式" href="javascript:void(0)" data-mode="mode" mode-mode-id="0" class="search_lis_on"></a>
                                <a title="大图模式" href="javascript:void(0)" data-mode="mode" class="search_icon" mode-mode-id="1"></a>
                            </div>
                            <div class="search_sort_num"><a href="javascript:void(0)" class="search_sort_prev_gray"></a>
                                <p class="search_sort_txt"><span>1</span>/<span>67</span></p>
                                <a class="search_sort_next" href="javascript:void(0)" onclick="pagesAjax(2)"></a>
                            </div>
                        </div>
                        <ul class="search_sort_way">
                            <li>
                                <a id="search_xgj" class="" href="javascript:void(0)"
                                   data-pai="pai" data-pai-val="categorie_id">相关度排序</a>
                            </li>
                            <li>
                                <a id="search_rm" href="javascript:void(0)" data-pai="pai" data-pai-val="count" class="active">推荐排序</a>
                            </li>
                            <li>
                                <a id="search_ycsj" href="javascript:void(0)" data-pai="pai" data-pai-val="show_begin_time">最近开场</a>
                            </li>
                            <li>
                                <a id="search_sjsj" href="javascript:void(0)" data-pai="pai" data-pai-val="show_id">最新上架</a>
                            </li>
                        </ul>
                    </div>
                    <ul class="search_list_loading">
                        <li style="border: none; margin-left: 30px; height: 40px; margin-top: 25px; display: none;"
                            id="search_loading">
                            <div class="search_loading">努力加载中...</div>
                        </li>
                    </ul>
                    <!-- 搜索列表 start -->
                    <ul class="search_list search_pic_list" id="content_list">
                        <c:forEach items="${pageInfo.list}" var="obj" varStatus="index">
                            <li>
                                <div class="search_img">
                                    <a id="search_log_${obj.showImg}" href="javascript:void(0);" data-spm="ditem_0" target="_blank" title="${obj.showName}">
                                        <img src="${ctx}/static/image/${obj.showImg}" alt="" width="115" height="155"/>
                                    </a>
                                </div>
                                <div class="search_txt"><h3><a id="search_log_166939" href="javascript:void(0);" target="_blank">${obj.showName}</a></h3>
                                    <p class="search_txt_cut c3">${obj.showTitle}</p>
                                    <p class="search_txt_time c3"><a href="javascript:void(0);" class="search_txt_time_icon"></a><fmt:formatDate value="${obj.showBeginTime}" pattern="yyyy.MM.dd"/>
                                        -<fmt:formatDate value="${obj.showEndTime}" pattern="yyyy.MM.dd"/></p>
                                    <p class="c1"><span class="c3 search_txt_site_icon">${obj.showPlace}</span></p>
                                    <p class="search_txt_piao">
                                        <c:choose>
                                            <c:when test="${obj.showMaxPrice == null || obj.showMaxPrice == ''}">
                                                <em>${obj.showMinPrice}元</em>
                                            </c:when>
                                            <c:otherwise>
                                                <em>${obj.showMinPrice}-${obj.showMaxPrice}元</em>
                                            </c:otherwise>
                                        </c:choose>
                                        <c:if test="${obj.showStatus eq 1}">
                                            预订
                                        </c:if>
                                        <c:if test="${obj.showStatus eq 2}">
                                            预售
                                        </c:if>
                                        <c:if test="${obj.showStatus eq 3}">
                                            售票中
                                        </c:if>
                                    </p>
                                </div>
                            </li>

                        </c:forEach>
                        <li id="search_list_page_tj" class="search_list_page">
                            <div class="search-page-box">
                                <ul class="search-page-list">
                                    <%--<ul class="search-page-num">--%>

                                        <%--<c:forEach var="ind" begin="1" end="${pageInfo.pages}" step="1">--%>
                                            <%--<c:if test="${ind>=1 and ind<5}">--%>
                                                <%--<li class="search-page-act" onclick="pageAjax(${ind})">${ind}</li>--%>
                                            <%--</c:if>--%>
                                            <%--<c:if test="${ind==5}">--%>
                                                <%--<li pagen="morePage" class="search-page-more">...</li>--%>
                                            <%--</c:if>--%>

                                            <%--<c:if test="${ind>5}">--%>
                                                <%--<li class="search-page-act" onclick="pageAjax(${ind})">${ind}</li>--%>
                                            <%--</c:if>--%>
                                            <%--<c:if test="${pageInfo.pages-index<5}">--%>
                                                <%--<li pagen="morePage" class="search-page-more">...</li>--%>
                                            <%--</c:if>--%>
                                            <%--<c:if test="${ind==pageInfo.pages}">--%>
                                                <%--<li onclick="pageAjax(${pageInfo.pages})">${pageInfo.pages}</li>--%>
                                            <%--</c:if>--%>

                                        <%--</c:forEach>--%>
                                        <%--<c:if test="${pageInfo.pageNum==1}">--%>
                                            <%--<li class="search-pagePrev gray" onclick="pageAjax(${pageInfo.prePage})">&lt; 上一页</li>--%>
                                            <%--<li class="search-page-act" onclick="pageAjax(${1})">1</li>--%>
                                            <%--<li  onclick="pageAjax(${pageInfo.pageNum+1})">${pageInfo.pageNum+1}</li>--%>
                                            <%--<li  onclick="pageAjax(${pageInfo.pageNum+2})">${pageInfo.pageNum+2}</li>--%>
                                            <%--<li  onclick="pageAjax(${pageInfo.pageNum+3})">${pageInfo.pageNum+3}</li>--%>
                                            <%--<li  onclick="pageAjax(${pageInfo.pageNum+4})">${pageInfo.pageNum+4}</li>--%>
                                            <%--<li  onclick="pageAjax(${pageInfo.pageNum+5})">${pageInfo.pageNum+5}</li>--%>
                                            <%--<li pagen="morePage" class="search-page-more">...</li>--%>
                                            <%--<li  onclick="pageAjax(${pageInfo.pages})">${pageInfo.pages}</li>--%>
                                            <%--<li class="search-pageNext" onclick="pageAjax(${pageInfo.nextPage})" dataid="2">下一页&gt;</li>--%>
                                        <%--</c:if>--%>
                                        <%--<c:if test="${pageInfo.pageNum>1 and pageInfo.pageNum<6}">--%>

                                                <%--<c:if test="${pageInfo.pageNum==ind}">--%>
                                                    <%--<li class="search-page-act" onclick="pageAjax(${ind})">${ind}</li>--%>
                                                <%--</c:if>--%>
                                                <%--<c:if test="${pageInfo.pageNum!=ind}">--%>
                                                    <%--<li  onclick="pageAjax(${ind})">${ind}</li>--%>
                                                <%--</c:if>--%>

                                            <%--<li pagen="morePage" class="search-page-more">...</li>--%>
                                            <%--<li  onclick="pageAjax(${pageInfo.pages})">${pageInfo.pages}</li>--%>

                                        <%--</c:if>--%>
                                        <%--<ul id="biuuu_city_list"></ul>--%>
                                            <ul id="demo20" class="search-page-num"></ul>




                                    <%--</ul>--%>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="search_right">
                <div class="search_right_head"></div>
                <!--热门推荐-->
                <div id="guess_you_like">
                    <div class="search_box">
                        <div class="search_box_title">您可能还喜欢</div>
                        <div class="search_box_con">
                            <ul id="search_recom1" class="search_box_hot">
                                <li class="clearfix"><a
                                        id="19826535-55a8-46dd-aa32-9c33193cb624_1007.16923.113595.;categorycitymatcher;unkown;localcityfirstadjuster"
                                        href="https://piao.damai.cn/166605.html?clicktitle=%E5%BB%96%E4%BF%8A%E6%B6%9B%E2%80%9C%E8%BF%99%E4%B8%AA%E4%BA%BA%E2%80%9D2018%E5%B7%A1%E5%9B%9E%E6%BC%94%E5%94%B1%E4%BC%9A%E5%8C%97%E4%BA%AC%E7%AB%99"
                                        target="_blank" class="img"><img title="廖俊涛“这个人”2018巡回演唱会北京站"
                                                                         src="${ctx}/static/image/166605_n.jpg"
                                                                         width="171"
                                                                         height="214" alt=""></a>
                                    <div class="infos">
                                        <div class="title"><a
                                                id="19826535-55a8-46dd-aa32-9c33193cb624_1007.16923.113595.;categorycitymatcher;unkown;localcityfirstadjuster"
                                                title="廖俊涛“这个人”2018巡回演唱会北京站"
                                                href="https://piao.damai.cn/166605.html?clicktitle=%E5%BB%96%E4%BF%8A%E6%B6%9B%E2%80%9C%E8%BF%99%E4%B8%AA%E4%BA%BA%E2%80%9D2018%E5%B7%A1%E5%9B%9E%E6%BC%94%E5%94%B1%E4%BC%9A%E5%8C%97%E4%BA%AC%E7%AB%99"
                                                target="_blank">廖俊涛“这个人”2018巡回演唱会北京站</a></div>
                                        <p title="糖果TANGO-雍和宫店三层">糖果TANGO-雍和宫店三层</p>
                                        <p title="2018.10.28  20:30">2018.10.28 20:30</p>
                                        <p class="c-price"><strong>200.0元</strong>起</p></div>
                                </li>
                                <li class="clearfix"><a
                                        id="19826535-55a8-46dd-aa32-9c33193cb624_1007.16923.113595.;categorycitymatcher;unkown;localcityfirstadjuster"
                                        href="https://piao.damai.cn/166485.html?clicktitle=%E6%96%B0%E8%AF%B4%E5%94%B1%E5%8C%97%E7%BE%8E%E5%85%84%E5%BC%9F%E2%80%9C%E4%B8%9C%E6%88%90%E8%A5%BF%E5%B0%B1%E2%80%9D%E5%B7%A1%E6%BC%94%20%E5%8C%97%E4%BA%AC%E7%AB%99"
                                        target="_blank" class="img"><img title="新说唱北美兄弟“东成西就”巡演 北京站"
                                                                         src="${ctx}/static/image/166485_n.jpg"
                                                                         width="171"
                                                                         height="214" alt=""></a>
                                    <div class="infos">
                                        <div class="title"><a
                                                id="19826535-55a8-46dd-aa32-9c33193cb624_1007.16923.113595.;categorycitymatcher;unkown;localcityfirstadjuster"
                                                title="新说唱北美兄弟“东成西就”巡演 北京站"
                                                href="https://piao.damai.cn/166485.html?clicktitle=%E6%96%B0%E8%AF%B4%E5%94%B1%E5%8C%97%E7%BE%8E%E5%85%84%E5%BC%9F%E2%80%9C%E4%B8%9C%E6%88%90%E8%A5%BF%E5%B0%B1%E2%80%9D%E5%B7%A1%E6%BC%94%20%E5%8C%97%E4%BA%AC%E7%AB%99"
                                                target="_blank">新说唱北美兄弟“东成西就”巡演 北京站</a></div>
                                        <p title="MAO Livehouse北京五棵松">MAO Livehouse北京五棵松</p>
                                        <p title="2018.10.28  21:00">2018.10.28 21:00</p>
                                        <p class="c-price"><strong>120.0元</strong>起</p></div>
                                </li>
                                <li class="clearfix"><a
                                        id="19826535-55a8-46dd-aa32-9c33193cb624_1007.16923.113595.;categorycitymatcher;unkown;localcityfirstadjuster"
                                        href="https://piao.damai.cn/166849.html?clicktitle=Blue%20Note%20Beijing%20%E7%BB%99%E7%BB%99%20%E9%A9%AC%E6%9D%A1%26%E4%B9%90%E9%98%9F%E4%B8%93%E5%9C%BA"
                                        target="_blank" class="img"><img title="Blue Note Beijing 给给 马条&amp;乐队专场"
                                                                         src="${ctx}/static/image/166849_n.jpg"
                                                                         width="171"
                                                                         height="214" alt=""></a>
                                    <div class="infos">
                                        <div class="title"><a
                                                id="19826535-55a8-46dd-aa32-9c33193cb624_1007.16923.113595.;categorycitymatcher;unkown;localcityfirstadjuster"
                                                title="Blue Note Beijing 给给 马条&amp;乐队专场"
                                                href="https://piao.damai.cn/166849.html?clicktitle=Blue%20Note%20Beijing%20%E7%BB%99%E7%BB%99%20%E9%A9%AC%E6%9D%A1%26%E4%B9%90%E9%98%9F%E4%B8%93%E5%9C%BA"
                                                target="_blank">Blue Note Beijing 给给 马条&amp;乐队专场</a></div>
                                        <p title="Blue Note Beijing">Blue Note Beijing</p>
                                        <p title="2018.11.21">2018.11.21</p>
                                        <p class="c-price"><strong>280.0元</strong>起</p></div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</div>

<!--页面尾部  start-->


<div class="dm-footer">
    <div class="w1200">
        <ul class="footer__links">

            <li class="footer__links__list"><a href="https://help.damai.cn/" target="_blank" data-spm="flink0">帮助中心</a>
            </li>
            <li class="footer__links__grep">|</li>

            <li class="footer__links__list"><a href="https://help.damai.cn/helpPage.htm?pageId=69&amp;categoryId=30"
                                               target="_blank" data-spm="flink1">公司介绍</a></li>
            <li class="footer__links__grep">|</li>

            <li class="footer__links__list"><a href="https://help.damai.cn/helpPage.htm?pageId=70&amp;categoryId=30"
                                               target="_blank" data-spm="flink2">品牌识别</a></li>
            <li class="footer__links__grep">|</li>

            <li class="footer__links__list"><a href="https://help.damai.cn/helpPage.htm?pageId=72&amp;categoryId=30"
                                               target="_blank" data-spm="flink3">公司大事记</a></li>
            <li class="footer__links__grep">|</li>

            <li class="footer__links__list"><a href="https://help.damai.cn/helpPage.htm?pageId=40&amp;categoryId=14"
                                               target="_blank" data-spm="flink4">隐私权专项政策</a></li>
            <li class="footer__links__grep">|</li>

            <li class="footer__links__list"><a
                    href="https://jubao.alibaba.com/internet/readme.htm?spm=a2o6e.search.0.0.72f44d15Votov6&amp;site=damai"
                    target="_blank" data-spm="flink5">廉正举报</a></li>
            <li class="footer__links__grep">|</li>

            <li class="footer__links__list"><a href="https://help.damai.cn/helpPage.htm?pageId=58&amp;categoryId=5"
                                               target="_blank" data-spm="flink6">联系合作</a></li>
            <li class="footer__links__grep">|</li>

            <li class="footer__links__list"><a
                    href="https://job.alibaba.com/zhaopin/positionList.htm?keyWord=JXU1OTI3JXU5RUE2&amp;_input_charset=UTF-8"
                    target="_blank" data-spm="flink7">招聘信息</a></li>
            <li class="footer__links__grep">|</li>

            <li class="footer__links__list"><a
                    href="https://x.damai.cn/markets/special/fangzhapian?spm=a2o6e.home.0.0.75df48d3hqGWGD&amp;wh_ttid=pc"
                    target="_blank" data-spm="flink8">防骗秘籍</a></li>


        </ul>
        <div class="footer__ft">
            <div class="footer__ft_fl">
                <a href="https://www.damai.cn/?spm=a2o6e.home.0.0.591b48d3QzpG8B" target="_blank"
                   class="footer__ft__logo">
                    <img src="${ctx}/static/image/TB1A42zxNGYBuNjy0FnXXX5lpXa-167-60.png" alt="">
                </a>
                <div class="footer__ft__code__box">
                    <img class="footer__ft__code" src="${ctx}/static/image/TB1r0uFxHSYBuNjSspiXXXNzpXa-280-280.png"
                         alt="">
                    <span>APP下载</span>
                </div>
            </div>
            <div class="footer__ft_fr">
                <div class="footer__fr__contact">

                    <a style="margin-left:0;" href="https://online.damai.cn/alime/index?from=damai_pc_item&amp;v=3"
                       class="footer__fr__contact__btn alime">在线客服</a>
                </div>
                <ul class="footer__ft__words">
                    <li class="footer__ft__certificate"><a
                            href="http://www.miitbeian.gov.cn/?spm=a2o6e.home.0.0.5b4d48d3mVzb2Z" target="_blank">京ICP证031057号</a>
                    </li>
                    <li class="footer__ft__grep">|</li>
                    <li class="footer__ft__certificate"><a href="http://www.miitbeian.gov.cn/" target="_blank">京ICP备11043884号</a>
                    </li>
                    <li class="footer__ft__grep">|</li>
                    <li class="footer__ft__certificate"><a
                            href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010102000430"
                            target="_blank">京公网安备11010102000430号</a>
                    </li>
                    <li class="footer__ft__grep">|</li>
                    <li class="footer__ft__certificate"><a
                            href="https://img.alicdn.com/tfs/TB1K9r6xN9YBuNjy0FfXXXIsVXa-1152-799.jpg" target="_blank">广播电视节目制作经营许可证
                        (京)字第02253号</a></li>
                </ul>
                <ul class="footer__ft__words">
                    <li class="footer__ft__certificate"><a
                            href="https://img.alicdn.com/tfs/TB1AsH4xH9YBuNjy0FgXXcxcXXa-1420-1032.jpg" target="_blank">网络文化经营许可证
                        京网文[2016]3438-413号</a></li>
                    <li class="footer__ft__grep">|</li>
                    <li class="footer__ft__certificate"><a
                            href="https://img.alicdn.com/tfs/TB1DfD6CxGYBuNjy0FnXXX5lpXa-1079-1527.jpg" target="_blank">营业性演出许可证
                        京市演587号</a></li>
                </ul>
                <ul class="footer__ft__words">
                    <li class="footer__ft__certificate">北京红马传媒文化发展有限公司 版权所有</li>
                    <li class="footer__ft__certificate"><a
                            href="https://www.damai.cn/?spm=a2o6e.home.0.0.591b48d3QzpG8B">大麦网</a></li>
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
                         src="${ctx}/static/image/TB1gw_ZxNWYBuNjy1zkXXXGGpXa-131-32.gif" onclick="verifySeal();"
                         alt="SSL site seal - click to verify" data-spm-anchor-id="a2o6e.home.0.i1.5b4d48d3mVzb2Z">
                    </span>
                    <a rel="nofollow" title="电子营业执照" target="_blank"
                       href="https://img.alicdn.com/tfs/TB16oonxSBYBeNjy0FeXXbnmFXa-555-825.jpg">
                        <img class="footer__ft__img2" alt=""
                             src="${ctx}/static/image/TB1ZO80pyOYBuNjSsD4XXbSkFXa-141-41.png">
                    </a>

                    <a rel="nofollow" target="_blank" href="https://www.pcisecuritystandards.org/">
                        <img src="${ctx}/static/image/TB1Y580pyOYBuNjSsD4XXbSkFXa-83-50.png" class="footer__ft__img3">
                    </a>
                    <a rel="nofollow" target="_blank"
                       href="http://www.itrust.org.cn/home/index/itrust_certifi/wm/1756737221">
                        <img src="${ctx}/static/image/TB1pM_ZxNWYBuNjy1zkXXXGGpXa-114-40.png" class="footer__ft__img4w">
                    </a>
                    <a target="_blank" href="https://search.szfw.org/cert/l/CX20130327002367002885"
                       id="___szfw_logo___">
                        <img class="footer__ft__img4" src="${ctx}/static/image/TB1C4nNxTlYBeNjSszcXXbwhFXa-114-42.png">
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
<script src="${pageContext.request.contextPath }/static/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${ctx}/static/js/classification/classifiction.js"></script>
<script type="text/javascript" src="${ctx}/static/js/index.js"></script>
<script src="${ctx}/static/layui/layui.all.js"  charset="utf-8"></script>
<!--日期插件-->
<script>
    layui.use(['laypage', 'layer'], function(){
        var laypage = layui.laypage
            ,layer = layui.layer;

        //自定义样式
        laypage.render({
            elem: 'demo2-1'
            ,count: 1110
            ,theme: '#ed0a75'
            ,limit:60
        });




        //将一段数组分页展示

        // 测试数据

        //调用分页
        laypage.render({
            elem: 'demo20'
            ,count:${pageInfo.total}
            ,theme:'#ed0a75'
            ,limit:60
        });
    });






        layui.use('laydate', function(){
        var laydate = layui.laydate;

        //日期选择器
        laydate.render({
            elem: '#date1',
            //,type: 'date' //默认，可不填
        });
        //日期选择器
        laydate.render({
            elem: '#date2',
            //,type: 'date' //默认，可不填
        });
    });
</script>

<div class="server_info" style="display:none;color:#f3f3f3;text-align:center;">mec-guide-web011014068073.center.na62</div>

<div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div>
<div class="sidebar" data-spm="slidelayer">
    <div class="item">
        <a class="alime" href="https://online.damai.cn/alime/index?from=damai_pc_item&amp;v=3" target="_blank"
           data-spm="dcustomerservice">
            <div class="icon service"></div>
            <p>在线客服</p>
        </a>
    </div>
    <div class="item" style="border-bottom-width: 1px;">
        <a href="javascript:void(0)" target="_blank">
            <div class="icon damai"></div>
            <p>APP下载</p>
            <div class="qrcode">
                <img src="${ctx}/static/image/TB1r0uFxHSYBuNjSspiXXXNzpXa-280-280.png" width="72" height="72">
            </div>
        </a>
    </div>
    <div class="item J_GoTop" style="">
        <div class="icon gotop"></div>
        <p>回到顶部</p>
    </div>
</div>
<iframe src="${ctx}/pages/blk.html" id="_oid_ifr_" style="width: 0px; height: 0px; display: none;"></iframe>
</body>
</html>
