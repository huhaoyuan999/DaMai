<%--用户列表页面--%>
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
                               domain=""><span>收货地址</span></a></dd>
                    </c:if>

                    <dd><a href="${ctx}/user/modular/2"
                           title="账号设置" domain=""><span>账号设置</span></a></dd>

                    <dd><a href="${ctx}/user/modular/1" title="个人信息" domain=""><span>个人信息</span></a></dd>

                    <c:if test="${user.type==0}">
                        <dd><a id="nav_MyInfo2" class="on" href="${ctx}/user/ticketHolder/${user.id}"
                               title="常用购票人" domain=""><span>常用购票人</span></a></dd>
                    </c:if>

                    <c:if test="${user.type==1}">
                        <dd><a href="${ctx}/user/userAll/1"
                               title="用户列表" domain="" class="on"><span>用户列表</span></a></dd>

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

    <!--right of start(右边主体部分开始)-->
    <div class="right-main">
        <div class="breadcrumb"><span>用户管理</span></div>
        <div class="g-doc">
            <%--头部信息--%>
            <div class="u-btn" data-spm-anchor-id="0.0.0.i0.61b87732kSEkAb">
                <input id="cerateCustomer" type="button" class="add" value="添加用户"
                       style="color: white;background-color: #FF1268;margin-left: 700px;display: inline-block;height: 27px;width: 90px;border: 2px solid #FF1268;border-radius: 4px;"
                       onclick="$(&#39;#createNewCustomer&#39;).show();$(&#39;.m-table&#39;).hide();$(&#39;#noInfo&#39;).hide();$(&#39;#detailPagination&#39;).hide();"/>
            </div>
            <%--头部信息--%>

            <%--用户列表--%>
            <div class="m-table">
                <table width="100%" border="0" cellspacing="0" cellpadding="0" id="customerInfos">
                    <tbody>
                    <tr>
                        <th scope="col" class="w1" style="width: 150px;">登录账号</th>
                        <th scope="col" class="w2" style="width: 150px;">真实姓名</th>
                        <th scope="col" class="w3" style="width: 150px;">昵称</th>
                        <th scope="col" class="w4" style="width: 100px;">性别</th>
                        <th scope="col" class="w5" style="width: 150px;">类型</th>
                        <th scope="col" class="w6" style="width: 150px;">操作</th>
                    </tr>
                    <c:forEach items="${userPage.list}" var="userAll" varStatus="indexs">
                        <tr>
                            <td>${userAll.loginName}</td>
                            <td>${userAll.userName}</td>
                            <td>${userAll.nickname}</td>
                            <td>
                                <c:if test="${userAll.sex==0}">女</c:if>
                                <c:if test="${userAll.sex==1}">男</c:if>
                            </td>
                            <td>
                                <c:if test="${userAll.type==0}">用户</c:if>
                                <c:if test="${userAll.type==1}">管理员</c:if>
                            </td>
                            <td>
                                <a href="javascript:void(0)" onclick="queryUserIdInfo(${userAll.id})">修改</a>&nbsp;&nbsp;
                                <c:if test="${userAll.type==0}"><a href="javascript:void(0)" id="delete${userAll.id}"
                                                                   onclick="deleteUserIdInfoHu(${userAll.id},${userAll.loginName})">删除</a></c:if>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>

            <div id="detailPagination" class="pagination" data-spm-anchor-id="0.0.0.i0.61b87732sriivv">
                <div id="footer">
                    <a href="${ctx}/user/userAll/${userPage.firstPage}" style="border-radius: 4px;">首页</a>
                    <a href="${ctx}/user/userAll/${userPage.prePage}" style="border-radius: 4px;">上一页</a>
                    <a href="${ctx}/user/userAll/${userPage.nextPage}" style="border-radius: 4px;">下一页</a>
                    <a href="${ctx}/user/userAll/${userPage.lastPage}" style="border-radius: 4px;">末页</a>
                    <span>&nbsp;&nbsp;&nbsp;&nbsp;第${userPage.pageNum}页/共${userPage.pages}页    (共${userPage.total}有个注册用户)</span>
                </div>
            </div>
            <%--用户列表--%>

            <%--新增用户--%>
            <div class="g-doc g-doc-border" id="createNewCustomer" style="display:none;">
                <div class="m-title">
                    <div class="tt"><span id="titleUser">添加用户</span></div>
                </div>
                <div class="m-addinfor">
                    <div class="m-tips" id="phoneTips" style="display:none;">
                    </div>
                    <div class="m-form">
                        <div class="row">
                            <label class="lab" style="width: 100px;"><span class="c4"
                                                                           style="padding-right:3px;color:red;">*</span>登录账号：</label>
                            <input class="ipt" id="loginName" type="text" style="width: 214px;" value=""
                                   placeholder="请填写登录账号"/>
                            <span id="loginNameErr" class="err"></span>
                        </div>
                        <div class="row">
                            <label class="lab" style="width: 100px;">呢称：</label>
                            <input class="ipt" id="nickname" type="text" style="width: 214px;" value=""
                                   placeholder="请填写呢称"/>
                            <span id="nicknameErr" class="err"></span>
                        </div>
                        <div class="row" id="rowPassword">
                            <label class="lab" style="width: 100px;"><span class="c4"
                                                                           style="padding-right:3px;color:red;">*</span>登录密码：</label>
                            <input class="ipt" id="password" type="text" style="width: 214px;" value=""
                                   placeholder="请填写登录密码"/>
                            <span id="passwordErr" class="err"></span>
                        </div>
                        <div class="row" id="rowPassword2">
                            <label class="lab" style="width: 100px;"><span class="c4"
                                                                           style="padding-right:3px;color:red;">*</span>确认密码：</label>
                            <input class="ipt" id="password2" type="text" style="width: 214px;" value=""
                                   placeholder="请填写确认密码"/>
                            <span id="passwordErr2" class="err"></span>
                        </div>
                        <div class="row">
                            <label class="lab" style="width: 100px;">真实姓名：</label>
                            <input class="ipt" id="userName" type="text" style="width: 214px;" value=""
                                   placeholder="请填写真实姓名"/>
                            <span id="userNameErr" class="err"></span>
                        </div>
                        <div class="row">
                            <label class="lab" style="width: 100px;">用户类型：</label>
                            <select class="set" id="type">
                                <option value="0">普通用户</option>
                                <option value="1">管理员</option>
                            </select>
                        </div>
                        <div class="row">
                            <label class="lab" style="width: 100px;">性别：</label>
                            <label class="radio">
                                <input style="-webkit-appearance:radio" type="radio" value="1"
                                       name="Sex" checked="checked"><span class="m">男</span>
                            </label>
                            <label class="radio">
                                <input style="-webkit-appearance:radio" type="radio" value="0"
                                       name="Sex"><span class="f">女</span>
                            </label>
                        </div>
                        <div class="row m-form-btn" data-spm-anchor-id="0.0.0.i1.61b87732kSEkAb"
                             style="margin-left: 100px">
                            <input type="hidden" id="id"/>
                            <input type="button" id="userType" value="添加" onclick="insertUserInfo()"
                                   style="color: white;background-color: #FF1268;display: inline-block;height: 27px;width: 90px;border: 2px solid #FF1268;border-radius: 4px;"/>
                            <input type="button" onclick="cancelAdd()" value="取消"
                                   style="color: dimgrey;background-color: lavender;display: inline-block;height: 27px;width: 90px;border: 2px solid gainsboro;border-radius: 4px;"/>
                        </div>
                        <div class="row m-form-btn" style="color:#999999;font-size:12px;margin-left: 100px;"
                             data-spm-anchor-id="0.0.0.i2.61b87732kSEkAb">
                            由芝麻信用提供验证<input type="hidden" id="user_id" value="${user.id}"/>
                        </div>

                    </div>
                </div>
            </div>
            <%--新增用户--%>

        </div>
    </div>
    <div class="pagination"></div>
    <!--right of end(右边主体部分结束)-->

