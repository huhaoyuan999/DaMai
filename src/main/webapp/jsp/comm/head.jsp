<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <link href="${pageContext.request.contextPath }/static/css/index.css" rel="stylesheet">
</head>
<body>
<div class="dm-header-wrap">
    <div class="dm-header-box" data-spm="top">
        <a href="${pageContext.request.contextPath }/index.jsp">
            <img class="i-logo" src="${pageContext.request.contextPath }/static/image/TB1Qim7xL5TBuNjSspmXXaDRVXa-230-104.png" alt="大麦"/>
        </a>
        <div class="location-header" style="display: none;">
            <img class="i-icon-location" src="${pageContext.request.contextPath }/static/image/TB1XHDuxNGYBuNjy0FnXXX5lpXa-28-32.png"/>
            <span class="city-location">全国</span>
            <img class="i-arrow-location" src="${pageContext.request.contextPath }/static/image/TB1vnUBxStYBeNjSspaXXaOOFXa-20-12.png"/>
            <div class="city-header-wrap">
                <div class="city-header" data-spm="city">
                    <div class="now-city">
                        <span class="title-city">当前城市:</span>
                        <span class="name-city select-city">全国</span>
                    </div>
                    <div class="hot-city">
                        <span class="title-city">热门城市:</span>

                        <div class="list-other">
                            <%--<span class="name-city" data-spm="dselectcity&amp;clicktitle=全国">全国</span>--%>
                                <span class="name-city" data-spm="0">全国</span>
                            <c:forEach items="${hotCitys}" var="obj" varStatus="index">
                                <%--<span class="name-city" data-spm="dselectcity&amp;clicktitle=${obj.cityName}">${obj.cityName}</span>--%>
                                <span class="name-city" data-spm="${obj.areainfoId}">${obj.cityName}</span>
                            </c:forEach>
                        </div>
                    </div>
                    <div class="other-city">
                        <span class="title-city">其他城市:</span>
                        <div class="list-other">
                            <c:forEach items="${cityList}" var="obj">
                                <%--<span class="name-city" data-spm="dselectcity&amp;clicktitle=${obj.cityName}">${obj.cityName}</span>--%>
                                <span class="name-city" data-spm="${obj.areainfoId}">${obj.cityName}</span>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="recommend-header">
            <a href="javascript:;" class="type-recommend ${selectIndex} " data-spm="dhome" data-herf="${pageContext.request.contextPath }/show/index" >首页</a>
            <a href="javascript:;" class="type-recommend ${selectDcategory}" data-spm="dcategory" data-herf="${pageContext.request.contextPath }/city/categories">分类</a>
            <%--<a href="${pageContext.request.contextPath }/show/index" class="type-recommend select" data-spm="dhome" >首页</a>--%>
            <%--<a href="${pageContext.request.contextPath }/city/categories" class="type-recommend" data-spm="dcategory">分类</a>--%>
        </div>

        <div class="right-header" data-spm="nick">
            <c:if test="${empty user}">
                <div class="box-header user-header" onmouseenter="showInfo1()" onmouseleave="showInfo2()">
                    <a href="javascript:void(0)" class="J_userinfo_img" data-spm="duserinfo"><img
                            class="i-box-header i-user"
                            src="${pageContext.request.contextPath }/static/image/TB14UKCGQyWBuNjy0FpXXassXXa-54-54.png"/></a>
                    <a href="javascript:void(0)" class="J_userinfo_name" data-spm="duserinfo">
                        <div class="span-box-header name-user"></div>
                    </a>
                    <div class="login-user show">
                        <span class="span-box-header span-user" onclick="loginAndJumping()" data-spm="dlogin">登录</span>
                    </div>
                </div>
            </c:if>
            <c:if test="${!empty user}">
                <div class="box-header user-header" onmouseenter="showInfo1()" onmouseleave="showInfo2()">
                    <a href="javascript:void(0)" class="J_userinfo_img" data-spm="duserinfo"><img
                            class="i-box-header i-user"
                            src="${pageContext.request.contextPath }/static/image/TB14UKCGQyWBuNjy0FpXXassXXa-54-54.png"/></a>
                    <a href="javascript:void(0)" class="J_userinfo_name" data-spm="duserinfo">
                        <div class="span-box-header name-user"></div>
                    </a>
                    <div class="login-user show">
                        <span class="span-box-header span-user" data-spm="dlogin">${user.nickname}</span>
                    </div>
                    <div class="list-wrap">
                        <div class="list-login">
                            <a href="${ctx}/user/modular/1" class="li-login select"
                               data-spm="duserinfo">个人信息</a>
                            <a href="${ctx}/user/modular/2" class="li-login" data-spm="daccountsetting">账号设置</a>
                            <a href="${ctx}/order/query/${user.id}/0" class="li-login" data-spm="dordermanage">订单管理</a>
                            <a href="${ctx}/user/destroy" class="li-login" data-spm="dordermanage">退出登入</a>
                        </div>
                    </div>
                </div>
            </c:if>

            <div class="box-header download-header">
                <img class="i-box-header i-download"
                     src="${pageContext.request.contextPath }/static/image/TB1A9eIGKuSBuNjy1XcXXcYjFXa-54-54.png"/>
                <span class="span-box-header">下载</span>
                <div class="ewm-download">
                    <img class="i-ewm"
                         src="${pageContext.request.contextPath }/static/image/TB1r0uFxHSYBuNjSspiXXXNzpXa-280-280.png"/>
                </div>
            </div>

            <div class="box-header">
                <a href="#" data-spm="denglish">
                    <img class="i-box-header"
                         src="${pageContext.request.contextPath }/static/image/TB13UKCGQyWBuNjy0FpXXassXXa-54-54.png"/>
                    <span class="span-box-header">English</span>
                </a>
            </div>
        </div>

        <div class="search-header" data-spm="searchtxt">
            <img class="i-search" src="${pageContext.request.contextPath }/static/image/TB1qv3jxGmWBuNjy1XaXXXCbXXa-34-36.png"/>
            <input class="input-search" placeholder="搜索明星、演出、体育赛事" data-spm="dsearchbtn"/>
            <div class="btn-search" data-spm="dsearchbtn2">搜索</div>
            <div class="list-search-wrap">
                <div class="list-search"></div>
            </div>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath }/static/js/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath }/static/js/js/head.js"></script>
<script src="${pageContext.request.contextPath }/static/js/index.js"></script>


</body>
</html>
