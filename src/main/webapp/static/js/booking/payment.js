function chilk(th) {
    if(!$(th).is(':checked')){
        $("#orderConfirmSubmit").removeClass("z-dis1")
        $("#orderConfirmSubmit").addClass("z-dis")
    }else{
        $("#orderConfirmSubmit").removeClass("z-dis")
        $("#orderConfirmSubmit").addClass("z-dis1")
    }


}
$(".z-dis1").click(function () {
    var address_id=$("input[ name='_consignee']:checked").val();
    var showId=$(".showId").val()
    var price=$(".txt-danger").attr("data-nums")
    var num=$(".txt-danger").attr("data-num")
    var status=1
    var mode=2
    var userId=$(".dm-name").attr("data-id")
    var createDate=new Date();
    var deliveryDate=new Date();
    var address=$("input[ name='_consignee']:checked").attr("data-addres")
    var number=getdate(new Date())
    var item={
        address_id:address_id,
        price:price,
        num:num,
        mode:mode,
        status:status,
        createDate:createDate,
        deliveryDate:deliveryDate,
        address:address,
        number:number,
        showId:showId
    }
    // window.location.href="/damai/show/getOrder?order="+encodeURI(encodeURI(item))
    $.ajax({
        type:"POST",
        url:"/damai/show/getOrder",
        dataType:"html",
        contentType:"application/json",
        data:JSON.stringify(item),
        success:function(data){
            window.location.href="/damai/jsp/goods/payment.jsp"
        }
    });
    // $("html").load('/damai/show/getOrder',item)




})

function getdate(date) {
    var d=new Date(date);
    var year=d.getFullYear();
    var month=change(d.getMonth()+1);
    var day=change(d.getDate());
    var hour=change(d.getHours());
    var minute=change(d.getMinutes());
    var second=change(d.getSeconds());
    function change(t){
        if(t<10){
            return "0"+t;
        }else{
            return t+"";
        }
    }
    var num= parseInt(Math.random() * (999 - 100 + 1) + 100)
    var time=year+month+day+hour+minute+second+num;
    return time;

}

function showInfo(th) {
    $(th).addClass("on")
}

function hideInfo(th) {
    $(th).removeClass("on")
}