</div>
</div>
<!--中间主体信息结束-->

<!--操作提示层开始-->
<div id="notify-window" style="display:none">
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
                <a href="javascript:void(0)" class="close" onclick="hideUserInfo()"></a>
            </div>
            <div class="c-n">
                <p id="notify-msg" class="t-c"></p>
                <div class="dm-layer-btn">
                    <button class="btn01 mt20" type="button" id="confirmSure" name="bb" onclick="hideUserInfo()">
                        确定
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>
<!--操作提示层结束-->

<!--操作提示层开始-->
<div id="notify-window2" style="display:none">
    <!--透明遮罩层-->
    <div class="mask-layer"></div>
    <!--弹出层-->
    <div class="dm-layer-box" style="width:376px;margin-left:-188px;top:50%; margin-top:-100px;">
        <div class="dm-layer">
            <div class="hd">
                <span style="display: inline-block;height: 30px;width: 30px;" id="showImage2">
                    <img src="${ctx}/static/image/huhaoyuantishi.jpg" width="30" height="30"
                         style="border-radius: 15px">
                </span>
                <h3 id="headHints2" style="display: inline-block;">&nbsp;&nbsp;提示</h3>
                <a href="javascript:void(0)" class="close" onclick="hideUserInfo()"></a>
            </div>
            <div class="c-n">
                <p id="notify-msg2" class="t-c"></p>
                <div class="dm-layer-btn">
                    <button class="btn01 mt20" type="button" id="confirmSure2" name="bb" onclick="deleteUserId()">确定
                    </button>
                    &nbsp;&nbsp;
                    <button class="btn04" id="confirmExit2" onclick="hideUserInfo()">取消</button>
                    <input type="hidden" id="userIDInfo"/>
                </div>
            </div>
        </div>
    </div>
</div>
<!--操作提示层结束-->

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
<%--<iframe src="./我的大麦-个人信息_files/blk.html" id="_oid_ifr_" style="width: 0px; height: 0px; display: none;"></iframe>--%>


<script src="${pageContext.request.contextPath }/static/js/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath }/static/js/js/ownInfo.js"></script>
<script src="${pageContext.request.contextPath }/static/js/js/ticketHolder.js"></script>
<script src="${pageContext.request.contextPath }/static/js/js/userAdmin.js"></script>
<script src="${pageContext.request.contextPath }/static/js/customerManage.js"></script>
</body>
</html>
