/**
 * 选中票
 */

$(".m-choose-date div ul li a").on('click',function () {
    var select = $(this).parent('li').attr('class');
    var price=$(".m-choose-price div ul li[class='itm itm-sel']").eq(0).html()
    var date=$(this).parent('li').attr("data-date");
    if(select=='itm'){

        if(price!=null){
            if(confirm("是否要取消之前的选择")){

                $("li[data-date='"+date+"']").siblings().removeClass()
                $("li[data-date='"+date+"']").siblings().addClass('itm')
                $("li[data-date='"+date+"']").removeClass()
                $("li[data-date='"+date+"']").addClass("itm itm-sel")

                // $(this).parent('li').siblings().removeClass()
                // $(this).parent('li').siblings().addClass('itm')
                // $(this).parent('li').removeClass()
                // $(this).parent('li').addClass("itm itm-sel")
                $(".m-choose-price div ul li").removeClass()
                $(".m-choose-price div ul li").addClass('itm')
                $(".m-cart div ul").children().remove()
                hideDan()
            }
        }else {
            $("li[data-date='"+date+"']").siblings().removeClass()
            $("li[data-date='"+date+"']").siblings().addClass('itm')
            $("li[data-date='"+date+"']").removeClass()
            $("li[data-date='"+date+"']").addClass("itm itm-sel")
            // $(this).parent('li').siblings().removeClass()
            // $(this).parent('li').siblings().addClass('itm')
            // $(this).parent('li').removeClass()
            // $(this).parent('li').addClass("itm itm-sel")
        }


    }else {
        if(price!=null){
            if(confirm("是否要取消之前的选择")){
                $("li[data-date='"+date+"']").removeClass()
                $("li[data-date='"+date+"']").addClass('itm')
                // $(this).parent('li').removeClass()
                // $(this).parent('li').addClass("itm")
                $(".m-choose-price div ul li").removeClass()
                $(".m-choose-price div ul li").addClass('itm')
                $(".m-cart div ul").children().remove()
                hideDan()
            }
        }else {
            $("li[data-date='"+date+"']").removeClass()
            $("li[data-date='"+date+"']").addClass("itm")
            // $(this).parent('li').removeClass()
            // $(this).parent('li').addClass("itm")
        }

    }
})

