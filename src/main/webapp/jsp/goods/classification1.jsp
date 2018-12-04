<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
    <li style="display: none;">
        <div class="page-total">
            <c:if test="${showName!=''}">
                搜索<em>“</em><span class="cf" title="${showName}"> ${showName} </span><em>”</em>,
            </c:if>
            共<span class="cf">${pageInfo.total}</span>个商品
        </div>
        <div class="page-num">
            <c:choose>
                <c:when test="${pageInfo.pageNum==1}">
                    <a href="javascript:void(0)" class="search_sort_prev_gray"></a>
                </c:when>
                <c:otherwise>
                    <a href="javascript:void(0)" class="search_sort_prev" onclick="pageAjax(${pageInfo.prePage})"></a>
                </c:otherwise>
            </c:choose>

            <p class="search_sort_txt"><span>${pageInfo.pageNum}</span>/<span>${pageInfo.pages}</span></p>
            <c:choose>
                <c:when test="${pageInfo.pageNum==pageInfo.pages}">
                    <a class="search_sort_next_gray" href="javascript:void(0)"></a>
                </c:when>
                <c:otherwise>
                    <a class="search_sort_next" href="javascript:void(0)" onclick="pageAjax(${pageInfo.nextPage})"></a>
                </c:otherwise>
            </c:choose>

        </div>
    </li>
    <c:choose>
        <c:when test="${pageInfo.total>0}">

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
                                                           data-spm="ditem_0" target="_blank">
                            <c:choose>
                                <c:when test="${fn:contains(obj.showName, showName) and showName!=''}">
                                    ${fn:replace(obj.showName,showName,"<span class='c4'>".concat(showName).concat("</span>"))}

                                </c:when>
                                <c:otherwise>
                                    ${obj.showName}
                                </c:otherwise>
                            </c:choose></a></h3>
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
        </c:when>
        <c:otherwise>
            <li class="now">没有找到符合条件的商品。您可以减少筛选条件重新搜索。</li>
        </c:otherwise>
    </c:choose>
    <c:if test="${pageInfo.pages>1}">
        <li id="search_list_page_tj" class="search_list_page">
            <div class="search-page-box">
                <ul class="search-page-list">
                    <ul class="search-page-num">

                        <c:choose>
                            <c:when test="${pageInfo.pageNum==1}">
                                <li class="search-pagePrev gray" >&lt; 上一页</li>
                            </c:when>
                            <c:otherwise>
                                <li class="search-pagePrev" onclick="pageAjax(${pageInfo.prePage})">&lt; 上一页</li>
                            </c:otherwise>
                        </c:choose>

                        <c:choose>
                            <c:when test="${pageInfo.pages<7}">

                                <c:forEach var="ind" begin="1" end="${pageInfo.pages}" step="1">
                                    <li onclick="pageAjax(${ind})" <c:if test="${pageInfo.pageNum==ind}">class="search-page-act"</c:if>>${ind}</li>
                                </c:forEach>

                            </c:when>
                            <c:when test="${pageInfo.pageNum<6 and pageInfo.pages>7}">

                                <c:forEach var="ind" begin="1" end="6" step="1">
                                    <li onclick="pageAjax(${ind})" <c:if test="${pageInfo.pageNum==ind}">class="search-page-act"</c:if>>${ind}</li>
                                </c:forEach>
                                <li pagen="morePage" class="search-page-more">...</li>
                                <li onclick="pageAjax(${pageInfo.pages})">${pageInfo.pages}</li>

                            </c:when>
                            <c:when test="${pageInfo.pageNum>5 and pageInfo.pages-pageInfo.pageNum>3}">
                                <li onclick="pageAjax(1)">1</li>
                                <li pagen="morePage" class="search-page-more">...</li>
                                <c:forEach var="ind" begin="${pageInfo.pageNum-2}" end="${pageInfo.pageNum+2}" step="1">
                                    <li onclick="pageAjax(${ind})" <c:if test="${pageInfo.pageNum==ind}">class="search-page-act"</c:if>>${ind}</li>
                                </c:forEach>
                                <li pagen="morePage" class="search-page-more">...</li>
                                <li onclick="pageAjax(${pageInfo.pages})">${pageInfo.pages}</li>
                            </c:when>
                            <c:when test="${pageInfo.pages-pageInfo.pageNum<4}">
                                <li onclick="pageAjax(1)">1</li>
                                <li pagen="morePage" class="search-page-more">...</li>
                                <c:forEach var="ind" begin="${pageInfo.pages-4}" end="${pageInfo.pages}" step="1">
                                    <li onclick="pageAjax(${ind})" <c:if test="${pageInfo.pageNum==ind}">class="search-page-act"</c:if>>${ind}</li>
                                </c:forEach>

                            </c:when>
                            <c:otherwise>
                                <li onclick="pageAjax(1)">1</li>
                                <li pagen="morePage" class="search-page-more">...</li>
                                <c:forEach var="ind" begin="${pageInfo.pageNum-2}" end="${pageInfo.pageNum+2}" step="1">
                                    <li onclick="pageAjax(${ind})" <c:if test="${pageInfo.pageNum==ind}">class="search-page-act"</c:if>>${ind}</li>
                                </c:forEach>
                                <li onclick="pageAjax(${pageInfo.pages})" <c:if test="${pageInfo.pageNum==pageInfo.pages}">class="search-page-act"</c:if> >${pageInfo.pages}</li>
                            </c:otherwise>
                        </c:choose>
                        <c:choose>
                            <c:when test="${pageInfo.pageNum==pageInfo.pages}">
                                <li class="search-pageNext gray">下一页&gt;</li>
                            </c:when>
                            <c:otherwise>
                                <li class="search-pageNext" onclick="pageAjax(${pageInfo.nextPage})">下一页&gt;</li>
                            </c:otherwise>
                        </c:choose>
                    </ul>

                </ul>
            </div>
        </li>
    </c:if>
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
</body>
</html>
