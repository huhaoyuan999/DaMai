<%--修改密码与更换账户页面1--%>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/cueLayer.css">
</head>

<c:if test="${empty user }">
    <jsp:forward page="/show/index"></jsp:forward>
</c:if>

<body data-spm="7633538" class="alipassport" data-spm-anchor-id="a1z5k.7633538.0.7633538.7dd54126rS5i5S">

<!--头部 start-->

<div id="header">
    <div class="header-layout">
        <h1 class="logo" id="logo">
            <a href="${pageContext.request.contextPath }/index.jsp">大麦</a>
            <span class="subtitle">  </span>
        </h1>
        <h2 class="logo-title">验证身份</h2>
        <ul class="header-nav">
            <li class="nav-first"> 您好， ${user.loginName}</li>
            <li><a href="${ctx}/user/destroy"> 退出 </a></li>
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
                        <span class="ui-step-text">
                            <c:if test="${pwd==1}">
                                修改密码
                            </c:if>
                             <c:if test="${pwd==2}">
                                 更换账户
                             </c:if>
                        </span>
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
                    <label style="margin-right: 16px">验证码验证</label> 账户 <em class="ft-orange">${user.loginName}</em>
                    为确认是你本人操作，请完成以下验证
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
                        <input type="hidden" value="${user.loginName}" id="J_MobileVal" data="86" name="_fm.v._0.p">
                        <div class="ui-form-text"> ${user.loginName}</div>
                        <input type="hidden" name="_fm.v._0.a" value="86" id="areaCode">

                    </div>


                    <div class="ui-form-item">
                        <label class="ui-label">验证码：</label>
                        <div class="checkcode-warp" style="height: 57px">
                            <div id="mpanel2"></div>
                            <button type="button" id="check-btn" class="verify-btn"
                                    style="height: 35px;border-radius: 3px">
                                确定
                            </button>
                        </div>
                        <div class="ui-form-explain"></div>
                    </div>

                    <style>
                        .identityError {
                            color: #FF5243;
                        }

                        .identityError .iconfont {
                            color: #FF5243;
                        }
                    </style>

                    <div class="ui-form-item">
                        <%--<div id="mpanel2"></div>--%>

                    </div>

                </form>
            </div>
            <div class="bottom-tips">
                <div class="bottom-tips-title">没收到短信验证码？</div>
                <ul class="ui-list ui-list-nosquare">
                    <li class="ui-list-item">
                        <span class="ui-list-item-text">1、网络通讯异常可能会造成短信丢失，请重新获取或稍后再试。</span>
                    </li>
                    <li class="ui-list-item">
                        <span class="ui-list-item-text">2、请核实手机是否已欠费停机，或者屏蔽了系统短信。</span>
                    </li>
                    <li class="ui-list-item">
                        <span class="ui-list-item-text">3、如果手机已丢失或停用， 请选择其他验证方式 。</span>
                    </li>
                    <li class="ui-list-item">
                        <span class="ui-list-item-text">4、您也可以尝试将SIM卡移动到另一部手机，然后重试。</span>
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
                <a href="javascript:void(0)" class="close" onclick="hideInfo()"></a>
            </div>
            <div class="c-n">
                <p id="notify-msg" class="t-c">您的验证码输入错误</p>
                <div class="dm-layer-btn">
                    <button class="btn01 mt20" type="button" id="confirmSure" name="bb" onclick="hideInfo()">确定</button>
                    &nbsp;&nbsp;
                    <!--<button class="btn04" id="confirmExit">取消</button>-->
                </div>
            </div>
        </div>
    </div>
</div>
<!--操作提示层结束-->


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

<script src="${pageContext.request.contextPath }/static/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/static/js/verify.js"></script>
<script>
    $('#mpanel2').codeVerify({
        type: 1,
        width: '200px',
        height: '25px',
        fontSize: '20px',
        codeLength: 6,
        btnId: 'check-btn',
        ready: function () {
        },
        success: function () {
            // alert('验证匹配！');
            var pwd = $("#pwd").text();
            if (pwd == 1) {
                window.location.href = "${ctx}/user/updatePwd/3";
            } else {
                window.location.href = "${ctx}/user/updatePwd/4";
            }
        },
        error: function () {
            $("#notify-window").show();
        }
    });
</script>
<script>
    function hideInfo() {
        $("#notify-window").hide();
    }

</script>
</body>
</html>
