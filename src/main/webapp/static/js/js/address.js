/**
 * 显示添加地址页面
 */
function createAddress() {
    $("#adressInfos").hide();
    $("#creatNewAddress").show();

}

/**
 * 显示地址信息
 */
function cancleCreate() {
    $("#adressInfos").show();
    $("#creatNewAddress").hide();
}

/**
 * 显示地址修改
 */
function modifyAddress(index) {
    $("#showUpdate" + index + "").show();
}

/**
 * 隐藏地址修改
 */
function cancleModify(index) {
    $("#showUpdate" + index + "").hide();
}

/**
 * 根据省级ID获取市级集合
 * @param value
 */
function getSubCity(value, index) {
    $.ajax({
        url: "/damai/address/addressList/" + value + "",
        type: "post",
        contentType: 'application/json;charset=UTF-8',
        dataType: "JSON",
        success: function (data) {
            var str = "";
            for (var i in data) {
                str += "<option value=\"" + data[i].areainfoId + "\">" + data[i].areainfoName + "</option>";
            }
            $("#McitySelect" + index + "").html(str);
        }
    })
}

/**
 * 根据市级ID获取区县级集合
 */
function getMSubCountry(value, index) {
    $.ajax({
        url: "/damai/address/addressList/" + value + "",
        type: "post",
        contentType: 'application/json;charset=UTF-8',
        dataType: "JSON",
        success: function (data) {
            var str = "";
            for (var i in data) {
                str += "<option value=\"" + data[i].areainfoId + "\">" + data[i].areainfoName + "</option>";
            }
            $("#McitySe" + index + "").html(str);
        }
    })
}


/**
 * 根据省级ID获取市级集合(新增操作)
 */
function getMSubCountryInsert(value) {
    $.ajax({
        url: "/damai/address/addressList/" + value + "",
        type: "post",
        contentType: 'application/json;charset=UTF-8',
        dataType: "JSON",
        success: function (data) {
            var str = "";
            for (var i in data) {
                str += "<option value=\"" + data[i].areainfoId + "\">" + data[i].areainfoName + "</option>";
            }
            $("#citySelect").html(str);
        }
    })
}

/**
 * 根据市级ID获取区县级集合(新增操作)
 */
function getSubCountryInsert2(value) {
    $.ajax({
        url: "/damai/address/addressList/" + value + "",
        type: "post",
        contentType: 'application/json;charset=UTF-8',
        dataType: "JSON",
        success: function (data) {
            var str = "";
            for (var i in data) {
                str += "<option value=\"" + data[i].areainfoId + "\">" + data[i].areainfoName + "</option>";
            }
            $("#countrySelect").html(str);
        }
    })
}


/**
 * 新增地址信息
 */
