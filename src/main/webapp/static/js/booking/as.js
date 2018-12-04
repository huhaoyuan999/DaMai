
var cartMoving = {}, cartPerformId = 0;

function moveToCart(performId, priceId) {

    $(".j_goodsDetails").each(function () {
        var times = 500;
        var $ll = $(this),
            $perform = $ll.find("div.m-choose.m-choose-date ul.lst li.itm:not(.j_animate)[data-performId='{0}']".format(performId)),
            $item = $ll.find("div.m-choose.m-choose-price ul.lst li.itm:not(.j_animate)[data-priceId='{0}']".format(priceId)),
            $cc = $ll.find(".m-cart .ct");
        $item.addClass("itm-sel");
        if ($perform.length == 0) return;
        if ($item.length == 0) return;
        if (projectInfo.IsOnlyXuanZuo) {
            return;
        }
        $(".m-cart").find("h3.tt, div.ct").show();
        var targetleft = $cc.position().left, targettop = $cc.position().top;
        var $nPerform = $perform.clone();
        var $nItem = $item.clone();

        $nPerform.css({
            'position': 'absolute',
            'left': $perform.position().left,
            'top': $perform.position().top,
            'z-index': 1
        }).addClass("j_animate");
        $perform.parent().append($nPerform);
        $nItem.css({
            'position': 'absolute',
            'left': $item.position().left,
            'top': $item.position().top,
            'z-index': 1
        }).addClass("j_animate");
        $item.parent().append($nItem);
        cartMoving["mv_{0}_{1}".format(performId, priceId)] = {perform: $nPerform, price: $nItem};
        $nPerform.animate({
            'left': targetleft,
            'top': targettop,
            'opacity': 0
        }, times, function () {
            $(this).remove();
        });
        $nItem.animate({
            'left': targetleft,
            'top': targettop,
            'opacity': 0
        }, times, function () {
            $(this).remove();
            var htm =
                String.format('<li class="itm" style="display:none;" data-performId="{0}" data-priceId={1}>', performId, priceId) +
                String.format('<span class="txt txt-datetime {1}">"{0}"</span>', $perform.find("a").text().trim(), categoryId == 8 ? "f-dn" : "") +
                String.format('<span class="txt txt-price">"{0}"</span>', $item.text().trim()) +
                '<span class="m-nums"><a class="btn btn-low" href="javascript:;">减</a><input class="ipt ipt-num" type="text" value="1" /><a class="btn btn-add" href="javascript:;">加</a></span>' +
                '<span class="tips tips-stock"><strong></strong></span>' +
                '<a class="btn btn-del" href="javascript:;"><i></i>删除</a>' +
                '</li>';
            var $i = $(htm);
            $cc.find("ul.lst").append($i);
            $i.slideDown();
            delete cartMoving["mv_{0}_{1}".format(performId, priceId)];
        });

    });
}

Date.prototype.format = function (fmt) {
    var o = {
        "M+": this.getMonth() + 1,
        "d+": this.getDate(),
        "h+": this.getHours(),
        "m+": this.getMinutes(),
        "s+": this.getSeconds(),
        "q+": Math.floor((this.getMonth() + 3) / 3),
        "S": this.getMilliseconds()
    };
    if (/(y+)/.test(fmt))
        fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    for (var k in o)
        if (new RegExp("(" + k + ")").test(fmt))
            fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
    return fmt;
};

String.format = function () {
    if (arguments.length == 0)
        return null;

    var str = arguments[0];
    for (var i = 1; i < arguments.length; i++) {
        var re = new RegExp('\\{' + (i - 1) + '(:(\\d+))?\\}', 'gm');
        var rs = re.exec(str);
        if (typeof rs != "undefined" && rs != null) {
            var v = arguments[i];
            if (typeof rs[2] != "undefined") {
                var l = (v + "").length;
                if (l < (rs[2] - 0)) {
                    v = ("000000000000".substr(0, rs[2] - l)) + v;
                }
            }
            str = str.replace(re, v);
        }
    }
    return str;
};

String.prototype.format = function () {
    if (arguments.length == 0)
        return null;

    var str = this;
    for (var i = 0; i < arguments.length; i++) {
        var re = new RegExp('\\{' + (i) + '\\}', 'gm');
        str = str.replace(re, arguments[i]);
    }
    return str;
};