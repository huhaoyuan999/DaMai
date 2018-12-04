<%--商品上架页面--%>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/cueLayer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/public-min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/m_new.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/customer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/style.css">
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
        <div class="navigation"><a href="javascript:void(0);">我的大麦</a><span>&gt;</span><span class="cur">商品上架</span>
        </div>
        <hr>
        <div id="container">
            <div class="order-list"
                 style="background-color: #F6F6F6;height: 1020px;width: 1000px;box-shadow: #F6F6F6 0px 0px 0px 5px;">

                <div class="content per-edit-list per-wd02 m_add_c" style="margin-left: 80px;">
                    <dl>
                        <dt class="w80 tr fl" style="font-size: 17px; width: 180px;margin-top: 5px;"><span
                                class="c4">*</span>活 动 类 别：
                        </dt>
                        <dd class="fl">
                            <select style="height: 25px;font-size: 14px;color: dimgrey;" id="categorieId"
                                    onblur="isCategorieId()">
                                <option value="0">---请选择活动类型---</option>
                                <c:forEach items="${categoriesList}" var="categories" varStatus="indexs">
                                    <option value="${categories.categorieId}"
                                            <c:if test="${tshow.categorieId==categories.categorieId}">selected</c:if>>${categories.categorieName}</option>
                                </c:forEach>
                            </select>
                            <span style="color:red" id="categorieIdError"></span></dd>
                    </dl>
                    <dl>
                        <dt class="w80 tr fl" style="font-size: 17px; width: 180px;margin-top: 5px;"><span
                                class="c4">*</span>活 动 城 市：
                        </dt>
                        <dd class="fl">
                            <select style="height: 25px;font-size: 14px;color: dimgrey;" id="areainfoId"
                                    onblur="isAreainfoId()">
                                <option value="0">---请选择活动城市---</option>
                                <c:forEach items="${cityList}" var="city" varStatus="indexs">
                                    <option value="${city.areainfoId}"
                                            <c:if test="${tshow.areainfoId==city.areainfoId}">selected</c:if>>${city.cityName}</option>
                                </c:forEach>
                            </select>
                            <span style="color:red" id="areainfoIdError"></span></dd>
                    </dl>
                    <dl>
                        <dt class="w80 tr fl" style="font-size: 17px; width: 180px;margin-top: 5px;"><span
                                class="c4">*</span>售 票 状 态：
                        </dt>
                        <dd class="fl">
                            <select style="height: 25px;font-size: 14px;color: dimgrey;" id="showStatus"
                                    onblur="isShowStatus()">
                                <option value="0">---请选择售票状态---</option>
                                <option value="1" <c:if test="${tshow.showStatus==1}">selected</c:if>>项目待定</option>
                                <option value="2" <c:if test="${tshow.showStatus==2}">selected</c:if>>预定/预售</option>
                                <option value="3" <c:if test="${tshow.showStatus==3}">selected</c:if>>售票中</option>
                                <option value="3" <c:if test="${tshow.showStatus==4}">selected</c:if>>退票</option>
                                <option value="3" <c:if test="${tshow.showStatus==5}">selected</c:if>>演出开始</option>
                            </select>
                            <span style="color:red" id="showStatusError"></span></dd>
                    </dl>
                    <dl>
                        <dt class="w80 tr fl" style="font-size: 17px; width: 180px;margin-top: 5px;"><span
                                class="c4">*</span>活 动 名 称：
                        </dt>
                        <dd class="fl"><input type="text" class="input-text" id="showName" onblur="isShowName()"
                                              placeholder="活 动 名 称 为 1-255 个 字 符 组 成" value="${tshow.showName}"
                                              style="height: 27px;font-size: 15px;color: dimgrey;width: 300px;"><span
                                style="color:red" id="showNameError"></span></dd>
                    </dl>
                    <dl>
                        <dt class="w80 tr fl" style="font-size: 17px; width: 180px;margin-top: 5px;"><span
                                class="c4">*</span>活 动 地 点：
                        </dt>
                        <dd class="fl"><input type="text" id="showPlace" class="input-text" value="${tshow.showPlace}"
                                              placeholder="活 动 所 在 城 市 的 具 体 地 点" onblur="isShowPlace()"
                                              style="height: 27px;font-size: 15px;color: dimgrey;width: 300px;"><span
                                style="color:red" id="showPlaceError"></span></dd>
                    </dl>
                    <dl>
                        <dt class="w80 tr fl" style="font-size: 17px; width: 180px;margin-top: 45px;"><span
                                class="c4">*</span>活 动 图 片：
                        </dt>
                        <dd class="fl">
                            <form method="post" action="javascript:void(0)" class="fromImg"
                                  enctype="multipart/form-data">
                                <input type="file" id="showImg" name="file" onchange="isShowImg()"
                                       style="height: 26px;font-size: 14px;border-radius: 5px;width: 75px;margin-top: 5px;"/>
                                <span style="display: inline-block; width: 80px;height: 100px;margin-left: 50px;">
                                    <img style="display: inline-block;" src="${ctx}/static/image/${imageFile}"
                                         width="80" height="100"/>
                                </span>
                            </form>
                            <span id="showImgError" style="color:red;"></span></dd>
                    </dl>
                    <dl>
                        <dt class="w80 tr fl" style="font-size: 17px; width: 180px;margin-top: 5px;">最 低 票 价：
                        </dt>
                        <dd class="fl"><input type="text" class="input-text" id="showMinPrice"
                                              onblur="isShowMinPrice()" value="${tshow.showMinPrice}"
                                              placeholder="请  输  入  数  字"
                                              style="height: 27px;font-size: 15px;color: dimgrey;width: 300px;">
                            <span id="showMinPriceError" style="color:red"></span></dd>
                    </dl>
                    <dl>
                        <dt class="w80 tr fl" style="font-size: 17px; width: 180px;margin-top: 5px;">最 高 票 价：</dt>
                        <dd class="fl"><input type="text" id="showMaxPrice" class="input-text"
                                              value="${tshow.showMaxPrice}"
                                              placeholder="请  输  入  数  字" onblur="isShowMaxPrice()"
                                              style="height: 27px;font-size: 15px;color: dimgrey;width: 300px;">
                            <span id="showMaxPriceError" style="color:red"></span></dd>
                    </dl>
                    <dl>
                        <dt class="w80 tr fl" style="font-size: 17px; width: 180px;margin-top: 5px;"><span
                                class="c4">*</span>开 始 时 间：
                        </dt>
                        <dd class="fl">
                            <input type="date" class="input-text" id="showBeginTime" onblur="isShowBeginTime()"
                                   value="${showBeginTime}"
                                   style="height: 27px;font-size: 16px;color: dimgrey;width: 300px;">
                            <span style="color:red" id="showBeginTimeError"></span></dd>
                    </dl>
                    <dl>
                        <dt class="w80 tr fl" style="font-size: 17px; width: 180px;margin-top: 5px;"><span
                                class="c4">*</span>结 束 时 间：
                        </dt>
                        <dd class="fl">
                            <input type="date" class="input-text" id="showEndTime" onblur="isShowEndTime()"
                                   value="${showEndTime}"
                                   style="height: 27px;font-size: 16px;color: dimgrey;width: 300px;">
                            <span style="color:red" id="showEndTimeError"></span></dd>
                    </dl>
                    <dl>
                        <dt class="w80 tr fl" style="font-size: 17px; width: 180px;margin-top: 5px;">活 动 简 介：</dt>
                        <dd class="fl">
                            <textarea style="height: 100px;font-size: 16px;color: dimgrey;width: 300px;"
                                      id="showTitle">${tshow.showTitle}</textarea>
                            <span style="color:red"></span></dd>
                    </dl>
                    <p class="per-all-t clear" style="margin-left: 110px;">
                        <input type="hidden" id="activityPicture" value="${activityPicture}"/>
                        <input type="hidden" id="showId" value="${tshow.showId}"/>
                        <input type="hidden" id="updateGoodsInfo" value="${update}"/>
                        <c:if test="${empty update}">
                            <button class="btn05 fl" style="font-size: 16px;"
                                    onclick="changeAddUpdateGoods()">保&nbsp;&nbsp;&nbsp;&nbsp;存
                            </button>
                        </c:if>
                        <c:if test="${!empty update}">
                            <button class="btn05 fl" style="font-size: 16px;"
                                    onclick="changeAddUpdateGoods()">修&nbsp;&nbsp;&nbsp;&nbsp;改
                            </button>
                        </c:if>
                    </p>
                </div>
            </div>
        </div>
    </div>
    <input type="text" class="input-text"
           style="height: 27px;font-size: 16px;color: dimgrey;width: 300px;">
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
                <h3 id="headHints" style="display: inline-block;">&nbsp;&nbsp;操作提示</h3>
                <a href="javascript:void(0)" class="close"></a>
            </div>
            <div class="c-n">
                <p id="notify-msg" class="t-c" onclick="hideChangeGoods()"></p>
                <div class="dm-layer-btn">
                    <button class="btn01 mt20" type="button" id="confirmSure" name="bb" onclick="hideChangeGoods()">确定
                    </button>
                    <%--&nbsp;&nbsp;--%>
                    <%--<button class="btn04" id="confirmExit">取消</button>--%>
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
<script src="${pageContext.request.contextPath }/static/js/js/changeGoods.js"></script>
</body>
</html>
