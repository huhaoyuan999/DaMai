<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <%@ page language="java" contentType="text/html; charset=GB18030" pageEncoding="GB18030"%>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <link rel="shortcut icon"
          href="${pageContext.request.contextPath}/static/images/TB1fGH0fgMPMeJjy1XcXXXpppXa-16-16.ico"
          type="image/x-icon">
    <title>选择支付方式</title>
    <link rel="stylesheet" href="${ctx}/static/cssGoods/shopping-min.css">
    <link rel="stylesheet" href="${ctx}/static/cssGoods/public-min.css">
    <link rel="stylesheet" href="${ctx}/static/cssGoods/public-min(1).css">
    <link rel="stylesheet" href="${ctx}/static/cssGoods/base.css">
</head>
<body>
<div id="operLayer" style="width: 100%; height: 968px;"></div>
<!--top start-->
<div class="top-s">
    <div class="top-con">
        <ul class="fl">
            <li id="headerUserinfo" class="dm-info"><span class="dm-name">HI ,${user.nickname}</span><a
                    href="javascript:void(0);" target="_blank"
                    class="dm-message"><em></em><span>站内信</span><strong>0</strong></a><a class="dm-exit" title="退出"
                                                                                         href="${ctx}/user/destroy/?Info=1">退出</a>
            </li>
            <li class="mydm o" onmouseenter="showInfo(jQuery(this))" onmouseleave="hideInfo(jQuery(this))">
                <div class="dm-t mydm-t"><a href="${ctx}/user/modular/1" target="_blank">我的大麦</a><b></b></div>
                <div class="dm-c mydm-c"><a href="${ctx}/user/modular/1" target="_blank" title="个人信息">个人信息</a>
                    <a href="${ctx}/order/query/${user.id}/0" target="_blank" title="订单管理">订单管理</a> <a
                            href="javascript:void(0);" target="_blank"
                            title="我的钱包">我的钱包</a> <a href="${ctx}/user/modular/1"
                                                     target="_blank">我的订阅</a> <a
                            href="${ctx}/order/reduce/${user.id}" target="_blank"
                            title="我的优惠券">我的优惠券</a></div>
            </li>
        </ul>
        <ul class="fr">
            <li class="dm-app">
                <div class="dm-t app-t"><a href="javascript:void(0);" target="_blank">手机版</a></div>
                <div class="dm-c app-c">
                    <div class="dm-code"><p class="t1">扫描我，即刻下载</p>
                        <p class="t2">大麦客户端</p></div>
                    <a href="javascript:void(0);" target="_blank" class="dm-iphone"></a> <a
                        href="javascript:void(0);" target="_blank" class="dm-ipad"></a> <a
                        href="javascript:void(0);" target="_blank" class="dm-android"></a><a
                        href="javascript:void(0);"
                        target="_blank" class="dm-wp"></a></div>
            </li>
            <li class="dm-service">
                <div class="dm-t service-t"><a href="javascript:void(0)">客户服务</a><b></b></div>
                <div class="dm-c service-c"><a href="javascript:void(0);" target="_blank">账户服务</a> <a
                        href="javascript:void(0);" target="_blank">人工服务</a> <a
                        href="javascript:void(0);" target="_blank">特色产品</a> <a
                        href="javascript:void(0);" target="_blank">帮助中心</a> <span
                        class="xiaonengservice xnchatService">在线客服</span></div>
            </li>
            <li class="dm-site-nav">
                <div class="dm-t site-nav-t"><a href="javascript:void(0)">网站导航</a><b></b></div>
                <div class="dm-c site-nav-c">
                    <dl class="dm-sev01">
                        <dt>特色服务</dt>
                        <dd>
                            <ul>
                                <li><a target="_blank" href="javascript:void(0);">场馆库</a></li>
                                <li><a target="_blank" href="javascript:void(0);">演出订阅</a>
                                </li>
                                <li><a target="_blank" href="javascript:void(0);">精彩专题</a></li>
                                <li><a target="_blank" href="javascript:void(0);">手机购票</a></li>
                                <li><a target="_blank" href="javascript:void(0);">电子钱包</a></li>
                                <li><a target="_blank" href="javascript:void(0);">英文频道</a></li>
                                <li><a target="_blank" href="javascript:void(0);">防诈骗</a></li>
                            </ul>
                        </dd>
                    </dl>
                    <dl class="dm-sev01">
                        <dt>演出分类</dt>
                        <dd>
                            <ul>
                                <li>
                                    <a href="javascript:void(0);"
                                       target="_blank" title="演唱会">演唱会</a>
                                </li>
                            </ul>
                        </dd>
                    </dl>
                    <dl class="dm-sev02">
                        <dt>城市切换</dt>
                        <dd>
                            <ul>
                                <li><a title="北京" href="javascript:void(0);" target="_blank">北京</a></li>
                            </ul>
                        </dd>
                    </dl>
                </div>
            </li>
            <li class="dm-bilingual">
                <div class="dm-t service-t"><a target="_blank" href="javascript:void(0);">English</a></div>
            </li>
        </ul>
    </div>
