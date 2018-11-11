<%--注册页面--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>大麦网注册</title>
    <meta name="spm-id" content="a211rg">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <link rel="stylesheet" href="//g.alicdn.com/tbc/global/0.0.8/index-min.css">
    <meta name="format-detection" content="telephone=no, email=no">
    <link rel="shortcut icon" href="//gw.alicdn.com/tfs/TB1fGH0fgMPMeJjy1XcXXXpppXa-16-16.ico" type="image/x-icon">
    <link rel="stylesheet"
          href="//g.alicdn.com/damai-mod/??kissy-login-top/0.0.6/index.css,kissy-login/0.0.26/index.css,kissy-pc-footer/0.0.2/index.css">
    <link rel="stylesheet" href="https://g.alicdn.com/tms/layouts/0.0.5/layout-pc.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/taskStyle.css">
    <script src="//g.alicdn.com/secdev/sufei_data/3.6.8/index.js" id="aplus-sufei"></script>
    <link href="${pageContext.request.contextPath }/static/css/fkReg.min.css" rel="stylesheet" type="text/css">
    <style type="text/css">
        html {
            min-width: 980px;
        }
    </style>
</head>

<body>

<div class="m-header-new">
    <div class="fkw-topbar-box">
        <a class="fkw-logo" target="_blank" title="点击可返回大麦网首页" href="${pageContext.request.contextPath }/index.jsp"
           style="margin-top: 10px;margin-left: 50px;">
            <img src="${pageContext.request.contextPath }/static/image/TB1Qim7xL5TBuNjSspmXXaDRVXa-230-104.png"
                 width="110" height="50"/></a>
    </div>
</div>


<div class="m-regForm">

    <div class="textLine">
    </div>

    <div class="regBox">
        <div class="u-borderTop u-borderTop-new">
            <div class="wxRegTips">
                <span><a class="login_WeChatCode" href="javascript:;" onclick="bindWeChat();" title="微信登录"></a></span>
            </div>
        </div>
        <div class="content contentIframe" style="display: none;"></div>
        <div class="login_WeChatTips" style="display: none;">
        </div>

        <div class="content" id="contentId">
            <div class="u-input">
                <label>帐号</label>

                <div class="inputWrapper">
                    <input type="text" placeholder="请输入手机号码或邮箱" autocomplete="new-password" id="acct" maxlength="34">
                </div>
                <span style="color: #FF1469" id="mailboxHints"></span>
            </div>

            <div class="u-input">
                <label>密码</label>

                <div class="inputWrapper">
                    <input type="password" placeholder="6-20个字符，区分大小写" autocomplete="new-password" id="pwd"
                           onpaste="return false;" maxlength="20">
                    <i class="vis z-on"></i>
                </div>
                <span style="color: #FF1469" id="passwordHints"></span>
            </div>

            <div class="u-input">
                <label>确认密码</label>

                <div class="inputWrapper">
                    <input type="password" placeholder="6-20个字符，区分大小写" autocomplete="new-password" id="pwd2"
                           onpaste="return false;" maxlength="20">
                    <i class="vis z-on"></i>
                </div>
                <span style="color: #FF1469" id="passwordHints2"></span>
            </div>

            <div class="regService">
                <label>
                    <label class="u-checkBox">
                        <input type="checkbox" id="agree"><i></i>
                    </label>
                    <input id="allCheckBox" type="checkbox" onclick="checkboxOnclick(this)"/>我同意<a href="#"
                                                                                                   target="_blank"
                                                                                                   rel="nofollow">《大麦网网平台注册协议》</a>
                    <br/><span style="margin-left: 17px;color: #FF1469" id="agreeInfo">请勾选同意协议</span>
                </label></div>
        </div>
        <div class="bottomBar">
            <font class="msg" id="regMsg"></font>
            <button class="u-bigBtn" id="regBtn" onclick="register()">免费注册</button>
        </div>
        <div class="toLogin">
            已有帐号？<a href="${pageContext.request.contextPath }/jsp/user/login.jsp">直接登录</a>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath }/static/js/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath }/static/js/js/register.js"></script>
</body>
</html>
