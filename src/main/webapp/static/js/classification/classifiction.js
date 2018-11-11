$("a[data-city='ci']").on('click',function () {
     var city= $(this).text();
     var count=$(this).attr("data-weizhi")
    if(count<20){
        citylinecontrolg(1)
    }
     var categorieId=$(".active").eq(1).attr("data-categorieId")
    var showTime=$(".active").eq(2).attr('data-val')
    var mode=$(".search_lis_on").attr("mode-mode-id")
    var pai=$(".active").eq(3).attr("data-pai-val")
    var pageNum=1
    $("a[data-city='ci']").removeClass()
    $(this).addClass("active")
    // alert(city)
    query(city,categorieId,showTime,mode,pai,pageNum)
})



$("a[data-categorie='categorie']").on('click',function () {
    var city=$(".active").eq(0).text()
    var categorieId= $(this).attr("data-categorieId");
    var showTime=$(".active").eq(2).attr('data-val')
    var mode=$(".search_lis_on").attr("mode-mode-id")
    var pai=$(".active").eq(3).attr("data-pai-val")
    var pageNum=1
    $("a[data-categorie='categorie']").removeClass()
    $(this).addClass("active")
    query(city,categorieId,showTime,mode,pai,pageNum)
})


$("a[data-date='selectDate']").on('click',function () {
    var city=$(".active").eq(0).text()
    var categorieId=$(".active").eq(1).attr("data-categorieId")
    var showTime=$(this).attr('data-val')
    var mode=$(".search_lis_on").attr("mode-mode-id")
    var pai=$(".active").eq(3).attr("data-pai-val")
    var pageNum=1
    $("a[data-date='selectDate']").removeClass()
    $(this).addClass("active")
    query(city,categorieId,showTime,mode,pai,pageNum)

})

$("a[data-mode='mode']").on('click',function () {
    var city=$(".active").eq(0).text()
    var categorieId=$(".active").eq(1).attr("data-categorieId")
    var showTime=$(".active").eq(2).attr('data-val')
    var mode=$(this).attr("mode-mode-id")
    var pai=$(".active").eq(3).attr("data-pai-val")
    var pageNum=1
    $("a[data-mode='mode']").removeClass()
    $(this).siblings("a").addClass("search_icon")
    $(this).addClass("search_lis_on")
    query(city,categorieId,showTime,mode,pai,pageNum)
})

$("a[data-pai='pai']").on('click',function () {
    var city=$(".active").eq(0).text()
    var categorieId=$(".active").eq(1).attr("data-categorieId")
    var showTime=$(".active").eq(2).attr('data-val')
    var mode=$(".search_lis_on").attr("mode-mode-id")
    var pai=$(this).attr("data-pai-val")
    var pageNum=1
    $("a[data-pai='pai']").removeClass()
    $(this).addClass("active")
    query(city,categorieId,showTime,mode,pai,pageNum)
})
$("a[data-page]").on('click',function () {
    alert("aa")
    var city=$(".active").eq(0).text()
    var categorieId=$(".active").eq(1).attr("data-categorieId")
    var showTime=$(".active").eq(2).attr('data-val')
    var mode=$(".search_lis_on").attr("mode-mode-id")
    var pai=$(".active").eq(3).attr("data-pai-val")
    var pageNum=$("#pageNum").attr("data-pageNum")
    var pageNo=$(this).attr("data-page")
    query(city,categorieId,showTime,mode,pai,pageNum)
})


function setLoading(i){
    if(i==0){
        //$('#search_loading').hide();
        //$('#search_loading').stop();
        $('#search_loading').slideUp();
    }else{
        //$('#search_loading').show();
        //$('#search_loading').stop();
        $('#search_loading').slideDown();
    }

}

function query(city,categorieId,showTime,mode,pai,pageNum) {
    setLoading(1)

    var d=new Date();
    var year=d.getFullYear();
    var month=change(d.getMonth()+1);
    var day=d.getDate()
    var hour=change(d.getHours());
    var minute=d.getMinutes();
    var second=change(d.getSeconds());
    function change(t){
        if(t<10){
            return "0"+t;
        }else{
            return t;
        }
    }


    var showBeginTime;
    switch (showTime) {
        case 0:
            showBeginTime=null
            break
        case '1':
            showBeginTime=year+'-'+month+'-'+day;
            break
        case '2':
            day=day+1
            showBeginTime=year+'-'+month+'-'+day;
            break
        case '3':
            day=day+7
            showBeginTime=year+'-'+month+'-'+day;
            break
        case '4':
            month=month+1
            showBeginTime=year+'-'+month+'-'+day;
            break
    }


    var item = {
        'name':city,
        'categorieId':categorieId,
        'showBeginTime':showBeginTime,
        'mode':mode,
        'pai':pai,
        'pageNum':pageNum
    };
    $("#content_list").load('/damai/show/query #content_list>*',item,function () {
        setLoading(0)
    });
}


$("body").load(zan())
function zan() {

    var count= $("a[data-ciy='ci']").attr("data-ctiy")
    if(count>20){
        citylinecontrolg(0)
    }
}

function pageAjax(pageNo) {
    var city=$(".active").eq(0).text()
    var categorieId=$(".active").eq(1).attr("data-categorieId")
    var showTime=$(".active").eq(2).attr('data-val')
    var mode=$(".search_lis_on").attr("mode-mode-id")
    var pai=$(".active").eq(3).attr("data-pai-val")
    var pageNum=pageNo
    query(city,categorieId,showTime,mode,pai,pageNum)
}

/**
 * 控制城市导航隐藏显示
 * @param type 0:更多 1：收起
 */
function citylinecontrolg(type){
    var oCity = $('.search_city_all');
    var oA = $('.search_city_more');

    if(type == 0){
        oCity.css('height','auto').height();
        oA.find('.search_city_up').hide();
        oA.find('.search_city_off').show();
    }else{
        oCity.height(62);
        oA.find('.search_city_off').hide();
        oA.find('.search_city_up').show();
    }
}


