/**
 * 用户登入
 */
function submitInfo() {
    //得到登入名（邮箱或手机号码）
    var mailboxFont = $("#mailboxFont").val();
    //得到登入密码
    var passwordText = $("#passwordText").val();
    //验证邮箱正则表达式
    var mali = /^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z0-9]{2,6}$/;
    //验证手机号码正则表达式
    var phone = /^[1][3,4,5,7,8][0-9]{9}$/;
    if (mailboxFont.length == 0) {
        $("#HintInformation").show();
        $("#ErrorInfo").text("请输入手机号码或邮箱");
    } else if (passwordText.length == 0) {
        $("#HintInformation").show();
        $("#ErrorInfo").text("请输入密码");
    } else if (!mali.test(mailboxFont) && !phone.test(mailboxFont)) {
        $("#HintInformation").show();
        $("#ErrorInfo").text("输入的手机号码或邮箱格式错误");
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
                    window.location.href = "/damai/index.jsp";
                } else {
                    $("#HintInformation").show();
                    $("#ErrorInfo").text("登入名或登入密码不正确");
                }
            }
        })
    }
}

/**
 * 短信验证
 * @constructor
 */
function SMSVerification() {
    //获取短信息验证码
    var J_Phone_Checkcode = $("#J_Phone_Checkcode").val();
    if (J_Phone_Checkcode == 666666) {
        $("#showCode").hide();
        var loginName = $("#loginName").text();
        window.location.href = "/damai/user/transfer?loginName2=" + loginName;
    } else {
        $("#showCode").show();
    }
}