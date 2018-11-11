<%--常用购票人管理操作页面--%>
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
                    <dd><a id="nav_MyAddress" href="${ctx}/address/userAddress/${user.id}" title="收货地址"
                           domain=""><span>收货地址</span></a></dd>

                    <dd><a href="${ctx}/user/modular/2"
                           title="账号设置" domain=""><span>账号设置</span></a></dd>

                    <dd><a href="${ctx}/user/modular/1" title="个人信息" domain=""><span>个人信息</span></a></dd>

                    <dd><a id="nav_MyInfo2" class="on" href="${ctx}/user/ticketHolder/${user.id}"
                           title="常用购票人" domain=""><span>常用购票人</span></a></dd>
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

    <!--right of start(右边主体部分开始)-->
    <div class="right-main">
        <div class="breadcrumb"><span>常用购票人管理</span></div>
        <div class="g-doc">
            <%--头部信息--%>
            <div class="u-btn" data-spm-anchor-id="0.0.0.i0.61b87732kSEkAb">
                <input id="cerateCustomer" type="button" class="add" value="新建购票人"
                       style="color: white;background-color: #FF1268;margin-left: 700px;display: inline-block;height: 27px;width: 90px;border: 2px solid #FF1268;border-radius: 4px;"
                       onclick="$(&#39;#createNewCustomer&#39;).show();$(&#39;.m-table&#39;).hide();$(&#39;#noInfo&#39;).hide();"/>
            </div>
            <%--头部信息--%>

            <c:choose>
                <c:when test="${!empty listHolder}">
                    <%--已经有常用购票人--%>
                    <div class="m-table">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0" id="customerInfos">
                            <tbody>
                            <tr>
                                <th scope="col" class="w1">序号</th>
                                <th scope="col" class="w2">姓名</th>
                                <th scope="col" class="w3">证件类型</th>
                                <th scope="col" class="w4">证件号</th>
                                <th scope="col" class="w5">操作</th>
                            </tr>
                            <c:forEach var="listHolder" items="${listHolder}" varStatus="indexs">
                                <tr id="huhaoyuan">
                                    <td>${indexs.count}</td>
                                    <td>${listHolder.name}</td>
                                    <td>
                                        <c:if test="${listHolder.type==1}">
                                            身份证
                                        </c:if>
                                        <c:if test="${listHolder.type==2}">
                                            护照
                                        </c:if>
                                        <c:if test="${listHolder.type==3}">
                                            港澳通行证
                                        </c:if>
                                        <c:if test="${listHolder.type==4}">
                                            台胞证
                                        </c:if>
                                    </td>
                                    <td>${listHolder.document}</td>
                                    <td><a href="javascript:void(0)" id="ticketHolder${listHolder.id}"
                                           onclick="showInfoText(${indexs.index})">删除</a>
                                    </td>
                                </tr>
                                <!--操作提示层开始-->
                                <div id="notify-window${indexs.index}" style="display:none">
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
                                                <h3 id="headHints" style="display: inline-block;">&nbsp;&nbsp;提示</h3>
                                                <a href="javascript:void(0)" class="close"
                                                   onclick="hideInfoText(${indexs.index})"></a>
                                            </div>
                                            <div class="c-n">
                                                <p id="notify-msg" class="t-c">您确定要删除常用购票人?</p>
                                                <div class="dm-layer-btn">
                                                    <button class="btn01 mt20" type="button" id="confirmSure" name="bb"
                                                            onclick="deleteTicketHolder(${listHolder.id},${indexs.index})">
                                                        确定
                                                    </button>
                                                    &nbsp;&nbsp;
                                                    <button class="btn04" id="confirmExit"
                                                            onclick="hideInfoText(${indexs.index})">取消
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--操作提示层结束-->
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <%--已经有常用购票人--%>
                </c:when>
                <c:otherwise>
                    <%--还没有常用购票人--%>
                    <div class="g-doc g-doc-border" id="noInfo" style="">
                        <div class="m-noinfor">
                            <img class="pic" src="${ctx}/static/image/noInfor.png">
                            <p class="t1">您还未添加购票人信息，提前 <a href="javascript:;"
                                                           onclick="$(&#39;#createNewCustomer&#39;).show();$(&#39;.m-table&#39;).hide();$(&#39;#noInfo&#39;).hide();"
                                                           class="add">添加</a> 可以使抢票速度更快哦~</p>
                        </div>
                    </div>
                    <%--还没有常用购票人--%>
                </c:otherwise>
            </c:choose>

            <%--新增购票人--%>
            <div class="g-doc g-doc-border" id="createNewCustomer" style="display:none;">
                <div class="m-title">
                    <div class="tt">新增购票人信息</div>
                </div>
                <div class="m-addinfor">
                    <div class="m-tips" id="phoneTips" style="display:none;">
                    </div>
                    <div class="m-form">
                        <div class="row">
                            <label class="lab">姓名：</label>
                            <input class="ipt" id="username" type="text" style="width: 214px;" value=""
                                   placeholder="请填写姓名"/>
                            <span id="userErr" class="err"></span>
                        </div>
                        <div class="row">
                            <label class="lab">证件类型：</label>
                            <select class="set" id="cardType">
                                <option value="1">身份证</option>
                                <option value="2">护照</option>
                                <option value="3">港澳通行证</option>
                                <option value="4">台胞证</option>
                            </select>
                        </div>
                        <div class="row">
                            <label class="lab">证件号码：</label>
                            <input id="card" class="ipt" type="text" style="width: 214px;" value=""
                                   placeholder="请填写证件号">
                            <span id="cardErr" class="err"></span>
                        </div>
                        <div class="row m-form-btn" data-spm-anchor-id="0.0.0.i1.61b87732kSEkAb">
                            <input type="button" value="保存" onclick="insertTicketHolder()"
                                   style="color: white;background-color: #FF1268;display: inline-block;height: 27px;width: 90px;border: 2px solid #FF1268;border-radius: 4px;"/>
                            <input type="button" onclick="cancelAdd()" value="取消"
                                   style="color: dimgrey;background-color: lavender;display: inline-block;height: 27px;width: 90px;border: 2px solid gainsboro;border-radius: 4px;"/>
                        </div>
                        <div class="row m-form-btn" style="color:#999999;font-size:12px"
                             data-spm-anchor-id="0.0.0.i2.61b87732kSEkAb">
                            由芝麻信用提供验证<input type="hidden" id="user_id" value="${user.id}"/>
                        </div>

                    </div>
                </div>
            </div>
            <%--新增购票人--%>

        </div>
        <div class="pagination"></div>
    </div>
    <div class="pagination"></div>
    <!--right of end(右边主体部分结束)-->

</div>
</div>
<!--中间主体信息结束-->


<!--返回顶部及帮助中心-->
<div class="new-fast">
    <a onclick="jvascript:$(&#39;body,html&#39;).animate({ scrollTop: 0 }, 500);" class="fast-top"
       href="#">返回顶部</a>
    <a class="fast-help" href="#" target="_blank">帮助中心</a>
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
<iframe src="./我的大麦-个人信息_files/blk.html" id="_oid_ifr_" style="width: 0px; height: 0px; display: none;"></iframe>


<script src="${pageContext.request.contextPath }/static/js/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath }/static/js/js/ownInfo.js"></script>
<script src="${pageContext.request.contextPath }/static/js/js/ticketHolder.js"></script>
<script src="${pageContext.request.contextPath }/static/js/customerManage.js"></script>
</body>
</html>
