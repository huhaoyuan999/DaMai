<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="utf-8">
    <title>大麦网-全球华语排名领先票务网站(Damai.cn)-100%正品、先付先抢、在线选座！</title>
    <meta name="spm-id" content="a211rg">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <link href="${pageContext.request.contextPath}/static/css/index-min.css" type="text/css" rel="stylesheet">
    <meta name="format-detection" content="telephone=no, email=no">
    <link rel="shortcut icon"
          href="${pageContext.request.contextPath}/static/images/TB1fGH0fgMPMeJjy1XcXXXpppXa-16-16.ico"
          type="image/x-icon">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/layout-pc.css">
    <%--<script src="${pageContext.request.contextPath}/static/js/index.js" id="aplus-sufei"></script>--%>
    <link href="${pageContext.request.contextPath }/static/css/index.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/layui/css/layui.css" media="all">

    <%
        List list = (List) request.getAttribute("tcategorieList");
        String conPath = request.getContextPath();
        if (list == null) {
            out.print("<script>location.href = '" + conPath + "/show/index'</script>");
            return;
        }
    %>
</head>
<body data-spm='home' onload="bl()">

<!--[if gte IE 8]>
<div style="height: 40px;line-height: 40px;background-color: #ffedf4; color: #FF1268; text-align: center; ">
    由于您的浏览器版本过低，为了您更好的体验，请使用chrome浏览器或升级至IE10以上版本
</div>
<![endif]-->

<div class="adverse" data-spm="ad"
     style="background-color: rgb(230, 60, 146); display: block; transition: none 0s ease 0s;">
    <div class="close"></div>
    <a href="${ctx}/show/index"
       target="_blank" data-spm="dadvertise">
        <img src="${pageContext.request.contextPath }/static/image/TB1pUItiVzqK1RjSZFCSuvbxVXa.jpg">
    </a>
</div>

<%--引入头部信息开始--%>
<jsp:include page="jsp/comm/head.jsp"/>
<%--引入头部信息结束--%>

<%--轮播图效果开始--%>
<div id="slides" class="w1200">
    <div data-spm="banner" class="slides_container tab-content">
        <div class="tab-pannel">

            <div class="layui-carousel" id="test1">
                <div carousel-item>
                    <div><img src="${pageContext.request.contextPath }/static/image/TB1.OhXjYvpK1RjSZFqSuwXUVXa.jpg">
                    </div>
                    <div><img
                            src="${pageContext.request.contextPath }/static/image/TB1d2HxrRjTBKNjSZFwSuwG4XXa (1).jpg">
                    </div>
                    <div><img src="${pageContext.request.contextPath }/static/image/TB1GnHUjSrqK1RjSZK9SutyypXa.jpg">
                    </div>
                    <div><img src="${pageContext.request.contextPath }/static/image/TB1XUZqi3HqK1RjSZFESuwGMXXa.jpg">
                    </div>
                    <div><img src="${pageContext.request.contextPath }/static/image/TB1d2HxrRjTBKNjSZFwSuwG4XXa.jpg">
                    </div>
                </div>
            </div>
            <!-- 条目中可以是任意内容，如：<img src=""> -->

            <script src="${pageContext.request.contextPath }/static/layui/layui.js"></script>
            <script>
                layui.use('carousel', function () {
                    var carousel = layui.carousel;
                    //建造实例
                    carousel.render({
                        elem: '#test1'
                        , width: '100%' //设置容器宽度
                        , arrow: 'always' //始终显示箭头
                        //,anim: 'updown' //切换动画方式
                    });
                });
            </script>
        </div>
    </div>
</div>
<%--轮播图效果结束--%>

<div data-spm="category" class="category w1200">
    <c:forEach var="list" items="${tcategorieList}" varStatus="index">
        <c:if test="${index.index <10}">
            <a data-spm="${list.categorieId}" href="javascript:void(0);" class="category__list">
                <span class="category__icon category__icon__${list.categorieShorthand}"></span>
                <p class="category__info">${list.categorieName}</p>
            </a>
        </c:if>
    </c:forEach>
