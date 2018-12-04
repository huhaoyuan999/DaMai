<%--修改密码与更换账户页面1--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
            <li class="nav-first"> 您好，  ${fn:replace(user.loginName,fn:substring(user.loginName,2 ,8 ) ,'****' )}</li>
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
            <c:choose>
                <c:when test="${user.loginPhone!=null}">
                    <div class="maincenter-box">
                        <div style="width: 80%;margin:0 auto;font-size: 14px;">
                            <label style="margin-right: 16px">手机验证码验证</label>  账户 <em class="ft-orange"> ${fn:replace(user.loginName,fn:substring(user.loginName,2 ,8 ) ,'****' )}</em> 为确认是你本人操作，请完成以下验证
                            <hr style="height:1px;background: #b9b9b9;border:none;margin-top: 2px">
                        </div>

                        <form name="validateParams" method="POST" class="ui-form" id="J_Form" novalidate="novalidate" data-widget-cid="widget-0">
                            <input name="_tb_token_" type="hidden" value="iol8dRKBKs">
                            <input type="hidden" name="action" value="verify_action">
                            <input type="hidden" name="event_submit_do_validate" value="notNull">
                            <input type="hidden" name="_fm.v._0.t" value="8">
                            <input type="hidden" name="_fm.v._0.h" value="UPpbK_JCxs_i0hK1yJNeqVjtfmxPzR1K7iQnYGL-giYeuFSgEsLNh0qtwBwF7hpS">
                            <input type="hidden" name="_fm.v._0.ty" value="8">
                            <input type="hidden" name="_fm.v._0.c" value="pc">
                            <style>
                                .ui-input-checkcode-over{
                                    width:88px
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
                                <label class="ui-label">手机号码：</label>
                                <input type="hidden" value=" ${fn:replace(user.loginName,fn:substring(user.loginName,2 ,8 ) ,'****' )}" id="J_MobileVal" data="86" name="_fm.v._0.p">
                                <div class="ui-form-text">  ${fn:replace(user.loginName,fn:substring(user.loginName,2 ,8 ) ,'****' )} </div>
                                <input type="hidden" name="_fm.v._0.a" value="86" id="areaCode">

                            </div>


                            <div class="ui-form-item">
                                <label class="ui-label">验证码：</label>
                                <div class="checkcode-warp">
                                    <input name="_fm.v._0.ph" id="J_Phone_Checkcode" class="ui-input ui-input-checkcode-new ui-input-checkcode-over " type="text" maxlength="6" placeholder="请输入验证码" data-widget-cid="widget-1" data-explain="">
                                    <button id="J_GetCode" class="getcheckcode ui-button-over ft-orange" type="button" data-widget-cid="widget-2">获取短信校验码</button>
                                    <input type="hidden" name="_fm.v._0.pho" value="sms" id="codeType">
                                </div>
                                <div class="ui-form-explain"></div></div>

                            <style>
                                .identityError{color:#FF5243;}
                                .identityError .iconfont{color:#FF5243;}
                            </style>


                            <script type="text/javascript">
                                seajs.use(['arale/validator/0.9.5/validator', '$', 'alipay/button-count/1.1.2/button-count', 'arale/select/0.9.9/select.js'], function (Validator, jQuery, ButtonCount, Select) {
                                    jQuery(function () {
                                        var sendTime = 0;
                                        var codeType = "sms";
                                        function showExp(ele, msg, toggleClass) {
                                            var item = jQuery(ele).parent(".ui-form-item");
                                            var explain = item.find(".ui-form-explain");
                                            if (explain.length === 0) {
                                                explain = jQuery('<div class="ui-form-explain"></div>').appendTo(item);
                                            }
                                            var className = 'ui-form-item ' + toggleClass;
                                            explain.html(msg);
                                            item.attr('class', className);
                                        }

                                        var errorIcon = '<i class="ui-tiptext-icon iconfont">&#xF045;</i>',
                                            successIcon = '<i class="ui-tiptext-icon iconfont">&#xF049;</i>';
                                        //校验提示信息
                                        var messages = {
                                            checkCodeRequired: errorIcon + '请输入验证码'
                                        };

                                        Validator.addRule('checkCode', function (options) {
                                            var element = options.element;
                                            var rule = /^[+\-]?[0-9][0-9]*(\.[0-9]+)?([eE][+\-][1-9][0-9]*)?$|^[+\-]?0?\.[0-9]+([eE][+\-][1-9][0-9]*)?$/;
                                            var l = element.val().length;
                                            return rule.test(element.val());
                                        }, errorIcon + '{{display}}格式不正确，请重新输入');

                                        var validator = new Validator({
                                            element: '#J_Form',
                                            autoSubmit: true,
                                            onItemValidate: function (element) {
                                                if (jQuery(element).attr('type') === 'text') {
                                                    var val = jQuery(element).val();
                                                    val = jQuery.trim(val);
                                                    jQuery(element).val(val);
                                                }
                                            }
                                        });

                                        var placelen = jQuery('.ui-input-checkcode-over:visible').attr('maxlength');
                                        validator.addItem({
                                            element: '#J_Phone_Checkcode',
                                            required: true,
                                            rule: "checkCode",
                                            errormessageRequired: messages.checkCodeRequired,
                                            display: '验证码'
                                        });


                                        var buttonCount = new ButtonCount({
                                            element: jQuery('#J_GetCode'),
                                            disabledClass: 'ft-gray',
                                            enabledClass: 'ft-orange',
                                            initialize: true,
                                            hook: {
                                                url: 'https://ipassport.damai.cn/iv/phone/send_code.do?htoken=UPpbK_JCxs_i0hK1yJNeqVjtfmxPzR1K7iQnYGL-giYeuFSgEsLNh0qtwBwF7hpS',
                                                type: "GET",
                                                dataType: "json",
                                                data: {},
                                                cache: false
                                            },
                                            count: 60,
                                            countTemplate: '{{count}} 秒后，重新获取验证码'
                                        }).on('success', function (data) {
                                            var data = data[0];
                                            if (data.content.success) {
                                                var txt = successIcon + '验证码已发送到你的手机，15分钟内输入有效，验证码等同于密码，打死也不能告诉别人';
                                                showExp(jQuery('.checkcode-warp'), txt, 'ui-tiptext-success');
                                            } else {
                                                buttonCount.stop();
                                                afterSend(false);
                                                showExp(jQuery('.checkcode-warp'), errorIcon + data.content.value, 'ui-form-item-error');
                                            }
                                        }).on('error', function (data) {
                                            buttonCount.stop();
                                            afterSend(false);
                                            showExp(jQuery('.checkcode-warp'), errorIcon + '网络异常，请稍后再试', 'ui-form-item-error');
                                        }).on('click', function () {
                                            var ajaxHook = this.get('hook');
                                            if (jQuery('#J_MobileVal').length > 0) {
                                                ajaxHook.data.phone = jQuery('#J_MobileVal').val();
                                                ajaxHook.data.type = "phone";
                                                ajaxHook.data.area = jQuery('#J_MobileVal').attr("data");
                                                ajaxHook.data.tag = jQuery('#J_MobileVal').attr("data");
                                                jQuery('#areaCode').val(ajaxHook.data.area);
                                                this.set('hook', ajaxHook);
                                                showExp(jQuery('.checkcode-warp'), '正在发送验证码&hellip;', 'ui-form-item-loading');
                                                return;
                                            }
                                            ajaxHook.data.phone = jQuery('#J_Mobile').find('option:checked').val();
                                            ajaxHook.data.type = "phone";
                                            ajaxHook.data.area = jQuery('#J_Mobile').find('option:checked').attr("data");
                                            ajaxHook.data.tag = jQuery('#J_Mobile').find('option:checked').attr("data");
                                            jQuery('#areaCode').val(ajaxHook.data.area);
                                            this.set('hook', ajaxHook);
                                            showExp(jQuery('.checkcode-warp'), '正在发送验证码&hellip;', 'ui-form-item-loading');
                                        }).on('stop', function () {
                                            afterSend(true);
                                        });

                                        if (jQuery('#J_Mobile').length > 0) {
                                            var a = new Select({
                                                trigger: '#J_Mobile'
                                            }).render();
                                            a.on('change', function (target) {
                                                var code = target.attr('data-value');
                                            });
                                        }


                                        //短信验证码转换语音的逻辑
                                        function afterSend(success) {
                                            try{
                                                jQuery('#J_GetCode').html('重新获取验证码');
                                            }catch (e) {
                                                //ignore exception
                                                jQuery('#J_GetCode').html('重新获取验证码');
                                            }
                                        }

                                    });
                                });
                            </script>


                            <div class="ui-form-item">
                                <input type="submit" id="submitBtn" value=" 确定" class="ui-button ui-button-lorange">
                                <a href="javascript:void(0)" target="_self" class="ui-form-other">其他验证方式</a>
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
                </c:when>
                <c:otherwise>
                    <div class="maincenter-box">
                        <div style="width: 80%;margin:0 auto;font-size: 14px;">
                            <label style="margin-right: 16px">验证码验证</label> 账户 <em class="ft-orange">
                                ${fn:replace(user.loginName,fn:substring(user.loginName,2 ,8 ) ,'****' )}</em>
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
                                <input type="hidden" value="${fn:replace(user.loginName,fn:substring(user.loginName,2 ,8 ) ,'****' )}" id="J_MobileVal" data="86" name="_fm.v._0.p">
                                <div class="ui-form-text"> ${fn:replace(user.loginName,fn:substring(user.loginName,2 ,8 ) ,'****' )}</div>
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
                </c:otherwise>
            </c:choose>



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
