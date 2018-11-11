<%--修改密码与更换账户页面2--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en-US">
    <title>大麦网</title>
    <link rel="shortcut icon" type="image/x-icon" href="https://passport.damai.cn/images/favicon.ico">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/ucenter.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/pc.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/cueLayer.css">
</head>

<c:if test="${empty user }">
    <jsp:forward page="/show/index"></jsp:forward>
</c:if>

<body data-spm="7633538" class="alipassport">
<div id="header">
    <div class="header-layout">
        <h1 class="logo" id="logo">
            <a href="${pageContext.request.contextPath }/index.jsp">大麦</a>
            <span class="subtitle">  </span>
        </h1>
        <h2 class="logo-title">
            <c:if test="${pwd==3}">修改密码</c:if>
            <c:if test="${pwd==4}">更换账号</c:if>
        </h2>
        <ul class="header-nav">
            <li class="nav-first"> 您好， ${user.loginName}</li>
            <li><a href="${ctx}/user/destroy"> 退出 </a></li>
        </ul>

    </div>
</div>

<div id="content" data-spm-anchor-id="a1z5k.7633538.0.i1.917c4126STG8yB">
    <div class="content-layout">
        <div class="maincenter">
            <ol class="ui-step ui-step-3">
                <li class="ui-step-start ui-step-done">
                    <div class="ui-step-line">-</div>
                    <div class="ui-step-icon">
                        <i class="iconfont">y</i>
                        <i class="ui-step-number">1</i>
                        <span class="ui-step-text"> 验证身份 </span>
                    </div>
                </li>
                <li class="ui-step-active">
                    <div class="ui-step-line">-</div>
                    <div class="ui-step-icon">
                        <i class="iconfont">y</i>
                        <i class="ui-step-number">2</i>
                        <span class="ui-step-text">
                              <c:if test="${pwd==3}">修改密码</c:if>
                                <c:if test="${pwd==4}">更换账号</c:if>
                        </span>
                    </div>
                </li>
                <li class="ui-step-end">
                    <div class="ui-step-line">-</div>
                    <div class="ui-step-icon">
                        <i class="iconfont">y</i>
                        <i class="iconfont ui-step-number"></i>
                        <span class="ui-step-text"> 完成 </span>
                    </div>
                </li>
            </ol>
            <div class="maincenter-box">
                <div class="maincenter-box-tip">
                    <p class="ui-tiptext ui-tiptext-message ft-14">
                        <i class="ui-tiptext-icon iconfont" title=" 提示 "></i>
                        我们不会泄漏您的账户信息 </p>
                </div>

                <form class="ui-form" id="J_Form" method="POST" novalidate="novalidate" data-widget-cid="widget-1">

                    <div class="ui-form-item ui-form-item-error">
                        <label class="ui-label">
                            <c:if test="${pwd==3}">旧密码：</c:if>
                            <c:if test="${pwd==4}">新账号：</c:if>
                        </label>
                        <input name="_fm-mo-_0-m" class="ui-input" id="loginAccount" type="text" maxlength="30">
                        <div class="ui-form-explain" id="show1"><i class="ui-tiptext-icon iconfont"></i> <span
                                id="text1"></span>
                        </div>
                    </div>

                    <div class="ui-form-item ui-form-item-error">
                        <label class="ui-label">
                            <c:if test="${pwd==3}">新密码：</c:if>
                            <c:if test="${pwd==4}">再次输入：</c:if>
                        </label>
                        <input name="_fm-mo-_0-m" class="ui-input" id="loginPassword" type="text" maxlength="30">
                        <div class="ui-form-explain" id="show2"><i class="ui-tiptext-icon iconfont"></i> <span
                                id="text2"></span>
                        </div>
                    </div>

                    <div class="ui-form-item ui-form-item-error">
                        <label class="ui-label">
                            <c:if test="${pwd==3}"> 确认密码：：</c:if>
                            <c:if test="${pwd==4}">登录密码：</c:if>
                        </label>
                        <input name="_fm-mo-_0-m" class="ui-input" id="confirmThePassword" type="text" maxlength="30">
                        <div class="ui-form-explain" id="show3"><i class="ui-tiptext-icon iconfont"></i> <span
                                id="text3"></span>
                        </div>
                    </div>

                    <div class="ui-form-item     ">
                        <input type="button" id="confirmLogin" value=" 确定 " class="ui-button ui-button-lorange"
                               onclick="updatePwdAndLoginName()">
                        <input type="hidden" id="JudgmentFunction" value="${pwd}"/>
                        <input type="hidden" id="JudgmentName" value="${user.loginName}"/>
                        <input type="hidden" id="loginId" value="${user.id}"/>
                    </div>
                </form>
            </div>
            <div class="bottom-tips">
                <div class="bottom-tips-title"> 手机验证码收不到帮助：</div>
                <ul class="ui-list ui-list-nosquare">
                    <li class="ui-list-item">
                        <span class="ui-list-item-text"> 1.您的手机验证码可能需要10分钟才能到达您的手机（这取决于您当地的移动运营商），为避免系统错误请不要重复点击。 </span>
                    </li>
                    <li class="ui-list-item">
                        <span class="ui-list-item-text"> 2.网络异常可能导致短信丢失，请您重新点击“获取验证码”或稍后使用不同的浏览器或清除浏览器缓存重试。 </span>
                    </li>
                    <li class="ui-list-item">
           <span class="ui-list-item-text"> 3.请检查您的手机是否已停止服务或拦截我们的短信或短信收件箱已满。
 </span>
                    </li>
                    <li class="ui-list-item">
                        <span class="ui-list-item-text"> 4.您也可以尝试将SIM卡移动到另一部手机，然后重试。 </span>
                    </li>
                </ul>
            </div>
        </div>
    </div>
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
                <h3 id="headHints" style="display: inline-block;">&nbsp;&nbsp;提示</h3>
                <a href="javascript:void(0)" class="close" onclick="updateSuccess()"></a>
            </div>
            <div class="c-n">
                <p id="notify-msg" class="t-c">修改成功<span id="forTime"></span>秒钟后为您跳转到登入页面</p>
                <div class="dm-layer-btn">
                    <button class="btn01 mt20" type="button" id="confirmSure" name="bb" onclick="updateSuccess()">确定
                    </button>
                    &nbsp;&nbsp;
                    <!--<button class="btn04" id="confirmExit">取消</button>-->
                </div>
            </div>
        </div>
    </div>
</div>
<!--操作提示层结束-->

<!--foot start-->
<div id="footer">
    <div class="footer-layout">
        <div class="copyright">
            2011-2018 大麦版权所有
        </div>
    </div>
</div>
<!-- host: tbmpc011011147223.na62  -->

<script src="${pageContext.request.contextPath }/static/js/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath }/static/js/js/updateUser2.js"></script>
</body>
</html>