</div>

<div class="dm-content-wrap">
    <div class="J-data-dm-content" style="display: none;">
        [{"name":"演唱会","id":"1"},{"name":"话剧歌剧","id":"3"},{"name":"体育比赛","id":"6","link":"https://p.damai.cn/wow/pc/act/sports"},{"name":"儿童亲子","id":"100"}]
    </div>
    <c:forEach var="list" items="${tcategorieList}" varStatus="index">
    <c:if test="${index.count<5}">
        <div class="dm-content dm-content-3" data-spm="card_${index.index}" style="display: block;">
            <div class="head">
                <span class="head-title">${list.categorieName}</span>
                <a href="javascript:;">
                    <span class="head-more" onclick="qy('${list.categorieId}')">查看全部</span>
                </a>
            </div>
            <div class="box">
                <c:forEach items="${list.tshows}" var="obj" varStatus="objIndex">
                <c:choose>
                <c:when test="${objIndex.index==0}">
                <a href="${pageContext.request.contextPath }/show/detail/${obj.showId}" class="box-left"
                   target="_blank"
                   data-spm="ditem_${objIndex.index}">
                    <img class="box-left__bg"
                         src="${pageContext.request.contextPath }/static/image/${obj.showImg}">
                    <div class="box-left__info">
                        <div class="title">${obj.showName}</div>
                        <div class="details">¥${obj.showMinPrice}<span>起</span></div>
                    </div>
                </a>
                <c:if test="${objIndex.last==false}">
                    <div class="box-right">
                </c:if>

                </c:when>
                <c:when test="${objIndex.index>0 and objIndex.index<7}">
                <a href="${pageContext.request.contextPath }/show/detail/${obj.showId}"
                   class="box-right__item" data-spm="ditem_${objIndex}"
                   target="_blank">
                    <div class="itemimg">
                        <img src="${pageContext.request.contextPath }/static/image/${obj.showImg}">
                    </div>
                    <div class="iteminfo">
                        <div class="title" title="${obj.showName}">${obj.showName}</div>
                        <div class="venue">${obj.showPlace}</div>
                        <div class="showtime"><fmt:formatDate value="${obj.showBeginTime}" pattern="yyyy.MM.dd"/>
                            -<fmt:formatDate value="${obj.showEndTime}" pattern="yyyy.MM.dd"/>
                        </div>
                        <div class="price">¥${obj.showMinPrice}<span>起</span></div>
                    </div>
                </a>
                <c:if test="${objIndex.index==6 || objIndex.last==true}">
            </div>
            </c:if>

            </c:when>
            </c:choose>
            </c:forEach>
        </div>
    </c:if>
</div>
</c:forEach>
</div>

<%--引入尾部信息--%>
<jsp:include page="jsp/comm/foot.jsp"/>

<style>
    .sidebar {
        top: 72.5%;
    }

    img {
        border: 0;
    }


</style>


<%--<script type="text/javascript">--%>
    <%--var tracker = new window.Tracker({--%>
        <%--pid: 'damaipc',--%>
        <%--plugins: [--%>
            <%--[window.interfaceTrackerPlugin],--%>
            <%--[window.performanceTrackerPlugin]--%>
        <%--],--%>
    <%--});--%>
    <%--// 启动 tracker 并监听全局 JS 异常--%>
    <%--tracker.install();--%>
<%--</script>--%>
<%--<script data-config="{combine:true}" src="${pageContext.request.contextPath }/static/js/seed.js"></script>--%>
<script src="${pageContext.request.contextPath }/static/js/index.js"></script>
<script src="${pageContext.request.contextPath }/static/js/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath }/static/js/js/head.js"></script>
<script type="text/javascript">
    function bl() {
        $(".location-header").show()
    }
</script>
</body>
</html>
