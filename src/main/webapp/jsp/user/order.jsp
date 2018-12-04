<%--订单管理页面--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml" class="ks-webkit537 ks-webkit ks-chrome70 ks-chrome"
      data-spm-anchor-id="0.0.0.i0.423cd01fbObbxD">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>我的大麦-个人信息</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/public-min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/ui-min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/index3.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/saved_resource(1).css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/cueLayer.css">
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

            <h2 class="coupon_menu_title">交易中心</h2>
            <ul class="coupon_menu_item">

                <li><a href="${ctx}/order/query/${user.id}/0">订单管理</a></li>


                    <li><a href="${ctx}/jsp/admin/accountManage.jsp">账户管理</a></li>


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
        <div class="navigation"><a href="javascript:void(0);">我的大麦</a><span>&gt;</span><span class="cur">订单管理</span>
        </div>
        <hr>
        <div id="container">
            <div class="order-list">
                <c:if test="${empty orderList && user.type==0}">
                    <div class="next-row order-errors" data-spm-anchor-id="a2oeg.orderlist.0.i0.6edc73yo73yoTJ"
                         style="display: flex;">
                        <div class="next-col error-image"><img
                                src="${ctx}/static/image/TB11puPCgmTBuNjy1XbXXaMrVXa-238-168.png"></div>
                        <div class="next-col error-text">
                            <div class="next-row error-msg">您还没有订单哦~</div>
                        </div>
                    </div>
                </c:if>
                <c:if test="${!empty orderList && user.type==0}">
                    <div class="order-list-wrapper" data-spm="list" style="display: block;">
                        <div class="next-row order-list-header">
                            <div class="next-col project-name" style="width: 390px;">项目名称</div>
                            <div class="next-col ticket-number" style="width: 144px;">票品张数</div>
                            <div class="next-col order-amount" style="width: 130px;">订单金额</div>
                            <div class="next-col transaction-status" style="width: 130px;">交易状态</div>
                            <div class="next-col transaction-operation" style="width: 210px;">交易操作</div>
                        </div>
                        <div class="next-loading order-list-container"
                             data-spm-anchor-id="a2oeg.orderlist.list.i0.6edcIYemIYem8Z">

                            <c:forEach items="${orderList}" var="order" varStatus="indexs">
                                <div class="next-loading-component" id="deleteOrder${order.id}">
                                    <div class="next-col order-list-item" data-spm="item_0">
                                        <div class="next-row order-list-item-header">订单号：${order.number}</div>
                                        <div class="next-row order-list-item-bottom">
                                            <div class="next-col project-name" style="width: 390px;">
                                                <div class="next-row project-name-wrapper" data-spm="list">
                                                    <div class="next-col next-col-4 project-name-img"
                                                         data-spm="ditem_0">
                                                        <a href="${ctx}/order/query/${user.id}/${order.id}"><img
                                                                src="${ctx}/static/image/${order.tshow.showImg}"/></a>
                                                    </div>
                                                    <div class="next-col project-name-content" data-spm="ditem_0">
                                                        <div class="next-row project-name"><a
                                                                href="${ctx}/order/query/${user.id}/${order.id}">${order.tshow.showName}</a>
                                                        </div>
                                                        <div class="next-row project-name-perform">
                                                            演出场次：<fmt:formatDate value="${order.tshow.showBeginTime}"
                                                                                 pattern="yyyy-MM-dd hh:mm"/>
                                                        </div>
                                                        <div class="next-row project-name-venue">
                                                            演出场馆：${order.tshow.showPlace}</div>
                                                        <div class="next-row pick-type-icon undefined"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="next-col ticket-number" style="width: 144px;">
                                                <div class="next-row ticket-number-wrapper">${order.num}</div>
                                            </div>
                                            <div class="next-col order-amount" style="width: 130px;">
                                                <div class="next-col order-amount-wrapper">
                                                    <div class="next-row order-amount-content">
                                                        ￥${order.num*order.price+order.transport-order.discount}</div>
                                                    <div class="next-row transportation-costs">(含运费￥${order.transport})
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="next-col transaction-status" style="width: 130px;">
                                                <div class="next-col transaction-status-wrapper">
                                                    <div class="next-row transaction-status-content">
                                                        <c:if test="${order.status==0}">交易关闭</c:if>
                                                        <c:if test="${order.status==1}">待付款</c:if>
                                                        <c:if test="${order.status==2}">已付款</c:if>
                                                    </div>
                                                    <div class="next-row" data-spm="list"><a data-spm="ddetail_0"
                                                                                             href="${ctx}/order/query/${user.id}/${order.id}">订单详情</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="next-col transaction-operation" style="width: 210px;">
                                                <div class="next-col transaction-operation-wrapper">
                                                    <div class="text-wrapper">
                                                        <div class="next-row pick-seat-info" data-exp="true"
                                                             within24="false"
                                                             ic_id="167164" usercode="117640320" data-spm="dnotice"
                                                             data-spm-anchor-id="a2oeg.orderlist.item_0.dnotice.6edcIYemIYem8Z">
                                                            &nbsp;&nbsp;<br/><input type="hidden" id="orderId"/>
                                                            <a href="javaScript:void(0)" style="color: #2f97b4;"
                                                               onclick="showInfo(${order.id})">删除</a><br/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>

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
                <c:if test="${!empty orderAllList && user.type==1}">
                    <div class="order-list-wrapper" data-spm="list" style="display: block;">
                        <div class="next-row order-list-header">
                            <div class="next-col project-name" style="width: 390px;">项目名称</div>
                            <div class="next-col ticket-number" style="width: 144px;">票品张数</div>
                            <div class="next-col order-amount" style="width: 130px;">订单金额</div>
                            <div class="next-col transaction-status" style="width: 130px;">交易状态</div>
                            <div class="next-col transaction-operation" style="width: 210px;">交易操作</div>
                        </div>
                        <div class="next-loading order-list-container"
                             data-spm-anchor-id="a2oeg.orderlist.list.i0.6edcIYemIYem8Z">

                            <c:forEach items="${orderAllList.list}" var="order" varStatus="indexs">
                                <div class="next-loading-component" id="deleteOrder${order.id}">
                                    <div class="next-col order-list-item" data-spm="item_0">
                                        <div class="next-row order-list-item-header">订单号：${order.number}</div>
                                        <div class="next-row order-list-item-bottom">
                                            <div class="next-col project-name" style="width: 390px;">
                                                <div class="next-row project-name-wrapper" data-spm="list">
                                                    <div class="next-col next-col-4 project-name-img"
                                                         data-spm="ditem_0">
                                                        <a href="${ctx}/order/query/${user.id}/${order.id}"><img
                                                                src="${ctx}/static/image/${order.tshow.showImg}"></a>
                                                    </div>
                                                    <div class="next-col project-name-content" data-spm="ditem_0">
                                                        <div class="next-row project-name"><a
                                                                href="${ctx}/order/query/${user.id}/${order.id}">${order.tshow.showName}</a>
                                                        </div>
                                                        <div class="next-row project-name-perform">
                                                            演出场次：<fmt:formatDate value="${order.tshow.showBeginTime}"
                                                                                 pattern="yyyy.MM.dd"/>-
                                                            <fmt:formatDate value="${order.tshow.showEndTime}"
                                                                            pattern="yyyy.MM.dd"/>
                                                        </div>
                                                        <div class="next-row project-name-venue">
                                                            演出场馆：${order.tshow.showPlace}</div>
                                                        <div class="next-row pick-type-icon undefined"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="next-col ticket-number" style="width: 144px;">
                                                <div class="next-row ticket-number-wrapper">${order.num}</div>
                                            </div>
                                            <div class="next-col order-amount" style="width: 130px;">
                                                <div class="next-col order-amount-wrapper">
                                                    <div class="next-row order-amount-content">
                                                        ￥${order.num*order.price+order.transport-order.discount}</div>
                                                    <div class="next-row transportation-costs">(含运费￥${order.transport})
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="next-col transaction-status" style="width: 130px;">
                                                <div class="next-col transaction-status-wrapper">
                                                    <div class="next-row transaction-status-content">
                                                        <c:if test="${order.status==0}">交易关闭</c:if>
                                                        <c:if test="${order.status==1}">待付款</c:if>
                                                        <c:if test="${order.status==2}">已付款</c:if>
                                                    </div>
                                                    <div class="next-row" data-spm="list"><a data-spm="ddetail_0"
                                                                                             href="${ctx}/order/query/${user.id}/${order.id}">订单详情</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="next-col transaction-operation" style="width: 210px;">
                                                <div class="next-col transaction-operation-wrapper">
                                                    <div class="text-wrapper">
                                                        <div class="next-row pick-seat-info" data-exp="true"
                                                             within24="false"
                                                             ic_id="167164" usercode="117640320" data-spm="dnotice"
                                                             data-spm-anchor-id="a2oeg.orderlist.item_0.dnotice.6edcIYemIYem8Z">
                                                            &nbsp;&nbsp;<br/><input type="hidden" id="orderId2"/>
                                                            <a href="javaScript:void(0)" style="color: #2f97b4;"
                                                               onclick="showInfo(${order.id})">删除</a><br/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                            <div id="detailPagination" class="pagination" data-spm-anchor-id="0.0.0.i0.61b87732sriivv">
                                <div id="footer">
                                    <a href="javascript:void(0)" onclick="orderPage(${orderAllList.firstPage})"
                                       style="border-radius: 4px;">首页</a>
                                    <a href="javascript:void(0)" onclick="orderPage(${orderAllList.prePage})"
                                       style="border-radius: 4px;">上一页</a>
                                    <a href="javascript:void(0)" onclick="orderPage(${orderAllList.nextPage})"
                                       style="border-radius: 4px;">下一页</a>
                                    <a href="javascript:void(0)" onclick="orderPage(${orderAllList.lastPage})"
                                       style="border-radius: 4px;">末页</a>
                                    <span>&nbsp;&nbsp;&nbsp;&nbsp;第${orderAllList.pageNum}页/共${orderAllList.pages}页    (共${orderAllList.total}条订单记录)</span>
                                </div>
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

<!--操作提示层开始-->
<div id="notify-window" style="display:none">
    <!--透明遮罩层-->
    <div class="mask-layer"></div>
    <!--弹出层-->
    <div class="dm-layer-box" style="width:376px;margin-left:-188px;top:50%; margin-top:-100px;">
        <div class="dm-layer">
            <div class="hd">
                <span style="display: inline-block;height: 30px;width: 30px;" id="showImage">
                    <img src="${ctx}/static/image/huhaoyuantishi.jpg" width="30" height="30"
                         style="border-radius: 15px">
                </span>
                <h3 id="headHints" style="display: inline-block;">&nbsp;&nbsp;提示</h3>
                <a href="javascript:void(0)" class="close" onclick="hideInfo()"></a>
            </div>
            <div class="c-n">
                <p id="notify-msg" class="t-c">您确定要删除这条订单记录吗？</p>
                <div class="dm-layer-btn">
                    <button class="btn01 mt20" type="button" id="confirmSure" name="bb" onclick="deleteOrderInfo()">确定
                    </button>
                    &nbsp;&nbsp;
                    <button class="btn04" id="confirmExit" onclick="hideInfo()">取消</button>
                </div>
            </div>
        </div>
    </div>
</div>
<!--操作提示层结束-->

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
