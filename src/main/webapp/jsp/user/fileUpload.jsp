<%--图片上传页面--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ page session="false" %>--%>
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

                    <dd><a href="${ctx}/user/modular/1" title="个人信息" domain=""
                           class="on"><span>个人信息</span></a></dd>

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


    <!--right of start(右边主体信息-个人信息)-->
    <div class="right-main">
        <div class="breadcrumb">
            <span>个人信息</span></div>
        <div class="tab-mydamai">
            <ul class="title">
                <li><a href="${ctx}/user/modular/1">基本资料</a></li>
                <li><a class="on" href="${ctx}/jsp/user/fileUpload.jsp">头像设置</a></li>
                <li class="right">资料完整度：<span>30%</span></li>
            </ul>
            <div class="c-n box01">
                <div class="upload-photo-flash" id="mapFlash">
                    <!--头像设置flash-->
                    <div class="crop">
                        <form method="post" action="${ctx}/user/uploadFile" enctype="multipart/form-data">
                            <div class="dm-crop">
                                <div class="dm-crop-main">
                                    <canvas class="dm-crop-canvas" width="470" height="355"></canvas>
                                    <div class="dm-crop-upload">
                                        <div class="dm-crop-picker">
                                            <div class="dm-crop-picker__text">请选择一张照片</div>
                                            <a class="dm-crop-btn dm-crop-btn__upload" onclick="removeName1()"
                                               href="javascript:void(0)">
                                                选择照片
                                                <input type="file" id="file1" name="file">
                                                <input type="hidden" value="${user.id}" name="id"/>
                                            </a>
                                        </div>
                                        <div class="dm-crop-mask"
                                             style="background: url('/damai/static/image/${user.imageName}') no-repeat center;"></div>
                                    </div>
                                </div>
                                <div class="dm-crop-side">
                                    <div class="dm-crop-row">
                                        <div class="dm-crop-preview__text">头像预览 (150 * 150)</div>
                                    </div>

                                    <div class="dm-crop-row">
                                        <div class="dm-crop-preview">
                                            <c:if test="${empty user.imageName}">
                                                <img class="dm-crop-preview__image"
                                                     src="${ctx}/static/image/118036157_150_150.jpg"/>
                                            </c:if>
                                            <c:if test="${!empty user.imageName}">
                                                <img class="dm-crop-preview__image"
                                                     src="${ctx}/static/image/${user.imageName}"/>
                                            </c:if>
                                        </div>
                                    </div>

                                    <div class="dm-crop-row">
                                        <a class="dm-crop-btn dm-crop-btn__upload"
                                           href="javascript:void(0)" onclick="removeName2()">
                                            选择照片
                                            <input type="file" id="file2" name="file">
                                        </a>
                                        <div class="dm-crop-text">支持JPG、PNG</div>
                                    </div>
                                    <div class="dm-crop-row">
                                        <input class="dm-crop-btn dm-crop-btn__save" type="submit" value="提交">
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--right of end(右边主体信息-个人信息)-->

</div>
<!--中间主体信息结束-->


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
<script src="${pageContext.request.contextPath }/static/js/js/fileUpload.js"></script>
</body>
</html>
