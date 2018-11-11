<%--找回密码页面2--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en-US">
    <title>大麦网</title>
    <link rel="shortcut icon" type="image/x-icon" href="https://passport.damai.cn/images/favicon.ico">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/ucenter.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/pc.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/ucenter(1).css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/memberSelfOpen.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/verify.css">
</head>
<body data-spm="7633538" class="alipassport" data-spm-anchor-id="a1z5k.7633538.0.7633538.7dd54126rS5i5S">

<!--头部 start-->

<div id="header">
    <div class="header-layout">
        <h1 class="logo" id="logo">
            <a href="${pageContext.request.contextPath }/index.jsp">大麦</a>
            <span class="subtitle">  </span>
        </h1>
        <h2 class="logo-title">找回密码</h2>
        <ul class="header-nav">
            <li class="nav-first"><a href="${ctx}/jsp/user/register.jsp"> 注册 </a></li>
            <li><a href="${ctx}/jsp/user/login.jsp"> 登录 </a></li>
        </ul>
    </div>
</div>


<%--主体登入开始部分--%>
<div id="header" class="fn-hide">
    <div class="header-layout">
        <h1 class="logo"><a
                href="#">淘宝</a>
        </h1>
        <h2 class="logo-title">修改密码</h2>
        <ul class="header-nav">
        </ul>
    </div>
</div>
<div id="content">
    <div class="content-layout">
        <div class="maincenter">
            <ol class="ui-step ui-step-3" style="overflow: visible">
                <li class="ui-step-start ui-step-active" id="stepstart">
                    <div class="ui-step-line">-</div>
                    <div class="ui-step-icon">
                        <i class="iconfont">y</i>
                        <i class="ui-step-number">1</i>
                        <span class="ui-step-text">验证身份</span>
                    </div>
                </li>
                <li>
                    <div class="ui-step-line">-</div>
                    <div class="ui-step-icon">
                        <i class="iconfont">y</i>
                        <i class="ui-step-number">2</i>
                        <span class="ui-step-text">找回密码</span>
                    </div>
                </li>
                <li class="ui-step-end">
                    <div class="ui-step-line">-</div>
                    <div class="ui-step-icon">
                        <i class="iconfont">y</i>
                        <i class="iconfont ui-step-number"></i>
                        <span class="ui-step-text">完成</span>
                    </div>
                </li>
            </ol>

            <div class="maincenter-box">
                <div style="width: 80%;margin:0 auto;font-size: 14px;">
                    <label style="margin-right: 16px">手机验证码</label>账户<em class="ft-orange">${loginName}</em>
                    为确保本人操作，请完成以下操作
                    <hr style="height:1px;background: #b9b9b9;border:none;margin-top: 2px">
                </div>

                <form name="validateParams" method="POST" class="ui-form" id="J_Form" novalidate="novalidate"
                      data-widget-cid="widget-0">
                    <input name="_tb_token_" type="hidden" value="CNu1UtV6hFs">
                    <input type="hidden" name="action" value="verify_action">
                    <input type="hidden" name="event_submit_do_validate" value="notNull">
                    <input type="hidden" name="_fm.v._0.t" value="8">
                    <input type="hidden" name="_fm.v._0.h"
                           value="HIKWC_Sq7jBBUQTte_C9CJwvWPpalcEXUxSLy4KAGPaEEy1X4v7e98HamJL4O6yd">
                    <input type="hidden" name="_fm.v._0.ty" value="8">
                    <input type="hidden" name="_fm.v._0.c" value="pc">
                    <style>
                        .ui-input-checkcode-over {
                            width: 88px
                        }

                        .checkcode-warp .ui-button-over {
                            left: 120px;
                            background: #FFF1E8;
                            border: 1px solid #FF751A;
                            height: 100%;
                            white-space: nowrap;
                            padding: 0 5px;
                            min-width: 248px;
                            color: #FF6A00;
                            border-radius: 3px;
                            top: 0px;
                        }

                        .checkcode-warp .ft-orange {
                            color: #FF6A00;
                        }

                        .checkcode-warp .ft-gray {
                            color: #9a9a9a;
                        }
                    </style>

                    <div class="ui-form-item">
                        <label class="ui-label">
                            账户信息：
                        </label>
                        <div class="ui-form-text">
                            <span id="loginName">${loginName}</span><br/>
                            <span style="display: none" id="showAdmin"><i class="ui-tiptext-icon iconfont"
                                                                          style="color: #FF1268"></i><span
                                    style="color: #FF1268" id="showInput"></span></span>
                        </div>
                        <br/>
                    </div>

                    <div class="ui-form-item">
                        <label class="ui-label"><font style="vertical-align: inherit;"><font
                                style="vertical-align: inherit;">验证码：</font></font></label>
                        <div class="checkcode-warp">
                            <input name="_fm.v._0.ph" id="J_Phone_Checkcode"
                                   class="ui-input ui-input-checkcode-new ui-input-checkcode-over " type="text"
                                   maxlength="6" placeholder="请输入验证码" data-widget-cid="widget-1" data-explain=""
                                   style="width: 100px">
                            <button id="J_GetCode" class="getcheckcode ui-button-over ft-orange" type="button"
                                    data-widget-cid="widget-2"><font style="vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">获取短信校验码</font></font></button>
                            <input type="hidden" name="_fm.v._0.pho" value="sms" id="codeType">
                        </div>
                        <span style="display: none" id="showCode"><i class="ui-tiptext-icon iconfont"
                                                                     style="color: #FF1268"></i><span
                                style="color: #FF1268">验证码输入错误</span></span>
                        <div class="ui-form-explain"></div>
                    </div>

                    <div class="ui-form-item" onclick="SMSVerification()">
                        <font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><input
                                type="button" value=" 确定" class="ui-button ui-button-lorange"></font></font>
                    </div>

                    <style>
                        .identityError {
                            color: #FF5243;
                        }

                        .identityError .iconfont {
                            color: #FF5243;
                        }
                    </style>
                </form>
            </div>
        </div>
    </div>
</div>
<!--foot start-->
<div id="footer" class="fn-hide">
    <div class="footer-layout">
        <div class="copyright">
            阿里巴巴版权所有 1999-2018
        </div>
    </div>
</div>
<!-- host: havanaappiv011008010014.center.na61  -->
<span style="color:#FFFFFF">havanaappiv011008010014.center.na61<span id="pwd">${pwd}</span></span>
<%--主体登入开始部分--%>


<!--foot start-->
<div id="footer">
    <div class="footer-layout">
        <div class="copyright">
            2011-2018 大麦版权所有
        </div>
    </div>
</div>
<!-- host: tbmpc011011013113.na61  -->

<script src="${pageContext.request.contextPath }/static/js/js/login.js"></script>
<script src="${pageContext.request.contextPath }/static/js/jquery-1.12.4.js"></script>
</body>
</html>