function insertAddressInfo() {
    //获取用户ID
    var userId = $("#userId").val();
    //获取地址别名
    var addressAlias = $("#c_addressName").val();
    //获取收件人姓名
    var userName = $("#c_recipientName").val();
    //获取手机号码
    var phone = $("#c_mobile").val();
    //获取座机号码
    var telePhone = $("#c_mobile2").val();
    //获取省ID
    var provinceId = $("#ProvinceSelect").val();
    //获取市ID
    var cityId = $("#citySelect").val();
    //获取区县ID
    var areaId = $("#countrySelect").val();
    //获取地址详细信息
    var detailed = $("#c_distributionDeatilInfo").val();

    //判断1-16位长度的地址名称!
    var pattern = /^.{1,16}$/;
    //判断真实姓名2-8个字符
    var str2 = /^([\u4e00-\u9fa5]{2,8})$/;
    //判断手机号
    var myreg = /^[1][3,4,5,7,8][0-9]{9}$/;
    //判断座机号
    var zuoji = /^\d{2,5}-\d{7,8}$/;
    //判断详细信息
    var reg = /^.{4,120}$/;

    if (!pattern.test(addressAlias)) {
        $("#c_nameMsg").text(" 请输入1-16位长度的地址别名!");
    }
    if (!str2.test(userName)) {
        $("#c_recipientMsg").text(" 收件人姓名为2-8个字符的中文!");
    }
    if (!myreg.test(phone)) {
        $("#c_mobileMsg").text(" 请填写正确的手机号!");
    }
    if (!zuoji.test(telePhone) && telePhone.length != 0) {
        $("#c_mobileMsg2").text(" 请填写正确的座机号!");
    }
    if (provinceId == 0 || cityId == 0 || areaId == 0) {
        $("#c_peisongMsg").text(" 请选择有效的配送地址!");
    }
    if (!reg.test(detailed)) {
        $("#c_peisongMsg1").text(" 收货人详细地址为4-120个字符!");
    }

    if (!pattern.test(addressAlias)) {

    } else if (!str2.test(userName)) {
        $("#c_nameMsg").text("");
    } else if (!myreg.test(phone)) {
        $("#c_nameMsg").text("");
        $("#c_recipientMsg").text("");
    } else if (!zuoji.test(telePhone) && telePhone.length != 0) {
        $("#c_nameMsg").text("");
        $("#c_recipientMsg").text("");
        $("#c_mobileMsg").text("");
    } else if (provinceId == 0 || cityId == 0 || areaId == 0) {
        $("#c_nameMsg").text("");
        $("#c_recipientMsg").text("");
        $("#c_mobileMsg").text("");
        $("#c_mobileMsg2").text("");
    } else if (!reg.test(detailed)) {
        $("#c_nameMsg").text("");
        $("#c_recipientMsg").text("");
        $("#c_mobileMsg").text("");
        $("#c_mobileMsg2").text("");
        $("#c_peisongMsg").text("");
    } else {
        $("#c_nameMsg").text("");
        $("#c_recipientMsg").text("");
        $("#c_mobileMsg").text("");
        $("#c_mobileMsg2").text("");
        $("#c_peisongMsg").text("");
        $("#c_peisongMsg1").text("");

        //创建一个JSON格式的对象
        var Taddress = {
            "userId": userId,
            "addressAlias": addressAlias,
            "addressAddressee": userName,
            "phone": phone,
            "telePhone": telePhone,
            "detailed": detailed,
            "provinceId": provinceId,
            "cityId": cityId,
            "areaId": areaId
        }
        $.ajax({
            url: "/damai/address/insert",
            type: "post",
            dataType: "text",
            contentType: 'application/json;charset=UTF-8',
            data: JSON.stringify(Taddress),
            success: function (data) {
                if (data == 1) {
                    window.location.href = "/damai/address/userAddress/" + userId + "";
                } else {
                    alert("新增失败");
                }
            }
        })
    }
}


/**
 * 修改地址信息
 */