$(".m-choose-price div ul li a").on('click',function () {
    var price=$(this).parent().attr("data-price")
    var times = 500;
    var select = $(this).parent('li').attr('class');
    var cart= $(".m-cart div ul")
    var $cc = $(".m-cart .ct");
    var date=$(".m-choose-date div ul li[class='itm itm-sel']").eq(0).text().trim()
    var  $perform=$(".m-choose-date div ul li[class='itm itm-sel']").eq(0)
    var  $perform1=$(".m-choose-date div ul li[class='itm itm-sel']").eq(1)
    var  $item=$(this).parent()

    var showPrice=$(this).text().trim()

    if(date==""){
        alert("请选择演出时间！");
    }else {
        if(select=='itm'){
            $(".m-cart").find("h3.tt, div.ct").show();
            $("li[data-price='"+price+"']").removeClass()
            $("li[data-price='"+price+"']").addClass("itm itm-sel")
            $(this).parent('li').removeClass()
            $(this).parent('li').addClass("itm itm-sel")
            var targetleft = $cc.position().left, targettop = $cc.position().top;
            var $nPerform = $perform.clone();
            var $nPerform1 = $perform1.clone();

            var $nItem = $item.clone();
            $nPerform.css({
                'position': 'absolute',
                'left': $perform.position().left,
                'top': $perform.position().top,
                'z-index': 1
            }).addClass("j_animate");
            $perform.parent().append($nPerform);
            $nPerform1.css({
                'position': 'absolute',
                'left': $perform1.position().left,
                'top': $perform1.position().top,
                'z-index': 1
            }).addClass("j_animate");
            $perform1.parent().append($nPerform1);
            $nItem.css({
                'position': 'absolute',
                'left': $item.position().left,
                'top': $item.position().top,
                'z-index': 1
            }).addClass("j_animate");
            $item.parent().append($nItem);

            $nPerform.animate({
                'left': targetleft,
                'top': targettop,
                'opacity': 0
            }, times, function () {
                $(this).remove();
            });
            $nPerform1.animate({
                'left': targetleft,
                'top': targettop,
                'opacity': 0
            }, times, function () {
                $(this).remove();
            });
            $nItem.animate({
                'left': targetleft,
                'top': targettop,
                'opacity': 0
            }, times, function () {
                $(this).remove();
                var cont="<li class='itm'data-price='"+showPrice+"'data-date='"+date+"' style='display: none' ><span class='txt txt-datetime '>"+date+"</span><span class='txt txt-price'>"+showPrice+"</span>" +
                    "<span class='m-nums'><a class='btn btn-low' href='javascript:;' onclick='jianUpdate(jQuery(this))'>减</a>" +
                    "<input class='ipt ipt-num' maxlength='3' type='text'value='1' >" +
                    "<a class='btn btn-add' href='javascript:;' onclick='addUpdate(jQuery(this))'>加</a></span><span class='tips tips-stock'><strong></strong></span><a class='btn btn-del' href='javascript:;'><i></i>删除</a></li>"
                cart.append(cont);
                $("li[class='itm']").slideDown('800')
            });

        }else {
            $("li[data-price='"+price+"']").removeClass()
            $("li[data-price='"+price+"']").addClass("itm")
            $(this).parent('li').removeClass()
            $(this).parent('li').addClass("itm")
            cart.children("li[data-price='"+showPrice+"']").remove()
            var dan=cart.children("li").html()
            if(dan==null){
                hideDan()
            }

        }
    }


})

/**
 * 格式化时间
 * @param data
 * @returns {string}
 */
function fmtDate(data) {
    var d=new Date(data);
    var year=d.getFullYear();
    var month=change(d.getMonth()+1);
    var day=d.getDate()
    var hour=change(d.getHours());
    var minute=d.getMinutes();
    var second=change(d.getSeconds());
    function change(t){
        if(t<10){
            return "0"+t;
        }else{
            return t;
        }
    }
     return year+'-'+month+'-'+day;
}

/**
 * 隐藏m-cart
 */
function hideDan() {
    $("#cartList").children(".tt").hide()
    $("#cartList").children(".ct").hide()
}

/**
 * 增加数量
 * @param jia
 */
function addUpdate(jia){
    var c = jia.siblings('.ipt-num').val();
    if(c==999){
        return
    }
    c=parseInt(c)+1;
    jia.siblings('.ipt-num').val(c);
}

/**
 * 减少数量
 * @param jian
 */
function jianUpdate(jian){
    var c = jian.siblings('.ipt-num').val();
    if(c<=1){
        c=1;
    }else{
        c=parseInt(c)-1;

    }
    jian.siblings('.ipt-num').val(c);
}


// $(".m-cart").on("keyup",".ipt-num",function () {
//     var tmptxt=$(this).val();
//     $(this).val(tmptxt.replace(/\D|^0/g,''));
// }).on('paste',".ipt-num",function () {
//     var tmptxt=$(this).val();
//     $(this).val(tmptxt.replace(/\D|^0/g,''));
//
// }).css("ime-mode","disabled")


$(".m-cart").on("input propertychange",".ipt-num",function () {
    var tmptxt=$(this).val();
    var regu =/^[1-9]\d*$/;
    if(!regu.test(tmptxt)){
        $(this).val(1)
    }
})

$(".m-cart").on("click","a.btn-del",function () {
    var price= $(this).parent().attr("data-price")
    $(".m-choose-price div ul li[data-price='"+price+"']").removeClass()
    $(".m-choose-price div ul li[data-price='"+price+"']").addClass("itm")
    $(".m-cart div ul li[data-price='"+price+"']").remove()
})
/**
 * 点击立即购买
 */
