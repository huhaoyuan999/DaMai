/**
 * 显示/隐藏城市信息
 */
$(".location-header").mousemove(function () {
    $(".city-header-wrap").show();
});

$(".location-header,.city-header-wrap").mouseout(function () {
    $(".city-header-wrap").hide();
});

/**
 * 根据当前城市和分类查询演唱会信息
 */
$(".category__list").click(function () {
    //获取分类id
    var categorieId = $(this).data('spm');
    //获取当前城市名称
    var areainfoName = $('.now-city').children(".select-city").text();
    window.location.href = "/damai/show/query?categorieId=" + categorieId + "&name=" + areainfoName
});
$(".head-more").on('click', function () {

});

function qy(categorieId) {
    //获取当前城市名称
    var areainfoName = $('.now-city').children(".select-city").text();
    window.location.href = "/damai/show/query?categorieId=" + categorieId + "&name=" + areainfoName
}

function userInfoId() {
    window.location.href = "/damai/user/modular/1";
}

function registerInfoId() {
    window.location.href = "/damai/jsp/user/register.jsp";
}

function closeAdverse() {
    // $(".adverse").slideDown(500);
    $(".adverse").slideUp(500);
    // $(".adverse").hide();
}