</div><!--top end-->
<div class="line"></div>
<div class="site_guide">
    <a title="首页" href="${ctx}/show/index">首页</a> &gt; 支付中心
</div>
<!--main-->
<div class="shopping shopping_w">
    <dl class="guide threestep">
        <dt class="on">确认订单信息</dt>
        <dd class="on">下订单</dd>
        <dt class="on">选择支付方式</dt>
        <dd>完成支付</dd>
        <dt>追踪订单</dt>
    </dl>
    <!--erro-->
    <!--table list-->
    <div class="pay">
        <ul class="hd">
            <li>支付编号</li>
            <li>订单编号</li>
            <li>商品名称</li>
            <li>订单金额</li>
            <li>应付金额</li>
        </ul>
        <table class="orderTableinfo">
            <tbody>
            <tr>
                <td>${substring}</td>
                <td>
                    <table>
                        <tbody>
                        <tr>
                            <td class="noborder">${order.number}</td>
                            <td class="noborder">${order.tshow.showName}</td>
                            <td class="noborder">${order.price}元</td>
                        </tr>
                        </tbody>
                    </table>
                </td>
                <td class="f14"><strong class="c4">${order.price}</strong>元</td>
            </tr>
            </tbody>
        </table>

        <!--pay tab-->
        <div class="hidden" id="paymethods" style="display: block;">
            <div class="payTab" id="selectPay">
                <ul>
                    <li typeid="7"><a href="javascript:void(0)">网上银行付款</a></li>
                    <li class="on" typeid="1"><a href="javascript:void(0)">支付平台付款</a></li>
                    <li typeid="18"><a href="javascript:void(0)">优惠通道</a></li>
                    <li typeid="17"><a href="javascript:void(0)">分期付款</a></li>
                    <li typeid="9">
                        <a id="ewalletPage" href="javascript:void(0)">电子钱包</a></li>
                </ul>
            </div>
            <form action="http://localhost/epayapi.php" method="post" name="alipayment" target="_blank" id="form1" onsubmit="return check()">
                <div class="payInner" style="display: none;">
                    <div class="t">
                        <p>应付总金额:<span class="c4">290.00</span> 元</p>
                        <p class="c5 bold">部分网上银行不支持非IE浏览器，建议复制本网页的网址，使用IE浏览器继续付款操作</p></div>

                    <ul class="bank clear">
                        <li><label><input class="r" type="radio" name="payMethod" value="621" groupid="27" typeid="17"
                                          rt="2" st="7">
                            <img src="${ctx}/static/images/17.jpg"></label></li>
                        <li><label><input class="r" type="radio" name="payMethod" value="617" groupid="16" typeid="12"
                                          rt="2" st="7">
                            <img src="${ctx}/static/images/12.jpg"></label></li>
                        <li><label><input class="r" type="radio" name="payMethod" value="615" groupid="11" typeid="10"
                                          rt="2" st="7">
                            <img src="${ctx}/static/images/10.jpg" class=""></label></li>
                        <li><label><input class="r" type="radio" name="payMethod" value="620" groupid="24" typeid="15"
                                          rt="2" st="7">
                            <img src="${ctx}/static/images/15.jpg"></label></li>
                        <li><label><input class="r" type="radio" name="payMethod" value="625" groupid="39" typeid="23"
                                          rt="2" st="7">
                            <img src="${ctx}/static/images/23.jpg"></label></li>
                        <li><label><input class="r" type="radio" name="payMethod" value="618" groupid="19" typeid="13"
                                          rt="2" st="7">
                            <img src="${ctx}/static/images/13.jpg"></label></li>
                        <li><label><input class="r" type="radio" name="payMethod" value="619" groupid="21" typeid="14"
                                          rt="2" st="7">
                            <img src="${ctx}/static/images/14.jpg"></label></li>
                        <li><label><input class="r" type="radio" name="payMethod" value="629" groupid="13" typeid="11"
                                          rt="2" st="7">
                            <img src="${ctx}/static/images/11.jpg" class=""></label></li>
                    </ul>
                    <div class="banTips" style="border:0;margin-top:0;padding:0;"></div>
                    <p class="pt20"><input type="submit" name="gotoPay" onclick="return SumbitPay();" id="submit1"
                                           value="" class="btn_pay"></p>
                </div>
                <div class="payInner" style="display: block;">
                    <div class="t prel">
                        <p>应付总金额:<span class="c4">${order.price}</span> 元</p>
                        <p>以下支付平台都支持大多数银行卡.</p>
                        <p class="c5 bold">部分网上银行不支持非IE浏览器，建议复制本网页的网址，使用IE浏览器继续付款操作</p></div>
                    <ul class="bank clear">
                        <li>
                            <label>
                                <input class="r" type="radio" name="type" value="wxpay" groupid="77" typeid="57"
                                       rt="57" st="1">
                                <img src="${ctx}/static/images/57.jpg">
                            </label>
                        </li>
                        <li>
                            <label>
                                <input class="r" type="radio" name="type" value="alipay" groupid="1" typeid="2" rt="2"
                                       st="1">
                                <img src="${ctx}/static/images/2.jpg">
                            </label>
                        </li>
                    </ul>
                    <p class="tips-new" id="wsdtips" style="padding:0 0 0 35px; margin-top:5px;display:none">

                        当您选择此支付方式时，会产生3%的费用。如果您不能接受，我们建议您选择其他支付方式进行支付。由此造成的不便，请见谅。</p>
                    <p class="pt20"><input type="submit" name="gotoPay"  id="submit2"
                                           value="" class="btn_pay"></p>
                </div>
                <div class="payInner" style="display: none;">
                    <div class="t prel">
                        <p>应付总金额:<span class="c4">290.00</span> 元</p>
                        <p class="c5 bold">部分网上银行不支持非IE浏览器，建议复制本网页的网址，使用IE浏览器继续付款操作</p></div>
                    <ul class="bank clear">
                        <li>
                            <label>
                                <input class="r" type="radio" name="payMethod" value="2408" groupid="122" typeid="77"
                                       rt="77" st="18">
                                <img src="${ctx}/static/images/77.jpg">
                            </label>
                        </li>
                    </ul>

                    <div id="122" style="display: none;" class="youhuiTips">
                        PC端
                    </div>

                    <p class="pt20"><input type="submit" name="gotoPay" onclick="return SumbitPay();" id="submit10"
                                           value="" class="btn_pay"></p>
                </div>
                <div class="payInner" style="display: none;">
                    <div class="t">
                        <p>应付总金额:<span class="c4">290.00</span> 元</p>
                    </div>
                    <ul class="bank stages clear">
                        <li class="itm">
                            <label>
                                <input type="radio" class="r" name="payMethod" value="2411" groupid="124" typeid="79"
                                       st="17" rt="79">
                                <img src="${ctx}/static/images/79.jpg">
                                <a class="more" href="javascript:void(0);" target="_blank">了解更多&gt;&gt;</a>
                            </label>
                        </li>
                    </ul>
                    <div class="details banTipsInstallment1779" style="display: none;">
                        <div class="t">
                            <p>请选择:<span class="c4">花呗分期</span>付款的期数： </p>
                        </div>

                        <ul class="lst">
                            <li class="itm1">
                                <label>
                                    <input class="r" type="radio" id="installmentMethod" name="installmentMethod"
                                           value="3">
                                    3期 （<strong class="c4">98.88 </strong>元 × 3 <span> 含手续费2.22元/期）</span>
                                </label>
                            </li>
                            <li class="itm1">
                                <label>
                                    <input class="r" type="radio" id="installmentMethod" name="installmentMethod"
                                           value="6">
                                    6期 （<strong class="c4">50.50 </strong>元 × 6 <span> 含手续费2.17元/期）</span>
                                </label>
                            </li>
                            <li class="itm1 itm2">
                                <label>
                                    <input class="r" type="radio" id="installmentMethod" name="installmentMethod"
                                           value="12">
                                    12期 （<strong class="c4">26.09 </strong>元 × 12 <span> 含手续费1.93元/期）</span>
                                </label>
                            </li>
                        </ul>
                    </div>
                    <p class="pt20"><input type="submit" class="btn_pay" value="" id="submit1"
                                           onclick="return SubmitInstallmentPay();" name="gotoPay"></p>
                </div>

                <input size="30" name="WIDout_trade_no" value="${order.number}" type="hidden"/>
                <input type="hidden" name="WIDsubject" value="${substring}" size="30"/>
                <input type="hidden" name="WIDtotal_fee" value="${order.price}" size="30"/>

            </form>     <!-- pays.aspx end-->

            <div id="ewalletpay">
                <div class="payInner" style="display: none;">
                </div>
            </div>
        </div>
    </div>
