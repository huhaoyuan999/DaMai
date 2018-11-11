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
<ul class="search_list search_pic_list" id="content_list">
    <c:forEach items="${pageInfo.list}" var="obj" varStatus="index">
        <c:if test="${index.count%4==1}">
            <li style="*z-index:15;*position: relative;">
        </c:if>
        <div class="search_pic_item">
            <div class="search_pic_item_ct" style="display: block;">
                <div class="search_pic_img"><a id="search_log_pic_${obj.showImg}"
                                               href="javascript:void(0);"
                                               target="_blank"><img
                        src="${ctx}/static/image/${obj.showImg}" alt=""></a></div>
                <div class="search_pic_txt"><h3><a id="search_log_${obj.showImg}"
                                                   href="javascript:void(0);"
                                                   data-spm="ditem_0" target="_blank">${obj.showTitle}</a></h3>
                    <p class="search_txt_time c3"><a
                            href="javascript:void(0);"
                            class="search_txt_time_icon"></a><fmt:formatDate value="${obj.showBeginTime}" pattern="yyyy.MM.dd"/>
                        -<fmt:formatDate value="${obj.showEndTime}" pattern="yyyy.MM.dd"/></p>
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
                        </c:if></p>
                    <p class="search_pic_icon"></p></div>
            </div>
            <div class="search_pic_item_ct_on" style="display: none;">
                <div class="search_pic_img"><a id="search_log_pic_${obj.showImg}"
                                               href="javascript:void(0);"
                                               target="_blank"><img
                        src="${ctx}/static/image/${obj.showImg}" alt=""></a><a
                        href="javascript:void(0);"
                        target="_blank" class="infos" title="${obj.showPlace}">${obj.showPlace}</a>
                </div>
                <div class="search_pic_txt"><h3><a id="search_log_167146"
                                                   href="javascript:void(0);"
                                                   target="_blank">${obj.showName}</a></h3>
                    <p class="search_txt_time c3"><a
                            href="javascript:void(0);"
                            class="search_txt_time_icon"></a><fmt:formatDate value="${obj.showBeginTime}" pattern="yyyy.MM.dd"/>
                        -<fmt:formatDate value="${obj.showEndTime}" pattern="yyyy.MM.dd"/></p>
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
                        </c:if></p></div>
            </div>
        </div>
        <c:if test="${index.count%4==0}">
            </li>
        </c:if>
    </c:forEach>
    <li id="search_list_page_tj" class="search_list_page">
        <div class="search-page-box">
            <ul class="search-page-list">
                <ul class="search-page-num">
                    <li class="search-pagePrev gray">&lt; 上一页</li>
                    <li class="search-page-act" onclick="pagesAjax(1)">1</li>
                    <li onclick="pagesAjax(2)">2</li>
                    <li onclick="pagesAjax(3)">3</li>
                    <li onclick="pagesAjax(4)">4</li>
                    <li onclick="pagesAjax(5)">5</li>
                    <li onclick="pagesAjax(6)">6</li>
                    <li pagen="morePage" class="search-page-more">...</li>
                    <li onclick="pagesAjax(67)" dataid="67">67</li>
                    <li class="search-pageNext" onclick="pagesAjax(2)" dataid="2">下一页&gt;</li>
                </ul>
            </ul>
        </div>
    </li>
</ul>


</div>

<!--页面尾部  start-->


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

</body>
</html>
