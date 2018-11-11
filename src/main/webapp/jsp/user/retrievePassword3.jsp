<%--找回密码页面3--%>
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
<body data-spm="7633538" class="alipassport">
<div id="header">
    <div class="header-layout">
        <h1 class="logo" id="logo">
            <a href="${pageContext.request.contextPath }/index.jsp">大麦</a>
            <span class="subtitle">  </span>
        </h1>
        <h2 class="logo-title">
            找回密码
        </h2>
        <ul class="header-nav">
            <li class="nav-first"><a href="${ctx}/jsp/user/register.jsp"> 注册 </a></li>
            <li><a href="${ctx}/user/destroy"> 登录 </a></li>
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
                          重置登录密码
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

                <form class="ui-form" id="J_Form" method="POST" novalidate="novalidate" data-widget-cid="widget-1">

                    <div class="ui-form-item ui-form-item-error">
                        <label class="ui-label">
                            新的登录密码:
                        </label>
                        <input name="_fm-mo-_0-m" class="ui-input" id="loginPassword" type="text" maxlength="30">
                        <div class="ui-form-explain" id="show2"><i class="ui-tiptext-icon iconfont"></i> <span
                                id="text2"></span>
                        </div>
                    </div>

                    <div class="ui-form-item ui-form-item-error">
                        <label class="ui-label">
                            确认新的登录密码:
                        </label>
                        <input name="_fm-mo-_0-m" class="ui-input" id="confirmThePassword" type="text" maxlength="30">
                        <div class="ui-form-explain" id="show3"><i class="ui-tiptext-icon iconfont"></i> <span
                                id="text3"></span>
                        </div>
                    </div>

                    <div class="ui-form-item     ">
                        <input type="button" id="confirmLogin" value=" 确定 " class="ui-button ui-button-lorange"
                               onclick="foundLoginPassword()">
                        <input type="hidden" id="loginName" value="${loginName}"/>
                    </div>
                </form>
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
<script src="${pageContext.request.contextPath }/static/js/js/retrievePassword.js"></script>
</body>
</html>