</div>
<div class="dm-bottom-wrap">
    <div class="dm-bottom">
        <div class="dm-links"><a href="https://help.damai.cn/helpPage.htm" target="_blank">帮助中心</a> |<a
                href="https://help.damai.cn/helpPage.htm?pageId=69" target="_blank">公司介绍</a> |<a
                href="https://help.damai.cn/helpPage.htm?pageId=70" target="_blank">品牌识别</a> |<a
                href="https://help.damai.cn/helpPage.htm?pageId=72" target="_blank">大麦大事记</a> |<a
                href="https://help.damai.cn/helpPage.htm?pageId=40" target="_blank">隐私权专项政策</a> |<a
                href="https://jubao.alibaba.com/internet/readme.htm" target="_blank">廉正举报</a> |<a
                href="https://help.damai.cn/helpPage.htm?pageId=58" target="_blank">联系合作</a> |<a
                href="https://job.alibaba.com/zhaopin/positionList.htm" target="_blank">招聘信息</a> |<a
                href="https://x.damai.cn/markets/special/fangzhapian" target="_blank">防骗秘籍</a></div>
        <div class="dm-copyright"><p><a href="http://www.miitbeian.gov.cn/" target="_blank">京ICP证031057号</a>
            <span>|</span> <a href="http://www.miitbeian.gov.cn/" target="_blank">京ICP备11043884号</a> <span>|</span> <a
                    href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010102000430" target="_blank">
                <img src="${ctx}/static/images/police.png" class="vm">京公网安备11010102000430号 </a> <span>|</span> <a
                    href="${ctx}/static/images/gbdsjm.jpg" target="_blank">广播电视节目制作经营许可证
                (京)字第02253号</a></p>
            <p><a href="javascript:void(0);" target="_blank">网络文化经营许可证
                京网文[2016]3438-413号</a> <span>|</span> <a href="${ctx}/static/images/yyxyc.jpg"
                                                         target="_blank">营业性演出许可证 京市演587号</a></p>
            <p> 北京红马传媒文化发展有限公司 版权所有 <a href="javascript:void(0);">大麦网</a> Copyright 2003-2017 All Rights Reserved </p>
        </div>
    </div>
