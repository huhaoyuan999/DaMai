/**
 * 用户注册
 */
function register() {
    //得到账号
    var acct = $("#acct").val();
    //得到密码
    var pwd = $("#pwd").val();
    //得到确认密码
    var pwd2 = $("#pwd2").val();
    //勾选结果
    //验证邮箱正则表达式
    var mali = /^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z0-9]{2,6}$/;
    //验证手机号码正则表达式
    var phone = /^[1][3,4,5,7,8][0-9]{9}$/;
    //验证密码格式是否正确
    var reg = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,20}$/;
    if (acct.length == 0) {
        $("#mailboxHints").text("请输入手机号或邮箱");
    } else if (!mali.test(acct) && !phone.test(acct)) {
        $("#mailboxHints").text("输入的手机号码或邮箱格式错误");
    } else if (pwd.length == 0) {
        $("#mailboxHints").text("");
        $("#passwordHints").text("请输入密码");
    } else if (!reg.test(pwd)) {
        $("#passwordHints").text("密码必须为6-20位数字跟字母组合");
    } else if (pwd2.length == 0) {
        $("#mailboxHints").text("");
        $("#passwordHints").text("");
        $("#passwordHints2").text("请输入确认密码");
    } else if (pwd != pwd2) {
        $("#passwordHints2").text("您两次输入的密码不一致");
    } else if ($("input[type='checkbox']").is(':checked') == false) {
        $("#mailboxHints").text("");
        $("#passwordHints").text("");
        $("#passwordHints2").text("");
    } else {
        //创建一个JSON格式的对象
        var user = {
            "loginName": acct,
            "password": pwd
        }
        $.ajax({
            url: "/damai/user/register",
            type: "post",
            dataType: "text",
            contentType: 'application/json;charset=UTF-8',
            data: JSON.stringify(user),
            success: function (data) {
                if (data == "true") {
                    window.location.href = "/damai/jsp/user/login.jsp";
                } else {
                    $("#mailboxHints").text("注册失败,该账号已被注册");
                    $("#acct").val(acct);
                    $("#pwd").val(pwd);
                    $("#pwd2").val(pwd2);
                }
            }
        })
    }
}

/**
 * 复选框勾选选时触发事件
 * @param checkbox
 */
function checkboxOnclick(checkbox) {
    if (checkbox.checked == true) {
        $("#agreeInfo").text("");
    } else {
        $("#agreeInfo").text("请勾选同意协议");
    }
}

