var timeInfo = 7;

/**
 * 找回登录密码
 */
function foundLoginPassword() {
    //新密码
    var loginPassword = $("#loginPassword").val();
    //确认密码
    var confirmThePassword = $("#confirmThePassword").val();
    //验证密码格式是否正确
    var reg = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,20}$/;
    //登录账号
    var loginName = $("#loginName").val();
    if (loginPassword.length == 0) {
        $("#show2").show();
        $("#text2").text("请输入新的登录密码");
    } else if (!reg.test(loginPassword)) {
        $("#show2").show();
        $("#text2").text("密码必须为6-20位数字跟字母组合");
    } else if (loginPassword != confirmThePassword) {
        $("#show2").hide();
        $("#show3").show();
        $("#text3").text("两次输入的密码不一致");
    } else {
        $("#show3").hide();
        //创建一个JSON格式的对象
        var user = {
            "password": loginPassword,
            "loginName": loginName
        }
        $.ajax({
            url: "/damai/user/retrieve",
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
    }
}

function updateSuccess() {
    window.location.href = "/damai/user/destroy?Info=" + 1;
}

function forSuccess() {
    timeInfo = timeInfo - 1;
    $("#forTime").text(timeInfo);
}