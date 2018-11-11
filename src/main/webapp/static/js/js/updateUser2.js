var timeInfo = 7;
var num = 0;
var num1 = 0;
var num2 = 0;
/**
 * 获得焦点事件
 */
$("#loginAccount").focus(function () {
    $("#loginAccount").css("border", "1px solid #ff1268");
    $("#loginAccount").css("color", "#ff1268");
    $("#show1").hide();
})
/**
 * 失去焦点事件
 */
$("#loginAccount").blur(function () {
    $("#loginAccount").css("border", "#BABABA");
    $("#loginAccount").css("color", "black");
    //获取信息判断修改密码或更换登入账号
    var JudgmentFunction = $("#JudgmentFunction").val();

    /**
     * 验证输入的旧密码是否准确
     */
    if (JudgmentFunction == 3) {
        var loginAccount = $("#loginAccount").val();
        var JudgmentName = $("#JudgmentName").val();
        if (loginAccount.length == 0) {
            $("#show1").show();
            $("#text1").text("请输入旧密码");
        }
        if (loginAccount.length != 0) {
            //返回结果以便修改密码时判断
            // alert("旧密码" + loginAccount + "  登入账号" + JudgmentName);
            //创建一个JSON格式的对象
            var user = {
                "loginName": JudgmentName,
                "password": loginAccount
            }
            $.ajax({
                url: "/damai/user/existence",
                type: "post",
                dataType: "text",
                contentType: 'application/json;charset=UTF-8',
                data: JSON.stringify(user),
                success: function (data) {
                    num = data;
                    if (data != 1) {
                        $("#show1").show();
                        $("#text1").text("密码输入错误");
                    }
                    if (data == 1) {
                        $("#show1").hide();
                    }
                }
            })
        }
    }
})

/**
 * 获得焦点事件
 */
$("#loginPassword").focus(function () {
    $("#loginPassword").css("border", "1px solid #ff1268");
    $("#loginPassword").css("color", "#ff1268");
    $("#show2").hide();
})
/**
 * 失去焦点事件
 */
$("#loginPassword").blur(function () {
    $("#loginPassword").css("border", "#BABABA");
    $("#loginPassword").css("color", "black");
    //获取信息判断修改密码或更换登入账号
    var JudgmentFunction = $("#JudgmentFunction").val();

    /**
     * 修改密码
     */
    if (JudgmentFunction == 3) {
        //新密码
        var loginPassword = $("#loginPassword").val();
        //验证密码格式是否正确
        var reg = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,20}$/;
        if (loginPassword.length == 0) {
            $("#show2").show();
            $("#text2").text("密码不能为空");
            num1 = 0;
        } else if (!reg.test(loginPassword)) {
            $("#show2").show();
            $("#text2").text("密码必须为6-20位数字跟字母组合");
            num1 = 0;
        } else {
            $("#show2").hide();
            num1 = 1;
        }
    }
})

/**
 * 获得焦点事件
 */
$("#confirmThePassword").focus(function () {
    $("#confirmThePassword").css("border", "1px solid #ff1268");
    $("#confirmThePassword").css("color", "#ff1268");
    $("#show3").hide();
})
/**
 * 失去焦点事件
 */
$("#confirmThePassword").blur(function () {
    $("#confirmThePassword").css("border", "#BABABA");
    $("#confirmThePassword").css("color", "black");
    //获取信息判断修改密码或更换登入账号
    var JudgmentFunction = $("#JudgmentFunction").val();

    /**
     * 修改密码
     */
    if (JudgmentFunction == 3) {
        //新密码
        var loginPassword = $("#loginPassword").val();
        //确认密码
        var confirmThePassword = $("#confirmThePassword").val();
        if (loginPassword != confirmThePassword) {
            $("#show3").show();
            $("#text3").text("两次输入的密码不一致");
            num2 = 0;
        } else {
            $("#show3").hide();
            num2 = 1;
        }
    }
})


/**
 * 修改密码与更换登入账号
 */
