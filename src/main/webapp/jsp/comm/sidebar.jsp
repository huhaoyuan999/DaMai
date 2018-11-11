<%--
  Created by IntelliJ IDEA.
  User: AL-
  Date: 2018/10/31
  Time: 16:17:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0058)https://www.damai.cn/?spm=a2o6e.project.0.0.2658489a5EWFN4 -->
<html class="ks-webkit537 ks-webkit ks-chrome70 ks-chrome">
<head>
    <script type="text/javascript" src="/statics/js/detil/jquery-1.12.4.js"></script>
</head>
<body>
<script src="/statics/layui/layui.js"></script>
<script>
    layui.use('carousel', function () {
        var carousel = layui.carousel;
        //建造实例
        carousel.render({
            elem: '#slides'
            , width: '1200px' //设置容器宽度
            , arrow: 'always' //始终显示箭头
        });
    });
</script>
<%--ding--%>
<div class="sidebar" data-spm="slidelayer">
    <div class="item">
        <a class="alime" href="" target="_blank"
           data-spm="dcustomerservice">
            <div class="icon service"></div>
            <p>在线客服</p>
        </a>
    </div>
    <div class="item" style="border-bottom-width: 1px;">
        <a href="javascript:void(0)" target="_blank">
            <div class="icon damai"></div>
            <p>APP下载</p>

            <div class="qrcode">
                <img src="/files/TB1r0uFxHSYBuNjSspiXXXNzpXa-280-280.png"
                     width="72" height="72">
            </div>
        </a>
    </div>
    <div class="item J_GoTop" style="">
        <div class="icon gotop"></div>
        <p>回到顶部</p>
    </div>
</div>
</body>
</html>