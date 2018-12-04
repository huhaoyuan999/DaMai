<%--个人信息查看与修改页面--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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


                <dd><a href="${ctx}/jsp/admin/accountManage.jsp" title="账户管理"
                       domain=""><span>账户管理</span></a></dd>
                <dl>


                <dd><a id="nav_myCoupon" href="${ctx}/order/reduce/${user.id}" title="我的优惠券"
                       domain=""><span>我的优惠券</span></a></dd>
                <dl>

                    <dt>账户中心</dt>

                    <c:if test="${user.type==0}">
                        <dd><a id="nav_MyAddress" href="${ctx}/address/userAddress/${user.id}" title="收货地址"
                               domain=""><span>收货地址</span></a></dd>
                    </c:if>

                    <c:if test="${modular==1}">
                        <dd><a href="${ctx}/user/modular/2"
                               title="账号设置" domain=""><span>账号设置</span></a></dd>
                    </c:if>
                    <c:if test="${modular==2}">
                        <dd><a href="${ctx}/user/modular/2"
                               title="账号设置" domain="" class="on"><span>账号设置</span></a></dd>
                    </c:if>

                    <c:if test="${modular==1}">
                        <dd><a href="${ctx}/user/modular/1" title="个人信息" domain=""
                               class="on"><span>个人信息</span></a></dd>
                    </c:if>
                    <c:if test="${modular==2}">
                        <dd><a href="${ctx}/user/modular/1" title="个人信息" domain=""><span>个人信息</span></a></dd>
                    </c:if>

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

    <c:if test="${modular==1}">
        <!--right of start(右边主体信息-个人信息)-->
        <div class="right-main">
            <div class="breadcrumb">
                <span>个人信息</span></div>
            <div class="tab-mydamai">
                <ul class="title">
                    <li><a class="on" href="${ctx}/user/modular/1">基本资料</a></li>
                    <li><a href="${ctx}/jsp/user/fileUpload.jsp">头像设置</a></li>
                    <li class="right">资料完整度：<span>30%</span></li>
                </ul>
                <div class="c-n box01">
                    <div class="per-edit-list">
                        <form id="myinfoform" method="post">
                            <div class="per-edit-msg">完善更多个人信息，有助于我们为您提供更加个性化的服务，大麦网将尊重并保护您的隐私。</div>
                            <dl>
                                <dt><span class="c4" style="padding-right:3px;color:red;">*</span>昵称：</dt>
                                <dd>
                                    <input id="nickinp" type="text" class="input-text-2" name="NickName"
                                           value="${user.nickname}"
                                           style="height: 23px;line-height: 23px">
                                    <span id="nickinpTip" class="onSuccess"></span>
                                </dd>
                            </dl>
                            <dl>
                                <dt>真实姓名：</dt>
                                <dd>
                                    <input id="realinp" type="text" class="input-text-2" name="RealName"
                                           value="${user.userName}" style="height: 23px;line-height: 23px">
                                    <span id="realinpTip" class="tip"></span>
                                </dd>
                            </dl>
                            <c:choose>
                                <c:when test="${user.sex==1}">
                                    <dl>
                                        <dt><span class="c4" style="padding-right:3px;color:red;">*</span>性别：</dt>
                                        <dd>
                                            <label class="radio">
                                                <input style="-webkit-appearance:radio" type="radio" value="1"
                                                       name="Sex" checked="checked"><span class="m">男</span>
                                            </label>
                                            <label class="radio">
                                                <input style="-webkit-appearance:radio" type="radio" value="0"
                                                       name="Sex"><span class="f">女</span>
                                            </label>
                                            <span class="onShow"></span>
                                        </dd>
                                    </dl>
                                </c:when>
                                <c:otherwise>
                                    <dl>
                                        <dt><span class="c4" style="padding-right:3px;color:red;">*</span>性别：</dt>
                                        <dd>
                                            <label class="radio">
                                                <input style="-webkit-appearance:radio" type="radio" value="1"
                                                       name="Sex"><span class="m">男</span>
                                            </label>
                                            <label class="radio">
                                                <input style="-webkit-appearance:radio" type="radio" value="0"
                                                       name="Sex" checked="checked"><span class="f">女</span>
                                            </label>
                                            <span class="onShow"></span>
                                        </dd>
                                    </dl>
                                </c:otherwise>
                            </c:choose>
                            <dl>
                                <dt>出生日期：</dt>
                                <dd>
                                    <select class="sel-1" id="birthY" name="birthY">
                                        <option value="0"></option>
                                        <option value="2018">2018</option>
                                        <option value="2017">2017</option>
                                        <option value="2016">2016</option>
                                        <option value="2015">2015</option>
                                        <option value="2014">2014</option>
                                        <option value="2013">2013</option>
                                        <option value="2012">2012</option>
                                        <option value="2011">2011</option>
                                        <option value="2010">2010</option>
                                        <option value="2009">2009</option>
                                        <option value="2008">2008</option>
                                        <option value="2007">2007</option>
                                        <option value="2006">2006</option>
                                        <option value="2005">2005</option>
                                        <option value="2004">2004</option>
                                        <option value="2003">2003</option>
                                        <option value="2002">2002</option>
                                        <option value="2001">2001</option>
                                        <option value="2000">2000</option>
                                        <option value="1999">1999</option>
                                        <option value="1998">1998</option>
                                        <option value="1997">1997</option>
                                        <option value="1996">1996</option>
                                        <option value="1995">1995</option>
                                        <option value="1994">1994</option>
                                        <option value="1993">1993</option>
                                        <option value="1992">1992</option>
                                        <option value="1991">1991</option>
                                        <option value="1990">1990</option>
                                        <option value="1989">1989</option>
                                        <option value="1988">1988</option>
                                        <option value="1987">1987</option>
                                        <option value="1986">1986</option>
                                        <option value="1985">1985</option>
                                        <option value="1984">1984</option>
                                        <option value="1983">1983</option>
                                        <option value="1982">1982</option>
                                        <option value="1981">1981</option>
                                        <option value="1980">1980</option>
                                        <option value="1979">1979</option>
                                        <option value="1978">1978</option>
                                        <option value="1977">1977</option>
                                        <option value="1976">1976</option>
                                        <option value="1975">1975</option>
                                        <option value="1974">1974</option>
                                        <option value="1973">1973</option>
                                        <option value="1972">1972</option>
                                        <option value="1971">1971</option>
                                        <option value="1970">1970</option>
                                        <option value="1969">1969</option>
                                        <option value="1968">1968</option>
                                        <option value="1967">1967</option>
                                        <option value="1966">1966</option>
                                        <option value="1965">1965</option>
                                        <option value="1964">1964</option>
                                        <option value="1963">1963</option>
                                        <option value="1962">1962</option>
                                        <option value="1961">1961</option>
                                        <option value="1960">1960</option>
                                        <option value="1959">1959</option>
                                        <option value="1958">1958</option>
                                        <option value="1957">1957</option>
                                        <option value="1956">1956</option>
                                        <option value="1955">1955</option>
                                        <option value="1954">1954</option>
                                        <option value="1953">1953</option>
                                        <option value="1952">1952</option>
                                        <option value="1951">1951</option>
                                        <option value="1950">1950</option>
                                        <option value="1949">1949</option>
                                        <option value="1948">1948</option>
                                        <option value="1947">1947</option>
                                        <option value="1946">1946</option>
                                        <option value="1945">1945</option>
                                        <option value="1944">1944</option>
                                        <option value="1943">1943</option>
                                        <option value="1942">1942</option>
                                        <option value="1941">1941</option>
                                        <option value="1940">1940</option>
                                        <option value="1939">1939</option>
                                        <option value="1938">1938</option>
                                        <option value="1937">1937</option>
                                        <option value="1936">1936</option>
                                        <option value="1935">1935</option>
                                        <option value="1934">1934</option>
                                        <option value="1933">1933</option>
                                        <option value="1932">1932</option>
                                        <option value="1931">1931</option>
                                        <option value="1930">1930</option>
                                        <option value="1929">1929</option>
                                        <option value="1928">1928</option>
                                        <option value="1927">1927</option>
                                        <option value="1926">1926</option>
                                        <option value="1925">1925</option>
                                        <option value="1924">1924</option>
                                        <option value="1923">1923</option>
                                        <option value="1922">1922</option>
                                        <option value="1921">1921</option>
                                        <option value="1920">1920</option>
                                        <option value="1919">1919</option>
                                        <option value="1918">1918</option>
                                        <option value="1917">1917</option>
                                        <option value="1916">1916</option>
                                        <option value="1915">1915</option>
                                        <option value="1914">1914</option>
                                        <option value="1913">1913</option>
                                        <option value="1912">1912</option>
                                        <option value="1911">1911</option>
                                        <option value="1910">1910</option>
                                        <option value="1909">1909</option>
                                        <option value="1908">1908</option>
                                        <option value="1907">1907</option>
                                        <option value="1906">1906</option>
                                        <option value="1905">1905</option>
                                        <option value="1904">1904</option>
                                        <option value="1903">1903</option>
                                        <option value="1902">1902</option>
                                        <option value="1901">1901</option>
                                        <option value="1900">1900</option>
                                    </select>
                                    &nbsp;年&nbsp;<select class="sel-2" id="birthM" name="birthM">
                                    <option value="0"></option>
                                    <option value="01">01</option>
                                    <option value="02">02</option>
                                    <option value="03">03</option>
                                    <option value="04">04</option>
                                    <option value="05">05</option>
                                    <option value="06">06</option>
                                    <option value="07">07</option>
                                    <option value="08">08</option>
                                    <option value="09">09</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                </select>&nbsp;月&nbsp;<select class="sel-2" id="birthD" name="birthD">
                                    <option value="0"></option>
                                    <option value="01">01</option>
                                    <option value="02">02</option>
                                    <option value="03">03</option>
                                    <option value="04">04</option>
                                    <option value="05">05</option>
                                    <option value="06">06</option>
                                    <option value="07">07</option>
                                    <option value="08">08</option>
                                    <option value="09">09</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                    <option value="13">13</option>
                                    <option value="14">14</option>
                                    <option value="15">15</option>
                                    <option value="16">16</option>
                                    <option value="17">17</option>
                                    <option value="18">18</option>
                                    <option value="19">19</option>
                                    <option value="20">20</option>
                                    <option value="21">21</option>
                                    <option value="22">22</option>
                                    <option value="23">23</option>
                                    <option value="24">24</option>
                                    <option value="25">25</option>
                                    <option value="26">26</option>
                                    <option value="27">27</option>
                                    <option value="28">28</option>
                                    <option value="29">29</option>
                                    <option value="30">30</option>
                                    <option value="31">31</option>
                                </select>&nbsp;日

                                </dd>
                            </dl>
                            <dl>
                                <dt>身份证号：</dt>
                                <dd>
                                    <input id="cardinp" type="text" class="input-text-1" name="IdentityCard"
                                           value="${user.identityCode}" style="height: 23px;line-height: 23px">
                                    <input type="hidden" id="userId" value="${user.id}"/>
                                    <span id="cardinpTip" class="tip"></span>
                                </dd>
                            </dl>

                            <input id="posttoken" type="hidden" name="posttoken" value="D486EMTzprBLMKcru8f8uQ==">
                            <button id="sumBgn" class="btn05" type="button" onclick="updateInfo()">保存</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!--right of end(右边主体信息-个人信息)-->
    </c:if>

    <c:if test="${modular==2}">
        <!--right of start(右边主体信息-账号设置)-->
        <div class="right-main">
            <div class="breadcrumb">
                <span>账号设置</span></div>

            <div class="tab-mydamai">
                <ul class="title">
                    <li>
                        <a id="accountSetting" class="on" href="javascript:void(0)">账号设置</a>
                    </li>
                    <li style="float:right;">
                        <a style="background:none;color:#2f97b4;"
                           href="javascript:void(0);">人工服务</a>
                    </li>
                </ul>
                <!--默认页面-->
                <div class="msg-safety" style="display:none;">

                </div>
                <div class="info-safety">
                    <ul>
                        <li class="suc-title">修改密码</li>
                        <li class="infos-con"><span>点击修改,可以修改您的登入密码</span></li>
                        <li class="right"><a href="${ctx}/user/updatePwd/1" class="c7">修改</a></li>
                    </ul>
                </div>
                <div class="info-safety">
                    <ul>
                        <li class="suc-title">更换账户</li>
                        <li class="infos-con"><span>点击更换,可以更换您的手机号码或邮箱</span></li>
                        <li class="right">
                            <a href="${ctx}/user/updatePwd/2" class="c7">更换</a>&nbsp;&nbsp;
                        </li>
                    </ul>
                </div>
                <c:if test="${user.loginPhone!=null}">
                    <div class="info-safety">
                        <ul>
                            <li class="suc-title">手机验证</li>
                            <li class="infos-con"><span>您验证的手机：${fn:replace(user.loginPhone,fn:substring(user.loginPhone,2 ,8 ) ,'****' )}</span></li>
                            <li class="right">
                                <a href="https://passport.damai.cn/account/resetmobile" class="c7">更换</a>&nbsp;&nbsp;
                            </li>
                        </ul>
                    </div>
                </c:if>

            </div>

        </div>
        <!--right of end(右边主体信息-账号设置)-->
    </c:if>

