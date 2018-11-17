<%--商品管理页面--%>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/public-min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/m_new.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/customer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/style.css">
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
        <div class="navigation"><a href="javascript:void(0);">我的大麦</a><span>&gt;</span><span class="cur">商品管理</span>
        </div>
        <hr>
        <div id="container">
            <div class="order-list">
                <div class="order-list-wrapper" data-spm="list" style="display: block;">

                    <div class="m-table">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0" id="customerInfos">
                            <tbody>
                            <tr>
                                <th scope="col" class="w1" style="width: 350px;height: 40px;">演出名称</th>
                                <th scope="col" class="w2" style="width: 150px;height: 40px;">演出图片</th>
                                <th scope="col" class="w3" style="width: 150px;height: 40px;">演出时间</th>
                                <th scope="col" class="w4" style="width: 100px;height: 40px;">演出城市</th>
                                <th scope="col" class="w5" style="width: 100px;height: 40px;">售票状态</th>
                                <th scope="col" class="w6" style="width: 100px;height: 40px;">操作</th>
                            </tr>
                            <c:forEach items="${goodsList.list}" var="goods" varStatus="indexs">
                                <tr>
                                    <td style="height: 60px;line-height: 60px;width:350px; white-space:nowrap;text-overflow:ellipsis;overflow:hidden;text-align:left;">
                                        &nbsp;${goods.showName}</td>
                                    <td style="height: 60px;white-space:nowrap;text-overflow:ellipsis;overflow:hidden;">
                                        <img src="${pageContext.request.contextPath }/static/image/${goods.showImg}"
                                             width="40" height="50" style="margin-top: 5px;"></td>
                                    <td style="height: 60px;line-height: 60px;white-space:nowrap;text-overflow:ellipsis;overflow:hidden;">${goods.showTime}</td>
                                    <td style="height: 60px;line-height: 60px;white-space:nowrap;text-overflow:ellipsis;overflow:hidden;">${goods.tareainfo.areainfoName}</td>
                                    <td style="height: 60px;line-height: 60px;white-space:nowrap;text-overflow:ellipsis;overflow:hidden;">
                                        <c:if test="${goods.showStatus==1}">预定</c:if>
                                        <c:if test="${goods.showStatus==2}">预售</c:if>
                                        <c:if test="${goods.showStatus==3}">售票中</c:if>
                                    </td>
                                    <td style="height: 60px;line-height: 60px;white-space:nowrap;text-overflow:ellipsis;overflow:hidden;">
                                        <a href="${ctx}/order/queryGoods/${goods.showId}">修改</a>&nbsp;&nbsp;
                                        <a href="javascript:void(0)" onclick="showInfo(${goods.showId})">下架</a>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>

                    <div class="next-pagination next-pagination-normal next-pagination-medium medium hide order-list-pagination"
                         style="display: block;">
                        <div class="next-pagination-pages" style="display: block;">
                            <c:if test="${goodsList.pageNum != 1}">
                                <div class="next-pagination-list">
                                    <button type="button" style="color: white;background-color:#ed0a75;"
                                            onclick="pageGoodsAjax(1)"
                                            class="next-btn next-btn-normal next-btn-medium next-pagination-item current">
                                        首页
                                    </button>
                                </div>
                            </c:if>
                            <c:if test="${goodsList.pageNum == 1}">
                                <button disabled="" type="button"
                                        class="next-btn next-btn-normal next-btn-medium next-pagination-item prev"><i
                                        class="next-icon next-icon-arrow-left next-icon-medium next-icon-first"></i>上一页
                                </button>
                            </c:if>
                            <c:if test="${goodsList.pageNum != 1}">
                                <div class="next-pagination-list">
                                    <button type="button" style="color: white;background-color:#ed0a75;"
                                            onclick="pageGoodsAjax(${goodsList.prePage})"
                                            class="next-btn next-btn-normal next-btn-medium next-pagination-item current">
                                        上一页
                                    </button>
                                </div>
                            </c:if>
                            <c:if test="${goodsList.pageNum != 1 && goodsList.pageNum !=2}">
                                <div class="next-pagination-list">
                                    <button type="button" style="color: white;background-color:#ed0a75;"
                                            onclick="pageGoodsAjax(${goodsList.pageNum-2})"
                                            class="next-btn next-btn-normal next-btn-medium next-pagination-item current">
                                            ${goodsList.pageNum-2}
                                    </button>
                                </div>
                            </c:if>
                            <c:if test="${goodsList.pageNum != 1}">
                                <div class="next-pagination-list">
                                    <button type="button" style="color: white;background-color:#ed0a75;"
                                            onclick="pageGoodsAjax(${goodsList.pageNum-1})"
                                            class="next-btn next-btn-normal next-btn-medium next-pagination-item current">
                                            ${goodsList.pageNum-1}
                                    </button>
                                </div>
                            </c:if>
                            <div class="next-pagination-list">
                                <button type="button" style="color: #ed0a75;background-color:white;"
                                        onclick="pageGoodsAjax(${goodsList.pageNum})"
                                        class="next-btn next-btn-normal next-btn-medium next-pagination-item current">
                                    <span id="pageNo">${goodsList.pageNum}</span>
                                </button>
                            </div>
                            <c:if test="${goodsList.pageNum !=goodsList.pages}">
                                <div class="next-pagination-list">
                                    <button type="button" style="color: white;background-color:#ed0a75;"
                                            onclick="pageGoodsAjax(${goodsList.pageNum+1})"
                                            class="next-btn next-btn-normal next-btn-medium next-pagination-item current">
                                            ${goodsList.pageNum+1}
                                    </button>
                                </div>
                            </c:if>
                            <c:if test="${goodsList.pageNum !=goodsList.pages && goodsList.pageNum !=goodsList.pages-1}">
                                <div class="next-pagination-list">
                                    <button type="button" style="color: white;background-color:#ed0a75;"
                                            onclick="pageGoodsAjax(${goodsList.pageNum+2})"
                                            class="next-btn next-btn-normal next-btn-medium next-pagination-item current">
                                            ${goodsList.pageNum+2}
                                    </button>
                                </div>
                            </c:if>
                            <c:if test="${goodsList.pageNum ==goodsList.pages}">
                                <button disabled="" type="button"
                                        class="next-btn next-btn-normal next-btn-medium next-pagination-item next">下一页<i
                                        class="next-icon next-icon-arrow-right next-icon-medium next-icon-last"></i>
                                </button>
                            </c:if>
                            <c:if test="${goodsList.pageNum !=goodsList.pages}">
                                <div class="next-pagination-list">
                                    <button type="button" style="color: white;background-color:#ed0a75;"
                                            onclick="pageGoodsAjax(${goodsList.nextPage})"
                                            class="next-btn next-btn-normal next-btn-medium next-pagination-item current">
                                        下一页
                                    </button>
                                </div>
                            </c:if>
                            <c:if test="${goodsList.pageNum !=goodsList.pages}">
                                <div class="next-pagination-list">
                                    <button type="button" style="color: white;background-color:#ed0a75;"
                                            onclick="pageGoodsAjax(${goodsList.pages})"
                                            class="next-btn next-btn-normal next-btn-medium next-pagination-item current">
                                        尾页
                                    </button>
                                </div>
                            </c:if>
                        </div>
                    </div>

                </div>
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
                <h3 id="headHints" style="display: inline-block;">&nbsp;&nbsp;操作确认</h3>
                <a href="javascript:void(0)" class="close" onclick="hideInfo()"></a>
            </div>
            <div class="c-n">
                <p id="notify-msg" class="t-c">您确定要将这场演出下架吗?</p>
                <div class="dm-layer-btn">
                    <input type="hidden" id="goodsId"/>
                    <button class="btn01 mt20" type="button" onclick="deleteGoodsInfo()" name="bb">确定</button>
                    &nbsp;&nbsp;
                    <button class="btn04" id="confirmExit" onclick="hideInfo()">取消</button>
                </div>
            </div>
        </div>
    </div>
</div>
<!--操作提示层结束-->


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
<script src="${pageContext.request.contextPath }/static/js/js/goodsAdmin.js"></script>
</body>
</html>
