function isShowName() {
    //获取活动名称
    var showName = $("#showName").val();
    if (showName.length == 0) {
        $("#showNameError").html("&nbsp;&nbsp;活 动 名 称 不 能 为 空");
    } else if (showName.length > 255) {
        $("#showNameError").html("&nbsp;&nbsp;活 动 名 称 只 能 输 入 1-255 个 字 符");
    } else {
        $("#showNameError").html("");
    }
}

function isShowPlace() {
    //获取活动地点
    var showPlace = $("#showPlace").val();
    if (showPlace.length == 0) {
        $("#showPlaceError").html("&nbsp;&nbsp;活 动 地 点 不 能 为 空");
    } else if (showPlace.length > 50) {
        $("#showPlaceError").html("&nbsp;&nbsp;活 动 地 点 只 能 输 入 1-50 个 字 符");
    } else {
        $("#showPlaceError").html("");
    }
}

function isShowMinPrice() {
    //获取最低票价
    var showMinPrice = $("#showMinPrice").val();
    var number = /^[0-9]+.?[0-9]*$/;
    if (showMinPrice.length != 0 && !number.test(showMinPrice)) {
        $("#showMinPriceError").html("&nbsp;&nbsp;票 价 格 式 输 入 错 误 只 能 输 入 数 字");
    } else {
        $("#showMinPriceError").html("");
    }
}

function isShowMaxPrice() {
    //获取最 高 票 价
    var showMaxPrice = $("#showMaxPrice").val();
    var number = /^[0-9]+.?[0-9]*$/;
    if (showMaxPrice.length != 0 && !number.test(showMaxPrice)) {
        $("#showMaxPriceError").html("&nbsp;&nbsp;票 价 格 式 输 入 错 误 只 能 输 入 数 字");
    } else {
        $("#showMaxPriceError").html("");
    }
}

function isShowBeginTime() {
    //获取开 始 时 间
    var showBeginTime = $("#showBeginTime").val();
    if (showBeginTime.length == 0) {
        $("#showBeginTimeError").html("&nbsp;&nbsp;活 动 开 始 时 间 不 能 为 空");
    } else {
        $("#showBeginTimeError").html("");
    }
}

function isShowEndTime() {
    //获取结 束 时 间
    var showEndTime = $("#showEndTime").val();
    if (showEndTime.length == 0) {
        $("#showEndTimeError").html("&nbsp;&nbsp;结 束 开 始 时 间 不 能 为 空");
    } else {
        $("#showEndTimeError").html("");
    }
}

function isCategorieId() {
    //获取活动类别
    var categorieId = $("#categorieId").val();
    if (categorieId == 0) {
        $("#categorieIdError").html("&nbsp;&nbsp;请 选 择 活 动 类 别");
    } else {
        $("#categorieIdError").html("");
    }
}

function isAreainfoId() {
    //获取活动城市
    var areainfoId = $("#areainfoId").val();
    if (areainfoId == 0) {
        $("#areainfoIdError").html("&nbsp;&nbsp;请 选 择 活 动 城 市");
    } else {
        $("#areainfoIdError").html("");
    }
}

function isShowStatus() {
    //获取售票状态
    var showStatus = $("#showStatus").val();
    if (showStatus == 0) {
        $("#showStatusError").html("&nbsp;&nbsp;请 选 择 售 票 状 态");
    } else {
        $("#showStatusError").html("");
    }
}

function isShowImg() {
    //获取图片
    var showImg = $("#showImg").val();
    //验证图片格式正则表达式
    var testImg = /^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w].*))(.JPEG|.jpeg|.JPG|.jpg|.GIF|.gif)$/;

    if (!testImg.test(showImg)) {
        $("#showImgError").text("图 片 格 式 不 正 确");
    } else {
        var result = showImg.split('\\');
        var tshow = {
            "showImg": result[result.length - 1],
            "showName": "huhaoyuan"
        }
        $("#showImgError").text("");
        $("#activityPicture").val(result[result.length - 1]);

        //获取form表单
        var formData = new FormData($(".fromImg")[0]);
        //获取form表单里的文件值
        formData.append('file', $('#showImg')[0].files[0]);
        $.ajax({
            url: "/damai/order/uploadFile",
            method: "post",
            data: formData,
            contentType: false,
            processData: false,
            success: function (data) {
                if (data == true) {
                    $(".fromImg").load('/damai/order/imageReplace .fromImg>*', tshow);
                } else {
                    alert("图片上传失败");
                }
            }
        });
    }
}


/**
 * 添加/修改商品信息
 */