</div>
<!--中间主体信息结束-->

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
                <p id="notify-msg" class="t-c"></p>
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


<!--返回顶部及帮助中心-->
<div class="new-fast">
    <a onclick="jvascript:$(&#39;body,html&#39;).animate({ scrollTop: 0 }, 500);" class="fast-top"
       href="#">返回顶部</a>
    <a class="fast-help" href="#" target="_blank">帮助中心</a>
</div>

<!-- 成功提示层 begin -->
<div class="tips-y-b">
    <div class="tips-y-b-con"><p></p></div>
</div>
<div class="tips-f-b">
    <div class="tips-f-b-con"><p></p></div>
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

<script type="text/javascript">
    function birthY(optionID) {
        var all_options = document.getElementById("birthY").options;
        for (var i = 0; i < all_options.length; i++) {
            // 根据option标签的ID来进行判断  测试的代码这里是两个等号
            if (all_options[i].value == optionID) {
                all_options[i].selected = true;
            }
        }
    };

    function birthM(optionID) {
        var all_options = document.getElementById("birthM").options;
        for (var i = 0; i < all_options.length; i++) {
            // 根据option标签的ID来进行判断  测试的代码这里是两个等号
            if (all_options[i].value == optionID) {
                all_options[i].selected = true;
            }
        }
    };

    function birthD(optionID) {
        var all_options = document.getElementById("birthD").options;
        for (var i = 0; i < all_options.length; i++) {
            // 根据option标签的ID来进行判断  测试的代码这里是两个等号
            if (all_options[i].value == optionID) {
                all_options[i].selected = true;
            }
        }
    };
    birthY(${birthY});
    birthM(${birthM});
    birthD(${birthD});
</script>

<script src="${pageContext.request.contextPath }/static/js/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath }/static/js/js/ownInfo.js"></script>
</body>
</html>