$(".u-btn-buynow").on("click",function () {
    var cart= $(".m-cart div ul").eq(0)
    var dan=cart.children("li").html()

    if(dan==null){

        $(".m-mask").removeClass("z-hide");
        $(".m-mask").addClass("z-show");
        $('#chooseGoodsLayer').css({position: 'fixed','z-index':1003,'width':656+'px','height':269+'px','margin-left':-328+'px','margin-top': -134.5+'px'});
        $("#chooseGoodsLayer").removeClass("z-hide");
        $("#chooseGoodsLayer").addClass("z-show");
    }else{
        if($("#nickname").html()==null ||$("#nickname").html().trim()==""){
            $("#maskLevel").show()
            $("#player").show()
        }else{


        var showId=$("#showId").html().trim();
        var showNmae=$("#detailListShowName").text();
        var productsList=[];
        cart.children("li").each(function(){
            var showTime= $(this).attr('data-date');
            var showPrice=$(this).attr('data-price');
            var num=$(this).children("span[class='m-nums']").children("input").val()
            var subtotal=showPrice*num;
            var item={
                showId:showId,
                showNmae:showNmae,
                showTime:showTime,
                price:showPrice,
                num:num,
                subtotal:subtotal,
            }
            productsList.push(item)
        })
        $.ajax({
            type:"POST",
            url:"/damai/show/toOrder",
            dataType:"html",
            contentType:"application/json",
            data:JSON.stringify(productsList),
            success:function(data){
               window.location.href="/damai/jsp/goods/settlement.jsp"
            }
        });
        }
    }







})
$(".u-btn-close").click(function () {
    $(".m-mask").removeClass("z-show");
    $(".m-mask").addClass("z-hide");
    $('#chooseGoodsLayer').css("")
    $("#chooseGoodsLayer").removeClass("z-show");
    $("#chooseGoodsLayer").addClass("z-hide");
})

function showInfo() {
    $("div[my='menu']").stop(true, true).slideDown(450);
}

function hideInfo() {
    $("div[my='menu']").stop(true, true).slideUp(450);
}


$(".fm-submit").eq(0).click(function () {
    submitInfo()

})

function submitInfo() {
    //得到登入名（邮箱或手机号码）
    var mailboxFont = $("#fm-login-id").val()
    //得到登入密码
    var passwordText =$("#fm-login-password").val();
    var level=parent.$("#maskLevel")
    var player=parent.$("#player")
    var log= $(".m-sign m-sign-log")

    //验证邮箱正则表达式
    var mali = /^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z0-9]{2,6}$/;
    //验证手机号码正则表达式
    var phone = /^[1][3,4,5,7,8][0-9]{9}$/;
    if (mailboxFont.length == 0) {

    } else if (passwordText.length == 0) {

        $(".login-error-msg").html("请输入密码！")
        $("#login-error").show()
    } else if (!mali.test(mailboxFont) && !phone.test(mailboxFont)) {

        $(".login-error-msg").html("输入的手机号码或邮箱格式错误！")
        $("#login-error").show()
    } else {

        //创建一个JSON格式的对象
        var user = {
            "loginName": mailboxFont,
            "password": passwordText
        }
        $.ajax({
            url: "/damai/user/login",
            type: "post",
            dataType: "text",
            contentType: 'application/json;charset=UTF-8',
            data: JSON.stringify(user),
            success: function (data) {
                if (data == "true") {
                    level.hide()
                    player.hide()
                    var url=parent.window.location.href
                    parent.window.location.href=url
                } else {
                    $(".login-error-msg").html("登入名或登入密码不正确！")
                    $("#login-error").show()
                }
            }
        })
    }
}

function hides() {
     $("#maskLevel").hide()
    $("#player").hide()
}
function exits() {
    var url=window.location.href
    window.location.href="/damai/user/exit?url="+url
}

