<%--用户登录页面--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="ks-webkit537 ks-webkit ks-chrome69 ks-chrome">

<head>
    <meta charset="utf-8">
    <title>中文登录</title>
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
</head>
<body data-spm="193253">

<div class=" page-layout page-main-content" data-page-id="193253">
    <!-- container -->
    <div class="layout layout-grid-0">
        <!--row -->
        <div class="grid-0">
            <div class="col col-main">
                <div class="main-wrap J_Region">
                    <div data-spm="1012363" data-moduleid="0" data-name="kissy-login-top" data-guid="1012363"
                         id="guid-1012363" data-scene-id="1429984" data-scene-version="1" data-hidden=""
                         data-gitgroup="damai-mod" data-ext="" data-engine="tce" class="kissy-login-top J_Module"
                         tms="kissy-login-top/0.0.6" tms-datakey="tce/1429984"
                         tms-data="{&quot;moduleinfo&quot;:{},&quot;txts&quot;:[{&quot;data_para&quot;:{&quot;tce_vid&quot;:&quot;1&quot;,&quot;tce_sid&quot;:2647731,&quot;env&quot;:&quot;online&quot;},&quot;tms_type&quot;:&quot;jsonp&quot;,&quot;data_type&quot;:&quot;tceonline&quot;}],&quot;countinfo&quot;:{&quot;txts&quot;:{&quot;length_pc&quot;:1,&quot;length&quot;:1}},&quot;$tmsId&quot;:&quot;tce/1429984&quot;}">
                        <div class="J_ModContainer">
                            <div class="module-wrap">
                                <div class="pcbar">
                                    <div class="pcbar__bd w1200">
                                        <a href="${pageContext.request.contextPath }/index.jsp" class="pcbar__bd__logo">
                                            <img src="//img.alicdn.com/tfs/TB1K0qedf1TBuNjy0FjXXajyXXa-260-118.png">
                                        </a>
                                        <a href="javascript:void(0)" target="_blank"
                                           class="pcbar__bd__btn">English</a>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <!--module -->
                </div>
            </div>
            <!--col -->
        </div>
        <!-- row -->
    </div>


    <div class="layout layout-grid-0">
        <!--row -->
        <div class="grid-0">
            <div class="col col-main">
                <div class="main-wrap J_Region">
                    <div data-spm="1013791" data-moduleid="0" data-name="kissy-login" data-guid="1013791"
                         id="guid-1013791" data-scene-id="1431776" data-scene-version="7" data-hidden=""
                         data-gitgroup="damai-mod" data-ext="" data-engine="tce" class="kissy-login J_Module"
                         tms="kissy-login/0.0.26" tms-datakey="tce/1431776">
                        <div class="J_ModContainer">
                            <div class="module-wrap login-wrap">
                                <div class="login"
                                     style="background: linear-gradient(to right,#ff0078,#b100eb, #220788)"
                                     data-spm-anchor-id="a211rg.193253.1013791.i0.376e7de2MWqYm6">
                                    <div class="login__box w-login">
                                        <a href="https://p.damai.cn/wow/act/act/dms11?utm=9ZnaC8"
                                           class="login__box__poster">
                                            <img src="https://img.alicdn.com/tfs/TB164XMjhnaK1RjSZFtXXbC2VXa-720-440.jpg_q75.jpg"
                                                 width="720" height="400" alt="">
                                        </a>


                                        <div id="alibaba-login-iframe" class="iframe-loaded">
                                            <%--<div id="alibaba-login-iframe-loading"></div>--%>

                                            <%--登入页面开始--%>
                                            <div id="loginInfoAdmin">

                                                <section id="taskList">
                                                    <ul id="nav">
                                                        <li>密码登入</li>
                                                        <li>短信登入</li>
                                                        <li>扫码登入</li>
                                                    </ul>
                                                    <div class="taskContent">

                                                        <!--密码登入-->
                                                        <ul id="dayTask">
                                                            <div id="HintInformation">
                                                                <span id="ErrorImage"><img
                                                                        src="${pageContext.request.contextPath }/static/image/a5.png"
                                                                        width="16"
                                                                        height="16"/></span>
                                                                <span id="ErrorInfo">请输入您的手机号码</span>
                                                            </div>
                                                            <table id="tablesOne">
                                                                <tr>
                                                                    <td>
                          <span id="inputBOx1">
                              <span id="mailboxImg">
                                  <img src="${pageContext.request.contextPath }/static/image/timg%20(2).jpg" width="34"
                                       height="34"/>
                              </span>
                              <input type="text" style="outline:none;" id="mailboxFont" placeholder="请输入手机号或邮箱"/>
                          </span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                       <span id="inputBOx2">
                              <span id="passwordImg">
                                  <img src="${pageContext.request.contextPath }/static/image/timg%20(3).jpg" width="34"
                                       height="34"/>
                              </span>
                           <input type="password" style="outline:none;" id="passwordText" placeholder="请输入登入密码"/>
                       </span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                            <span>
                              <span></span><input type="button" style="outline:none;" value="登入" id="submitInfo"
                                                  onclick="submitInfo()"/>
                            </span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                            <span id="loginMode">
                                <img src="${pageContext.request.contextPath }/static/image/timg%20(1).jpg" width="20"
                                     height="20"/>
                                <img src="${pageContext.request.contextPath }/static/image/timg%20(8).jpg" width="25"
                                     height="25"/>
                                <img src="${pageContext.request.contextPath }/static/image/timg%20(7).jpg" width="20"
                                     height="20"/>
                                 &nbsp;
                                <img src="${pageContext.request.contextPath }/static/image/timg.jpg" width="20"
                                     height="20;"/>
                            </span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                        <span>
                            <a href="${pageContext.request.contextPath }/jsp/user/retrievePassword1.jsp"
                               id="ForgetPassword">忘记密码</a>
                            &nbsp;&nbsp;
                            <a href="${pageContext.request.contextPath }/jsp/user/register.jsp"
                               id="registerInfo">免费注册</a>
                        </span>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </ul>

                                                        <!--短信登入-->
                                                        <ul id="loginTask">
                                                            <div id="HintInformation2">
                                                                <span id="ErrorImage2"><img
                                                                        src="${pageContext.request.contextPath }/static/image/a5.png"
                                                                        width="16"
                                                                        height="16"/></span>
                                                                <span id="ErrorInfo2">请输入您的手机号码</span>
                                                            </div>
                                                            <table id="tablesOne2">
                                                                <tr>
                                                                    <td>
                          <span id="inputBOx3">
                              <span id="mailboxImg2">
                                  <img src="${pageContext.request.contextPath }/static/image/timg%20(4).jpg" width="34"
                                       height="34"/>
                              </span>
                              <input type="text" style="outline:none;" id="mailboxFont2" placeholder="请输入手机号码"/>
                          </span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                       <span id="inputBOx4">

                              <span id="passwordImg2">
                                  <img src="${pageContext.request.contextPath }/static/image/timg%20(5).jpg" width="34"
                                       height="34"/>
                              </span>
                           <input type="text" style="outline:none;" id="passwordText2" placeholder="请输入验证码"/>
                       </span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                            <span>
                              <span></span><input type="button" style="outline:none;" value="登入" id="submitInfo2"/>
                            </span>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </ul>

                                                        <!--扫码登入-->
                                                        <ul id="growTask">
                                                            <div id="TwoDimensional">
                                                                <div id="PromptScan">请扫面下方二维码登入</div>
                                                                <div id="ImageScan"><img
                                                                        src="${pageContext.request.contextPath }/static/image/TB1r0uFxHSYBuNjSspiXXXNzpXa-280-280.png"
                                                                        width="160" height="160"></div>
                                                            </div>
                                                        </ul>

                                                    </div>
                                                </section>

                                            </div>
                                            <%--登入页面结束--%>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--module -->
                </div>
            </div>
            <!--col -->
        </div>
        <!-- row -->
    </div>

    <!--页面底部 start-->
    <jsp:include page="../comm/foot2.jsp"/>
    <!--页面底部 end-->

</div>

<script src="${pageContext.request.contextPath }/static/js/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath }/static/js/task.js"></script>
<script src="${pageContext.request.contextPath }/static/js/js/login.js"></script>
</body>
</html>