</div>
<div class="bgpaylayer" id="promptLayer">
    <h2>请您在新打开的页面上完成付款</h2>
    <p>有效支付截止时间：<fmt:formatDate value="${date}" pattern="yyyy.MM.dd HH:mm:ss"/></p>
    <p>自动返回到大麦网前不要关闭任何网页。</p>
    <p>完成付款后请根据您的实际情况点击下方按钮：</p>
    <p class="btns"><a
            href="javascript:void(0);" onclick="sele()">已完成付款</a><a
            href="javascript:void(0)" onclick="return CloseLayer();">付款遇到问题</a></p>
</div>
<div class="bgpaylayer" id="rechargeSuperticket">
    <h2>请您在新打开的页面上完成充值</h2>
    <p>完成充值后请根据您的实际情况点击下方按钮：</p>
    <p class="btns"><a href="javascript:void(0)" onclick="return CloseLayer();">完成充值</a><a href="javascript:void(0)"
                                                                                           onclick="return HideLayerRechargeSuperTicket();">取消充值</a>
    </p>
</div>

<div class="layers hidden" id="loginframe">
    <b class="La"></b>
    <b class="Lb"></b>
    <b class="Lc"></b>
    <b class="Ld"></b>
    <a href="javascript:void(0)" title="关闭" class="close" onclick="return HiddenLayer();"></a>
    <div class="inner">
        <h2>大麦用户登录</h2>
        <div class="payforanother">
            <%--<iframe scrolling="no" allowtransparency="yes" frameborder="0"--%>
                    <%--src="./选择支付方式_files/saved_resource.html"></iframe>--%>
        </div>
    </div>
