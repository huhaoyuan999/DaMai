<%--收货地址查看与修改页面--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml" class="ks-webkit537 ks-webkit ks-chrome70 ks-chrome"
      data-spm-anchor-id="0.0.0.i0.423cd01fbObbxD">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>我的大麦-个人信息</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/public-min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/m_new.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/customer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/ui-min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/cueLayer.css">
    <link rel="shortcut icon" type="image/x-icon" href="https://passport.damai.cn/images/favicon.ico">
    <style type="text/css">.onError {
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
<div class="main">

    <!--left of start(左侧边导航栏)-->
    <div class="sidenav">
        <div id="mydamai" style="">
            <h3><a href="${ctx}/index.jsp">我的大麦</a></h3>
            <dl>
                <dt>交易中心</dt>
                <dd><a id="nav_Order" href="${ctx}/order/query/${user.id}/0" title="订单管理"
                       domain=""><span>订单管理</span></a></dd>

                <dd><a id="nav_myCoupon" href="${ctx}/order/reduce/${user.id}" title="我的优惠券"
                       domain=""><span>我的优惠券</span></a></dd>
                <dl>

                    <dt>账户中心</dt>

                    <c:if test="${user.type==0}">
                        <dd><a id="nav_MyAddress" href="${ctx}/address/userAddress/${user.id}" title="收货地址"
                               domain="" class="on"><span>收货地址</span></a></dd>
                    </c:if>

                    <dd><a href="${ctx}/user/modular/2"
                           title="账号设置" domain=""><span>账号设置</span></a></dd>

                    <dd><a href="${ctx}/user/modular/1" title="个人信息" domain=""><span>个人信息</span></a></dd>

                    <c:if test="${user.type==0}">
                        <dd><a id="nav_MyInfo2" href="${ctx}/user/ticketHolder/${user.id}"
                               title="常用购票人" domain=""><span>常用购票人</span></a></dd>
                    </c:if>

                    <c:if test="${user.type==1}">
                        <dd><a href="${ctx}/user/userAll/1"
                               title="用户列表" domain=""><span>用户列表</span></a></dd>

                        <dt>商品管理</dt>

                        <dd><a href="${ctx}/order/goods/1"
                               title="商品管理" domain=""><span>商品管理</span></a></dd>

                        <dd><a href="${ctx}/order/changeGoods"
                               title="商品上架" domain=""><span>商品上架</span></a></dd>
                    </c:if>
                </dl>

                <script type="text/javascript">
                    (function () {
                        document.getElementById('mydamai').style.display = 'none';
                        var object = document.getElementById('nav_' + currNavName);
                        if (object) object.className += 'on';
                        document.getElementById('mydamai').style.display = '';
                    })();
                </script>
            </dl>
        </div>
    </div>
    <!--left of end(左侧边导航栏)-->

    <!--right of start(右边主体信息-收货地址)-->
    <div class="right-main">
        <div class="breadcrumb"><span>地址管理</span></div>
        <div class="m_add mb10 clear">
            <label class="fr">
                <input id="createAddress" type="button" class="add" value="创建新地址"
                       onclick="createAddress()"
                       style="color: white;background-color: #FF1268;margin-left: 700px;display: inline-block;height: 27px;width: 90px;border: 2px solid #FF1268;border-radius: 4px;"/>
            </label>
        </div>
        <div class="item-s01 mb10 m_bj1 z-hide" id="creatNewAddress" style="display: none;">
            <div class="content per-edit-list per-wd02 m_add_c">
                <dl>
                    <dt class="w80 tr fl"><span class="c4">*</span>地址别名：</dt>
                    <dd class="fl"><input type="text" class="input-text" value="新建地址" id="c_addressName" name=""
                                          style="height: 25px;"><span
                            id="c_nameMsg" style="color:red"></span></dd>

                </dl>
                <dl>
                    <dt class="w80 tr fl"><span class="c4">*</span>收&nbsp;件&nbsp;人：</dt>
                    <dd class="fl"><input type="text" class="input-text" id="c_recipientName" name=""
                                          style="height: 25px;">
                        <span id="c_recipientMsg" style="color:red"></span></dd>
                </dl>
                <dl>
                    <dt class="w80 tr fl"><span class="c4">*</span>手机：</dt>
                    <dd class="fl"><input type="text" class="input-text" id="c_mobile" style="height: 25px;">
                        <span id="c_mobileMsg" style="color:red"></span></dd>
                </dl>
                <dl>
                    <dt class="w80 tr fl">座机：</dt>
                    <dd class="fl"><input type="text" class="input-text" id="c_mobile2" style="height: 25px;">
                        <span id="c_mobileMsg2" style="color:red"></span></dd>
                </dl>
                <dl>
                    <dt><span class="c4">*</span>配送地址：</dt>
                    <dd>
                        <p style="height:40px;">
                            <select class="sel-4" name="ProvinceSelect" id="ProvinceSelect"
                                    onchange="getMSubCountryInsert(this.value)">
                                <option value="0">--请选择--</option>
                                <c:forEach var="province" items="${addressCollection}"
                                           varStatus="index1">
                                    <c:if test="${empty province.parentId}">
                                        <option value="${province.areainfoId}">${province.areainfoName}</option>
                                    </c:if>
                                </c:forEach>
                            </select>&nbsp;省&nbsp;
                            <select class="sel-4" name="citySelect" id="citySelect"
                                    onchange="getSubCountryInsert2(this.value);">
                                <option value="0">--请选择--</option>
                                <c:forEach var="province" items="${addressCollection}">
                                    varStatus="index1">
                                    <option value="${province.areainfoId}">${province.areainfoName}</option>
                                </c:forEach>
                            </select>&nbsp;市&nbsp;
                            <select class="sel-4" name="countrySelect" id="countrySelect">
                                <option value="0">--请选择--</option>
                            </select>&nbsp;区/县&nbsp;
                            <br>
                            <span id="c_peisongMsg" style="color:red"></span>
                        </p>
                        <p class="mt15" style="height:40px;">
                            <input type="text" name="" id="c_distributionDeatilInfo" class="input-text-1"
                                   style="width:400px;height: 25px;"><span class="per-txt">不需要重复填写省/市/区/县</span>
                            <br>
                            <span id="c_peisongMsg1" style="color:red"></span>
                        </p>
                    </dd>
                </dl>
                <p class="per-all-t clear">
                    <input type="text" id="c_token" name="" value="" style="display:none">
                    <input type="hidden" id="userId" value="${user.id}">
                    <input type="hidden" id="userName" value="${user.userName}">
                    <button id="saveCreate" onclick="insertAddressInfo();" class="btn05 fl">保存地址</button>
                    <button id="cancleCreate" onclick="cancleCreate();" class="btn04 fl" style="margin:3px 0 0 20px;">
                        取消
                    </button>
                </p>
            </div>
        </div>
        <div class="m_add_c" id="adressInfos">
            <c:if test="${empty addressList}">
                <div class="no-getting-infos">您暂时还没有收货地址，可以点击右上角的"<a href="javascript:void(0)" style="color: #2f97b4;"
                                                                     onclick="createAddress()">创建新地址</a>"进行添加哦!
                </div>
            </c:if>
            <c:if test="${!empty addressList}">
                <ul id="parentShow">
                    <c:forEach var="address" items="${addressList}" varStatus="indexs">
                        <c:choose>
                            <c:when test="${address.preferred==1}">
                                <li class="m_c2" id="firstShow">
                                    <h2 class="f13 c1 mt10 ml10"><strong>${address.addressAlias}</strong>
                                        <p class="fr"><a href="javascript:void(0)"
                                                         onclick="modifyAddress(${indexs.index});"
                                                         class="fl mr10 m_c3" id="addressAliasText">修改</a><span
                                                class="m_c0 fl mr10">|</span><a href="javascript:void(0)"
                                                                                class="fl mr10 m_c3"
                                                                                onclick="showHints1()">删除</a>
                                        </p>
                                    </h2>
                                    <dl class="m_add_dl">
                                        <dd>${address.addressAddressee} ${address.phone}</dd>
                                        <dd style="width:580px;word-break:break-all;">${address.provinceName.areainfoName} ${address.cityName.areainfoName} ${address.areaName.areainfoName} ${address.detailed}</dd>
                                    </dl>
                                    <a href="#" class="m_close_two"><strong id="shouxuan">首选地址</strong></a>
                                    <p class="m_add_p mt10 pt10 m_line">下单时默认使用此地址作为收货地址，您可以在订单确认时选用其他地址。 <a
                                            href="javascript:void(0)" target="_blank"
                                            class="m_c3">了解详细信息</a></p>
                                        <%--修改收货地址--%>
                                    <div class="content per-edit-list per-wd02" id="showUpdate${indexs.index}"
                                         style="display:none;"><h2
                                            class="f14 c1 mt10 ml10"><strong>修改地址</strong></h2>
                                        <dl>
                                            <dt class="w80 tr fl"><span class="c4">*</span>地址别名：</dt>
                                            <dd class="fl"><input type="text" style="height: 25px;"
                                                                  id="addressAlias${indexs.index}" class="input-text"
                                                                  value="${address.addressAlias}" name="">
                                                <span id="m_nameMsg88294702${indexs.index}" style="color:red"></span>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt class="w80 tr fl"><span class="c4">*</span>收&nbsp;件&nbsp;人：</dt>
                                            <dd class="fl"><input type="text" id="addressAddressee${indexs.index}"
                                                                  class="input-text" name=""
                                                                  value="${address.addressAddressee}"
                                                                  style="height: 25px;">
                                                <span id="m_recipientMsg88294702${indexs.index}"
                                                      style="color:red"></span></dd>
                                        </dl>
                                        <dl>
                                            <dt class="w80 tr fl"><span class="c4">*</span>手机：</dt>
                                            <dd class="fl"><input type="text" id="phone${indexs.index}"
                                                                  class="input-text" value="${address.phone}" name=""
                                                                  style="height: 25px;">
                                                <span id="m_mobileMsg88294702${indexs.index}" style="color:red"></span>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt class="w80 tr fl">座机：</dt>
                                            <dd class="fl"><input type="text" id="telePhone${indexs.index}"
                                                                  class="input-text" value="${address.telePhone}"
                                                                  name="" style="height: 25px;">
                                                <span id="m_mob4543sg88294702${indexs.index}" style="color:red"></span>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><span class="c4">*</span>配送地址：</dt>
                                            <dd>
                                                <p><select class="sel-4" name="ProvinceSelect"
                                                           id="ProvinceSelect${indexs.index}"
                                                           onchange="getSubCity(this.value,${indexs.index});">
                                                    <c:forEach var="province" items="${addressCollection}"
                                                               varStatus="index1">
                                                        <c:if test="${empty province.parentId}">
                                                            <option value="${province.areainfoId}"
                                                                    <c:if test="${province.areainfoId==address.provinceName.areainfoId}">selected</c:if>
                                                            >${province.areainfoName}</option>
                                                        </c:if>
                                                    </c:forEach>
                                                </select>&nbsp;省&nbsp;<select class="sel-4"
                                                                              id="McitySelect${indexs.index}"
                                                                              onchange="getMSubCountry(this.value,${indexs.index});"
                                                                              name="">
                                                    <c:forEach var="city" items="${addressCollection}"
                                                               varStatus="index1">
                                                        <c:if test="${city.parentId==address.provinceName.areainfoId}">
                                                            <option value="${city.areainfoId}"
                                                                    <c:if test="${city.areainfoId==address.cityName.areainfoId}">selected</c:if>
                                                            >${city.areainfoName}</option>
                                                        </c:if>
                                                    </c:forEach>
                                                </select>&nbsp;市&nbsp;
                                                    <select class="sel-4" id="McitySe${indexs.index}" name=""
                                                            onchange="getMSubStreet(this.value,88265647);">
                                                        <c:forEach var="area" items="${addressCollection}"
                                                                   varStatus="index1">
                                                            <c:if test="${area.parentId==address.cityName.areainfoId}">
                                                                <option value="${area.areainfoId}"
                                                                        <c:if test="${area.areainfoId==address.areaName.areainfoId}">selected</c:if>
                                                                >${area.areainfoName}</option>
                                                            </c:if>
                                                        </c:forEach>
                                                    </select>&nbsp;区
                                                </p>
                                                <p class="mt15"><input type="text" id="detailed${indexs.index}"
                                                                       name="" value="${address.detailed}"
                                                                       style="height: 25px;" class="input-text-1">
                                                    <span id="m_peisongMsg188294702${indexs.index}"
                                                          style="color:red"></span>
                                                </p>
                                            </dd>
                                        </dl>
                                        <p class="per-all-t clear">
                                            <button id="saveModifyButton88265647"
                                                    onclick="updateAddressInfo(${indexs.index},${address.addressId})"
                                                    class="btn05 fl">保存地址
                                            </button>
                                            <button class="btn04 fl" onclick="cancleModify(${indexs.index});"
                                                    style="margin:3px 0 0 20px;">
                                                取消
                                            </button>
                                        </p>
                                    </div>
                                </li>
                            </c:when>
                            <c:otherwise>
                                <li class="m_c2" id="lastShow${address.addressId}">
                                    <h2 class="f13 c1 mt10 ml10"><strong>${address.addressAlias}</strong>
                                        <p class="fr"><a href="javascript:void(0)"
                                                         onclick="updatePreferred(${address.addressId});"
                                                         class="fl mr10 m_c3">设为首选</a><span
                                                class="m_c0 fl mr10">|</span> <a
                                                onclick="modifyAddress(${indexs.index});" href="javascript:void(0)"
                                                class="fl mr10 m_c3">修改</a><span
                                                class="m_c0 fl mr10">|</span> <a href="javascript:void(0)"
                                                                                 class="fl mr10 m_c3"
                                                                                 onclick="showHints2(${indexs.index})">删除</a>
                                        </p>
                                    </h2>
                                    <dl class="m_add_dl">
                                        <dd>${address.addressAddressee} ${address.phone}</dd>
                                        <dd style="width:580px;word-break:break-all;">${address.provinceName.areainfoName} ${address.cityName.areainfoName} ${address.areaName.areainfoName} ${address.detailed}</dd>
                                    </dl>
                                    <a href="#" class="m_close_two"><strong></strong></a>
                                        <%--修改收货地址--%>
                                    <div class="content per-edit-list per-wd02" id="showUpdate${indexs.index}"
                                         style="display:none;"><h2
                                            class="f14 c1 mt10 ml10"><strong>修改地址</strong></h2>
                                        <dl>
                                            <dt class="w80 tr fl"><span class="c4">*</span>地址别名：</dt>
                                            <dd class="fl"><input type="text" style="height: 25px;"
                                                                  id="addressAlias${indexs.index}"
                                                                  value="${address.addressAlias}" class="input-text"
                                                                  name="">
                                                <span id="m_nameMsg88294702${indexs.index}" style="color:red"></span>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt class="w80 tr fl"><span class="c4">*</span>收&nbsp;件&nbsp;人：</dt>
                                            <dd class="fl"><input type="text" id="addressAddressee${indexs.index}"
                                                                  class="input-text" name=""
                                                                  value="${address.addressAddressee}"
                                                                  style="height: 25px;">
                                                <span id="m_recipientMsg88294702${indexs.index}"
                                                      style="color:red"></span></dd>
                                        </dl>
                                        <dl>
                                            <dt class="w80 tr fl"><span class="c4">*</span>手机：</dt>
                                            <dd class="fl"><input type="text" id="phone${indexs.index}"
                                                                  class="input-text" value="${address.phone}" name=""
                                                                  style="height: 25px;">
                                                <span id="m_mobileMsg88294702${indexs.index}" style="color:red"></span>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt class="w80 tr fl">座机：</dt>
                                            <dd class="fl"><input type="text" id="telePhone${indexs.index}"
                                                                  class="input-text" value="${address.telePhone}"
                                                                  name="" style="height: 25px;">
                                                <span id="m_mob4543sg88294702${indexs.index}" style="color:red"></span>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><span class="c4">*</span>配送地址999：</dt>
                                            <dd>
                                                <p id="addressLoad">
                                                    <select class="sel-4" name="ProvinceSelect"
                                                            id="ProvinceSelect${indexs.index}"
                                                            onchange="getSubCity(this.value,${indexs.index});">
                                                        <c:forEach var="province" items="${addressCollection}"
                                                                   varStatus="index1">
                                                            <c:if test="${empty province.parentId}">
                                                                <option value="${province.areainfoId}"
                                                                        <c:if test="${province.areainfoId==address.provinceName.areainfoId}">selected</c:if>
                                                                >${province.areainfoName}</option>
                                                            </c:if>
                                                        </c:forEach>
                                                    </select>&nbsp;省&nbsp;<select class="sel-4"
                                                                                  id="McitySelect${indexs.index}"
                                                                                  onchange="getMSubCountry(this.value,${indexs.index});"
                                                                                  name="">
                                                    <c:forEach var="city" items="${addressCollection}"
                                                               varStatus="index1">
                                                        <c:if test="${city.parentId==address.provinceName.areainfoId}">
                                                            <option value="${city.areainfoId}"
                                                                    <c:if test="${city.areainfoId==address.cityName.areainfoId}">selected</c:if>
                                                            >${city.areainfoName}</option>
                                                        </c:if>
                                                    </c:forEach>
                                                </select>&nbsp;市&nbsp;
                                                    <select class="sel-4" id="McitySe${indexs.index}" name=""
                                                            onchange="getMSubStreet(this.value,88294702);">
                                                        <c:forEach var="area" items="${addressCollection}"
                                                                   varStatus="index1">
                                                            <c:if test="${area.parentId==address.cityName.areainfoId}">
                                                                <option value="${area.areainfoId}"
                                                                        <c:if test="${area.areainfoId==address.areaName.areainfoId}">selected</c:if>
                                                                >${area.areainfoName}</option>
                                                            </c:if>
                                                        </c:forEach>
                                                    </select>&nbsp;区
                                                </p>
                                                <p class="mt15"><input type="text" id="detailed${indexs.index}"
                                                                       name="" value="${address.detailed}"
                                                                       style="height: 25px;" class="input-text-1">
                                                    <span id="m_peisongMsg188294702${indexs.index}"
                                                          style="color:red"></span>
                                                </p>
                                            </dd>
                                        </dl>
                                        <p class="per-all-t clear">
                                            <button id="saveModifyButton88294702"
                                                    onclick="updateAddressInfo(${indexs.index},${address.addressId})"
                                                    class="btn05 fl">保存地址
                                            </button>
                                            <button class="btn04 fl" onclick="cancleModify(${indexs.index});"
                                                    style="margin:3px 0 0 20px;">
                                                取消
                                            </button>
                                        </p>
                                    </div>
                                    <!--操作提示层开始-->
                                    <div id="notify-window2${indexs.index}" style="display:none;">
                                        <!--透明遮罩层-->
                                        <div class="mask-layer"></div>
                                        <!--弹出层-->
                                        <div class="dm-layer-box"
                                             style="width:376px;margin-left:-188px;top:50%; margin-top:-100px;">
                                            <div class="dm-layer">
                                                <div class="hd">
                <span style="display: inline-block;height: 30px;width: 30px;" id="showImage">
                    <img src="${ctx}/static/image/huhaoyuantishi.jpg" width="30" height="30"
                         style="border-radius: 15px">
                </span>
                                                    <h3 id="headHints" style="display: inline-block;">
                                                        &nbsp;&nbsp;操作确认</h3>
                                                    <a href="javascript:void(0)" class="close"
                                                       onclick="hiddenHints2(${indexs.index})"></a>
                                                </div>
                                                <div class="c-n">
                                                    <p id="notify-msg" class="t-c">您确定要删除收货地址吗？收货地址下的订单记录也将被删除！</p>
                                                    <div class="dm-layer-btn">
                                                        <button class="btn01 mt20" type="button" id="confirmSure"
                                                                name="bb"
                                                                onclick="deleteAddressId2(${address.addressId},${indexs.index});">
                                                            确定
                                                        </button>
                                                        &nbsp;&nbsp;
                                                        <button class="btn04" id="confirmExit"
                                                                onclick="hiddenHints2(${indexs.index})">取消
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--操作提示层结束-->
                                </li>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                </ul>
            </c:if>
        </div>
        <div id="detailPagination" class="pagination"></div>
    </div>
    <!--right of end(右边主体信息-收货地址)-->

</div>
<!--中间主体信息结束-->


<!--返回顶部及帮助中心-->
<div class="new-fast">
    <a onclick="jvascript:$(&#39;body,html&#39;).animate({ scrollTop: 0 }, 500);" class="fast-top"
       href="#">返回顶部</a>
    <a class="fast-help" href="#" target="_blank">帮助中心</a>
</div>


<!--操作提示层开始-->
<div id="notify-window-Info" style="display:none">
    <!--透明遮罩层-->
    <div class="mask-layer"></div>
    <!--弹出层-->
    <div class="dm-layer-box" style="width:376px;margin-left:-188px;top:50%; margin-top:-100px;">
        <div class="dm-layer">
            <div class="hd">
                <span style="display: inline-block;height: 30px;width: 30px;" id="showImages">
                    <img src="${ctx}/static/image/huhaoyuantishi.jpg" width="30" height="30"
                         style="border-radius: 15px">
                </span>
                <h3 style="display: inline-block;">&nbsp;&nbsp;提示</h3>
                <a href="javascript:void(0)" class="close" onclick="hiddenHintsfirst()"></a>
            </div>
            <div class="c-n">
                <p class="t-c">首选收货地址不能删除</p>
                <div class="dm-layer-btn">
                    <button class="btn01 mt20" type="button" name="bb" onclick="hiddenHintsfirst()">确定</button>
                    &nbsp;&nbsp;
                    <!--<button class="btn04" id="confirmExit">取消</button>-->
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
<script src="${pageContext.request.contextPath }/static/js/js/ownInfo.js"></script>
<script src="${pageContext.request.contextPath }/static/js/js/address.js"></script>

<script type="text/javascript">
    /**
     * 调换地址位置
     */
    function prependInfo() {
        var info = $("#addressAliasText").text();
        if (info.length != 0) {
            var str = "<li class=\"m_c2\" id=\"firstShow\">";
            str += $("#firstShow").html();
            str += "</li>";
            $("#firstShow").remove();
            $("#parentShow").prepend(str);
        }
    }

    // 不要括号
    window.onload = prependInfo;
</script>

</body>
</html>
