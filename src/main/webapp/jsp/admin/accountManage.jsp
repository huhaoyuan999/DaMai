<%--账户管理页面--%>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/styleAoobt.css">

    <link rel="stylesheet" href="${ctx}/static/cssGoods/shopping-min.css">
    <%--<link rel="stylesheet" href="${ctx}/static/cssGoods/public-min.css">--%>
    <%--<link rel="stylesheet" href="${ctx}/static/cssGoods/public-min(1).css">--%>
    <%--<link rel="stylesheet" href="${ctx}/static/cssGoods/base.css">--%>
    <link rel="shortcut icon" type="image/x-icon" href="https://passport.damai.cn/images/favicon.ico">

    <style type="text/css">
        .onError {
            color: #f52954;
        }

    </style>
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
        <div class="navigation"><a href="javascript:void(0);">我的大麦</a><span>&gt;</span><span class="cur">账户管理</span>
        </div>
        <hr>
        <div id="container">
            <div class="order-list">

                <div class="m_right" style="width: 1020px;">
                    <div class="m_des" style="position: relative;">
                        <table border="0" style="width: 870px; line-height: 22px;" cellspacing="0" cellpadding="0">
                            <tbody>
                            <tr valign="top">
                                <td width="115"><img src="${ctx}/static/image/${user.imageName}" width="90"
                                                     height="115"></td>
                                <td>
                                    <div class="m_user">会员充值</div>
                                    <p style="font-size: 12px;">
                                        等级：普通会员

                                        <br> <font color="#f52954">一次充值 ￥500元 可返还积分 60R</font><br>
                                        上一次登录时间: <span style="color: #f52954"> <fmt:formatDate
                                            value="${user.latelyLogin}" pattern="yyyy-MM-dd HH:mm:ss"/></span><br>
                                        完善更多个人信息升级更快哟 <a href="${ctx}/user/modular/1"
                                                         style="color: #f52954">点此发送进行完善</a>
                                    </p>
                                    <div class="m_notice" style="font-size: 12px;">
                                        <img src="${ctx}/static/image/huhaoyuantishi.jpg" width="30" height="30"
                                             style="border-radius: 15px"><span style="padding-top: 25px;">用户中心公告！</span>
                                    </div>
                                </td>
                            </tr>


                            <ul class="bank clear" style="width: 380px;position: absolute;left: 670px;">
                                <li>
                                    <label>
                                        <input style="-webkit-appearance:radio" checked class="r" type="radio" name="type"
                                               value="wxpay" groupid="77"
                                               typeid="57" rt="57" st="1">
                                        <img src="/damai/static/images/57.jpg">
                                    </label>
                                </li>
                                <li>
                                    <label>
                                        <input style="-webkit-appearance:radio" class="r" type="radio" name="type"
                                               value="alipay" groupid="1"
                                               typeid="2" rt="2" st="1">
                                        <img src="/damai/static/images/2.jpg">
                                    </label>
                                </li>
                            </ul>

                            <button style="position: absolute;left: 775px;top: 95px;" id="sumBgn" class="btn05" type="button">充&nbsp;&nbsp;&nbsp;&nbsp;值</button>

                            </tbody>
                        </table>
                    </div>
                    <div class="mem_t" style="margin-left: 75px;margin-top: 60px;">资产信息</div>
                    <table border="0" class="mon_tab" style="width: 870px; margin-bottom: 20px;" cellspacing="0"
                           cellpadding="0">
                        <tbody>
                        <tr style="font-size: 12px;">
                            <td width="33%">用户等级：<span style="color: #555555;">普通会员</span></td>
                            <td width="33%">一次充值：<span style="color: #f52954">￥500元</span></td>
                            <td width="33%">返还积分：<span style="color: #f52954">60R</span></td>
                        </tr>
                        <tr style="font-size: 12px;">
                            <td>账户余额：<span style="color: #f52954">￥${user.balance}元</span></td>

                            <td>账户积分：<span style="color: #f52954;">${user.integral}R</span></td>

                            <td>红包个数：<span style="color: #f52954">￥0元</span></td>

                        </tr>
                        <tr style="font-size: 12px;">
                            <td colspan="3">订单提醒： <font style="font-family: '宋体';">待付款(<span
                                    style="color: #f52954">0</span>)
                                &nbsp; &nbsp; &nbsp; &nbsp; 待收货(<span style="color: #f52954">0</span>) &nbsp; &nbsp;
                                &nbsp; &nbsp; 待评论(<span style="color: #f52954">0</span>)
                            </font>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="mem_t" style="margin-left: 75px;margin-top: 60px;">账号信息</div>
                    <table border="0" class="mon_tab" style="width: 870px; margin-bottom: 20px;" cellspacing="0"
                           cellpadding="0">
                        <tbody>
                        <tr style="font-size: 12px;">
                            <td width="40%">用户ID：<span style="color: #555555;">${user.id}</span></td>
                            <td width="60%">昵&nbsp; &nbsp; 称：<span style="color: #555555;">${user.nickname}</span></td>
                        </tr>
                        <tr style="font-size: 12px;">
                            <td>登录账号：<span style="color: #555555;">${user.loginName}</span></td>
                            <td>真实姓名：<span style="color: #555555;">${user.userName}</span></td>
                        </tr>
                        <tr style="font-size: 12px;">
                            <td>身份证号：<span style="color: #555555;">${user.identityCode}</span></td>
                            <td>出生日期：<span style="color: #555555;"><fmt:formatDate value="${user.date}"
                                                                                   pattern="yyyy-MM-dd"/></span></td>
                        </tr>
                        </tbody>
                    </table>
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
<%--<script src="${pageContext.request.contextPath }/static/js/js/ownInfo.js"></script>--%>
</body>
</html>
