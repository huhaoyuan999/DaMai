/**
 * 分页查询数据
 */
function pageGoodsAjax(pageNo) {
    $(".order-list-wrapper").load('/damai/order/goods/' + pageNo + ' .order-list-wrapper>*');
}

function hideInfo() {
    $("#notify-window").hide();
}

function showInfo(id) {
    $("#goodsId").val(id);
    $("#notify-window").show();
}

function deleteGoodsInfo() {
    $("#notify-window").hide();
    var id = $("#goodsId").val();
    var pageNo = $("#pageNo").text();
    $.post("/damai/order/deleteGoods/" + id + "", deleteIResultInfo);

    function deleteIResultInfo(data) {
        if (data == 1) {
            $(".order-list-wrapper").load('/damai/order/goods/' + pageNo + ' .order-list-wrapper>*');
        }
        esle
        {
            alert("下架失败");
        }
    }
}