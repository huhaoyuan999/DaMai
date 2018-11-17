/**
 * (修改/添加)个人信息
 */
function insertUserInfo() {
    //获取值判断功能
    var userType = $("#userType").val();

    //获取登录账号
    var loginName = $("#loginName").val();
    //验证邮箱正则表达式
    var mali = /^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z0-9]{2,6}$/;
    //验证手机号码正则表达式
    var phone = /^[1][3,4,5,7,8][0-9]{9}$/;

    //获取昵称
    var nickname = $("#nickname").val();
    var str1 = /^[\u4e00-\u9fa50-9a-zA-Z]{2,16}$/;

    //获取登录密码
    var password = $("#password").val();
    //验证密码格式是否正确
    var reg = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,20}$/;

    //获取确认密码
    var password2 = $("#password2").val();

    //获取真实姓名
    var userName = $("#userName").val();
    var str2 = /^([\u4e00-\u9fa5]{2,8})$/;

    //获取用户类型
    var type = $("#type").val();

    //获取性别
    var sex = $("input[type='radio'][name='Sex']:checked").val();

    if (!mali.test(loginName) && !phone.test(loginName)) {
        $("#loginNameErr").text("登录账号只能是邮箱或手机号码");
    } else if (nickname.length != 0 && !str1.test(nickname)) {
        $("#loginNameErr").text("");
        $("#nicknameErr").text("昵称由2-16个中英文字符组成");
    } else if (!reg.test(password) && userType == "添加") {
        $("#loginNameErr").text("");
        $("#nicknameErr").text("");
        $("#passwordErr").text("登录密码由6-20位数字跟字母组成");
    } else if (password != password2 && userType == "添加") {
        $("#loginNameErr").text("");
        $("#nicknameErr").text("");
        $("#passwordErr").text("");
        $("#passwordErr2").text("两次密码输入不一致");
    } else if (userName.length != 0 && !str2.test(userName)) {
        $("#loginNameErr").text("");
        $("#nicknameErr").text("");
        $("#passwordErr").text("");
        $("#passwordErr2").text("");
        $("#userNameErr").text("真实姓名只能是2-8位中文");
    } else {
        $("#loginNameErr").text("");
        $("#nicknameErr").text("");
        $("#passwordErr").text("");
        $("#passwordErr2").text("");
        $("#userNameErr").text("");
        if (userType == "添加") {
            //创建一个JSON格式的对象
            var user = {
                "loginName": loginName,
                "nickname": nickname,
                "password": password,
                "userName": userName,
                "type": type,
                "sex": sex
            }
            $.ajax({
                url: "/damai/user/register",
                type: "post",
                dataType: "text",
                contentType: 'application/json;charset=UTF-8',
                data: JSON.stringify(user),
                success: function (data) {
                    if (data == "true") {
                        $("#notify-msg").text("用户添加成功");
                        $("#notify-window").show();
                    } else {
                        $("#notify-msg").text("用户添加失败,登录名已被注册");
                        $("#notify-window").show();
                    }
                }
            })
        } else {
            var id = $("#id").val();
            //创建一个JSON格式的对象
            var user = {
                "id": id,
                "loginName": loginName,
                "nickname": nickname,
                "userName": userName,
                "type": type,
                "sex": sex
            }
            $.ajax({
                url: "/damai/user/updateUser",
                type: "post",
                dataType: "text",
                contentType: 'application/json;charset=UTF-8',
                data: JSON.stringify(user),
                success: function (data) {
                    if (data == 1) {
                        $("#notify-msg").text("用户修改成功");
                        $("#notify-window").show();
                    } else {
                        $("#notify-msg").text("用户修改失败");
                        $("#notify-window").show();
                    }
                }
            })
        }
    }
}


function hideUserInfo() {
    $("#notify-window").hide();
    $("#notify-window2").hide();
    window.location.href = "/damai/user/userAll/1";
}

/**
 * 根据ID查询信息
 */
function queryUserIdInfo(id) {
    $.post("/damai/user/queryUser/" + id + "", dataInfo)

    function dataInfo(data) {
        $(".m-table").hide();
        $("#detailPagination").hide();
        $("#rowPassword").hide();
        $("#rowPassword2").hide();
        $("#createNewCustomer").show();

        $("#loginName").val(data.loginName);
        $("#nickname").val(data.nickname);
        $("#userName").val(data.userName);
        $("#id").val(id);
        $("#type").val(data.type);
        $("input[type='radio'][value='" + data.sex + "']").attr("checked", true);
        $("#userType").val("修改");
        $("#titleUser").text("修改用户");
    }
}

/**
 * 删除指定信息
 */
function deleteUserIdInfoHu(id, loginName) {
    $("#notify-msg2").text("您确定要删除用户" + loginName + "吗？与此用户相关的信息也将被删除哦！");
    $("#userIDInfo").val(id);
    $("#notify-window2").show();
}

function deleteUserId() {
    var id = $("#userIDInfo").val();
    alert(id);
    $("#notify-window2").hide();
    $.post("/damai/user/deleteUser/" + id + "", dataInfo)

    function dataInfo(data) {
        if (data > 0) {
            $("#delete" + id + "").parent().parent().remove();
            window.location.reload();
        } else {
            $("#notify-msg").text("用户删除失败");
            $("#notify-window").show();
        }
    }
}

