function showInfo1() {
    $(".list-wrap").stop(true, true).slideDown(450);
}

function showInfo2() {
    $(".list-wrap").stop(true, true).slideUp(450);
}
$(".recommend-header a").on('click',function () {
    // $(this).siblings().removeClass()
    // $(this).siblings().addClass("type-recommend")
    // $(this).removeClass();
    // $(this).addClass("type-recommend select")
    window.location.href=$(this).attr("data-herf")

})

// $("a[data-spm='dcategory']").click(function () {
//     $(this).sibling().removeClass()
//     $(this).sibling().addClass("type-recommend")
//     $(this).removeClass();
//     $(this).addClass("type-recommend select")
// })


/**
 * 跳转到登入页面
 */
function loginAndJumping() {
    window.location.href = "/damai/jsp/user/login.jsp";
}

/**
 * 根据城市查询演唱会信息
 */

$('.name-city').click(function () {
    var areainfoId = $(this).data('spm');
    var $html = $(this).html();
    var tshow = {
        'areainfoId':areainfoId
    }
    $(".dm-content-wrap").load('/damai/show/index .dm-content-wrap>*',tshow);
    $('.select-city,.city-location').html($html);
});


// /**
//  * 跳转到账户页面
//  */
// function accountSettings() {
//     window.location.href = "/damai/jsp/ownInfo.jsp";
//     $("#sumBgn").val("你好")
// }