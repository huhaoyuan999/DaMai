function showInfo1() {
    $(".list-wrap").stop(true, true).slideDown(450);
}

function showInfo2() {
    $(".list-wrap").stop(true, true).slideUp(450);
}

$(".recommend-header a").on('click', function () {
    // $(this).siblings().removeClass()
    // $(this).siblings().addClass("type-recommend")
    // $(this).removeClass();
    // $(this).addClass("type-recommend select")
    window.location.href = $(this).attr("data-herf")

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
        'areainfoId': areainfoId
    }
    $(".dm-content-wrap").load('/damai/show/index .dm-content-wrap>*', tshow);
    $('.select-city,.city-location').html($html);
});

$(".input-search").bind('input propertychange', function () {
    $("div[data-spm='searchtxt']").removeClass()
    $("div[data-spm='searchtxt']").addClass("search-header on")
    var showName = $(this).val()
    var name = $(".select-city").html();

    var item={
        "name":name,
        "showName":showName
    }

    //     <a href="//piao.damai.cn/43897.html"  data-spm="ditem_0" target="_blank">
    //     <span class="title-search">VR+Room Break 密室（长宁店）Room 2-<span class="c4">6</span></span>
    // <span class="city-search">上海</span>
    //     </a>
    $.post('/damai/show/queryByName',item,function (data) {
        var ht="";
        if(data!=null && showName!=""){

            for (var i in data){
                if(i<6){
                    ht +="<a href='/damai/show/detail/"+data[i].showId+"' class='li-search' target='_blank'>" +
                        "<span class='title-search'>"+redName(data[i].showName,showName)+"</span>" +
                        "<span class='city-search'>"+data[i].tareainfo.areainfoName+"</span></a>";
                }else {
                    break
                }
            }
            $(".list-search").html(ht)
            $(".list-search").addClass("search-border")

        }else{
            $(".list-search").html(ht)
            $(".list-search").removeClass("search-border")
        }


    })

})

function redName(title,showName){
    if(title.indexOf(showName)>0){
      return  title.replace(showName,"<span class='c4'>"+showName+"</span>")
    }else{
        return title
    }
}

// $("div[data-spm='searchtxt']").blur(function () {
//     $("div[data-spm='searchtxt']").removeClass()
//     $("div[data-spm='searchtxt']").addClass("search-header")
// })
$('body').click(function(e) {
    var target = $(e.target);
    // 如果#overlay或者#btn下面还有子元素，可使用
    if( !target.is("div[data-spm='searchtxt'] *")) {
            $("div[data-spm='searchtxt']").removeClass()
            $("div[data-spm='searchtxt']").addClass("search-header")
    }
});

$(".btn-search").click(function () {
    $("div[data-spm='searchtxt']").removeClass()
    $("div[data-spm='searchtxt']").addClass("search-header on")
    var showName = $(".input-search").val()
    var name = $(".select-city").html();

    var item={
        "name":name,
        "showName":showName
    }
    window.location.href = "/damai/show/query?name="+name+"&showName="+showName

})
$(".input-search").keyup(function (event) {
    if(event.which==13){
        $("div[data-spm='searchtxt']").removeClass()
        $("div[data-spm='searchtxt']").addClass("search-header on")
        var showName = $(".input-search").val()
        var name = $(".select-city").html();

        var item={
            "name":name,
            "showName":showName
        }
        window.location.href = "/damai/show/query?name="+name+"&showName="+showName
    }
})


// /**
//  * 跳转到账户页面
//  */
// function accountSettings() {
//     window.location.href = "/damai/jsp/ownInfo.jsp";
//     $("#sumBgn").val("你好")
// }