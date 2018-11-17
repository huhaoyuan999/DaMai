<%--我的优惠劵页面--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml" class="ks-webkit537 ks-webkit ks-chrome70 ks-chrome"
      data-spm-anchor-id="0.0.0.i0.423cd01fbObbxD">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>我的大麦-个人信息</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/ui-min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/index3.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/saved_resource(1).css">
    <link rel="shortcut icon" type="image/x-icon" href="https://passport.damai.cn/images/favicon.ico">

    <style type="text/css">
        .onError {
            color: #f52954;
        }</style>
    <script type="text/javascript">
        var currNavName = "MyInfo";
    </script>
</head>

<c:if test="${empty user }">
    <jsp:forward page="/show/index"></jsp:forward>
</c:if>

<body data-spm-anchor-id="0.0.0.i1.423cd01fbObbxD">


<%--引入头部信息开始--%>
<jsp:include page="../comm/head.jsp"/>
<%--引入头部信息结束--%>

<div class="red-line"></div>

<!--中间主体信息开始-->
<div class="w1200">

    <%--左边导航部分开始--%>
    <div class="dm_coupon_menus">
        <div class="coupon_title">我的大麦</div>
        <div class="coupon_menu">

            <h2 class="coupon_menu_title">用户中心</h2>
            <ul class="coupon_menu_item">

                <li><a href="${ctx}/order/query/${user.id}/0">订单管理</a></li>

                <li><a href="${ctx}/order/reduce/${user.id}">我的优惠劵</a></li>
            </ul>

            <h2 class="coupon_menu_title">账户中心</h2>
            <ul class="coupon_menu_item">

                <c:if test="${user.type==0}">
                    <li><a href="${ctx}/address/userAddress/${user.id}">收货地址</a></li>
                </c:if>

                <li><a href="${ctx}/user/modular/2">账号设置</a></li>

                <li><a href="${ctx}/user/modular/1">个人信息</a></li>

                <c:if test="${user.type==0}">
                    <li><a href="${ctx}/user/ticketHolder/${user.id}">常用购票人管理</a></li>
                </c:if>

                <c:if test="${user.type==1}">
                    <li><a href="${ctx}/user/userAll/1">用户列表</a></li>
                </c:if>
            </ul>

            <c:if test="${user.type==1}">
                <h2 class="coupon_menu_title">商品管理</h2>
                <ul class="coupon_menu_item">

                    <li><a href="${ctx}/order/goods/1">商品管理</a></li>

                    <li><a href="${ctx}/order/changeGoods">商品上架</a></li>
                </ul>
            </c:if>

        </div>
    </div>
    <%--左边导航部分结束--%>

    <%--右边主体部分开始--%>
    <div class="dm_coupon_right">
        <div class="navigation"><a href="javascript:void(0);">我的大麦</a><span>&gt;</span><span class="cur">我的优惠劵</span>
        </div>
        <hr>
        <div id="container">
            <div class="order-list">
                <c:if test="${empty reduceList}">
                    <div class="next-row order-errors" data-spm-anchor-id="a2oeg.orderlist.0.i0.6edc73yo73yoTJ"
                         style="display: flex;">
                        <div class="next-col error-image"><img
                                src="${ctx}/static/image/TB11puPCgmTBuNjy1XbXXaMrVXa-238-168.png"></div>
                        <div class="next-col error-text">
                            <div class="next-row error-msg">您暂时还没有优惠劵哦~</div>
                        </div>
                    </div>
                </c:if>
                <c:if test="${!empty reduceList}">
                    <div class="order-list-wrapper" data-spm="list" style="display: block;">
                        <div class="next-row order-list-header">
                            <div class="next-col project-name" style="width: 140px;">优惠劵号码</div>
                            <div class="next-col ticket-number" style="width: 194px;">名称</div>
                            <div class="next-col order-amount" style="width: 280px;">优惠说明</div>
                            <div class="next-col transaction-status" style="width: 230px;">有效期</div>
                            <div class="next-col transaction-operation" style="width: 160px;">使用条件</div>
                        </div>
                        <div class="next-loading order-list-container"
                             data-spm-anchor-id="a2oeg.orderlist.list.i0.6edcIYemIYem8Z">

                            <div class="next-loading-component">
                                <c:forEach items="${reduceList}" var="reduce" varStatus="indexs">
                                    <div class="next-col order-list-item" data-spm="item_0">
                                        <div class="next-row order-list-item-bottom">
                                            <div class="next-col project-name" style="width: 140px;">
                                                <div class="next-row project-name-wrapper">
                                                        ${reduce.number}
                                                </div>
                                            </div>
                                            <div class="next-col order-amount" style="width: 194px;">
                                                <div class="next-col order-amount-wrapper">
                                                        ${reduce.name}
                                                </div>
                                            </div>
                                            <div class="next-col order-amount" style="width: 280px;">
                                                <div class="next-col order-amount-wrapper">
                                                        ${reduce.de}
                                                </div>
                                            </div>
                                            <div class="next-col transaction-status" style="width: 230px;">
                                                <div class="next-col transaction-status-wrapper">
                                                    开始：<fmt:formatDate value="${reduce.createDate}"
                                                                       pattern="yyyy-MM-dd hh:mm"/><br/>
                                                    结束：<fmt:formatDate value="${reduce.exitDate}"
                                                                       pattern="yyyy-MM-dd hh:mm"/>
                                                </div>

                                            </div>
                                            <div class="next-col transaction-operation" style="width: 160px;">
                                                <div class="next-col transaction-operation-wrapper">
                                                    满${reduce.tot}可抵扣${reduce.sub}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>

                        </div>
                        <div class="next-pagination next-pagination-normal next-pagination-medium medium hide order-list-pagination">
                            <div class="next-pagination-pages">
                                <button disabled="" type="button"
                                        class="next-btn next-btn-normal next-btn-medium next-pagination-item prev"><i
                                        class="next-icon next-icon-arrow-left next-icon-medium next-icon-first"></i>上一页
                                </button>
                                <div class="next-pagination-list">
                                    <button type="button"
                                            class="next-btn next-btn-normal next-btn-medium next-pagination-item current">
                                        1
                                    </button>
                                </div>
                                <button disabled="" type="button"
                                        class="next-btn next-btn-normal next-btn-medium next-pagination-item next">下一页<i
                                        class="next-icon next-icon-arrow-right next-icon-medium next-icon-last"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </c:if>
            </div>
        </div>
    </div>
    <%--右边主体部分结束--%>

</div>
<!--中间主体信息结束-->


<!--返回顶部及帮助中心-->
<div class="new-fast">
    <a onclick="jvascript:$(&#39;body,html&#39;).animate({ scrollTop: 0 }, 500);" class="fast-top"
       href="javascript:void(0)">返回顶部</a>
    <a class="fast-help" href="javascript:void(0)" target="_blank">帮助中心</a>
</div>

<!-- 成功提示层 begin -->
<div class="tips-y-b">
    <div class="tips-y-b-con"><p></p></div>
</div>
<div class="tips-f-b">
    <div class="tips-f-b-con"><p></p></div>
</div>


<%--引入尾部信息开始--%>
<jsp:include page="../comm/foot.jsp"/>
<%--引入尾部信息结束--%>

<style>
    .sidebar {
        top: 72.5%;
    }

    img {
        border: 0;
    }
</style>

<div class="item J_GoTop" style="display: none;">
    <div class="icon gotop"></div>
    <p>回到顶部</p>
</div>
</div>

<script src="${pageContext.request.contextPath }/static/js/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath }/static/js/js/ownInfo.js"></script>
</body>
</html>