function updatePwdAndLoginName() {
    //获取信息判断修改密码或更换登入账号
    var JudgmentFunction = $("#JudgmentFunction").val();

    /**
     * 修改密码
     */
    if (JudgmentFunction == 3 && num == 1 && num1 == 1 && num2 == 1) {
        $("#show1").hide();
        $("#show2").hide();
        $("#show3").hide();
        //新密码
        var loginPassword = $("#loginPassword").val();
        //确认密码
        var confirmThePassword = $("#confirmThePassword").val();
        //用户ID
        var loginId = $("#loginId").val();
        if (loginPassword == confirmThePassword) {
            //创建一个JSON格式的对象
            var user = {
                "password": loginPassword,
                "id": loginId
            }
            $.ajax({
                url: "/damai/user/updatePwd",
                type: "post",
                dataType: "text",
                contentType: 'application/json;charset=UTF-8',
                data: JSON.stringify(user),
                success: function (data) {
                    if (data == 1) {
                        $("#notify-window").show();
                        window.clearInterval(timeid);
                        var timeid = window.setInterval(forSuccess, 1000);
                        window.clearTimeout(tmid);
                        var tmid = window.setTimeout(updateSuccess, 6000);
                    } else {
                        alert("修改失败");
                    }
                }
            })
        } else {
            $("#show3").show();
            $("#text3").text("两次输入的密码不一致");
            num2 = 0;
        }
    } else {
        if (JudgmentFunction == 3) {
            //旧密码
            var loginAccount = $("#loginAccount").val();
            //新密码
            var loginPassword = $("#loginPassword").val();
            //确认密码
            var confirmThePassword = $("#confirmThePassword").val();
            //验证密码格式是否正确
            var reg = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,20}$/;
            if (loginAccount.length == 0) {
                $("#show1").show();
                $("#text1").text("请输入旧密码");
                num = 0;
            } else if (loginPassword.length == 0) {
                $("#show2").show();
                $("#text2").text("请输入新密码");
                num1 = 0;
            } else if (!reg.test(loginPassword)) {
                $("#show2").show();
                $("#text2").text("密码必须为6-20位数字跟字母组合");
                num1 = 0;
            } else if (loginPassword != confirmThePassword) {
                $("#show3").show();
                $("#text3").text("两次输入密码不一致");
                num2 = 0;
            }
        }
    }


    /**
     * 更换账号
     */
    if (JudgmentFunction == 4) {
        $("#show1").hide();
        $("#show2").hide();
        $("#show3").hide();
        //原账号
        var JudgmentName = $("#JudgmentName").val();
        //新账号
        var loginAccount = $("#loginAccount").val();
        //再次输入账号
        var loginPassword = $("#loginPassword").val();
        //登录密码
        var confirmThePassword = $("#confirmThePassword").val();
        //用户ID
        var loginId = $("#loginId").val();
        //验证邮箱正则表达式
        var mali = /^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z0-9]{2,6}$/;
        //验证手机号码正则表达式
        var phone = /^[1][3,4,5,7,8][0-9]{9}$/;
        if (loginAccount.length == 0) {
            $("#show1").show();
            $("#text1").text("账号不能为空");
        } else if (!mali.test(loginAccount) && !phone.test(loginAccount)) {
            $("#show1").show();
            $("#text1").text("账号格式输入错误");
        } else if (loginAccount != loginPassword) {
            $("#show2").show();
            $("#text2").text("两次输入不一致");
        } else {
            //创建一个JSON格式的对象
            var user = {
                "loginName": JudgmentName,
                "imageName": loginAccount,
                "password": confirmThePassword,
                "id": loginId
            }
            $.ajax({
                url: "/damai/user/change",
                type: "post",
                dataType: "text",
                contentType: 'application/json;charset=UTF-8',
                data: JSON.stringify(user),
                success: function (data) {
                    if (data == 9) {
                        $("#show3").show();
                        $("#text3").text("密码输入错误");
                    }
                    if (data == 0) {
                        alert("修改失败");
                    }
                    if (data == 1) {
                        $("#notify-window").show();
                        window.clearInterval(timeid);
                        var timeid = window.setInterval(forSuccess, 1000);
                        window.clearTimeout(tmid);
                        var tmid = window.setTimeout(updateSuccess, 6000);
                    }
                }
            })
        }
    }
}

function updateSuccess() {
    window.location.href = "/damai/user/destroy?Info=" + 1;
}

function forSuccess() {
    timeInfo = timeInfo - 1;
    $("#forTime").text(timeInfo);
}
