/**
 * 修改个人信息
 */
function updateInfo() {
    //获取昵称
    var nickinp = $("#nickinp").val();
    var str1 = /^[\u4e00-\u9fa50-9a-zA-Z]{2,16}$/;
    //获取真实姓名
    var realinp = $("#realinp").val();
    var str2 = /^([\u4e00-\u9fa5]{2,6})$/;
    //获取身份证号
    var cardinp = $("#cardinp").val();
    var regIdNo = /^[1-9]\d{5}(18|19|([23]\d))\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/;
    if (!str1.test(nickinp) && nickinp.length != 0) {
    } else if (!str2.test(realinp) && realinp.length != 0) {
    } else if (!regIdNo.test(cardinp) && cardinp.length != 0) {
    } else {
        //获取ID
        var id = $("#userId").val();
        //获取性别
        var sex = $("input[type='radio'][name='Sex']:checked").val();
        //获取年
        var birthY = $('#birthY option:selected').val();
        //获取月
        var birthM = $('#birthM option:selected').val();
        //获取日
        var birthD = $('#birthD option:selected').val();
        var dateInfo = birthY + "-" + birthM + "-" + birthD;
        //创建一个JSON格式的对象
        var user = {
            "id": id,
            "nickname": nickinp,
            "userName": realinp,
            "sex": sex,
            "date": dateInfo,
            "identityCode": cardinp,
        }
        $.ajax({
            url: "/damai/user/update",
            type: "post",
            dataType: "text",
            contentType: 'application/json;charset=UTF-8',
            data: JSON.stringify(user),
            success: function (data) {
                if (data == "true") {
                    $("#notify-window").show();
                    $("#notify-msg").text("您的个人信息修改成功");
                } else {
                    $("#notify-window").show();
                    $("#notify-msg").text("您的个人信息修改失败");
                }
            }
        })
    }
}

/**
 * 获得焦点事件
 */
$("#nickinp").focus(function () {
    $("#nickinpTip").css("color", "#999");
    $("#nickinpTip").text("2-16个字符,可由中英文,数字组成");
})
/**
 * 失去焦点事件
 */
$("#nickinp").blur(function () {
    $("#nickinpTip").text("");
    var nickinp = $("#nickinp").val();
    var str = /^[\u4e00-\u9fa50-9a-zA-Z]{2,16}$/;
    if (nickinp.length != 0) {
        if (!str.test(nickinp)) {
            $("#nickinpTip").text("昵称格式错误");
            $("#nickinpTip").css("color", "red");
        }
    }
})
/**
 * 获得焦点事件
 */
$("#realinp").focus(function () {
    $("#realinpTip").css("color", "#999");
    $("#realinpTip").text("真实姓名必须为中文");
})
/**
 * 失去焦点事件
 */
$("#realinp").blur(function () {
    $("#realinpTip").text("");
    var realinp = $("#realinp").val();
    var str = /^([\u4e00-\u9fa5]{2,6})$/;
    if (realinp.length != 0) {
        if (!str.test(realinp)) {
            $("#realinpTip").text("格式错误");
            $("#realinpTip").css("color", "red");
        }
    }
})
/**
 * 获得焦点事件
 */
$("#cardinp").focus(function () {
    $("#cardinpTip").css("color", "#999");
    $("#cardinpTip").text("请输入正确的身份证号");
})
/**
 * 失去焦点事件
 */
$("#cardinp").blur(function () {
    $("#cardinpTip").text("");
    var cardinp = $("#cardinp").val();
    var regIdNo = /^[1-9]\d{5}(18|19|([23]\d))\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/;
    if (cardinp.length != 0) {
        if (!regIdNo.test(cardinp)) {
            $("#cardinpTip").text("身份证格式错误");
            $("#cardinpTip").css("color", "red");
        }
    }
})

function hideInfo() {
    $("#notify-window").hide();
}



