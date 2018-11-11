/**
 * 新增购票人信息
 */
function insertTicketHolder() {
    //得到购票人姓名
    var username = $("#username").val();
    //得到证件类型
    var cardType = $("#cardType").val();
    //得到证件号码
    var card = $("#card").val();
    //得到用户ID
    var user_id = $("#user_id").val();
    //验证真实姓名正则表达式
    var str2 = /^([\u4e00-\u9fa5]{2,6})$/;
    //验证身份证号正则表达式
    var regIdNo = /^[1-9]\d{5}(18|19|([23]\d))\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/;


    if (username.length == 0) {
        $("#userErr").text(" 请输入购票人姓名!");
    } else if (!str2.test(username)) {
        $("#userErr").text(" 姓名必须为两个字以上中文!");
    } else if (card.length == 0) {
        $("#userErr").text("");
        $("#cardErr").text(" 请输入购票人证件号!");
    } else if (!regIdNo.test(card)) {
        $("#userErr").text("");
        $("#cardErr").text(" 请填写正确的证件号!");
    } else {
        $("#cardErr").text("");
        //创建一个JSON格式的对象
        var TicketHolder = {
            "name": username,
            "type": cardType,
            "document": card,
            "t_user": user_id
        }
        $.ajax({
            url: "/damai/user/insertHolder",
            type: "post",
            dataType: "text",
            contentType: 'application/json;charset=UTF-8',
            data: JSON.stringify(TicketHolder),
            success: function (data) {
                if (data == 1) {
                    // $("#notify-window1").show();
                    // $("#notify-msg").text("添加成功");
                    window.location.href = "/damai/user/ticketHolder/" + user_id + "";
                } else {
                    // $("#notify-window1").show();
                    // $("#notify-msg").text("添加失败");
                    alert("添加失败");
                }
            }
        })
    }
}

/**
 * 删除购票人
 */
function deleteTicketHolder(id, index) {
    $("#notify-window" + index + "").hide();
    //得到用户ID
    var user_id = $("#user_id").val();
    //创建一个JSON格式的对象
    var TicketHolder = {
        "t_user": user_id,
        "id": id
    }

    // $("#customerInfos").load("/damai/user/deleteHolder #customerInfos>*", TicketHolder);

    $.post("/damai/user/deleteHolder", TicketHolder, deleteHolder);

    function deleteHolder(data) {
        if (data == 1) {
            window.location.reload();
            // $("#ticketHolder" + id + "").parent().parent().remove();
        } else {
            alert("删除失败");
        }
    }
}


function hideInfoText(index) {
    $("#notify-window" + index + "").hide();
}

function showInfoText(index) {
    $("#notify-window" + index + "").show();
}