function updateAddressInfo(index, id) {
    //获取用户ID
    var userId = $("#userId").val();
    //获取地址别名
    var addressAlias = $("#addressAlias" + index + "").val();
    //获取收件人姓名
    var userName = $("#addressAddressee" + index + "").val();
    //获取手机号码
    var phone = $("#phone" + index + "").val();
    //获取座机号码
    var telePhone = $("#telePhone" + index + "").val();
    //获取省ID
    var provinceId = $("#ProvinceSelect" + index + "").val();
    //获取市ID
    var cityId = $("#McitySelect" + index + "").val();
    //获取区县ID
    var areaId = $("#McitySe" + index + "").val();
    //获取地址详细信息
    var detailed = $("#detailed" + index + "").val();

    //判断1-16位长度的地址名称!
    var pattern = /^.{1,16}$/;
    //判断真实姓名2-8个字符
    var str2 = /^([\u4e00-\u9fa5]{2,8})$/;
    //判断手机号
    var myreg = /^[1][3,4,5,7,8][0-9]{9}$/;
    //判断座机号
    var zuoji = /^\d{2,5}-\d{7,8}$/;
    //判断详细信息
    var reg = /^.{4,120}$/;

    if (!pattern.test(addressAlias)) {
        $("#m_nameMsg88294702" + index + "").text(" 请输入1-16位长度的地址别名!");
    }
    if (!str2.test(userName)) {
        $("#m_recipientMsg88294702" + index + "").text(" 收件人姓名为2-8个字符的中文!");
    }
    if (!myreg.test(phone)) {
        $("#m_mobileMsg88294702" + index + "").text(" 请填写正确的手机号!");
    }
    if (!zuoji.test(telePhone) && telePhone.length != 0) {
        $("#m_mob4543sg88294702" + index + "").text(" 请填写正确的座机号!");
    }
    if (!reg.test(detailed)) {
        $("#m_peisongMsg188294702" + index + "").text(" 收货人详细地址为4-120个字符!");
    }

    if (!pattern.test(addressAlias)) {
    } else if (!str2.test(userName)) {
        $("#m_nameMsg88294702" + index + "").text("");
    } else if (!myreg.test(phone)) {
        $("#m_nameMsg88294702" + index + "").text("");
        $("#m_recipientMsg88294702" + index + "").text("");
    } else if (!zuoji.test(telePhone) && telePhone.length != 0) {
        $("#m_nameMsg88294702" + index + "").text("");
        $("#m_recipientMsg88294702" + index + "").text("");
        $("#m_mobileMsg88294702" + index + "").text("");
    } else if (!reg.test(detailed)) {
        $("#m_nameMsg88294702" + index + "").text("");
        $("#m_recipientMsg88294702" + index + "").text("");
        $("#m_mobileMsg88294702" + index + "").text("");
        $("#m_mob4543sg88294702" + index + "").text("");
    } else {
        $("#m_nameMsg88294702" + index + "").text("");
        $("#m_recipientMsg88294702" + index + "").text("");
        $("#m_mobileMsg88294702" + index + "").text("");
        $("#m_mob4543sg88294702" + index + "").text("");
        $("#m_peisongMsg188294702" + index + "").text("");

        //创建一个JSON格式的对象
        var Taddress = {
            "addressId": id,
            "userId": userId,
            "addressAlias": addressAlias,
            "addressAddressee": userName,
            "phone": phone,
            "telePhone": telePhone,
            "detailed": detailed,
            "provinceId": provinceId,
            "cityId": cityId,
            "areaId": areaId
        }
        $.ajax({
            url: "/damai/address/update",
            type: "post",
            dataType: "text",
            contentType: 'application/json;charset=UTF-8',
            data: JSON.stringify(Taddress),
            success: function (data) {
                if (data == 1) {
                    window.location.href = "/damai/address/userAddress/" + userId + "";
                } else {
                    alert("修改失败");
                }
            }
        })
    }
}

/**
 * 修改首选地址
 * @param id
 */
function updatePreferred(id) {
    //获取用户ID
    var userId = $("#userId").val();
    $.ajax({
        url: "/damai/address/preferred/" + id + "/" + userId + "",
        type: "post",
        dataType: "text",
        contentType: 'application/json;charset=UTF-8',
        success: function (data) {
            if (data == 1) {
                window.location.href = "/damai/address/userAddress/" + userId + "";
            } else {
                alert("设置失败");
            }
        }
    })
}

// /**
//  * 删除地址信息
//  */
// function deleteAddressId1(id) {
//     $("#notify-window1").hide();
//     $.ajax({
//         url: "/damai/address/delete/" + id + "",
//         type: "post",
//         dataType: "text",
//         contentType: 'application/json;charset=UTF-8',
//         success: function (data) {
//             if (data == 1) {
//                 $("#firstShow").remove();
//             } else {
//                 alert("删除失败");
//             }
//         }
//     })
// }

/**
 * 删除地址信息
 */
function deleteAddressId2(id, index) {
    $("#notify-window2" + index + "").hide();
    $.ajax({
        url: "/damai/address/delete/" + id + "",
        type: "post",
        dataType: "text",
        contentType: 'application/json;charset=UTF-8',
        success: function (data) {
            if (data == 1) {
                $("#lastShow" + id + "").remove();
            } else {
                alert("删除失败");
            }
        }
    })
}

/**
 * 隐藏提示
 */
function hiddenHints1() {
    $("#notify-window1").hide();
}

/**
 * 显示提示
 */
function showHints1() {
    $("#notify-window-Info").show();
}


/**
 * 隐藏提示
 */
function hiddenHints2(index) {
    $("#notify-window2" + index + "").hide();
}

/**
 * 隐藏提示
 */
function showHints2(index) {
    $("#notify-window2" + index + "").show();
}


/**
 * 隐藏提示
 */
function hiddenHintsfirst(index) {
    $("#notify-window-Info").hide();
}