</div>
<script type="text/javascript" src="${ctx}/static/js/jquery-1.12.4.js"></script>
<script type="text/javascript">
    // position: fixed; top: 50%; left: 50%; z-index: 10000; margin-top: -111px; margin-left: -176px; display: block;
    function showInfo(th) {
        $(th).addClass("on")
    }

    function hideInfo(th) {
        $(th).removeClass("on")
    }
    function check(){
        var type= $("input[name='type']:checked").val()
        if(type==null||type==""){
            alert("请选择付款方式")
            return false;
        }else{
            $("#operLayer").show()
            $("#promptLayer").css({
                position:"fixed",
                top:"50%",
                left:"50%",
                "z-index":"10000",
                "margin-top":"-111px",
                "margin-left":"-176px",
                "display":"block"
            })
            // $("#promptLayer").css(position: fixed; top: 50%; left: ; z-index: 10000; margin-top: -111px; margin-left: -176px; display: block;)

            return true
        }

    }
    function CloseLayer() {
        $("#operLayer").hide()
        $("#promptLayer").hide()
        return true
    }
    function sele(){
        var WIDout_trade_no=$("input[name='WIDout_trade_no']").val()
        $.get('/damai/show/selectStatus?number='+WIDout_trade_no,function (data) {
            if(data==true){

            }else{
                $("#operLayer").hide()
                $("#promptLayer").hide()
            }
        })
    }


    window.setInterval(function () {
        var WIDout_trade_no=$("input[name='WIDout_trade_no']").val()
        $.get('/damai/show/selectStatus?number='+WIDout_trade_no,function (data) {
            if(data==true){
                window.close()
            }
        })
    },5000)

</script>
</body>
</html>