function changeAddUpdateGoods() {
    //获取活动类别
    var categorieId = $("#categorieId").val();
    if (categorieId == 0) {
        $("#categorieIdError").html("&nbsp;&nbsp;请 选 择 活 动 类 别");
    } else {
        $("#categorieIdError").html("");
    }
    //获取活动城市
    var areainfoId = $("#areainfoId").val();
    if (areainfoId == 0) {
        $("#areainfoIdError").html("&nbsp;&nbsp;请 选 择 活 动 城 市");
    } else {
        $("#areainfoIdError").html("");
    }
    //获取售票状态
    var showStatus = $("#showStatus").val();
    if (showStatus == 0) {
        $("#showStatusError").html("&nbsp;&nbsp;请 选 择 售 票 状 态");
    } else {
        $("#showStatusError").html("");
    }
    //获取活动名称
    var showName = $("#showName").val();
    if (showName.length == 0) {
        $("#showNameError").html("&nbsp;&nbsp;活 动 名 称 不 能 为 空");
    } else if (showName.length > 255) {
        $("#showNameError").html("&nbsp;&nbsp;活 动 名 称 只 能 输 入 1-255 个 字 符");
    } else {
        $("#showNameError").html("");
    }
    //获取活动地点
    var showPlace = $("#showPlace").val();
    if (showPlace.length == 0) {
        $("#showPlaceError").html("&nbsp;&nbsp;活 动 地 点 不 能 为 空");
    } else if (showPlace.length > 50) {
        $("#showPlaceError").html("&nbsp;&nbsp;活 动 地 点 只 能 输 入 1-50 个 字 符");
    } else {
        $("#showPlaceError").html("");
    }
    //获取活动图片
    var activityPicture = $("#activityPicture").val();
    if (activityPicture.length == 0) {
        $("#showImgError").text("请 选 择 图 片");
    }else{
        $("#showImgError").text("");
    }
    //获取最低票价
    var showMinPrice = $("#showMinPrice").val();
    var number = /^[0-9]+.?[0-9]*$/;
    if (showMinPrice.length != 0 && !number.test(showMinPrice)) {
        $("#showMinPriceError").html("&nbsp;&nbsp;票 价 格 式 输 入 错 误 只 能 输 入 数 字");
    } else {
        $("#showMinPriceError").html("");
    }
    //获取最 高 票 价
    var showMaxPrice = $("#showMaxPrice").val();
    if (showMaxPrice.length != 0 && !number.test(showMaxPrice)) {
        $("#showMaxPriceError").html("&nbsp;&nbsp;票 价 格 式 输 入 错 误 只 能 输 入 数 字");
    } else {
        $("#showMaxPriceError").html("");
    }
    //获取开 始 时 间
    var showBeginTime = $("#showBeginTime").val();
    var start = new Date(showBeginTime.replace("年", "/").replace("月", "/").replace("日", ""));
    if (showBeginTime.length == 0) {
        $("#showBeginTimeError").html("&nbsp;&nbsp;活 动 开 始 时 间 不 能 为 空");
    } else {
        $("#showBeginTimeError").html("");
    }
    //获取结 束 时 间
    var showEndTime = $("#showEndTime").val();
    var end = new Date(showEndTime.replace("年", "/").replace("月", "/").replace("日", ""));
    if (showEndTime.length == 0) {
        $("#showEndTimeError").html("&nbsp;&nbsp;结 束 开 始 时 间 不 能 为 空");
    } else if (end < start) {
        $("#showEndTimeError").html("&nbsp;&nbsp;起 始 时 间 不 能 大 于 终 止 时 间");
    } else {
        $("#showEndTimeError").html("");
    }
    //获取活动简介
    var showTitle = $("#showTitle").val();

    if (categorieId == 0) {
    } else if (areainfoId == 0) {
    } else if (showStatus == 0) {
    } else if (showName.length == 0) {
    } else if (showName.length > 255) {
    } else if (showPlace.length == 0) {
    } else if (showPlace.length > 50) {
    } else if (activityPicture.length == 0) {
    } else if (showMinPrice.length != 0 && !number.test(showMinPrice)) {
    } else if (showMaxPrice.length != 0 && !number.test(showMaxPrice)) {
    } else if (showBeginTime.length == 0) {
    } else if (showEndTime.length == 0) {
    } else if (end < start) {
    } else {
        var updateGoodsInfo = $("#updateGoodsInfo").val();
        /**
         * 商品上架
         */
        if (updateGoodsInfo != 1) {
            var tshow = {
                "categorieId": categorieId,
                "areainfoId": areainfoId,
                "showStatus": showStatus,
                "showName": showName,
                "showPlace": showPlace,
                "showImg": activityPicture,
                "showMinPrice": showMinPrice,
                "showMaxPrice": showMaxPrice,
                "showBeginTime": showBeginTime,
                "showEndTime": showEndTime,
                "showTitle": showTitle
            }
            $.post("/damai/order/insertGoods", tshow, insertGoods);

            function insertGoods(data) {
                if (data == 1) {
                    $("#notify-window").show();
                    $("#notify-msg").text("商品上架成功");
                } else {
                    $("#notify-window").show();
                    $("#notify-msg").text("商品上架失败");
                }
            }

            /**
             * 修改商品
             */
        } else {
            var showId = $("#showId").val();
            var tshow = {
                "showId": showId,
                "categorieId": categorieId,
                "areainfoId": areainfoId,
                "showStatus": showStatus,
                "showName": showName,
                "showPlace": showPlace,
                "showImg": activityPicture,
                "showMinPrice": showMinPrice,
                "showMaxPrice": showMaxPrice,
                "showBeginTime": showBeginTime,
                "showEndTime": showEndTime,
                "showTitle": showTitle
            }
            $.post("/damai/order/updateGoods", tshow, updateGoods);

            function updateGoods(data) {
                if (data == 1) {
                    $("#notify-window").show();
                    $("#notify-msg").text("商品修改成功");
                } else {
                    $("#notify-window").show();
                    $("#notify-msg").text("商品修改失败");
                }
            }
        }
    }
}

function hideChangeGoods() {
    $("#notify-window").hide();
    window.location.href = "/damai/order/goods/1";
}

