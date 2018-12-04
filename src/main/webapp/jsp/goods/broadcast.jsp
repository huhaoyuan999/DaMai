<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>订单结算页-大麦网</title>
    <link rel="stylesheet" type="text/css" href="${ctx}/static/cssGoods/public-min.css">
    <style>
        .ms-controller {
            visibility: hidden;
        }

        /*一票一证css*/
        * {
            margin: 0;
            padding: 0;
            font-size: 12px;
            color: #666;
        }

        .table {
            width: 960px;
            margin: 0 auto;
        }

        .m-table-2 {
            border: 1px solid #fff;
            box-sizing: border-box;
            height: 100px;
        }

        .m-table-2 a, .m-table-3 a, .m-table-4 a {
            color: #4d98ba;
            text-decoration: none;
            margin: 0 5px;
        }

        .m-table-2 .bd {
            background: #f4f9fe;
            float: left;
            width: 960px;

        }

        .m-table-2 .w1 {
            width: 360px;
            height: 28px;
            line-height: 28px;
            text-align: center;
            display: block;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        .m-table-2 .w2 {
            width: 150px;
            height: 28px;
            line-height: 28px;
            text-align: center;
        }

        .m-table-2 .w3 {
            width: 150px;
            height: 28px;
            line-height: 28px;
            text-align: center;
        }

        .m-table-2 .w4 {
            width: 150px;
            height: 28px;
            line-height: 28px;
            text-align: center;
        }

        .m-table-2 .w5 {
            width: 150px;
            height: 28px;
            line-height: 28px;
            text-align: center;
        }

        .m-table-2 .th li {
            float: left;
            background: #f4f9fe;
            border-right: 1px solid #fff;
            border-bottom: 1px solid #fff;
            box-sizing: border-box;
        }

        .m-table-2 .td li {
            float: left;
            background: #f4f9fe;
            border-right: 1px solid #fff;
            border-bottom: 1px solid #fff;
            box-sizing: border-box;
        }

        .m-table-2 li, .m-table-3 li, .m-table-4 li {
            list-style: none;
        }

        .m-table-2, .m-table-3 {

            margin-top: 20px;
        }

        .m-table-3 .bd .left {
            background: #f4f9fe;
            float: left;
            width: 737px;

        }

        .m-table-3 .center {
            background: #f4f9fe;
            margin-left: 600px; /*==此值等于左边栏的宽度值==*/
            box-sizing: border-box;
            border-left: 1px solid #fff;

        }

        .m-table-3 .left, .m-table-3 .center {

            height: auto !important;

            border-top: 1px solid #fff;
            border-left: 1px solid #fff;
            box-sizing: border-box;
        }

        .m-table-3 .hd-1 {
            background: #fff;
            height: 28px;
            line-height: 28px;
            font-weight: 400;
            border-right: 1px solid #fff;
            box-sizing: border-box;
            width: 736px;
        }

        .m-table-3 .hd {

            font-weight: 400;

        }

        .m-table-3 .w1 {
            width: 456px;
            height: 28px;
            line-height: 28px;
            text-align: center;
            overflow: hidden;
        }

        .m-table-3 .w2 {
            width: 280px;
            height: 28px;
            line-height: 28px;
            text-align: center;
        }

        .m-table-3 .w3 {
            width: 223px;
            height: 28px;
            line-height: 28px;
            text-align: center;
        }

        .m-table-3 .wfff {
            width: 223px;
            height: 28px;
            line-height: 28px;
            text-align: center;
            background: #fff;
        }

        .m-table-3 .center .td {
            text-align: center;

        }

        .m-table-3 .tt {
            width: 223px;
            height: 196px;
            line-height: 196px;
            text-align: center;
        }

        .m-table-3 dl {
            overflow: hidden;
        }

        .m-table-3 .th li {
            float: left;
            background: #f4f9fe;
            border-right: 1px solid #fff;
            border-bottom: 1px solid #fff;
            box-sizing: border-box;
        }

        .m-table-3 .td li {
            float: left;
            background: #f4f9fe;
            border-right: 1px solid #fff;
            border-bottom: 1px solid #fff;
            box-sizing: border-box;
        }

        .m-table-3 .td .tt {
            border-right: 1px solid #fff;
            box-sizing: border-box;
        }

        .m-table-4 {
            border-top: 1px solid #fff;
            border-left: 1px solid #fff;
            box-sizing: border-box;
        }

        .m-table-4 .w1 {
            width: 456px;
            height: 28px;
            line-height: 28px;
            text-align: center;
            overflow: hidden;
            border-left: 1px solid #fff;
            box-sizing: border-box;
        }

        .m-table-4 .w2 {
            width: 280px;
            height: 28px;
            line-height: 28px;
            text-align: center;
        }

        .m-table-4 .w3 {
            width: 220px;
            height: 28px;
            line-height: 28px;
            text-align: center;
        }

        .m-table-4 .th li {
            float: left;
            background: #f4f9fe;
            border-right: 1px solid #fff;
            border-bottom: 1px solid #fff;
            border-top: 1px solid #fff;
            box-sizing: border-box;
        }

        .m-table-4 .td li {
            float: left;
            background: #f4f9fe;
            border-right: 1px solid #fff;
            border-bottom: 1px solid #fff;
            border-top: 1px solid #fff;
            box-sizing: border-box;
        }

        .m-table-4 .hd-1 {
            background: #fff;
            height: 28px;
            line-height: 28px;
            font-weight: 400;
            border-right: 1px solid #fff;
            box-sizing: border-box;
            width: 736px;
            clear: both;
            overflow: hidden;
        }

        .m-table-5 {
            border: 1px solid #fff;
            box-sizing: border-box;
        }

        .m-table-5 a {
            color: #4d98ba;
            text-decoration: none;
            margin: 0 5px;
        }

        .m-table-5 .w1 {
            width: 358px;
            line-height: 28px;
            text-align: center;

        }

        .m-table-5 .w2 {
            width: 150px;
            line-height: 28px;
            text-align: center;
        }

        .m-table-5 .w3 {
            width: 150px;
            line-height: 28px;
            text-align: center;
        }

        .m-table-5 .w4 {
            width: 150px;
            line-height: 28px;
            text-align: center;
        }

        .m-table-5 .w5 {
            width: 150px;
            line-height: 28px;
            text-align: center;
        }

        .m-table-5 th {
            background: #f4f9fe;
            border-right: 1px solid #fff;
            border-bottom: 1px solid #fff;
            box-sizing: border-box;
            font-weight: 400;
        }

        .m-table-5 td {
            background: #f4f9fe;
            border-right: 1px solid #fff;
            border-bottom: 1px solid #fff;
            box-sizing: border-box;
        }

        /*ie6,7 浏览器*/
        #m-mask {
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            z-index: 9999;
            background-color: #000;
            opacity: 0.5;
            filter: alpha(opacity=50);
            display: none
        }

        #guide {
            position: absolute;
            top: 50%;
            left: 50%;
            width: 524px;
            height: 506px;
            margin-left: -262px;
            margin-top: -258px;
            z-index: 99999;
            background: url('//dui.dmcdn.cn/dm_trade_system/multi/pc/common/images/guide.png') no-repeat;
            display: none
        }

        #guide .guide-360 {
            width: 237px;
            height: 50px;
            background: url('//dui.dmcdn.cn/dm_trade_system/multi/pc/common/images/g-360.png') no-repeat;
            display: block;
            margin-top: 107px;
            margin-left: 30px;
        }

        #guide .guide-ch {
            width: 237px;
            height: 50px;
            background: url('//dui.dmcdn.cn/dm_trade_system/multi/pc/common/images/g-ch.png') no-repeat;
            display: block;
            margin-top: 10px;
            margin-left: 30px;
        }

        #guide .guide-ie {
            width: 237px;
            height: 50px;
            background: url('//dui.dmcdn.cn/dm_trade_system/multi/pc/common/images/g-ie.png') no-repeat;
            display: block;
            margin-top: 10px;
            margin-left: 30px;
        }

        #guide .guide-weixin {
            margin-top: 64px;
            margin-left: 30px;
        }


    </style>
    <link href="${ctx}/static/cssGoods/common.1.0.0.css" rel="stylesheet">
    <link href="${ctx}/static/cssGoods/index.1.0.0.css" rel="stylesheet">
    <link type="text/css" href="${ctx}/static/cssGoods/nc.css" rel="stylesheet" disabled="">
    <script src="${ctx}/static/js/booking/avalon.js"> </script>
    <style>
        @font-face {
            font-family: 'nc_iconfont';
            src: url("//at.alicdn.com/t/font_1465353706_4784257.eot");
            src: url("//at.alicdn.com/t/font_1465353706_4784257.eot?#iefix") format('embedded-opentype'), url("//at.alicdn.com/t/font_1465353706_4784257.woff") format('woff'), url("//at.alicdn.com/t/font_1465353706_4784257.ttf") format('truetype'), url("//at.alicdn.com/t/font_1465353706_4784257.svg#iconfont") format('svg')
        }

        @font-face {
            font-family: 'ncpc_iconfont';
            src: url("//at.alicdn.com/t/font_384029_rhzpmteb25oecdi.eot");
            src: url("//at.alicdn.com/t/font_384029_rhzpmteb25oecdi.eot?#iefix") format('embedded-opentype'), url("//at.alicdn.com/t/font_384029_rhzpmteb25oecdi.woff") format('woff'), url("//at.alicdn.com/t/font_384029_rhzpmteb25oecdi.ttf") format('truetype'), url("//at.alicdn.com/t/font_384029_rhzpmteb25oecdi.svg#ncpc_iconfont") format('svg')
        }

        .nc-container div#nc-loading-circle {
            background: transparent;
            width: 20px;
            height: 20px;
            display: inline-block;
            position: relative;
            vertical-align: middle
        }

        .nc-container div#nc-loading-circle .sk-circle {
            background: transparent;
            width: 100%;
            height: 100%;
            position: absolute;
            left: 0;
            top: 0
        }

        .nc-container #nc-loading-circle .sk-circle:before {
            content: '';
            display: block;
            margin: 0 auto;
            width: 15%;
            height: 15%;
            background-color: #818181;
            border-radius: 100%;
            -webkit-animation: sk-circleFadeDelay 1.2s infinite ease-in-out both;
            animation: sk-circleFadeDelay 1.2s infinite ease-in-out both
        }

        .nc-container #nc-loading-circle .sk-circle2 {
            -webkit-transform: rotate(30deg);
            -ms-transform: rotate(30deg);
            transform: rotate(30deg)
        }

        .nc-container #nc-loading-circle .sk-circle3 {
            -webkit-transform: rotate(60deg);
            -ms-transform: rotate(60deg);
            transform: rotate(60deg)
        }

        .nc-container #nc-loading-circle .sk-circle4 {
            -webkit-transform: rotate(90deg);
            -ms-transform: rotate(90deg);
            transform: rotate(90deg)
        }

        .nc-container #nc-loading-circle .sk-circle5 {
            -webkit-transform: rotate(120deg);
            -ms-transform: rotate(120deg);
            transform: rotate(120deg)
        }

        .nc-container #nc-loading-circle .sk-circle6 {
            -webkit-transform: rotate(150deg);
            -ms-transform: rotate(150deg);
            transform: rotate(150deg)
        }

        .nc-container #nc-loading-circle .sk-circle7 {
            -webkit-transform: rotate(180deg);
            -ms-transform: rotate(180deg);
            transform: rotate(180deg)
        }

        .nc-container #nc-loading-circle .sk-circle8 {
            -webkit-transform: rotate(210deg);
            -ms-transform: rotate(210deg);
            transform: rotate(210deg)
        }

        .nc-container #nc-loading-circle .sk-circle9 {
            -webkit-transform: rotate(240deg);
            -ms-transform: rotate(240deg);
            transform: rotate(240deg)
        }

        .nc-container #nc-loading-circle .sk-circle10 {
            -webkit-transform: rotate(270deg);
            -ms-transform: rotate(270deg);
            transform: rotate(270deg)
        }

        .nc-container #nc-loading-circle .sk-circle11 {
            -webkit-transform: rotate(300deg);
            -ms-transform: rotate(300deg);
            transform: rotate(300deg)
        }

        .nc-container #nc-loading-circle .sk-circle12 {
            -webkit-transform: rotate(330deg);
            -ms-transform: rotate(330deg);
            transform: rotate(330deg)
        }

        .nc-container #nc-loading-circle .sk-circle2:before {
            -webkit-animation-delay: -1.1s;
            animation-delay: -1.1s
        }

        .nc-container #nc-loading-circle .sk-circle3:before {
            -webkit-animation-delay: -1s;
            animation-delay: -1s
        }

        .nc-container #nc-loading-circle .sk-circle4:before {
            -webkit-animation-delay: -.9s;
            animation-delay: -.9s
        }

        .nc-container #nc-loading-circle .sk-circle5:before {
            -webkit-animation-delay: -.8s;
            animation-delay: -.8s
        }

        .nc-container #nc-loading-circle .sk-circle6:before {
            -webkit-animation-delay: -.7s;
            animation-delay: -.7s
        }

        .nc-container #nc-loading-circle .sk-circle7:before {
            -webkit-animation-delay: -.6s;
            animation-delay: -.6s
        }

        .nc-container #nc-loading-circle .sk-circle8:before {
            -webkit-animation-delay: -.5s;
            animation-delay: -.5s
        }

        .nc-container #nc-loading-circle .sk-circle9:before {
            -webkit-animation-delay: -.4s;
            animation-delay: -.4s
        }

        .nc-container #nc-loading-circle .sk-circle10:before {
            -webkit-animation-delay: -.3s;
            animation-delay: -.3s
        }

        .nc-container #nc-loading-circle .sk-circle11:before {
            -webkit-animation-delay: -.2s;
            animation-delay: -.2s
        }

        .nc-container #nc-loading-circle .sk-circle12:before {
            -webkit-animation-delay: -.1s;
            animation-delay: -.1s
        }

        @-webkit-keyframes sk-circleFadeDelay {
            0%, 39%, 100% {
                opacity: 0
            }
            40% {
                opacity: 1
            }
        }

        @-webkit-keyframes sk-circleFadeDelay {
            0%, 39%, 100% {
                opacity: 0
            }
            40% {
                opacity: 1
            }
        }

        @keyframes sk-circleFadeDelay {
            0%, 39%, 100% {
                opacity: 0
            }
            40% {
                opacity: 1
            }
        }

        .nc-container .scale_text2 #nc-loading-circle .sk-circle:before {
            background-color: #fff
        }

        .nc_iconfont {
            font-family: "nc_iconfont";
            color: #ff3f08;
            font-size: 16px;
            font-style: normal
        }

        .ncpc_iconfont {
            font-family: "ncpc_iconfont";
            color: #ff3f08;
            font-size: 16px;
            font-style: normal
        }

        .captcha-error .icon_ban {
            float: left;
            font-size: 16px;
            padding-right: 5px;
            line-height: 14px
        }

        .clickCaptcha_text .btn_refresh {
            font-style: normal;
            cursor: pointer;
            background: #fff;
            color: #737383
        }

        .imgCaptcha .btn_refresh {
            font-size: 20px;
            cursor: pointer;
            background: #fff;
            color: #737383
        }

        .nc_voice {
            display: none;
            position: relative;
            margin-top: -34px;
            z-index: 99;
            width: auto;
            height: 34px;
            background: #fff
        }

        .omeo-code-img, .omeo-code-audio {
            font-size: 0;
            text-align: left
        }

        .omeo-code-audiobox, .omeo-code-img a, .omeo-code-audio a, .omeo-code-state {
            display: inline-block;
            *display: inline;
            zoom: 1;
            height: 32px;
            vertical-align: top;
            font-size: 12px
        }

        .omeo-code .omeo-code-refresh {
            background: transparent;
            width: 32px;
            height: 32px;
            font-size: 20px;
            color: #888;
            text-align: center;
            text-decoration: none;
            padding-left: 4px;
            line-height: 32px
        }

        .omeo-code .omeo-switch {
            display: none;
            width: 32px;
            height: 32px;
            border-left: 1px solid #e1e1e1;
            background-image: url("//g.alicdn.com/sd/ncpc/images/checkcode.png");
            background-repeat: no-repeat
        }

        .omeo-img-active .omeo-code-img {
            display: block
        }

        .omeo-img-active .omeo-code-audio {
            display: none
        }

        .omeo-code-img img {
            border: 1px solid #cdcdcd;
            cursor: pointer
        }

        .omeo-code-img .omeo-switch {
            background-position: 9px -41px
        }

        .omeo-audio-active .omeo-code-audio {
            display: block
        }

        .omeo-audio-active .omeo-code-img {
            display: none
        }

        .omeo-code-refresh {
            position: relative;
            left: 95px
        }

        .omeo-code-audiobox {
            position: relative;
            height: 30px;
            line-height: 32px;
            border: 1px solid #e1e1e1;
            text-align: center;
            overflow: hidden;
            left: 100px;
            top: 1px;
            width: 45%;
            min-width: 80px;
            background-color: #eee
        }

        .omeo-code-audiobox a {
            display: block;
            text-decoration: none;
            color: #06c
        }

        .omeo-code-audiobox-playing a {
            visibility: hidden
        }

        .omeo-code-audiobox span, .omeo-code-audiobox b {
            visibility: hidden;
            position: absolute;
            top: 0;
            left: 0;
            height: 30px;
            font-weight: 100;
            overflow: hidden
        }

        .omeo-code-audiobox-playing span, .omeo-code-audiobox-playing b {
            visibility: visible
        }

        .omeo-code-audiobox span {
            z-index: 0;
            width: 0;
            background: #186bca
        }

        .omeo-code-audiobox b {
            width: 100%;
            z-index: 1;
            text-align: left;
            text-indent: 30px;
            color: #999;
            background: url("//g.alicdn.com/sd/ncpc/images/checkcode.png") no-repeat 14px -89px
        }

        .omeo-code-audio .omeo-switch {
            background-position: 5px 10px
        }

        input[type=text]::-ms-clear {
            display: none
        }

        .omeo-box {
            position: relative;
            background-color: #fff
        }

        .omeo-code-echo {
            position: absolute;
            top: 2px;
            left: 2px
        }

        .omeo-code-echo input {
            padding: 5px;
            height: 18px;
            line-height: 18px;
            border: 1px solid #ddd;
            width: 80px;
            outline: 0
        }

        .omeo-code-state {
            height: 30px;
            line-height: 30px;
            text-indent: 25px;
            white-space: nowrap;
            background-image: url("//g.alicdn.com/sd/ncpc/images/checkcode.png");
            background-repeat: no-repeat;
            background-position: 100px 100px
        }

        .omeo-code-echo .omeo-code-state-error {
            width: auto;
            background-position: 7px -193px
        }

        .omeo-code-echo .omeo-code-state-success {
            position: absolute;
            width: 30px;
            background-position: 7px -243px
        }

        .omeo-code-state {
            position: absolute;
            left: 0;
            top: 28px
        }

        .nc_voice_close {
            display: inline-block;
            position: relative;
            cursor: pointer;
            left: 95px;
            top: 0;
            border-left: #ddd 2px solid;
            padding: 0 0 0 7px;
            background-color: #fff;
            font-size: 20px;
            color: #888;
            line-height: 32px
        }

        .nc_help {
            position: absolute;
            width: 100%;
            height: 100%;
            left: 0;
            top: 0;
            z-index: 99999
        }

        .nc_help .mask {
            background-color: #000;
            opacity: .5;
            filter: alpha(opacity=50);
            width: 100%;
            height: 100%;
            top: 0;
            left: 0
        }

        .nc_btn_close {
            position: absolute;
            height: 20px;
            left: 500px;
            border-radius: 20px;
            padding: 10px 30px;
            background-color: #aaa;
            color: #fff;
            cursor: pointer;
            z-index: 10
        }

        .nc_btn_close:hover {
            background-color: #afafaf
        }

        .nc_hand {
            position: absolute;
            width: 68px;
            height: 53px;
            background-image: url("//g.alicdn.com/sd/ncpc/images/hand.png");
            z-index: 3
        }

        .nc_slide_bg {
            z-index: 3;
            font-size: 12px;
            text-align: center;
            color: #fff;
            line-height: 34px
        }

        .nc_voicebtn {
            position: absolute;
            padding: 0;
            right: -25px;
            font-size: 23px;
            color: #888;
            cursor: pointer;
            line-height: 34px
        }

        .nc_helpbtn {
            position: absolute;
            cursor: pointer;
            right: -95px;
            top: 4px;
            font-size: 12px;
            background-color: #ffb668;
            color: #fff;
            padding: 4px;
            border-radius: 2px;
            line-height: 18px;
            display: none
        }

        .nc_helpbtn:before {
            width: 0;
            height: 0;
            content: "";
            position: absolute;
            left: -2px;
            top: 6px;
            border-top: 4px solid transparent;
            border-bottom: 4px solid transparent;
            border-right: 4px solid #ffb668
        }

        .nc-container .errloading {
            border: #faf1d5 1px solid;
            text-indent: 3px;
            background-image: none;
            font-size: 12px;
            width: 290px;
            line-height: 20px;
            padding: 7px 5px 8px 5px;
            color: #ef9f06;
        }

        .nc-container .errloading a {
            color: #30a7fc
        }

        .nc_captcha_text .nc_err {
            float: left;
            text-indent: 0
        }

        .button_move {
            transition: left .5s;
            -moz-transition: left .5s;
            -webkit-transition: left .5s;
            -o-transition: left .5s
        }

        .bg_move {
            transition: width .5s;
            -moz-transition: width .5s;
            -webkit-transition: width .5s;
            -o-transition: width .5s
        }

        .nc_slide_box {
            position: absolute
        }

        .nc_captcha_text {
            height: auto;
            line-height: 20px;
            visibility: hidden;
            font-size: 12px;
            color: #999;
            font-weight: normal
        }

        .nc-container .nc_captcha_img_text {
            width: auto;
            height: auto;
            line-height: 20px;
            visibility: hidden;
            font-size: 12px;
            color: #999;
            font-weight: normal;
            display: none;
            padding: 0 0 10px 0;
            background-position: 0 0;
        }

        .nc-container .nc_captcha_img_text span.nc-lang-cnt {
            line-height: inherit
        }

        .nc-container .imgCaptcha .nc_captcha_img_text {
            width: auto
        }

        .nc_captcha_img_text {
            height: auto;
            line-height: 20px;
            visibility: hidden;
            font-size: 12px;
            color: #999;
            font-weight: normal;
            display: none;
            padding: 0 0 10px 3px;
            background-position: 0 0
        }

        .nc-container .nc_wrapper {
            width: auto
        }

        .nc_scale {
            width: auto;
            height: 34px;
            background: #e8e8e8;
            position: relative;
            margin: 0;
            padding: 0
        }

        .nc_scale.is_audio {
            margin-right: 25px
        }

        .nc-container .nc_scale div {
            height: auto
        }

        .nc-container .nc_scale ul {
            list-style: none
        }

        .nc-container .nc_scale .btn_slide {
            color: #737383;
            background-image: none;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale
        }

        .nc-container .nc_scale span {
            text-align: center;
            width: 40px;
            height: 32px;
            line-height: 32px;
            border: 1px solid #ccc;
            position: absolute;
            left: 0;
            cursor: move;
            background: #fff;
            z-index: 2
        }

        .nc-container .nc_scale span.nc-lang-cnt {
            *line-height: 34px;
            float: none;
            width: auto;
            height: auto;
            *height: 34px;
            border: none;
            position: static;
            cursor: inherit;
            background: none;
            z-index: 0;
            display: inline
        }

        .nc_slide_button {
            width: 40px;
            height: 32px;
            border: 1px solid #ccc;
            position: absolute;
            left: 0;
            cursor: move;
            background: #fff url("//g.alicdn.com/sd/ncpc/images/rt.png") no-repeat center;
            z-index: 2
        }

        @media screen and (-ms-high-contrast: active),(-ms-high-contrast: none) {
            .nc_scale span {
                height: 32px
            }
        }

        .nc-container .nc_scale .btnok {
            cursor: default;
            background: #fff url("//g.alicdn.com/sd/ncpc/images/yes.png") no-repeat center;
            z-index: 3
        }

        .nc-container .nc_scale .btnok2 {
            cursor: default;
            font-size: 20px;
            background: #fff url("//g.alicdn.com/sd/ncpc/images/no.png") no-repeat center;
            z-index: 3
        }

        .nc-container .nc_scale .btn_warn {
            cursor: default;
            color: #ff3f08;
            line-height: 34px;
            text-align: center;
            font-size: 20px;
            background: #fff;
            z-index: 3
        }

        .nc-container .clickCaptcha_text .btn_refresh {
            font-size: 20px
        }

        .nc-container .clickCaptcha_text .icon_close {
            line-height: 30px;
            margin-left: 8px;
            cursor: default;
            color: #ff3f08;
            font-size: 16px;
            float: left;
            margin-right: 2px;
            background: transparent;
            z-index: 3
        }

        .nc-container .nc_captcha_img_text .icon_close {
            cursor: default;
            color: #ff3f08;
            font-size: 16px;
            float: left;
            margin-right: 4px;
            background: transparent;
            z-index: 3;
            line-height: 18px
        }

        .nc-container .errloading .icon_warn {
            cursor: default;
            color: #ff3f08;
            font-size: 18px;
            float: left;
            background: transparent;
            z-index: 3
        }

        .nc-container .nc_scale .btn_ok {
            cursor: default;
            line-height: 34px;
            text-align: center;
            font-size: 20px;
            background: #fff;
            z-index: 3;
            color: #76c61d
        }

        .nc-container .nc_scale .nc_ok, .nc-container .nc_scale .nc_bg {
            background: #7ac23c
        }

        .nc-container .nc_scale .nc_bg {
            position: absolute;
            height: 100%;
            _height: 34px;
            left: 0;
            width: 10px
        }

        .nc-container .nc_scale div.redbar {
            background: #fc461e;
            opacity: .5;
            filter: alpha(opacity=50)
        }

        .nc-container .nc_scale div.orange {
            background: #f00
        }

        .nc-container .nc_scale .scale_text {
            width: 100%;
            height: 100%;
            text-align: center;
            position: absolute;
            z-index: 1;
            background: transparent;
            color: #9c9c9c;
            line-height: 34px;
            font-size: 12px;
            cursor: pointer
        }

        .nc-container .nc_scale .scale_text2 {
            text-align: left;
            color: #fff;
            font-size: 12px;
            text-indent: 10px
        }

        .nc-container .nc_scale .scale_text2 b {
            padding-left: 0;
            font-weight: normal
        }

        .nc-container .nc_scale .scale_text.scale_loading_text {
            text-align: center
        }

        .nc-container .nc_scale .imgCaptcha, .nc-container .nc_scale .clickCaptcha {
            display: none;
            overflow: hidden;
            border: 1px solid #ccc;
            background: #fff;
            z-index: 20000;
        }

        .nc-container .nc_scale .imgCaptcha p.error span, .nc-container .nc_scale .clickCaptcha p.error span {
            line-height: normal
        }

        .nc-container .nc_scale .imgCaptcha {
            height: auto
        }

        .nc-container .nc_scale .clickCaptcha {
            position: absolute;
            left: 0;
            top: 35px;
            height: 270px;
            background: #fff;
            display: none;
        }

        .nc-container .nc_scale .clickCaptcha p.error i {
            color: #ff3f08;
            font-style: normal
        }

        .nc-container .nc_scale .clickCaptcha div {
            position: static;
            clear: both;
            width: 100%;
            background: #fff;
            height: auto
        }

        .nc-container .nc_scale .clickCaptcha .clickCaptcha_text {
            height: 30px;
            line-height: 30px;
            font-size: 12px;
            color: #999;
        }

        .nc-container .nc_scale .clickCaptcha .clickCaptcha_text b {
            font-weight: normal
        }

        .nc_btn_2 {
            position: absolute;
            right: 0;
            top: 0;
            cursor: pointer;
            margin: 2px 9px 0 0
        }

        .nc_iconfont.nc_btn_2 {
            position: absolute;
            right: 0;
            top: 0;
            cursor: pointer
        }

        .nc_iconfont.nc_btn_1 {
            position: absolute;
            top: 10px;
            right: 5px
        }

        .nc_btn_1 {
            top: 10px;
            right: 10px
        }

        .scale_text i {
            font-style: normal;
            border: none;
            position: static;
            cursor: default;
            color: #fffc00;
            background: none;
            display: inline;
            width: 100%
        }

        .nc-container .clickCaptcha .clickCaptcha_img {
            margin: 0 auto;
            clear: both;
            position: relative;
        }

        .nc-container .clickCaptcha .clickCaptcha_img img {
            width: 230px;
            height: 230px;
            margin-left: 10px;
            margin-top: 5px
        }

        .nc-container .clickCaptcha .clickCaptcha_btn {
            margin: 10px 0 0 15px;
            position: relative;
            text-align: left;
        }

        .nc-container .clickCaptcha .clickCaptcha_btn img {
            cursor: pointer
        }

        .nc-container .imgCaptcha {
            position: absolute;
            left: 0;
            top: 35px;
            height: auto;
            padding-bottom: 15px;
            border: 1px solid #ccc;
            background: #fff;
        }

        .nc-container .imgCaptcha div {
            position: static;
            width: 90%;
            background-color: #fff
        }

        .nc-container .imgCaptcha, .nc-container .clickCaptcha {
            text-align: left;
        }

        .nc-container .imgCaptcha a, .nc-container .clickCaptcha a {
            color: #ff3f08
        }

        .nc-container .imgCaptcha .imgCaptcha_text {
            height: 42px;
            line-height: 42px;
            width: 120px;
            background: #fff;
            font-size: 14px;
            text-align: left;
            color: #747474;
            float: left;
            margin-left: 10px;
        }

        .nc-container .imgCaptcha .imgCaptcha_text input {
            margin-top: 5px;
            height: 30px;
            line-height: 30px;
            font-size: 14px;
            width: 90px;
            background: #fff
        }

        .nc-container .imgCaptcha .imgCaptcha_text input:focus {
            outline: none;
            color: #bbb
        }

        .nc-container .imgCaptcha .imgCaptcha_btn {
            margin: 0 0 0 12px;
            *margin-left: 0;
            clear: both;
            padding-top: 5px;
            width: 90%;
        }

        .nc-container .imgCaptcha .imgCaptcha_btn img {
            cursor: pointer
        }

        .nc-container .imgCaptcha .nc_scale_submit {
            margin: 0 auto;
            cursor: pointer;
            background-color: #fc461e;
            width: 120px;
            height: 32px;
            line-height: 32px;
            color: #fff;
            text-align: center
        }

        .nc-container .imgCaptcha .imgCaptcha_img {
            margin: 4px 0 0 100px;
            height: 40px;
            width: 130px;
            overflow: hidden;
            cursor: pointer;
        }

        .nc-container .imgCaptcha .imgCaptcha_img img {
            width: 130px
        }

        .nc-container .imgCaptcha .imgCaptcha_img input {
            border: solid 1px #ccc
        }

        .nc-lang-ar_MA, .nc-lang-ar_SA, .nc-lang-iw_HE, .nc-lang-iw_IL {
            text-align: right;
            *text-align: left;
        }

        .nc-lang-ar_MA .nc_scale .scale_text2, .nc-lang-ar_SA .nc_scale .scale_text2, .nc-lang-iw_HE .nc_scale .scale_text2, .nc-lang-iw_IL .nc_scale .scale_text2 {
            text-align: right;
        }

        .nc-lang-ar_MA .nc_scale .scale_text2 span, .nc-lang-ar_SA .nc_scale .scale_text2 span, .nc-lang-iw_HE .nc_scale .scale_text2 span, .nc-lang-iw_IL .nc_scale .scale_text2 span {
            *display: inline-block;
            padding: 0 56px 0 0
        }

        .nc-lang-ar_MA .nc_captcha_img_text, .nc-lang-ar_SA .nc_captcha_img_text, .nc-lang-iw_HE .nc_captcha_img_text, .nc-lang-iw_IL .nc_captcha_img_text {
            *text-align: right
        }

        .nc-lang-ar_MA span.nc-lang-cnt, .nc-lang-ar_SA span.nc-lang-cnt, .nc-lang-iw_HE span.nc-lang-cnt, .nc-lang-iw_IL span.nc-lang-cnt {
            text-align: right;
            direction: rtl
        }

        .nocaptcha span.nc-lang-cnt {
            float: none;
            height: auto;
            line-height: 30px
        }

        .nc-container {
            font-size: 12px;
            -ms-touch-action: none;
            touch-action: none;
        }

        .nc-container p {
            margin: 0;
            padding: 0;
            display: inline
        }

        .nc-container .scale_text.scale_text span[data-nc-lang="_startTEXT"] {
            display: inline-block;
            width: 100%
        }

        .nc-container .scale_text.scale_text.slidetounlock span[data-nc-lang="_startTEXT"] {
            background: -webkit-gradient(linear, left top, right top, color-stop(0, #4d4d4d), color-stop(.4, #4d4d4d), color-stop(.5, #fff), color-stop(.6, #4d4d4d), color-stop(1, #4d4d4d));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            -webkit-animation: slidetounlock 3s infinite;
            -webkit-text-size-adjust: none
        }

        .nc-container .nc_scale .nc-align-center.scale_text2 {
            text-align: center;
            text-indent: -42px
        }

        @-webkit-keyframes slidetounlock {
            0% {
                background-position: -200px 0
            }
            100% {
                background-position: 200px 0
            }
        }

        .nc-container.tb-login .clickCaptcha_text .icon_close {
            line-height: 30px;
            margin-left: 0;
            cursor: default;
            color: #ff3f08;
            font-size: 16px;
            float: left;
            margin-right: 0;
            background: transparent;
            z-index: 3
        }

        .nc-container.tb-login {
            position: relative;
            margin-top: 20px;
            display: none;
        }

        .nc-container.tb-login .nc_scale {
            width: auto;
        }

        .nc-container.tb-login .nc_scale .scale_text2 {
            text-indent: -42px;
            text-align: center;
        }

        .nc-container.tb-login .nc_scale .scale_text2 b {
            padding: 0
        }

        .nc-container.tb-login .nc_scale.nc_err div.scale_text {
            background: #f79977
        }

        .nc-container.tb-login .errloading {
            width: auto
        }

        .nc-container.tb-login .imgCaptcha, .nc-container.tb-login .clickCaptcha {
            width: 252px;
            *width: 256px;
            border: 0;
            *height: 300px;
            min-height: 300px;
            max-height: inherit !important;
        }

        .nc-container.tb-login .imgCaptcha div.login-msg.error, .nc-container.tb-login .clickCaptcha div.login-msg.error {
            background: #fff2f2
        }

        .nc-container.tb-login .imgCaptcha .captcha-error, .nc-container.tb-login .clickCaptcha .captcha-error {
            position: absolute;
            top: 0;
            width: 244px;
            height: auto;
            margin-bottom: 15px;
            padding: 3px;
            border: solid 1px #ff8e8e;
            line-height: 18px
        }

        .nc-container.tb-login .imgCaptcha .captcha-inform, .nc-container.tb-login .clickCaptcha .captcha-inform {
            font-size: 110%;
            margin-left: 20px
        }

        .nc-container.tb-login .imgCaptcha {
            padding-top: 66px;
        }

        .nc-container.tb-login .imgCaptcha .imgCaptcha_text {
            width: 100px;
            margin-left: 0;
        }

        .nc-container.tb-login .imgCaptcha .imgCaptcha_text input:focus {
            color: #000
        }

        .nc-container.tb-login .imgCaptcha .imgCaptcha_img {
            width: 120px;
            _width: 100px
        }

        .nc-container.tb-login .imgCaptcha .imgCaptcha_btn {
            width: 100%;
            margin-left: 0
        }

        .nc-container.tb-login .imgCaptcha .nc_scale_submit {
            width: 100%;
            height: 36px;
            line-height: 36px;
            margin-top: 20px;
            margin-left: 0;
            border-radius: 3px;
            font-size: 16px;
            font-family: Tahoma, Helvetica, Arial, sans-serif;
            background: #ff3f08
        }

        .nc-container.tb-login .clickCaptcha {
            padding-top: 40px;
        }

        .nc-container.tb-login .clickCaptcha .clickCaptcha_text {
            text-indent: 4px
        }

        .nc-container.tb-login .clickCaptcha .clickCaptcha_img img {
            margin-left: 10px
        }

        .nc-container.tb-login .nc_btn_1 {
            top: 77px;
            _top: 57px
        }

        .nc-container.tb-login .nc_btn_2 {
            top: 36px
        }

        .login .nc-container.tb-login .login-msg p, .login-box .nc-container.tb-login .login-msg p {
            width: auto;
            float: left
        }

        .nc-container.tb-login.nc-old-login {
            margin: 20px 0 10px 0;
            width: 250px;
        }

        .nc-container.tb-login.nc-old-login .nc_wrapper {
            width: 250px
        }

        .nc-container.tb-login.nc-old-login .imgCaptcha, .nc-container.tb-login.nc-old-login .clickCaptcha {
            width: 250px;
            min-height: auto;
        }

        .nc-container.tb-login.nc-old-login .imgCaptcha .captcha-error, .nc-container.tb-login.nc-old-login .clickCaptcha .captcha-error {
            line-height: 16px
        }

        .nc-container.tb-login.nc-old-login .clickCaptcha {
            padding-top: 28px;
        }

        .nc-container.tb-login.nc-old-login .clickCaptcha .clickCaptcha_img img {
            width: 200px;
            height: 200px
        }

        .nc-container.nc-old-login.show-click-captcha {
            padding-bottom: 60px
        }

        .nc-container.nc-old-login.show-click-captcha.nc-tm-min-fix {
            padding-bottom: 40px
        }

        .nc-container.tb-login.nc-tm-min-fix .clickCaptcha {
            max-height: 340px !important
        }

        #content .login-box .bd .nc-container.tb-login .login-msg {
            margin: 10px auto 15px auto
        }

        #content .login-box .bd .nc-container.tb-login.nc-old-login.show-click-captcha .login-msg {
            margin: 2px 0 0 0
        }

        .nc-container .nc_scale .nc-cc {
            display: none;
            position: absolute;
            left: 0;
            top: 35px;
            z-index: 20000;
            width: 360px;
            height: 570px;
            border: 1px solid #5eaef1;
            border-radius: 4px;
            background: #fff;
            font-size: 14px;
            line-height: 18px;
            color: #333;
        }

        .nc-container .nc_scale .nc-cc.nc-cc-status-loading .nc-cc-btn, .nc-container .nc_scale .nc-cc.nc-cc-status-verifing .nc-cc-btn {
            background-color: #90c1eb
        }

        .nc-container .nc_scale .nc-cc.nc-cc-status-loading .nc-cc-btn, .nc-container .nc_scale .nc-cc.nc-cc-status-verifing .nc-cc-btn, .nc-container .nc_scale .nc-cc.nc-cc-status-loading .nc-cc-refresh, .nc-container .nc_scale .nc-cc.nc-cc-status-verifing .nc-cc-refresh {
            cursor: default
        }

        .nc-container .nc_scale .nc-cc.nc-cc-status-loading .nc-cc-refresh, .nc-container .nc_scale .nc-cc.nc-cc-status-verifing .nc-cc-refresh {
            color: #999
        }

        .nc-container .nc_scale .nc-cc a {
            color: #3199f4;
            text-decoration: none
        }

        .nc-container .nc_scale .nc-cc .nc_iconfont {
            vertical-align: top;
            margin-right: 8px
        }

        .nc-container .nc_scale .nc-cc-btn {
            display: inline-block;
            *display: inline;
            *zoom: 1;
            vertical-align: top;
            letter-spacing: normal;
            word-spacing: normal;
            width: 100px;
            line-height: 30px;
            text-align: center;
            background-color: #3199f4;
            color: #fff;
            border-radius: 4px;
            cursor: pointer;
        }

        .nc-container .nc_scale .nc-cc-btn.nc-cc-disabled {
            background-color: #90c1eb;
            cursor: default
        }

        .nc-container .nc_scale .nc-cc-btn .nc-lang-cnt {
            line-height: 18px
        }

        .nc-container .nc_scale .nc-cc-header {
            padding: 20px 20px 19px 20px;
            height: 100px;
            background: #f4f8fa;
            border-bottom: 1px solid #ccc
        }

        .nc-container .nc_scale .nc-cc-img1-box {
            float: left;
            width: 100px;
            height: 100px;
            margin-right: 16px
        }

        .nc-container .nc_scale .nc-cc-txt {
            overflow: hidden;
            *zoom: 1;
            line-height: 30px;
            padding-top: 11px
        }

        .nc-container .nc_scale .nc-cc-img2-box {
            position: relative;
            padding: 0 20px;
            margin-top: 20px
        }

        .nc-container .nc_scale .nc-cc-items {
            position: absolute;
            left: 20px;
            _left: 0;
            top: 0;
            width: 320px;
            overflow: hidden
        }

        .nc-container .nc_scale .nc-cc-items-inner {
            margin-right: -20px
        }

        .nc-container .nc_scale .nc-cc-item {
            position: relative;
            display: inline-block;
            *display: inline;
            *zoom: 1;
            vertical-align: top;
            letter-spacing: normal;
            word-spacing: normal;
            margin-right: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            width: 98px;
            height: 98px;
            background: url("//gtms02.alicdn.com/tps/i2/T1ty2QFNNXXXc6Yc2r-1-1.gif");
        }

        .nc-container .nc_scale .nc-cc-item:hover {
            border-color: #3199f4
        }

        .nc-container .nc_scale .nc-cc-item .nc_iconfont {
            display: none;
            position: absolute;
            right: 0;
            bottom: 0;
            color: #3199f4;
            font-size: 22px;
            margin-right: 0
        }

        .nc-container .nc_scale .nc-cc-item.nc-cc-selected .nc_iconfont {
            display: block
        }

        .nc-container .nc_scale .nc-cc-tip {
            display: none;
            position: absolute;
            left: 0;
            bottom: 60px;
            width: 360px;
            line-height: 18px;
            text-align: center;
            color: #eb4f38;
        }

        .nc-container .nc_scale .nc-cc-tip span {
            line-height: normal
        }

        .nc-container .nc_scale .nc-cc-footer {
            position: absolute;
            left: 0;
            bottom: 20px;
            width: 360px;
            height: 30px;
            line-height: 30px;
            text-align: center;
        }

        .nc-container .nc_scale .nc-cc-footer .nc_iconfont {
            color: #c4cbd0
        }

        .nc-container .nc_scale .nc-cc-refresh, .nc-container .nc_scale .nc-cc-wait {
            position: absolute;
            left: 20px;
            top: 0;
            color: #3199f4;
            cursor: pointer
        }

        .nc-container .nc_scale .nc-cc-wait {
            display: none
        }

        .nc-container .nc_scale .nc-cc-cancel {
            position: absolute;
            right: 20px;
            top: 0;
            color: #3199f4;
            cursor: pointer;
        }

        .nc-container .nc_scale .nc-cc-cancel .nc_iconfont {
            position: relative;
            top: -1px
        }

        .nc-container .nc_scale .nc-cc-loading {
            margin-top: 247px;
            text-align: center;
            line-height: 14px
        }

        .nc-container .nc_scale .nc-cc-loading-img {
            display: inline-block;
            *display: inline;
            *zoom: 1;
            vertical-align: top;
            letter-spacing: normal;
            word-spacing: normal;
            vertical-align: middle;
            background: url("//img.alicdn.com/tps/TB1OdxsKpXXXXcgXFXXXXXXXXXX-14-14.gif") no-repeat;
            width: 14px;
            height: 14px;
            position: relative;
            top: -1px;
            margin-right: 9px
        }

        .nc-container .nc_scale .nc-cc-fail {
            position: absolute;
            left: 50%;
            top: 50%;
            width: 320px;
            height: 180px;
            margin-left: -160px;
            margin-top: -90px;
            background: #fff;
            border-radius: 4px
        }

        .nc-container .nc_scale .nc-cc-fail-inner {
            text-align: center;
            padding: 55px 10px 10px
        }

        .nc-container .nc_scale .nc-cc-fail-action {
            margin: 28px 0 18px;
        }

        .nc-container .nc_scale .nc-cc-fail-action a {
            display: inline-block;
            *display: inline;
            *zoom: 1;
            vertical-align: top;
            letter-spacing: normal;
            word-spacing: normal;
            line-height: 30px;
            margin-left: 16px
        }

        .nc-container .nc_scale .nc-cc-contact {
            text-align: right;
            color: #666;
            padding-right: 9px
        }

        .nc-container .nc_scale .nc-cc-mask {
            display: none;
            position: absolute;
            left: 0;
            top: 0;
            width: 360px;
            height: 570px;
            background: rgba(0, 0, 0, 0.3);
            filter: progid:DXImageTransform.Microsoft.gradient(enabled='true', startColorstr='#4C000000', endColorstr='#4C000000');
        }

        :root .nc-container .nc_scale .nc-cc-mask {
            -webkit-filter: none;
            filter: none
        }

        .nc-container .nc_scale .nc-cc-arrow-1, .nc-container .nc_scale .nc-cc-arrow-2 {
            display: none;
            position: absolute;
            top: 340px;
            border: solid transparent;
            height: 0;
            width: 0
        }

        .nc-container .nc_scale .nc-cc-arrow-1 {
            border-width: 16px;
            margin-top: -1px
        }

        .nc-container .nc_scale .nc-cc-arrow-2 {
            border-width: 15px
        }

        .nc-container .nc_scale .nc-cc-right .nc-cc-arrow-1, .nc-container .nc_scale .nc-cc-left .nc-cc-arrow-1, .nc-container .nc_scale .nc-cc-right .nc-cc-arrow-2, .nc-container .nc_scale .nc-cc-left .nc-cc-arrow-2 {
            display: block;
            _display: none
        }

        .nc-container .nc_scale .nc-cc-right {
            left: 180px;
            top: -339px;
        }

        .nc-container .nc_scale .nc-cc-right .nc-cc-arrow-1 {
            border-right-color: #5eaef1;
            left: -32px
        }

        .nc-container .nc_scale .nc-cc-right .nc-cc-arrow-2 {
            border-right-color: #fff;
            left: -30px
        }

        .nc-container .nc_scale .nc-cc-left {
            left: -335px;
            top: -339px;
        }

        .nc-container .nc_scale .nc-cc-left .nc-cc-arrow-1 {
            border-left-color: #5eaef1;
            right: -32px
        }

        .nc-container .nc_scale .nc-cc-left .nc-cc-arrow-2 {
            border-left-color: #fff;
            right: -30px
        }</style>
</head>

<link type="text/css" href="//g.alicdn.com/sd/ncpc/nc.css?t=1491535315537" rel="stylesheet"/>


<div id="_umfp" style="display:inline;width:1px;height:1px;overflow:hidden"></div>
<!-- site nav start -->
<script type="text/javascript" src="${ctx}/static/js/jquery-1.8.3.js"></script>
<!-- start Dplus -->
<script type="text/javascript">!function(a,b){if(!b.__SV){var c,d,e,f;window.dplus=b,b._i=[],b.init=function(a,c,d){function g(a,b){var c=b.split(".");2==c.length&&(a=a[c[0]],b=c[1]),a[b]=function(){a.push([b].concat(Array.prototype.slice.call(arguments,0)))}}var h=b;for("undefined"!=typeof d?h=b[d]=[]:d="dplus",h.people=h.people||[],h.toString=function(a){var b="dplus";return"dplus"!==d&&(b+="."+d),a||(b+=" (stub)"),b},h.people.toString=function(){return h.toString(1)+".people (stub)"},e="disable track track_links track_forms register unregister get_property identify clear set_config get_config get_distinct_id track_pageview register_once track_with_tag time_event people.set people.unset people.delete_user".split(" "),f=0;f<e.length;f++)g(h,e[f]);b._i.push([a,c,d])},b.__SV=1.1,c=a.createElement("script"),c.type="text/javascript",c.charset="utf-8",c.async=!0,c.src="https://w.cnzz.com/dplus.php?token=7415364c9dab5n09ff68",d=a.getElementsByTagName("script")[0],d.parentNode.insertBefore(c,d)}}(document,window.dplus||[]),dplus.init("7415364c9dab5n09ff68");
</script>
<!-- end Dplus -->
<!-- start Dplus Define -->
<script type="text/javascript">!function(a,b){var c,d;window.__dplusDefineCacheQueue=[],b.define=function(){window.__dplusDefineCacheQueue.push(Array.prototype.slice.call(arguments))},c=a.createElement("script"),c.type="text/javascript",c.charset="utf-8",c.async=!0,c.src="https://w.cnzz.com/dplus.define.php",d=a.getElementsByTagName("script")[0],d.parentNode.insertBefore(c,d)}(document,window.dplus);
</script>
<!-- end Dplus Define -->

<!-- site nav start -->
<div class="top-s">
    <div class="top-con">
        <ul class="fl">
            <li class="mini-logo">
                <a href="http://www.damai.cn/" title="大麦网">
                    <img src="//dui.dmcdn.cn/dm_2014/common/img/logo/mini-logo.png" alt="大麦网"/>
                </a>
            </li>
            <li id="headerUserinfo" class="dm-info">
                <span class="dm-name">HI , 欢迎访问大麦网</span>
                [
                <a class="dm-login" title="登录" href="#">登录</a>
                <a class="dm-register" title="注册" href="#">注册</a>
                ]
            </li>
            <li class="mydm o">
                <div class="dm-t mydm-t">
                    <a href="http://my.damai.cn/" target="_blank">我的大麦</a>
                    <b></b>
                </div>
                <div class="dm-c mydm-c">
                    <a href="http://my.damai.cn/account/myinfo.aspx"  target="_blank" title="个人信息">个人信息</a>
                    <a href="http://order.damai.cn/index.aspx" target="_blank" title="订单管理">订单管理</a>
                    <a href="https://coupon.damai.cn/coupon-web-damai/mycoupon/myCoupon" target="_blank" title="我的优惠券">我的优惠券</a>
                </div>
            </li>
        </ul>
    </div>
</div>
<!-- site nav end -->
<script type="text/javascript" src="//www.damai.cn/staticfile/Announcement/Announcement.js?937492837"></script>
<!-- site nav end -->
<div class="g-doc" ms-controller="main">
    <div ms-controller="component"></div>

    <div class="g-hd"></div>

    <div class="g-bd">

        <div class="m-panel m-panel-default" ms-validate="@validate">
            <img src="//dui.dmcdn.cn/dm_trade_system/multi/pc/common/images/shopping_two_flow.jpg" />
            <div class="hd">
                <h2 class="tt">购票人信息</h2>
            </div>
            <div class="bd">

                <!-- delivery start -->
                <xmp ms-widget="[{is: 'dmui-tab', $id: 'm-tab1'}, @tabs.tab1]">
                    <div class="hd" data-selectRealname="tab"  data-role="tabnav" slot="hd" data-spm="clickdistribution">
                        <div data-spm="item_0" class="itm" data-role="tabitm" data-delivery="3" ms-on-click="@tabs.tab1.onClick" ms-if="@isDelivery(3, @commodity_data.cityId)">
                            <i class="ico ico-idticket"></i>
                            <span class="txt">身份证电子票</span>
                        </div>
                        <div data-spm="item_1" class="itm" data-role="tabitm" data-delivery="4" ms-on-click="@tabs.tab1.onClick"  ms-if="@isDelivery(4, @commodity_data.cityId)">
                            <i class="ico ico-codeticket"></i>
                            <span class="txt">二维码电子票</span>
                        </div>
                        <div data-spm="item_2" class="itm" data-role="tabitm" data-delivery="1" ms-on-click="@tabs.tab1.onClick"  ms-if="@isDelivery(1, @commodity_data.cityId)">
                            <i class="ico ico-express"></i>
                            <span class="txt">快递配送</span>
                        </div>
                        <div data-spm="item_3" class="itm z-crt" data-role="tabitm" data-delivery="2" data-controls="pickup" ms-on-click="@tabs.tab1.onClick"  ms-if="@isDelivery(2, @commodity_data.pickCityId)">
                            <i class="ico ico-pickup"></i>
                            <span class="txt">大麦网自取</span>
                        </div>
                    </div>
                    <div class="bd"  data-selectRealname="content" slot="bd">
                        <div class="itm z-hide" data-role="tabpanel" ms-if="@isDelivery(3, @commodity_data.cityId)">
                            <!-- express start -->
                            <form ms-validate="@customValidateRules.idcardticket.validate" id="deliveryFormId_3" style="margin:0;padding:0;">
                                <div class="m-panel m-panel-gray">

                                    <div class="hd">
                                        <div class="lbox">
                                            <h2 class="tt">身份证电子票</h2>
                                        </div>
                                    </div>
                                    <div class="bd">
                                        <div class="m-form">
                                            <div class="itm">
                                                <label class="lab">用户姓名：</label>
                                                <div class="ipt">
                                                    <input class="u-ipt u-ipt-md" ms-duplex="@submit_data.consignee.userName" ms-rules="{required:true,minlength:2,maxlength:20,rules_username:true}" data-required-message="请填写完整的姓名" data-minlength-message="请填写完整的姓名" data-maxlength-message="姓名不能大于20字符" autocomplete="off"/>
                                                </div>
                                            </div>
                                            <div class="itm">
                                                <label class="lab">手机号码：</label>
                                                <div class="ipt">
                                                    <input class="u-ipt u-ipt-md" ms-duplex="@submit_data.consignee.mobilePhone" ms-rules="{required:true,rules_phone:true}" data-required-message="请输入完整的手机号" autocomplete="off"/>
                                                </div>
                                            </div>

                                            <div class="itm new-tips">
                                                <label class="lab">温馨提示：</label>
                                                <ul class="lab-s">
                                                    <li>购票后请下载大麦APP，到票夹查看入场方式</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <input type="submit" id="deliverySubmitBtn_3" style="display: none;" autocomplete="off"/>
                            </form>
                            <!-- express end -->
                        </div>
                        <div class="itm z-hide" data-role="tabpanel" ms-if="@isDelivery(4, @commodity_data.cityId)">
                            <!-- express start -->
                            <div class="m-panel m-panel-gray">
                                <div class="hd">
                                    <div class="lbox">
                                        <h2 class="tt">二维码电子票</h2>
                                    </div>
                                </div>
                                <div class="bd">
                                    <form ms-validate="@customValidateRules.smsticket.validate" id="deliveryFormId_4" style="margin:0;padding:0;">
                                        <div class="m-form">
                                            <div class="itm">
                                                <label class="lab">用户姓名：</label>
                                                <div class="ipt">
                                                    <input class="u-ipt u-ipt-md" ms-duplex="@submit_data.consignee.userName" ms-rules="{required:true,minlength:2,maxlength:20,rules_username:true}" data-required-message="请填写完整的姓名" data-minlength-message="请填写完整的姓名" data-maxlength-message="姓名不能大于20字符" autocomplete="off"/>
                                                </div>
                                            </div>
                                            <div class="itm">
                                                <label class="lab">手机号码：</label>
                                                <div class="ipt">
                                                    <input class="u-ipt u-ipt-md" ms-duplex="@submit_data.consignee.mobilePhone" ms-rules="{required:true,rules_phone:true}" data-required-message="请输入完整的手机号"  autocomplete="off"/>
                                                </div>
                                            </div>
                                            <div class="itm new-tips">
                                                <label class="lab">温馨提示：</label>
                                                <ul class="lab-s">
                                                    <li>下单完成后请下载大麦APP进入票夹查看电子票及使用说明</li>
                                                </ul>
                                            </div>
                                        </div>
                                        <input type="submit" id="deliverySubmitBtn_4" style="display: none;" autocomplete="off"/>
                                    </form>
                                </div>
                            </div>
                            <!-- express end -->
                        </div>
                        <div class="itm z-hide" data-role="tabpanel" ms-if="@isDelivery(1, @commodity_data.cityId)">
                            <!-- express start -->
                            <div class="m-panel m-panel-gray">
                                <div class="hd">
                                    <div class="lbox">
                                        <h2 class="tt">收货人信息</h2>
                                    </div>
                                </div>

                                <div class="bd">
                                    <div class="m-form" ms-if="@commodity_data.consignee.length == 0">
                                    </div>

                                    <div class="m-m-list">
                                        <ul>
                                            <li ms-for="($index,el) in @commodity_data.consignee | limitBy(@addressNum)" ms-on-click="@selectConsignee($index)" ms-on-click-2="@clickAddressForHide">
                                                <input name="_consignee" type="radio" value="{{@$index}}" ms-on-click="@selectConsignee($index)" ms-attr="{checked:@checkedIndex($index)}" autocomplete="off"/>
                                                <span ms-attr="{value:$index}" ms-on-click="@onTarget($index)">
                      配送地址：{{el.userName}}&nbsp; {{el.provinceName}} {{el.cityName}} {{el.districtName}} <span style="width:150px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;display: inline-block; vertical-align: bottom">{{el.address}}</span> &nbsp;{{el.mobilePhone}}</span>
                                            </li>
                                        </ul>
                                        <div class="arrow-box" ms-visible="@commodity_data.consignee.length>1">
                                            <!--更多地址
                                            <a href="javascript:;" class="more-add">更多地址</a>
                                            <div class="arrow-bottom">
                                                <b class="bottom"><i class="bottom-arrow1"></i><i class="bottom-arrow2"></i></b>
                                            </div>-->

                                            <!--收起地址-->
                                            <a href="javascript:;" class="more-add" ms-on-click="@clickFn">{{@addressName}}</a>
                                            <div class="arrow-top" ms-visible="@isClassShow">
                                                <b class="top"><i class="top-arrow1"></i><i class="top-arrow2"></i></b>
                                            </div>
                                            <div class="arrow-bottom" ms-visible="!@isClassShow">
                                                <b class="bottom"><i class="bottom-arrow1"></i><i class="bottom-arrow2"></i></b>
                                            </div>

                                        </div>
                                    </div>

                                    <div style="display:none;">
                                        <form ms-validate="@customValidateRules.delivery.validate" id="deliveryFormId_1" style="margin:0;padding:0;">
                                            <input type="hidden" ms-duplex="@submit_data.consignee.provinceId" ms-rules="{min:1}" ms-min-message="" />
                                            <input type="hidden" ms-duplex="@submit_data.consignee.provinceName" ms-rules="{rules_area:true}" />
                                            <input type="hidden" ms-duplex="@submit_data.consignee.cityId" ms-rules="{min:1}" ms-min-message="" />
                                            <input type="hidden" ms-duplex="@submit_data.consignee.cityName" ms-rules="{rules_area:true}" />
                                            <input type="hidden" ms-duplex="@submit_data.consignee.countyId" ms-rules="{min:1}" ms-min-message="" />
                                            <input type="hidden" ms-duplex="@submit_data.consignee.countyName" ms-rules="{rules_area:true}" />
                                            <input type="hidden" ms-duplex="@submit_data.consignee.districtId" ms-rules="{min:1}" ms-min-message="" />
                                            <input type="hidden" ms-duplex="@submit_data.consignee.districtName" ms-rules="{rules_area:true}" />
                                            <input type="hidden" ms-duplex="@submit_data.consignee.address" ms-rules="{rules_address:true,minlength:1,maxlength:150}" ms-minlength-message="" ms-maxlength-message="" />
                                            <input type="hidden" ms-duplex="@submit_data.consignee.mobilePhone" ms-rules="{rules_phone:true}" />
                                            <input type="hidden" ms-duplex="@submit_data.consignee.userName" ms-rules="{rules_username:true}" />
                                            <input type="hidden" ms-duplex="@submit_data.consignee.tel" ms-rules="{rules_tele:true}" />
                                            <input type="submit" id="deliverySubmitBtn_1" style="display: none;" />
                                        </form>
                                    </div>
                                </div>


                            </div>
                            <!-- express end -->
                        </div>
                        <div class="itm z-show" data-role="tabpanel" data-uuid="pickup" ms-if="@isDelivery(2, @commodity_data.pickCityId)">
                            <!-- pickup start -->
                            <div class="m-panel m-panel-gray">
                                <div class="hd">
                                    <div class="lbox">
                                        <h2 class="tt">取货信息</h2>
                                    </div>
                                </div>
                                <div class="bd" style="border-bottom:none;padding-bottom:5px;">
                                    <div class="m-form">
                                        <!--取货信息 begin-->
                                        <div class="itm">
                                            <label class="lab">取票城市：</label>
                                            <div class="ipt">
                                                <wbr ms-widget="[{is: 'dmui-select',$id: 'm-select444'},@dropDown.config]" />
                                            </div>
                                        </div>
                                        <div class="itm">
                                            <label class="lab">取票地址：</label>
                                            <div class="ipt">
                                                {{@dropDown.config.address}}
                                            </div>
                                        </div>
                                        <div class="itm">
                                            <label class="lab">营业时间：</label>
                                            <div class="ipt">
                                                {{@dropDown.config.businessHours}}
                                            </div>
                                        </div>
                                        <!--送货方式 end-->
                                    </div>
                                </div>
                                <div class="hd new-hd" style="padding:4px 20px;">
                                    <div class="lbox">
                                        <h2 class="tt">个人信息</h2>
                                    </div>
                                </div>
                                <div class="bd">
                                    <div class="m-form">
                                        <form class="self-form" ms-validate="@customValidateRules.self.validate" id="deliveryFormId_2" style="margin:0;padding:0;">
                                            <!--个人信息 begin @submit_data.consignee.userName-->
                                            <div class="itm">
                                                <label class="lab">用户姓名：</label>
                                                <div class="ipt">
                                                    <input class="u-ipt u-ipt-md" ms-duplex="@submit_data.consignee.userName" ms-rules="{required:true,minlength:2,maxlength:20,rules_username:true}" data-required-message="请填写完整的姓名" data-minlength-message="请填写完整的姓名" data-maxlength-message="姓名不能大于20字符" autocomplete="off"/>
                                                </div>
                                            </div>
                                            <div class="itm">
                                                <label class="lab">手机号码：</label>
                                                <div class="ipt">
                                                    <input class="u-ipt u-ipt-md" ms-duplex="@submit_data.consignee.mobilePhone" ms-rules="{required:true,rules_phone:true}" data-required-message="请输入完整的手机号" autocomplete="off"/>
                                                </div>
                                            </div>
                                            <!--送货方式 end-->
                                            <div class="itm new-tips">
                                                <label class="lab">温馨提示：</label>
                                                <ul class="lab-s">
                                                    <li>请持订票人身份证原件上门自取，代领需出示订票人及代领人身份证原件</li>
                                                </ul>
                                            </div>
                                            <input type="submit" id="deliverySubmitBtn_2" style="display:none;" autocomplete="off"/>
                                        </form>
                                    </div>
                                </div>

                            </div>
                            <!-- pickup end -->
                        </div>
                    </div>

                </xmp>
                <!-- delivery end -->
            </div>
        </div>

        <!--实名制 start-->
        <div class="m-panel m-panel-realname" :if="(@commodity_data.realName.licenseType == 1 || @submit_data.delivery == 3) && @commodity_data.realName.licenseType != 2">
            <div class="hd">
                <h2 class="tt">实名证件信息</h2>
            </div>
            <div class="bd">
                <p class="m-rea-t1">提示语：{{@commodity_data.realName.explanation}}</p>
                <div class="from-1" ms-if="!@modal.config_realname.name || !@modal.config_realname.type || !@modal.config_realname.cardId">
                    <label class="lab">购票人：</label>
                    <a class="u-btn u-btn-c2 u-btn-sm u-btn-rds" href="javascript:;" ms-on-click="@modal.config_realname.onOpen(@modal.config_realname,$event)">选择购票人</a>
                </div>
                <div class="from-1" ms-if="@modal.config_realname.name || @modal.config_realname.type || @modal.config_realname.cardId">
                    <div class="lst-1">
                        <label class="lab">购票人姓名：{{@modal.config_realname.name}} </label>
                        <label class="lab">证件类型：{{@modal.config_realname.type}} </label>
                        <label class="lab">证件号码：{{@modal.config_realname.cardId}}</label>
                    </div>
                    <a class="u-btn u-btn-c2 u-btn-sm u-btn-rds" href="javascript:;" ms-on-click="@modal.config_realname.onOpen(@modal.config_realname,$event)">重新选择购票人</a>
                </div>
            </div>
        </div>

        <!--实名制 end-->



        <!-- select pay method start -->
        <div class="m-panel m-panel-default">
            <div class="hd">
                <h2 class="tt">选择付款方式</h2>
            </div>
            <div class="bd">
                <div class="m-form" id="paymethod">
                    <div class="itm itm-2">
                        <label class="u-radio">
                            <input type="radio" value="1" ms-duplex="@submit_data.payment" name="paymethod" checked="checked" /><span class="txt">网上付款</span>
                        </label>
                    </div>
                    <div class="itm itm-2" ms-visible="@cashOnDelieryIsShow && @commodity_data.realName.licenseType != 2">
                        <label class="u-radio">
                            <input type="radio" value="3" ms-duplex="@submit_data.payment" name="paymethod" /><span class="txt">货到付款</span>
                        </label>
                    </div>
                </div>
            </div>
        </div>
        <!-- select pay method end -->
        <div class="m-panel m-panel-default">
            <div class="hd">
                <h2 class="tt">商品清单</h2>
            </div>

            <div ms-for="el in @details">
                <!--(非一票一证)普通座位展示start-->
                <div class="m-table-5" ms-if="el.licenseType == 0 || el.licenseType == 1">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <th scope="col" class="w1">商品名称</th>
                            <th scope="col" class="w2">座位号</th>
                            <th scope="col" class="w3">价格</th>
                            <th scope="col" class="w4">数量</th>
                            <th scope="col" class="w5">价格小计（元）</th>
                        </tr>
                    </table>
                    <!--非选座信息展示start-->
                    <table ms-for="el2 in el.subCommodityList" ms-if="@commodity_data.businessSubType != '1'"  width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td class="w1"><p><a target="_blank" ms-attr="{href:'//piao.damai.cn/'+el.projectId+'.html'}">{{el.projectName}}</a>{{el.showTime | date("yyyy-MM-dd EEE HH:mm")}}</p></td>
                            <td class="w2">
                                <p ms-if="el2.itemInfo == '' ">暂无座位信息</p>
                                <p>{{el2.stockInfo|replace(':',';')}}</p>
                            </td>
                            <td class="w3"><p>{{el2.price|number(2)}}</p></td>
                            <td class="w4"><p>{{el2.quantity}}</p></td>
                            <td class="w5"><p>{{el2.totalPrice|number(2)}}</p></td>
                        </tr>
                    </table>
                    <!--非选座信息展示end-->
                    <!--选座信息展示start-->
                    <table ms-for="el2 in el.subCommodityList" ms-if="@commodity_data.businessSubType == '1'" width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr  ms-if="el2.isCombo == 0 ">
                            <td class="w1"><p><a target="_blank" ms-attr="{href:'//piao.damai.cn/'+el.projectId+'.html'}">{{el.projectName}}</a>{{el.showTime | date("yyyy-MM-dd EEE HH:mm")}}</p></td>
                            <td class="w2">
                                <p ms-if="el2.itemInfo == '' ">暂无座位信息</p>
                                <p>{{el2.stockInfo|replace(':',';')}}</p>
                            </td>
                            <td class="w3"><p>{{el2.price|number(2)}}</p></td>
                            <td class="w4"><p>{{el2.quantity}}</p></td>
                            <td class="w5"><p>{{el2.totalPrice|number(2)}}</p></td>
                        </tr>
                        <tr ms-if="el2.isCombo == '1' "  ms-for="(index,el3) in el2.itemInfo" >
                            <td class="w1"><p><a target="_blank" ms-attr="{href:'//piao.damai.cn/'+el.projectId+'.html'}">{{el.projectName}}</a>{{el.showTime | date("yyyy-MM-dd EEE HH:mm")}}</p></td>
                            <td class="w2">
                                <p ms-if="el3.seatInfo == '' ">暂无座位信息</p>
                                <p>{{el3.seatInfo}}</p>
                            </td>
                            <td class="w3"><p>{{(el3.price/100) |number(2)}}</p></td>
                            <td class="w4"><p>1</p></td>
                            <td ms-if="(index%el2.comboQuantity) == 0 " class="w5" ms-attr="{rowspan:el2.comboQuantity}"><p>{{el2.price|number(2)}}</p></td>
                        </tr>
                    </table>
                    <table style="width: 100%;">
                        <tr>
                            <td><span class="new-hb">合计：¥ {{@submit_data.commodityAmount | number(2)}}</span><a href="javascript:void(0);" class="new-link">《退换货约定》</a></td>
                        </tr>
                    </table>
                    <!--选座信息展示end-->
                    <!-- ms-if="el2.isCombo == 1 && el2.quantity == 1" --></div>


                <!--(非一票一证)普通座位展示end-->

                <!--(一票一证)选座信息展示start-->

                <div class="m-table-3" ms-if="el.licenseType == 2 && @commodity_data.businessSubType == '1'">
                    <p  class="m-def-t1">提示：{{el.explanation==''?'该项目需要实名认证，下单请填写正确姓名和证件号码':el.explanation}}</p>
                    <div ms-for="(key1, el2) in el.subCommodityList">
                        <div ms-if="el2.isCombo == 1">
                            <div ms-for="el4 in el2.itemInfo">
                                <div ms-for="el3 in el4.itemInfo">
                                    <div class="bd">
                                        <div class="left">
                                            <h2 class="hd-1" >
                                                <span>购票人：</span>
                                                <a class="u-btn u-btn-c2 u-btn-sm u-btn-rds new-link-c" ms-on-click="@modal.config_selectedSeat.onOpen(el3.id)" href="javascript:void(0);" :if="!@modal.config_selectedSeat.selectViewers[el3.id]">选择购票人</a>
                                                <span class="selectViewer" ms-for="viewer in @modal.config_selectedSeat.selectViewers[el3.id]"><label>{{viewer.name}}</label><label style="margin-left:5px;">{{viewer.type}}</label><label style="margin-left:5px;">{{viewer.cardId}}</label></span>
                                                <a class="u-btn u-btn-c2 u-btn-sm u-btn-rds new-link-c" ms-on-click="@modal.config_selectedSeat.onOpen(el3.id)" href="javascript:void(0);" :if="@modal.config_selectedSeat.selectViewers[el3.id] && @modal.config_selectedSeat.selectViewers[el3.id].length > 0">重新选择</a>
                                                <input class="commodityViewerValue" type="hidden" value="">
                                            </h2>
                                            <input type="hidden" class="commodityProperties" ms-attr="{subCommodityIndex:key1,seatKey:el3.id}" >
                                            <dl>
                                                <dt class="th">
                                                    <ul>
                                                        <li class="w1">商品名称</li>
                                                        <li class="w2">座位号</li>
                                                    </ul>
                                                </dt>
                                                <dd class="td">
                                                    <ul>
                                                        <li class="w1"><a target="_blank" ms-attr="{href:'//piao.damai.cn/'+el.projectId+'.html'}">{{el.projectName}}</a>{{el.showTime | date("yyyy-MM-dd EEE HH:mm")}}</li>
                                                        <li class="w2">
                                                            <p ms-if="el2.itemInfo == '' ">暂无座位信息</p>
                                                            {{el3==''?'暂无座位信息':el3.seatInfo}}
                                                        </li>
                                                    </ul>
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                </div>

                                <div class="center">
                                    <dl>
                                        <dt>
                                            <li class="wfff"></li>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dt class="th">
                                            <ul>
                                                <li class="w3">价格小计（元）</li>
                                            </ul>
                                        </dt>
                                        <dd class="td">
                                            <ul>
                                                <li class="tt" :css="{lineHeight:@fnDetails(el2.comboQuantity),height:@fnDetails(el2.comboQuantity)}">{{el2.totalPrice|number(2)}}</li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>

                <div  class="m-table-4" ms-if="el.licenseType == 2 && @commodity_data.businessSubType == '1'">
                    <div ms-for="(key1,el2) in el.subCommodityList">
                        <div ms-if="el2.isCombo == 0">
                            <div ms-for="el3 in el2.itemInfo">
                                <h2 class="hd-1"><span>购票人：</span>
                                    <a class="u-btn u-btn-c2 u-btn-sm u-btn-rds new-link-c" ms-on-click="@modal.config_selectedSeat.onOpen(el3.id)" href="javascript:void(0);" :if="!@modal.config_selectedSeat.selectViewers[el3.id] || !@modal.config_selectedSeat.selectViewers[el3.id].length">选择购票人</a>
                                    <span class="selectViewer" ms-for="(key,viewer) in @modal.config_selectedSeat.selectViewers[el3.id]"><label>{{viewer.name}}</label><label style="margin-left:5px;">{{viewer.type}}</label><label style="margin-left:5px;">{{viewer.cardId}}</label></span>
                                    <a class="u-btn u-btn-c2 u-btn-sm u-btn-rds new-link-c" ms-on-click="@modal.config_selectedSeat.onOpen(el3.id)" href="javascript:void(0);" :if="@modal.config_selectedSeat.selectViewers[el3.id] && @modal.config_selectedSeat.selectViewers[el3.id].length > 0">重新选择</a>
                                    <input class="commodityViewerValue" type="hidden" value="">
                                </h2>
                                <input type="hidden" class="commodityProperties" ms-attr="{subCommodityIndex:key1,seatKey:el3.id}" >
                                <ul>

                                    <dl>

                                        <dt class="th">
                                            <ul>
                                                <li class="w1">商品名称</li>
                                                <li class="w2">座位号</li>
                                                <li class="w3">价格小计（元）</li>
                                            </ul>
                                        </dt>
                                        <dd class="td">
                                            <ul>
                                                <li class="w1"><a target="_blank" ms-attr="{href:'//piao.damai.cn/'+el.projectId+'.html'}">{{el.projectName}}</a>{{el.showTime | date("yyyy-MM-dd EEE HH:mm")}}</li>
                                                <li class="w2">{{el3==''?'暂无座位信息':el3.seatInfo}}</li>
                                                <li class="w3">{{el2.totalPrice|number(2)}}</li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <div  class="m-table-4" ms-if="el.licenseType == 2 && @commodity_data.businessSubType == '1'">
                    <div class="new-dl" style="width: 100%;">
                        <span class="new-hb">合计：¥ {{@submit_data.commodityAmount | number(2)}}</span><a href="javascript:void(0);" class="new-link">《退换货约定》</a>
                    </div>
                </div>

                <!--(一票一证)立即购买信息展示start-->
                <div class="m-table-3" ms-if="el.licenseType == 2 && @commodity_data.businessSubType != '1'">
                    <p class="m-def-t1">提示：{{el.explanation==''?'该项目需要实名认证，下单请填写正确姓名和证件号码':el.explanation}}</p>
                    <div ms-for="(key1, el2) in el.subCommodityList">
                        <div ms-if="el2.isCombo == 1">
                            <!--<div ms-for="el4 in el2.itemInfo">-->
                            <!--<div ms-for="(key,el3) in el4.itemInfo">-->
                            <div class="bd">
                                <div class="m-peopel">
                                    <h2 class="hd-1" >
                                        <span>购票人：</span>
                                        <a class="u-btn u-btn-c2 u-btn-sm u-btn-rds new-link-c" ms-on-click="@modal.config_fastbuy.onOpen(el2.comboQuantity * el2.quantity,el2.productId)" href="javascript:void(0);" :if="!@modal.config_fastbuy.arr[el2.productId] || !@modal.config_fastbuy.arr[el2.productId].length">选择购票人</a>
                                        <a class="u-btn u-btn-c2 u-btn-sm u-btn-rds new-link-c" ms-on-click="@modal.config_fastbuy.onOpen(el2.comboQuantity * el2.quantity,el2.productId)" href="javascript:void(0);" :if="@modal.config_fastbuy.arr[el2.productId] && @modal.config_fastbuy.arr[el2.productId].length > 0">重新选择</a>
                                        <!--!@modal.config_fastbuy.arr[key].length-->
                                        <span class="selectViewer"  :if="!@modal.config_fastbuy.arr[el2.productId] || !@modal.config_fastbuy.arr[el2.productId].length"><label>你选购的{{el2.productName}}元票价，本次需要选择{{el2.comboQuantity * el2.quantity}}位常用购票人</label><label style="margin-left:5px;"></label><label style="margin-left:5px;"></label></span>
                                        <a ms-on-click="@modal.config_fastbuy.onOpen(@modal.config_fastbuy,$event)" isupdate="true" href="javascript:void(0);" style="display: none;">修改</a>
                                        <a ms-on-click="@modal.config5.onOpen(@modal.config5,$event)" href="javascript:void(0);" style="display: none;">删除</a>
                                        <input class="commodityViewerValue" type="hidden" value="">
                                    </h2>
                                    <div class="lst-1">
                                        <div class="lstm" >
                                            <div class="lst" ms-for="(key,viewer) in @modal.config_fastbuy.arr[el2.productId]">
                                                <label class="lab">{{key + 1}}.{{viewer.name}}</label>
                                                <label class="txt">{{viewer.type}}：{{viewer.cardId}}</label>
                                            </div>
                                        </div>

                                    </div>
                                    <span ></span>
                                    <input type="hidden" class="commodityProperties" ms-attr="{subCommodityIndex:key1,seatKey:el2.productId}" >

                                    <dl>
                                        <dt class="th">
                                            <ul>
                                                <li class="w1">商品名称</li>
                                                <li class="w2">
                                                    <dl>
                                                        <dd style="border:1px solid #fff">价格</dd>
                                                        <dd>数量</dd>
                                                    </dl>
                                                </li>
                                                <li class="w3">价格小计（元）</li>
                                            </ul>
                                        </dt>
                                        <dd class="td">
                                            <ul>
                                                <li class="w1"><a target="_blank" ms-attr="{href:'//piao.damai.cn/'+el.projectId+'.html'}">{{el.projectName}}</a>{{el.showTime | date("yyyy-MM-dd EEE HH:mm")}}</li>
                                                <li class="w2">
                                                    <dl>
                                                        <dd style="border:1px solid #fff">{{el2.price | number(2)}}</dd>
                                                        <dd>{{el2.quantity}}套</dd>
                                                    </dl>
                                                </li>
                                                <li class="tt" style="height:28px; line-height:28px;" ms-html="el2.price * el2.quantity | number(2)"></li>
                                            </ul>
                                        </dd>
                                    </dl>

                                </div>
                                <!--</div>-->
                                <!--</div>-->
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ms-if="el2.isCombo == 1 && el2.quantity >= 2" -->
                <div  class="m-table-3" ms-if="el.licenseType == 2 && @commodity_data.businessSubType != '1'">
                    <div ms-for="(key1,el2) in el.subCommodityList">
                        <div ms-if="el2.isCombo == 0">
                            <!--  <div ms-for="el3 in el2.itemInfo">-->
                            <h2 class="hd-1"><span>购票人：</span>
                                <a class="u-btn u-btn-c2 u-btn-sm u-btn-rds new-link-c" ms-on-click="@modal.config_fastbuy.onOpen(el2.quantity,el2.productId)" href="javascript:void(0);" :if="!@modal.config_fastbuy.arr[el2.productId] || !@modal.config_fastbuy.arr[el2.productId].length">选择购票人</a>
                                <a class="u-btn u-btn-c2 u-btn-sm u-btn-rds new-link-c" ms-on-click="@modal.config_fastbuy.onOpen(el2.quantity,el2.productId)" href="javascript:void(0);" :if="@modal.config_fastbuy.arr[el2.productId] && @modal.config_fastbuy.arr[el2.productId].length > 0">重新选择</a>
                                <span class="selectViewer"><label></label><label style="margin-left:5px;"></label><label style="margin-left:5px;"></label></span>
                                <span class="selectViewer"  :if="!@modal.config_fastbuy.arr[el2.productId] || !@modal.config_fastbuy.arr[el2.productId].length"><label>你选购的{{el2.productName}}元票价，本次需要选择{{el2.quantity}}位常用购票人</label><label style="margin-left:5px;"></label><label style="margin-left:5px;"></label></span>
                                <a ms-on-click="@modal.config_fastbuy.onOpen(el2.quantity,el2.productId)" isupdate="true" href="javascript:void(0);" style="display: none;">修改</a>
                                <a ms-on-click="@modal.config5.onOpen(@modal.config5,$event)" href="javascript:void(0);" style="display: none;">删除</a>
                                <input class="commodityViewerValue" type="hidden" value="">
                            </h2>
                            <div class="lst-1">
                                <div class="lstm" >
                                    <div class="lst" ms-for="(key,viewer) in @modal.config_fastbuy.arr[el2.productId]">
                                        <label class="lab">{{key + 1}}.{{viewer.name}}</label>
                                        <label class="txt">{{viewer.type}}：{{viewer.cardId}}</label>
                                    </div>
                                </div>

                            </div>
                            <input type="hidden" class="commodityProperties" ms-attr="{subCommodityIndex:key1,seatKey:el2.productId}" >
                            <ul>

                                <dl>

                                    <dt class="th">
                                        <ul>
                                            <li class="w1">商品名称</li>
                                            <li class="w2">
                                                <dl>
                                                    <dd style="border:1px solid #fff">价格</dd>
                                                    <dd>数量</dd>
                                                </dl>
                                            </li>
                                            <li class="w3">价格小计（元）</li>
                                        </ul>
                                    </dt>
                                    <dd class="td">
                                        <ul>
                                            <li class="w1"><a target="_blank" ms-attr="{href:'//piao.damai.cn/'+el.projectId+'.html'}">{{el.projectName}}</a>{{el.showTime | date("yyyy-MM-dd EEE HH:mm")}}</li>
                                            <li class="w2">
                                                <dl>
                                                    <dd style="border:1px solid #fff">{{el2.price | number(2)}}</dd>
                                                    <dd>{{el2.quantity}}张</dd>
                                                </dl>
                                            </li>
                                            <li class="w3">{{el2.totalPrice*el2.quantity|number(2)}}</li>
                                        </ul>
                                    </dd>
                                </dl>
                            </ul>
                        </div>
                        <!-- </div>-->
                    </div>
                </div>

                <div  class="m-table-3" ms-if="el.licenseType == 2 && @commodity_data.businessSubType != '1'">
                    <div class="new-dl" style="width: 100%;">
                        <span class="new-hb">合计：¥ {{@submit_data.commodityAmount | number(2)}}</span><a href="javascript:void(0);" class="new-link">《退换货约定》</a>
                    </div>
                </div>

            </div>
        </div>

        <!--(一票一证)立即购买信息展示end-->
        <div class="m-panel m-panel-default privileges" ms-visible="@isPrivilege(@submit_data.sendCityId, 0) && @submit_data.temp.isPrivileges">
            <div class="hd">
                <h2 class="tt">选择订单优惠</h2>
            </div>
            <div class="bd" data-role="tabpanel">
                <!-- select coupon start -->
                <xmp ms-widget="[{is: 'dmui-tab', $id: 'm-tab2'}, @tabs.tab2]">
                    <div class="hd" data-role="tabnav" slot="hd">
                        <div class="itm tabitm" data-ptype="2" data-role="tabitm" ms-visible="@isPrivilege(@submit_data.sendCityId, 2)" ms-click="@isPrivilegeFn(1)">
                            优惠活动
                        </div>
                        <div class="itm tabitm" data-ptype="1" data-role="tabitm" ms-visible="@isPrivilege(@submit_data.sendCityId, 1)" ms-click="@isPrivilegeFn(2)">
                            优惠券
                        </div>
                        <div class="itm tabitm" data-ptype="3" data-role="tabitm" ms-visible="@isPrivilege(@submit_data.sendCityId, 3)" ms-click="@isPrivilegeFn(3)">
                            大麦积分
                        </div>
                    </div>
                    <div class="bd" slot="bd">
                        <div class="loading-box" id="waitTips" style="display: none;">加载中...</div>
                        <div class="itm z-show" data-role="tabpanel" :visible="@isPrivilege(@submit_data.sendCityId,2) && @commodity_data.privilegeIndex == 1">
                            <div class="m-l-stretch" data-role="tab" >
                                <ul id="ul-tabitms" class="lst" data-role="tabnav">
                                    <!--ms-for: ($index, el) in @getPrivileges(@submit_data.sendCityId, 2)-->
                                    <li class="itm" data-role="tabitms" data-crt="newAdd" ms-attr="{privilege:$index, privilegeid:el.privilegeId}" ms-on-click="@tabs.tab2.onPrivileges($event, $index, @submit_data.sendCityId, 2)">
                                        <a class="txt" href="javascript:;">
                                            <p class="l-t">{{el.privilegeName}}</p>
                                            <!--<p class="l-t">{{el.describe}}</p>-->
                                        </a>
                                        <a class="correct" href="javascript:;"></a>
                                    </li>
                                    <!--ms-for-end:-->
                                </ul>
                            </div>
                            <p class="hint" ms-visible="@submit_data.temp.isShoww"> 温馨提示：您使用此优惠活动，订单可以享受相应优惠折扣，共为您节省<span class="c10">￥{{@submit_data.temp.privilegeAmount | number(2)}}元</span> </p>
                        </div>
                        <div class="itm z-hide" data-role="tabpanel" :visible="@isPrivilege(@submit_data.sendCityId,1) && @commodity_data.privilegeIndex == 2">
                            <div class="m-form m-form-2">
                                <div class="itm">
                                    <div class="ipt">
                                        <wbr ms-widget="[{is: 'dmui-select',$id: 'm-select4'}, @dropDown.config4]" />
                                    </div>
                                </div>
                                <div class="itm">
                                    <h4 class="tt">添加新优惠券</h4>
                                    <div class="ipt">
                                        <input type="text" class="u-ipt u-ipt-lg" placeholder="请输入16位的优惠券验证码" maxlength="16" ms-duplex="@commodity_data.coupon.couponNo"/>
                                        <a class="u-btn u-btn-c2 u-btn-sm u-btn-rds" href="javascript:;" ms-on-click="@addCoupon">使用</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="itm z-hide" data-role="tabpanel" :visible="@isPrivilege(@submit_data.sendCityId,3) && @commodity_data.privilegeIndex == 3">
                            <!--ms-for: ($index, el) in @getPrivileges(@submit_data.sendCityId, 3)-->
                            <div class="m-l-score" ms-if="el.privilegeAmount > 0" >
                                <p class="l-t">账户中共有{{@commodity_data.integral.totalIntegral}}积分</p>
                                <p class="l-t u-checkbox"><input type="checkbox" ms-duplex-checked="@commodity_data.integral.isSupport">本次可使用{{el.privilegeAmount*100 | number(0)}}积分，抵扣￥{{el.privilegeAmount | number(2)}}元</p>

                            </div>
                            <!--ms-for-end:-->
                        </div>
                    </div>

                </xmp>
                <!-- select coupon end -->
            </div>
        </div>
        <!-- select pay method start -->
        <div class="m-panel m-panel-default">
            <div class="hd">
                <h2 class="tt">我要开发票</h2>
            </div>
            <div class="bd">
                <div class="m-discount">
                    <div class="hd">
                        <!-- choose discount method start -->
                        <div class="m-collapse m-collapse-1" data-role="tablist">

                            <div class="hd" data-toggle="collapse" data-parent=".m-collapse" data-expanded="false" ms-if="@isInvoice()">
                                <i class="ico ico-expanded"></i>
                                <span class="txt">我要开发票</span>
                            </div>
                            <div class="bd" data-role="tabpanel" ms-if="@isInvoice()">
                                <!-- make bill start -->
                                <form id="validateInvoiceAddress" ms-validate="@validateInvoiceAddress" style="margin:0;padding:0;">
                                    <div class="m-panel m-panel-invoice">
                                        <div class="bd">
                                            <div class="m-form m-form-2">
                                                <div class="itm itm-1">
                                                    <div class="ipt"><span class="txt-danger">请在付款完成后下载大麦APP进入订单详情页申请开具</span></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </form>
                                <!-- make bill end -->
                            </div>
                            <div class="hd" data-toggle="collapse" data-parent=".m-collapse" data-expanded="false">
                                <i class="ico ico-expanded"></i>
                                <span class="txt">给大麦留言</span>
                            </div>
                            <div class="bd" data-role="tabpanel">
                                <form ms-validate="@customValidateRules.message.validate" id="messageForm" style="margin:0;padding:0;">
                                    <div class="bd" data-role="tabpanel">
                                        <textarea cols="155" rows="3" class="u-ipt u-ipt-lg-text" ms-duplex="@submit_data.note" ms-rules="{rules_message:true,maxlength:100}" data-maxlength-message="订单备注不能大于100字符"></textarea>
                                    </div>
                                    <input type="submit" id="messagesubmitBtn" style="display: none;" />
                                </form>
                            </div>
                        </div>
                        <!-- choose discount method end -->
                    </div>
                    <div class="bd">
                        <div class="row" ms-if="@commodity_data.insurance.isSupport && @commodity_data.insurance.isSupportInitValue">
                            <label class="u-checkbox"><input type="checkbox" ms-duplex-checked="@commodity_data.insurance.isShow"/><span class="txt">购买“安心订票保险”，本单保费金额：{{@commodity_data.insurance.amount | number(2)}} 元</span></label>
                        </div>
                        <div class="row" ms-if="@commodity_data.insurance.isSupport && @commodity_data.insurance.isSupportInitValue">
                            <p class="txt">查看<a href="//help.damai.cn/damai/contents/1870/5672.html" target="_blank" class="txt-primary">保险服务说明</a>和<a href="//help.damai.cn/damai/contents/1870/5673.html" target="_blank" class="txt-primary">《安心订票保险条款》</a></p>
                        </div>
                        <div class="row" ms-if="@commodity_data.insurance.isSupport && @commodity_data.insurance.isSupportInitValue">
                            <p class="txt">购买保险，请填写真实姓名</p>
                        </div>
                        <div class="row">
                            <p class="txt">商品金额：<span class="cell">¥ {{@submit_data.commodityAmount | number(2)}}</span></p>
                        </div>
                        <div class="row" ms-if="@submit_data.freight.isSupport">
                            <p class="txt">商品运费：<span class="cell"><span>+</span>¥ {{@submit_data.freightAmount | number(2)}}</span></p>
                        </div>
                        <div class="row" ms-if="@commodity_data.insurance.isSupport && @commodity_data.insurance.isShow">
                            <p class="txt">商品保费：<span class="cell"><span>+</span>¥ {{@commodity_data.insurance.amount | number(2)}}</span></p>
                        </div>
                        <div class="row" ms-if="@submit_data.temp.isSupportPrivilege">
                            <p class="txt">优惠金额：<span class="cell"><span>-</span>¥ {{@submit_data.privilegeAmount | number(2)}}</span></p>
                        </div>
                    </div>
                    <div class="ft">
                        <div class="row">
                            <p class="txt txt-total">待支付总额：<span class="txt-danger">¥ {{@submit_data.totalAmount | number(2)}}</span></p>
                        </div>
                        <div class="row">
                            <label class="u-checkbox"><input type="checkbox" value="1" ms-duplex="@confirmButton.selected" ms-on-click="@confirmButton.onClick" /><span class="txt">我已阅读并同意
                                <a href="https://x.damai.cn/markets/app/agreements" target="_blank" class="txt-primary">《大麦网订票服务条款》</a></span>
                            </label>
                        </div>
                        <div class="row">
                            <p class="txt">同意“票品为不记名凭证，请您妥善保管，遗失不补”</p>
                        </div>
                        <div class="row">
                            <button id="orderConfirmSubmit"  class="c_submit u-btn u-btn-c2 u-btn-rds u-btn-lg" :class="@confirmButton.isClass" ms-on-click="@validateFormParams">同意以上协议并提交订单</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- select pay method end -->

        <!--验证码弹窗 begin wjm-->
        <xmp :widget="[{ is: 'dmui-modal', $id: 'modal-code' }, @modal.config1]" >
            <!--验证码 begin-->
            <div class="hd" slot='hd'>
                <h2 class="tt"><span class="utt">验证码</span></h2>
            </div>

            <div class="bd" slot='bd'>
                <div class="code-cnt">
                    <!--  <p class="code-form">
                          <img class="code-ewm code-ewm-src" ms-attr="{src:'/multi/ajaxhandler/getVerifyCode?tradePlatform='+@commodity_data.commodityVo.tradePlatform+'&tradeSubPlatform='+@commodity_data.commodityVo.tradeSubPlatform+'&tradeThreePlatfrom='+@commodity_data.commodityVo.tradeThreePlatfrom+'&businessType='+@commodity_data.businessType+'&businessSubType='+@commodity_data.businessSubType}"/>
                          <a class="code-link" href="javascript:;" ms-on-click="@verifyCodeModal.codeEwmSrcCk()">换一个</a>
                          <span class="code-utt">(不区分大小写)</span>
                      </p>
                      <p class="code-form">
                          <input class="code-ewm" type="text" placeholder="输入图形验证码" ms-duplex="@verifyCodeModal.code" autocomplete="off"/>
                          <span class="code-link" ms-visible="@verifyCodeModal.isShowErrMsg">{{@verifyCodeModal.errorMsg}}</span>
                      </p>-->

                    <p class="code-form">
                    <div class="ln">
                        <div id="dom_id"></div>
                    </div>

                    <input type='hidden' id='csessionid' name='csessionid' ms-duplex="@verifyCodeModal.csessionid"/>
                    <input type='hidden' id='sig' name='sig' ms-duplex="@verifyCodeModal.sig"/>
                    <input type='hidden' id='token' name='token' ms-duplex="@verifyCodeModal.token"/>
                    <input type='hidden' id='scene' name='scene' ms-duplex="@verifyCodeModal.scene"/>
                    </p>

                    <p class="code-form">
                        <span class="code-link verifyAliCode" ms-visible="@verifyCodeModal.isShowErrMsg">{{@verifyCodeModal.errorMsg}}</span>
                    </p>

                    <p class="code-form">
                        <button type="button" class="u-btn-c2 u-btn-md" ms-on-click="@verifyCodeModal.onConfirm()">提交</button>
                        <button type="button" class="u-btn-c3 u-btn-md" ms-on-click="@verifyCodeModal.onCancel()">取消</button>
                    </p>
                </div>
                <a href="javascript:;" class="close" ms-on-click="@verifyCodeModal.onCancel()"></a>
            </div>
            <!--验证码 end-->
        </xmp>
        <!--验证码弹窗 end-->

        <!--验证码同盾弹窗 begin wjm-->
        <xmp :widget="[{ is: 'dmui-modal', $id: 'modal-code1' }, @modal.config_shield]" >
            <!--验证码 begin-->
            <div class="hd" slot='hd'>
                <h2 class="tt_td"></h2>
            </div>

            <div class="bd" slot='bd'>
                <div class="code-cnt">
                    <p class="code-td">提示：您的账号存在安全风险，输入验证码继续下单购票</p>
                    <!--
                    <p class="code-form">
                        <img class="code-ewm code-td-src" ms-attr="{src:'/multi/ajaxhandler/getVerifyCode?tradePlatform='+@commodity_data.commodityVo.tradePlatform+'&tradeSubPlatform='+@commodity_data.commodityVo.tradeSubPlatform+'&tradeThreePlatfrom='+@commodity_data.commodityVo.tradeThreePlatfrom+'&businessType='+@commodity_data.businessType+'&businessSubType='+@commodity_data.businessSubType}"/>
                        <a class="code-link" href="javascript:;" ms-on-click="@tongdunModal.codeTdSrcCk()">换一个</a>
                        <span class="code-utt">(不区分大小写)</span>
                    </p>
                    <p class="code-form">
                        <input class="code-ewm" type="text" placeholder="输入图形验证码" ms-duplex="@tongdunModal.code" autocomplete="off"/>
                        <span class="code-link">{{@tongdunModal.errorMsg}}</span>
                    </p>-->
                    <p class="code-form">
                    <div class="ln">
                        <div id="dom_id_td"></div>
                    </div>

                    <input type='hidden' id='csessionid_td' name='csessionid' ms-duplex="@tongdunModal.csessionid"/>
                    <input type='hidden' id='sig_td' name='sig' ms-duplex="@tongdunModal.sig"/>
                    <input type='hidden' id='token_td' name='token' ms-duplex="@tongdunModal.token"/>
                    <input type='hidden' id='scene_td' name='scene' ms-duplex="@tongdunModal.scene"/>
                    </p>
                    <p class="code-form">
                        <span class="code-link tongdunAliCode" ms-visible="@tongdunModal.isShowErrMsg">{{@tongdunModal.errorMsg}}</span>
                    </p>

                    <p class="code-form">
                        <button type="button" class="u-btn-c2 u-btn-md" ms-on-click="@tongdunModal.onConfirm()">提交</button>
                        <button type="button" class="u-btn-c3 u-btn-md" ms-on-click="@tongdunModal.onCancel()">取消</button>
                    </p>
                </div>
                <a href="javascript:;" class="close" ms-on-click="@tongdunModal.onCancel()"></a>
            </div>
            <!--验证码 end-->
        </xmp>
        <!--验证码同盾弹窗 end-->



        <!-- loding 弹层 start -->
        <xmp :widget="[{ is: 'dmui-modal', $id: 'modal-loading' }, @modal.configLoading]" >
            <!--loading begin-->
            <div class="m-loading_globle" slot='hd'>
                <p style="color:#fff"></p>
            </div>
            <div slot='bd'></div>
            <!--验证码 end-->
        </xmp>
        <!-- loding 弹层 end -->



        <!--发票配送地址 begin wjm-->
        <xmp :widget="[{ is: 'dmui-modal', $id: 'modal-invoice' }, @modal.config2]" >
            <!--配送地址 begin-->

            <div class="hd" slot="hd">
                <h2 class="tt"><span class="utt">发票配送弹层</span></h2>
            </div>

            <div class="bd" slot="bd">
                <div class="invoice-cnt">

                    <div class="itm">
                        <label class="lab">所在地区：</label>
                        <div class="ipt" data-eee="eee">
                            <div class="u-ipt u-ipt-md m-m-newinp" ms-on-click="@modal.config2.onClick($event)" ms-on-click-8="@modal.config3.onEmit($event)">
                                {{ @modal.config2.province }}
                                {{ @modal.config2.city }}
                                {{ @modal.config2.areas }}
                                <div class="arrow-bottom">
                                    <b class="bottom"><i class="bottom-arrow1"></i><i class="bottom-arrow2"></i></b>
                                </div>
                            </div>

                            <div class="m-dropdown-address" ms-visible="@modal.config2.isShows">
                                <div class="inp-box" data-role="tab">
                                    <ul class="inp-hd" data-role="tabnav" slot="hd">
                                        <li class="z-crt" data-role="tabitm" data-controls="aaa" data-aaa="aaa">省份</li>
                                        <li data-role="tabitm" data-controls="bbb" data-aaa="aaa">城市</li>
                                        <li data-role="tabitm" data-controls="ccc" data-aaa="aaa">县区</li>
                                    </ul>

                                    <div slot="bd">
                                        <div class="inp-bd z-show" data-role="tabpanel" data-uuid="aaa" data-bbb="bbb" >
                                            <div class="itm">
                                                <dl>
                                                    <dd>
                                                        <ol>
                                                        </ol>
                                                    </dd>
                                                </dl>
                                            </div>
                                            <div class="itm">
                                                <dl>
                                                    <dd>
                                                        <ol>

                                                        </ol>
                                                    </dd>
                                                </dl>
                                            </div>
                                            <div class="itm">
                                                <dl>
                                                    <dd>
                                                        <ol>

                                                        </ol>
                                                    </dd>
                                                </dl>
                                            </div>
                                            <div class="itm">
                                                <dl>
                                                    <dd>
                                                        <ol>

                                                        </ol>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </div>
                                        <div class="inp-bd z-hide" data-role="tabpanel" data-uuid="bbb" data-bbb="bbb">
                                            <div class="itm">
                                                <dl>
                                                    <dd>
                                                        <ol>

                                                        </ol>
                                                    </dd>
                                                </dl>
                                            </div>
                                            <div class="itm">
                                                <dl>
                                                    <dd>
                                                        <ol>

                                                        </ol>
                                                    </dd>
                                                </dl>
                                            </div>
                                            <div class="itm">
                                                <dl>
                                                    <dd>
                                                        <ol>

                                                        </ol>
                                                    </dd>
                                                </dl>
                                            </div>
                                            <div class="itm">
                                                <dl>
                                                    <dd>
                                                        <ol>

                                                        </ol>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </div>
                                        <div class="inp-bd z-hide" data-role="tabpanel" data-uuid="ccc" data-bbb="bbb">
                                            <div class="itm">
                                                <dl>
                                                    <dd>
                                                        <ol>

                                                        </ol>
                                                    </dd>
                                                </dl>
                                            </div>
                                            <div class="itm">
                                                <dl>
                                                    <dd>
                                                        <ol>

                                                        </ol>
                                                    </dd>
                                                </dl>
                                            </div>
                                            <div class="itm">
                                                <dl>
                                                    <dd>
                                                        <ol>

                                                        </ol>
                                                    </dd>
                                                </dl>
                                            </div>
                                            <div class="itm">
                                                <dl>
                                                    <dd>
                                                        <ol>

                                                        </ol>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>


                        </div>
                    </div>
                    <div class="itm">
                        <label class="lab">街道地区：</label>
                        <div class="ipt">
                            <textarea name="" cols="" rows="" class="itm-text u-ipt-md"></textarea>
                        </div>
                    </div>

                    <p class="invoice-form">
                        <button type="button" class="u-btn-c2 u-btn-md" ms-on-click="@modal.onConfirm(@modal.config2)">保存配送地址</button>
                    </p>

                </div>
                <a href="javascript:;" class="close" ms-on-click="@onClose"></a>
            </div>

            <!--新增配送地址 end-->
        </xmp>
        <!--发票配送地址 end-->



        <!--新增配送地址 begin wjm-->
        <xmp :widget="[{ is: 'dmui-modal', $id: 'modal-invoice2' }, @modal.config3]" >
            <!--新增配送地址 begin-->

            <div class="hd" slot="hd">
                <h2 class="tt"><span class="utt">新增配送地址</span></h2>
            </div>

            <div class="bd" slot="bd" id="addAddress">
                <form ms-validate="@validateAddAddress" style="margin:0;padding:0;">
                    <div class="invoice-cnt">

                        <div class="itm new-itm-m">
                            <label class="lab">所在地区：</label>
                            <div class="ipt" data-ccc="ccc">
                                <div class="u-ipt u-ipt-lg  m-m-newinp" style="display:block;float:left;margin-left:0px" ms-on-click="@modal.config3.onClick($event)" ms-on-click-8="@modal.config3.onEmit($event)">
                                    {{ @modal.config3.province }}
                                    {{ @modal.config3.city }}
                                    {{ @modal.config3.areas }}
                                    <div class="arrow-bottom">
                                        <b class="bottom"><i class="bottom-arrow1"></i><i class="bottom-arrow2"></i></b>
                                    </div>
                                </div>
                                <input type="text" style="opacity:0;width:0px;margin-left:-5px;boder:none; background:none; filter: alpha(opacity=0);" class="addInputarea" ms-duplex="@modal.config3.areas" ms-rules="{required:true,minlength:1}" data-required-message="请选择完整的区域信息" data-minlength-message="请选择完整的区域信息"/>

                                <div class="m-dropdown-address" ms-visible="@modal.config3.isShows">
                                    <div class="inp-box" data-role="tab">
                                        <ul class="inp-hd" data-role="tabnav" slot="hd">
                                            <li class="z-crt" data-role="tabitm" data-controls="aaa" data-aaa="aaa">省份</li>
                                            <li data-role="tabitm" data-controls="bbb" data-aaa="aaa">城市</li>
                                            <li data-role="tabitm" data-controls="ccc" data-aaa="aaa">县区</li>
                                        </ul>

                                        <div slot="bd">

                                            <!-- 省 -->
                                            <div class="inp-bd z-show" data-role="tabpanel" data-uuid="aaa" data-bbb="bbb" >
                                                <div class="itm">
                                                    <dl>
                                                        <dd>
                                                            <ol>
                                                                <li ms-for="($index,el) in @modal.config3.data.province" ms-attr="{uid:el.id}" data-roles="item" data-role="tabitm" ms-click-1="@modal.config3.onProvince1($event)" data-controls="bbb">{{el.name}}</li>
                                                            </ol>
                                                        </dd>
                                                    </dl>
                                                </div>
                                            </div>

                                            <!-- 市 -->
                                            <div class="inp-bd z-hide" data-role="tabpanel" data-uuid="bbb" data-bbb="bbb">
                                                <div class="itm">
                                                    <dl>
                                                        <dd>
                                                            <ol>
                                                                <li ms-for="($index,el) in @modal.config3.data.city" ms-attr="{uid:el.id}" data-roles="item" data-role="tabitm" ms-click-1="@modal.config3.onCity1($event)" data-controls="ccc" ms-click-1="@modal.config3.onClick($event)">{{el.name}}</li>
                                                            </ol>
                                                        </dd>
                                                    </dl>
                                                </div>

                                                <!-- 区 -->
                                            </div>
                                            <div class="inp-bd z-hide" data-role="tabpanel" data-uuid="ccc" data-bbb="bbb">
                                                <div class="itm">
                                                    <dl>
                                                        <dd>
                                                            <ol>
                                                                <li ms-for="($index,el) in @modal.config3.data.areas" ms-attr="{uid:el.id}" data-roles="item" data-role="tabitm" ms-click-1="@modal.config3.onArea1($event)" class="m-close"  ms-click="@modal.config3.onClick($event)">{{el.name}}</li>
                                                            </ol>
                                                        </dd>
                                                    </dl>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>


                            </div>
                        </div>
                        <div class="itm">
                            <label class="lab">街道地区：</label>
                            <div class="ipt">
                                <textarea name="" style="margin-right:5px;" cols="" rows="" class="itm-text u-ipt-lg addStreetRegion" ms-duplex="@modal.config3.address" ms-rules="{required:true, rules_address:true,minlength:2,maxlength:150}" ms-required-message="请输入完整的配送地址" data-minlength-message="请输入完整的配送地址" data-maxlength-message="街道地址不能大于150字符"></textarea>
                            </div>
                        </div>
                        <div class="itm">
                            <label class="lab">收货人：</label>
                            <div class="ipt">
                                <input class="u-ipt u-ipt-lg " ms-duplex="@modal.config3.name" ms-rules="{required:true, rules_username:true,minlength:2, maxlength:20}" data-required-message="请填写完整的姓名" data-minlength-message="请填写完整的姓名" data-maxlength-message="姓名不能大于20字符" autocomplete="off">
                            </div>
                        </div>
                        <div class="itm">
                            <label class="lab">手机号码：</label>
                            <div class="ipt">
                                <input class="u-ipt u-ipt-lg " ms-duplex="@modal.config3.mobile" ms-rules="{required:true, rules_phone:true}" data-required-message="请输入完整的手机号" autocomplete="off">
                            </div>
                        </div>
                        <div class="itm">
                            <label class="lab">固定电话：</label>
                            <div class="ipt">
                                <input class="u-ipt u-ipt-lg " ms-duplex="@modal.config3.tel" ms-rules='{rules_tele:true}' autocomplete="off">
                            </div>
                        </div>
                        <p class="invoice-form">
                            <button type="submit" class="u-btn-c2 u-btn-md">保存配送地址</button>
                        </p>

                    </div>
                    <a href="javascript:;" class="close" ms-on-click="@onClose(@modal.config3)"></a>
                </form>
            </div>

            <!--新增配送地址 end-->

        </xmp>
        <!--新增配送地址 end-->

        <!--实名认证 begin wjm-->
        <xmp :widget="[{ is: 'dmui-modal',$id: 'modal-onevote3'},@modal.config_realname]">
            <!--常用购票人 begin-->

            <div class="hd" slot="hd">
                <h2 class="tt"><span class="utt">常用购票人</span></h2>
            </div>

            <div class="bd" slot="bd">
                <div class="one-cnt">
                    <div class="one-hd" align="center">
                        <p style="padding:10px 0px;">
                            <a href="javascript:;" class="u-btn-c2 u-btn-add"  ms-on-click="@modal.configAddCustomer.onOpen(@modal.configAddCustomer,@modal.config4)">新增购票人</a>
                        </p>
                    </div>
                    <div class="one-table">
                        <span class="one-link-2">提示：每次只能选择一位观看者，且不能重复选择</span>
                        <div class="one-tb">
                            <table class="m-table m-table-c1">
                                <thead>
                                <tr>
                                    <label>
                                        <th width="60px"></th>
                                        <th width="246px">姓名</th>
                                        <th width="123px">证件类型</th>
                                        <th width="226px;">证件号</th>
                                    </label>
                                </tr>
                                </thead>
                                <tbody >
                                <tr :for="($index,el) in @data2 | filterBy(@modal.config_realname.filter)"  :class="@isClass2"  ms-on-click="@modal.config_realname.onlinkage(el)">
                                    <label>
                                        <td width="60px">
                                            <input type="radio" data-target="selecs" ms-attr="{realname_cardId:el.hashIdCard,checked:el.checked}" name="viewer_radio"  />
                                        </td>
                                        <td width="246px">{{el.name}}</td>
                                        <td width="123px">{{el.type}}</td>
                                        <td width="226px">{{el.cardId}}</td>
                                    </label>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <p ms-if="(@data2.length == 0 || @modal.config_realname.showTips) && @isInitViewers" class="one-notadd">您还没有添加购票人信息，提前添加好可以使抢票速度更快哦！</p>
                    <p ms-if="!@isInitViewers" class="one-notadd">加载中，请稍后...</p>

                    <p class="one-btn"  style="display:block">
                    <div class="ft">
                        <!--<a class="u-btn-c5 z-dis" href="javascript:;"  ms-if="@modal.config_realname.linkage2 < 0">确定</a>-->
                        <a class="u-btn-c5" href="javascript:;" ms-on-click="@modal.config_realname.onConfirm()" ms-if="@modal.config_realname.linkage2.name != undefined && !@modal.config_realname.showTips">确定</a>
                    </div>
                    </p>
                </div>
                <a href="javascript:;" class="close" ms-on-click="@onClose"></a>


            </div>

        </xmp>
        <!--实名认证 end-->



        <!--(一票一证选座购票人) begin wjm-->
        <xmp :widget="[{ is: 'dmui-modal',$id: 'modal-onevote16'},@modal.config_selectedSeat]">
            <!--常用购票人 begin-->
            <div class="hd" slot="hd">
                <h2 class="tt"><span class="utt">常用购票人</span></h2>
            </div>

            <div class="bd" slot="bd">
                <div class="one-cnt">
                    <div class="one-hd" align="center">
                        <p style="padding:10px 0px;">
                            <a href="javascript:;" class="u-btn-c2 u-btn-add"  ms-on-click="@modal.configAddCustomer.onOpen(@modal.configAddCustomer,@modal.config_selectedSeat)">新增购票人</a>
                        </p>
                    </div>
                    <div class="one-table">
                        <span class="one-link-2">提示：每次只能选择一位观看者，且不能重复选择</span>
                        <div class="one-tb">
                            <table class="m-table m-table-c1">
                                <thead>
                                <tr>
                                    <label>
                                        <th width="60px"></th>
                                        <th width="246px">姓名</th>
                                        <th width="123px">证件类型</th>
                                        <th width="226px;">证件号</th>
                                    </label>
                                </tr>
                                </thead>
                                <tbody >
                                <tr :for="($index,el) in @data2 | filterBy(@modal.config_selectedSeat.filter)"  :class="@isClass2"  ms-on-click="@modal.config_selectedSeat.onlinkage(el.hashIdCard)">
                                    <label>
                                        <td width="60px">
                                            <input type="radio" data-target="selecs" name="viewer_radio" ms-attr="{seat_hashIdCard:el.hashIdCard,checked:el.checked}" seat_attr="seate_radio" />
                                        </td>
                                        <td width="246px">{{el.name}}</td>
                                        <td width="123px">{{el.type}}</td>
                                        <td width="226px">{{el.cardId}}</td>
                                    </label>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <p ms-if="(@data2.length == 0 || @modal.config_selectedSeat.showTips) && @isInitViewers" class="one-notadd">您还没有添加购票人信息，提前添加好可以使抢票速度更快哦！</p>
                    <p ms-if="!@isInitViewers" class="one-notadd">加载中，请稍后...</p>

                    <p class="one-btn"  style="display:block">
                    <div class="ft">
                        <a class="u-btn-c5 z-dis" href="javascript:;"  ms-if="@modal.config_selectedSeat.currentHashIdCard == ''">确定</a>
                        <a class="u-btn-c5" href="javascript:;" ms-on-click="@modal.config_selectedSeat.onConfirm()" ms-if="@modal.config_selectedSeat.currentHashIdCard != ''">确定</a>
                    </div>
                    </p>
                </div>
                <a href="javascript:;" class="close" ms-on-click="@onClose"></a>


            </div>

        </xmp>
        <!--(一票一证选座购票人) end-->


        <!--(一票一证立即购买购票人) begin wjm-->
        <xmp :widget="[{ is: 'dmui-modal', $id: 'modal-onevote8' }, @modal.config_fastbuy]" >
            <!--常用购票人 begin-->

            <div class="hd" slot="hd">
                <h2 class="tt"><span class="utt">常用购票人</span></h2>
            </div>

            <div class="bd" slot="bd">
                <div class="one-cnt">
                    <div class="one-hd" align="center">
                        <p style="padding:10px 0px;">
                            <a href="javascript:;" class="u-btn-c2 u-btn-add"  ms-on-click="@modal.configAddCustomer.onOpen(@modal.configAddCustomer,@modal.config4)">新增购票人</a>
                        </p>
                    </div>
                    <div class="one-table">
                        <span class="one-link-1">提示：你需要选择{{@modal.config_fastbuy.quantity}}位购票人，当前已经选择{{@modal.config_fastbuy.linkage.length}}位</span>
                        <div class="one-tb">
                            <table class="m-table m-table-c1">
                                <thead>
                                <tr>
                                    <label>
                                        <th width="60px"></th>
                                        <th width="246px">姓名</th>
                                        <th width="123px">证件类型</th>
                                        <th width="226px">证件号</th>
                                    </label>
                                </tr>
                                </thead>
                                <tbody class="config_fastbuy">
                                <tr :for="($index,el) in @data2 | filterBy(@modal.config_fastbuy.search)" data-target="selec" :class="@isClass2[$index]">
                                    <label>
                                        <td width="60px">
                                            <input type="checkbox" data-target="selecs" ms-attr="{hashIdCard:el.hashIdCard,checked:el.checked}" ms-on-click="@modal.config_fastbuy.linkage2(el.hashIdCard)"  name="viewer_radio"/>
                                        </td>
                                        <td width="246px">{{el.name}}</td>
                                        <td width="123px">{{el.type}}</td>
                                        <td width="226px">{{el.cardId}}</td>
                                    </label>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <p ms-if="(@data2.length == 0 || @modal.config_fastbuy.showTips) && @isInitViewers" class="one-notadd">您还没有添加购票人信息，提前添加好可以使抢票速度更快哦！</p>
                    <p ms-if="!@isInitViewers" class="one-notadd">加载中，请稍后...</p>

                    <p class="one-btn"  style="display:block">
                    <div class="ft">
                        <span class="txt" :if="@modal.config_fastbuy.Prompt">本次需要选择{{@modal.config_fastbuy.quantity}}位购票人，你已选择{{@modal.config_fastbuy.linkage.length}}位，请正确选择购票人</span>
                        <a class="u-btn-c5" href="javascript:;" ms-on-click="@modal.config_fastbuy.onConfirm()" ms-if="@modal.config_fastbuy.Buttontype">确定</a>
                        <a class="u-btn-c5 z-dis" href="javascript:;" ms-if="!@modal.config_fastbuy.Buttontype">确定</a>
                    </div>
                    </p>

                </div>
                <a href="javascript:;" class="close close_fastbuy" ms-on-click="@onClose"></a>


            </div>

        </xmp>
        <!--(一票一证立即购买购票人) end-->


        <!--一票一证确认弹层 begin wjm-->
        <xmp :widget="[{ is: 'dmui-modal', $id: 'modal-code2' }, @modal.config5]" >
            <!--一票一证弹层 begin-->
            <div class="hd" slot="hd">

            </div>

            <div class="bd" slot="bd">
                <div class="code-cnt">
                    <p class="utt" ms-text="@msg.prompt"></p>
                    <p class="code-form">
                        <button type="button" class="u-btn-c2 u-btn-md" ms-on-click="@modal.config5.onConfirm(@modal.config5)">确认</button>
                        <button type="button" class="u-btn-c3 u-btn-md" ms-on-click="@modal.config5.onCancel(@modal.config5)">取消</button>
                    </p>
                </div>
                <a href="javascript:;" class="close" ms-on-click="@onClose"></a>
            </div>
            <!--一票一证弹层 end-->
        </xmp>
        <!--一票一证确认弹层 end-->


        <!--修改配送地址 begin wjm-->
        <xmp :widget="[{ is: 'dmui-modal', $id: 'modal-invoice3' }, @modal.config6]" >
            <!--修改配送地址 begin-->

            <div class="hd" slot="hd">
                <h2 class="tt"><span class="utt">修改配送地址</span></h2>
            </div>

            <div class="bd" slot="bd" id="updateAddress">
                <form ms-validate="@validateUpdateAddress" style="margin:0;padding:0;">
                    <div class="invoice-cnt">

                        <div class="itm new-itm-m">
                            <label class="lab">所在地区：</label>
                            <div class="ipt" data-ddd="ddd">
                                <div class="u-ipt u-ipt-lg  m-m-newinp" style="display:inline-block;margin-left:0px" ms-on-click="@modal.config6.onClick($event)" ms-on-click-8="@modal.config6.onEmit($event)">
                                    {{ @modal.config6.province }}
                                    {{ @modal.config6.city }}
                                    {{ @modal.config6.areas }}
                                    <div class="arrow-bottom">
                                        <b class="bottom"><i class="bottom-arrow1"></i><i class="bottom-arrow2"></i></b>
                                    </div>
                                </div>
                                <input type="text" style="opacity:0;width:0px;margin-left:-5px;boder:none; background:none; filter: alpha(opacity=0);" class="modifyInputarea" ms-duplex="@modal.config6.areas" ms-rules="{required:true,minlength:1}" data-required-message="请选择完整的区域信息" data-minlength-message="请选择完整的区域信息"/>

                                <div class="m-dropdown-address" ms-visible="@modal.config6.isShows">
                                    <div class="inp-box" data-role="tab">
                                        <ul class="inp-hd" data-role="tabnav" slot="hd">
                                            <li class="z-crt" data-role="tabitm" data-controls="aaa" data-aaa="aaa">省份</li>
                                            <li data-role="tabitm" data-controls="bbb" data-aaa="aaa">城市</li>
                                            <li data-role="tabitm" data-controls="ccc" data-aaa="aaa">县区</li>
                                        </ul>

                                        <div slot="bd">

                                            <!-- 省 -->
                                            <div class="inp-bd z-show" data-role="tabpanel" data-uuid="aaa" data-bbb="bbb" >
                                                <div class="itm">
                                                    <dl>
                                                        <dd>
                                                            <ol>
                                                                <li ms-for="($index,el) in @modal.config6.data.province" ms-attr="{uid:el.id}" data-roles="item" data-role="tabitm" ms-click-1="@modal.config6.onProvince1($event)" data-controls="bbb">{{el.name}}</li>
                                                            </ol>
                                                        </dd>
                                                    </dl>
                                                </div>
                                            </div>

                                            <!-- 市 -->
                                            <div class="inp-bd z-hide" data-role="tabpanel" data-uuid="bbb" data-bbb="bbb">
                                                <div class="itm">
                                                    <dl>
                                                        <dd>
                                                            <ol>
                                                                <li ms-for="($index,el) in @modal.config6.data.city" ms-attr="{uid:el.id}" data-roles="item" data-role="tabitm" ms-click-1="@modal.config6.onCity1($event)" data-controls="ccc">{{el.name}}</li>
                                                            </ol>
                                                        </dd>
                                                    </dl>
                                                </div>

                                                <!-- 区 -->
                                            </div>
                                            <div class="inp-bd z-hide" data-role="tabpanel" data-uuid="ccc" data-bbb="bbb">
                                                <div class="itm">
                                                    <dl>
                                                        <dd>
                                                            <ol>
                                                                <li ms-for="($index,el) in @modal.config6.data.areas" ms-attr="{uid:el.id}" data-roles="item" data-role="tabitm" ms-click-1="@modal.config6.onArea1($event)" class="m-close" ms-click="@modal.config6.onClick($event)">{{el.name}}</li>
                                                            </ol>
                                                        </dd>
                                                    </dl>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>


                            </div>
                        </div>
                        <div class="itm">
                            <label class="lab">街道地区：</label>
                            <div class="ipt">
                                <textarea name="" cols="" rows="" class="itm-text u-ipt-lg modifyStreetRegion" ms-duplex="@modal.config6.address" ms-rules="{required:true, rules_address:true,minlength:2,maxlength:150 }" ms-required-message="请输入完整的配送地址" data-minlength-message="请输入完整的配送地址" data-maxlength-message="街道地址不能大于150字符"> </textarea>
                            </div>
                        </div>
                        <div class="itm">
                            <label class="lab">收货人：</label>
                            <div class="ipt">
                                <input class="u-ipt u-ipt-lg " ms-duplex="@modal.config6.name" ms-rules="{required:true, rules_username:true,minlength:2, maxlength:20}" data-required-message="请填写完整的姓名" data-minlength-message="请填写完整的姓名" data-maxlength-message="姓名不能大于20字符" autocomplete="off">
                            </div>
                        </div>
                        <div class="itm">
                            <label class="lab">手机号码：</label>
                            <div class="ipt">
                                <input class="u-ipt u-ipt-lg " ms-duplex="@modal.config6.mobile" ms-rules="{required:true, rules_phone:true}" data-required-message="请输入完整的手机号" autocomplete="off">
                            </div>
                        </div>
                        <div class="itm">
                            <label class="lab">固定电话：</label>
                            <div class="ipt">
                                <input class="u-ipt u-ipt-lg " ms-duplex="@modal.config6.tel" ms-rules='{rules_tele:true}' autocomplete="off">
                            </div>
                        </div>
                        <p class="invoice-form">
                            <button type="submit" class="u-btn-c2 u-btn-md">保存配送地址</button>
                        </p>

                    </div>
                    <a href="javascript:;" class="close" ms-on-click="@onClose(@modal.config6)"></a>
                </form>
            </div>

            <!--修改配送地址 end-->
        </xmp>
        <!--修改配送地址 end-->

        <!-- 添加购票人loading层 -->
        <xmp :widget="[{ is: 'dmui-modal', $id: 'modal-addViewerLoading' }, @modal.config_addViewerLoading]" >
            <!--loading begin-->
            <div class="m-loading" slot="hd">
                <p>观演信息验证中…</p>
            </div>
            <div slot="bd"></div>
            <!--loading end-->
        </xmp>
        <!-- 添加购票人loading层 -->

        <!-- alert弹层 -->
        <xmp :widget="[{ is: 'dmui-modal', $id: 'modal-alert' }, @modal.configAlert]" >
            <!-- alert框弹层 begin-->
            <div class="hd" slot="hd">

            </div>

            <div class="bd" slot="bd">
                <div class="code-cnt" data-spm="click">
                    <p class="utt" ms-text="@msg.alert"></p>
                    <p class="code-form">
                        <button type="button" class="u-btn-c2 u-btn-md" ms-on-click="@modal.configAlert.onConfirm(@modal.configAlert)">确认</button>
                    </p>
                </div>
                <a href="javascript:;" class="close" ms-on-click="@onClose"></a>
            </div>
            <!--alert框弹层 end-->
        </xmp>
        <!-- alert层 -->

        <!-- 新增购票人弹层 -->
        <xmp :widget="[{ is: 'dmui-modal', $id: 'modal-addCustomer' }, @modal.configAddCustomer]" >
            <!--新增购票人弹层 begin-->
            <div class="hd" slot="hd">

            </div>

            <div class="bd" slot="bd">
                <div class="code-cnt">
                    <iframe id="addCustomerIframe" style="height: 440px;width: 600px;border: 0px;" scrolling="no">
                    </iframe>
                </div>
                <a href="javascript:;" class="close addCustomerIframe_close"></a>
            </div>
            <!--新增购票人弹层 end-->
        </xmp>
        <!-- 新增购票人层 -->

    </div>

</div>
<div class="m-mask z-hide"></div>
<div class="m-mask1 z-hide"></div>
<!-- verificationcode start -->
<script>
    if(typeof JsLoader === 'undefined') {window.JsLoader = {load:function(){},before:function(){},complete:function(){},completeAfter:function(){}};}
</script>
<div id="creditDiv" style="display:none;">
    <div class="m-mask"></div>
    <div class="m-code">
        <ul class="m-code-text">
            <li>
                <div class="code-tt">
                    <img class="imgs" src="" ></div>
                <a class="m-change" href="javascript:;" id="creditChangeCode">换一换</a>
            </li>
            <li>
                <div class="code-tt code-oth">
                    <span class="reg-check"></span>
                    <input type="text" id="creditText" style="width:130px;" onfocus="if(this.value=='验证码') {this.value='';}" onblur="if(this.value=='') {this.value='验证码';}" value="验证码" class="m-text" autocomplete="off"></div>
                <span class="m-error m-credit-error"></span>
            </li>
        </ul>
        <div class="m-u-btn">
            <a href="javascript:;" class="m-abo-btn credit-cancel-btn">取消</a>
            <a href="javascript:;" class="m-abo-btn m-sub-btn credit-sub-btn">提交</a>
        </div>
    </div>
</div>

<div class="new_box" style="display:none;">
    <table width="200">
        <tr>
            <th scope="col">项目状态</th>
            <th scope="col">时间要求</th>
            <th scope="col">退票手续费</th>
            <th scope="col">数量限制</th>
        </tr>
        <tr>
            <td rowspan="6">售票中</td>
            <td>演出（赛事）开始日期＞45天</td>
            <td>票款实际支付金额（快递费除外）的20%为手续费</td>
            <td>同一用户同一项目申请退、换票不得超过2张</td>
        </tr>
        <tr>
            <td>演出（赛事）开始日期30-45天</td>
            <td>票款实际支付金额（快递费除外）的30%为手续费</td>
            <td>同一用户同一项目申请退、换票不得超过2张</td>
        </tr>
        <tr>
            <td>演出（赛事）开始日期20-30天</td>
            <td>票款实际支付金额（快递费除外）的50%为手续费</td>
            <td>同一用户同一项目申请退、换票不得超过2张</td>
        </tr>
        <tr>
            <td>演出（赛事）开始日期10-20天</td>
            <td>票款实际支付金额（快递费除外）的70%为手续费</td>
            <td>同一用户同一项目申请退、换票不得超过2张</td>
        </tr>
        <tr>
            <td>演出（赛事）开始日期3-10天</td>
            <td>票款实际支付金额（快递费除外）的90%为手续费</td>
            <td>同一用户同一项目申请退、换票不得超过2张</td>
        </tr>
        <tr>
            <td>演出（赛事）开始日期<3天</td>
            <td>票款实际支付金额（快递费除外）的95%为手续费</td>
            <td>同一用户同一项目申请退、换票不得超过2张</td>
        </tr>
        <tr>
            <td>预定/预售</td>
            <td colspan="3">收取票款实际支付金额（快递费除外）的10%为手续费</td>
        </tr>
    </table>
    <p class="tishi">特别提示：根据项目不同，个别项目可能不适用“非不可抗力情况”的变更或退款，具体以项目宣传单面提示为准。</p>
</div>

<div id="m-mask"></div>
<div id="guide">
    <a href="http://www.360.cn" class="guide-360"></a>
    <a href="http://www.google.cn/intl/zh-CN/chrome/browser/" class="guide-ch"></a>
    <a href="https://support.microsoft.com/zh-cn/help/17621/internet-explorer-downloads" class="guide-ie"></a>
    <img src="//dui.dmcdn.cn/dm_trade_system/multi/pc/common/images/g-weixin.jpg" class="guide-weixin"/>
</div>
<!-- verificationcode end -->
<script type="text/javascript">
    window.document.domain = "damai.cn";
    var t_groupId = 'defaultCommodityGroupId';
    var t_paymentGroupMap = '{\"defaultCommodityGroupId\":{1653:[{\"groupId\":64,\"groupName\":\"贵阳商业银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":31,\"groupName\":\"中国邮政储蓄银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":62,\"groupName\":\"富滇银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":29,\"groupName\":\"中国光大银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":60,\"groupName\":\"广州银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":27,\"groupName\":\"中国银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":58,\"groupName\":\"厦门银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":56,\"groupName\":\"南京银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":21,\"groupName\":\"中国农业银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":19,\"groupName\":\"交通银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":50,\"groupName\":\"宁波银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":48,\"groupName\":\"中国平安银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":13,\"groupName\":\"中国建设银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":11,\"groupName\":\"招商银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":24,\"groupName\":\"广东发展银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":16,\"groupName\":\"中国工商银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":45,\"groupName\":\"上海银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":43,\"groupName\":\"杭州银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":41,\"groupName\":\"兴业银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":39,\"groupName\":\"上海浦东发展银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":37,\"groupName\":\"北京银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":68,\"groupName\":\"北京农商银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":35,\"groupName\":\"中信银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":33,\"groupName\":\"中国民生银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":124,\"groupName\":\"花呗分期\",\"paymentPlatform\":17,\"useType\":0},{\"groupId\":122,\"groupName\":\"美国运通卡支付\",\"paymentPlatform\":18,\"useType\":0},{\"groupId\":77,\"groupName\":\"微信扫码支付\",\"paymentPlatform\":1,\"useType\":0},{\"groupId\":1,\"groupName\":\"支付宝平台\",\"paymentPlatform\":1,\"useType\":0},{\"groupId\":4,\"groupName\":\"万事达卡平台\",\"paymentPlatform\":1,\"useType\":0},{\"groupId\":71,\"groupName\":\"电子钱包\",\"paymentPlatform\":9,\"useType\":0}]}}';
    var t_commodityGroups = '{\"consignee\":[{\"address\":\"z振中路22号雍怡阁6E\",\"addressId\":88365190,\"cityId\":906,\"cityName\":\"深圳市\",\"countyId\":908,\"countyName\":\"福田区\",\"defaultStatus\":0,\"districtId\":908,\"districtName\":\"福田区\",\"idCard\":\"\",\"idType\":0,\"mobilePhone\":\"15077731547\",\"prefix\":\"86\",\"provinceId\":892,\"provinceName\":\"广东\",\"tel\":\"\",\"userCode\":118054305,\"userName\":\"liu\"}],\"liveGroupCommodity\":[{\"commodityPolicy\":[{\"categoryId\":1,\"performId\":9110519,\"performName\":\"2018-12-08 周六 19:30\",\"prepaymentPrivilege\":{\"stage\":0},\"projectId\":167146,\"projectName\":\"2018 王力宏“龙的传人2060” 世界巡回演唱会-金华站\",\"showTime\":1544268600000,\"subCategoryId\":9,\"subCommodityList\":[{\"comboQuantity\":0,\"isCombo\":0,\"itemInfos\":[],\"originalPrice\":5.8,\"price\":580.0,\"productId\":12552129,\"productName\":\"580元（看台）\",\"quantity\":1,\"stockID\":0,\"stockInfo\":\"\",\"stockMode\":0}],\"support\":{\"commodityPolicy\":[{\"companyDescription\":\"地址：请联系客服到指定公司上门自取,营业时间：星期一至星期日9:00-18:00\",\"companyId\":1653,\"companyName\":\"金华\",\"deliveryMethod\":[1],\"deliveryTemplateID\":0,\"payMethod\":[{\"payGroupList\":[{\"groupId\":64,\"groupName\":\"贵阳商业银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":31,\"groupName\":\"中国邮政储蓄银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":62,\"groupName\":\"富滇银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":29,\"groupName\":\"中国光大银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":60,\"groupName\":\"广州银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":27,\"groupName\":\"中国银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":58,\"groupName\":\"厦门银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":56,\"groupName\":\"南京银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":21,\"groupName\":\"中国农业银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":19,\"groupName\":\"交通银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":50,\"groupName\":\"宁波银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":48,\"groupName\":\"中国平安银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":13,\"groupName\":\"中国建设银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":11,\"groupName\":\"招商银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":24,\"groupName\":\"广东发展银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":16,\"groupName\":\"中国工商银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":45,\"groupName\":\"上海银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":43,\"groupName\":\"杭州银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":41,\"groupName\":\"兴业银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":39,\"groupName\":\"上海浦东发展银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":37,\"groupName\":\"北京银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":68,\"groupName\":\"北京农商银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":35,\"groupName\":\"中信银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":33,\"groupName\":\"中国民生银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0}],\"payPlatform\":7},{\"payGroupList\":[{\"groupId\":124,\"groupName\":\"花呗分期\",\"paymentPlatform\":17,\"useType\":0}],\"payPlatform\":17},{\"payGroupList\":[{\"groupId\":122,\"groupName\":\"美国运通卡支付\",\"paymentPlatform\":18,\"useType\":0}],\"payPlatform\":18},{\"payGroupList\":[{\"groupId\":77,\"groupName\":\"微信扫码支付\",\"paymentPlatform\":1,\"useType\":0},{\"groupId\":1,\"groupName\":\"支付宝平台\",\"paymentPlatform\":1,\"useType\":0},{\"groupId\":4,\"groupName\":\"万事达卡平台\",\"paymentPlatform\":1,\"useType\":0}],\"payPlatform\":1},{\"payGroupList\":[{\"groupId\":71,\"groupName\":\"电子钱包\",\"paymentPlatform\":9,\"useType\":0}],\"payPlatform\":9}]}],\"expressDeliveryShipCitys\":[{\"companyDescription\":\"地址：请联系客服到指定公司上门自取,营业时间：星期一至星期日9:00-18:00\",\"companyId\":1653,\"companyName\":\"金华\",\"deliveryMethod\":[1],\"deliveryTemplateID\":0,\"payMethod\":[{\"payGroupList\":[{\"groupId\":64,\"groupName\":\"贵阳商业银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":31,\"groupName\":\"中国邮政储蓄银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":62,\"groupName\":\"富滇银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":29,\"groupName\":\"中国光大银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":60,\"groupName\":\"广州银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":27,\"groupName\":\"中国银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":58,\"groupName\":\"厦门银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":56,\"groupName\":\"南京银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":21,\"groupName\":\"中国农业银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":19,\"groupName\":\"交通银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":50,\"groupName\":\"宁波银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":48,\"groupName\":\"中国平安银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":13,\"groupName\":\"中国建设银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":11,\"groupName\":\"招商银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":24,\"groupName\":\"广东发展银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":16,\"groupName\":\"中国工商银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":45,\"groupName\":\"上海银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":43,\"groupName\":\"杭州银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":41,\"groupName\":\"兴业银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":39,\"groupName\":\"上海浦东发展银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":37,\"groupName\":\"北京银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":68,\"groupName\":\"北京农商银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":35,\"groupName\":\"中信银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":33,\"groupName\":\"中国民生银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0}],\"payPlatform\":7},{\"payGroupList\":[{\"groupId\":124,\"groupName\":\"花呗分期\",\"paymentPlatform\":17,\"useType\":0}],\"payPlatform\":17},{\"payGroupList\":[{\"groupId\":122,\"groupName\":\"美国运通卡支付\",\"paymentPlatform\":18,\"useType\":0}],\"payPlatform\":18},{\"payGroupList\":[{\"groupId\":77,\"groupName\":\"微信扫码支付\",\"paymentPlatform\":1,\"useType\":0},{\"groupId\":1,\"groupName\":\"支付宝平台\",\"paymentPlatform\":1,\"useType\":0},{\"groupId\":4,\"groupName\":\"万事达卡平台\",\"paymentPlatform\":1,\"useType\":0}],\"payPlatform\":1},{\"payGroupList\":[{\"groupId\":71,\"groupName\":\"电子钱包\",\"paymentPlatform\":9,\"useType\":0}],\"payPlatform\":9}]}],\"globalDistribution\":false,\"icpLicenseType\":{\"explanation\":\"\",\"idType\":[1],\"licenseType\":1},\"invoice\":{\"duty\":4,\"invoiceType\":[2,1],\"organizationCode\":5},\"isAnswer\":false,\"isQuestionnaire\":false,\"isVerificationCode\":false,\"limitBuy\":[],\"privilegePolicy\":[2,1,3],\"selpPickupCitys\":[]},\"venueId\":59984,\"venueName\":\"金华市体育中心体育场\"}],\"groupId\":\"defaultCommodityGroupId\",\"sellPolicy\":{\"deliveryCompanyId\":{1:[1653]},\"paymentGroup\":{1653:[{\"groupId\":64,\"groupName\":\"贵阳商业银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":31,\"groupName\":\"中国邮政储蓄银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":62,\"groupName\":\"富滇银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":29,\"groupName\":\"中国光大银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":60,\"groupName\":\"广州银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":27,\"groupName\":\"中国银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":58,\"groupName\":\"厦门银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":56,\"groupName\":\"南京银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":21,\"groupName\":\"中国农业银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":19,\"groupName\":\"交通银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":50,\"groupName\":\"宁波银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":48,\"groupName\":\"中国平安银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":13,\"groupName\":\"中国建设银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":11,\"groupName\":\"招商银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":24,\"groupName\":\"广东发展银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":16,\"groupName\":\"中国工商银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":45,\"groupName\":\"上海银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":43,\"groupName\":\"杭州银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":41,\"groupName\":\"兴业银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":39,\"groupName\":\"上海浦东发展银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":37,\"groupName\":\"北京银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":68,\"groupName\":\"北京农商银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":35,\"groupName\":\"中信银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":33,\"groupName\":\"中国民生银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":124,\"groupName\":\"花呗分期\",\"paymentPlatform\":17,\"useType\":0},{\"groupId\":122,\"groupName\":\"美国运通卡支付\",\"paymentPlatform\":18,\"useType\":0},{\"groupId\":77,\"groupName\":\"微信扫码支付\",\"paymentPlatform\":1,\"useType\":0},{\"groupId\":1,\"groupName\":\"支付宝平台\",\"paymentPlatform\":1,\"useType\":0},{\"groupId\":4,\"groupName\":\"万事达卡平台\",\"paymentPlatform\":1,\"useType\":0},{\"groupId\":71,\"groupName\":\"电子钱包\",\"paymentPlatform\":9,\"useType\":0}]},\"paymentPlatform\":{1653:[17,1,18,7,9]},\"policyPrivilege\":{1653:{\"companyDescription\":\"地址：请联系客服到指定公司上门自取,营业时间：星期一至星期日9:00-18:00\",\"companyId\":1653,\"companyName\":\"金华\",\"deliveryMethod\":[1],\"deliveryTemplateID\":0,\"payMethod\":[{\"payGroupList\":[{\"groupId\":64,\"groupName\":\"贵阳商业银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":31,\"groupName\":\"中国邮政储蓄银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":62,\"groupName\":\"富滇银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":29,\"groupName\":\"中国光大银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":60,\"groupName\":\"广州银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":27,\"groupName\":\"中国银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":58,\"groupName\":\"厦门银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":56,\"groupName\":\"南京银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":21,\"groupName\":\"中国农业银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":19,\"groupName\":\"交通银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":50,\"groupName\":\"宁波银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":48,\"groupName\":\"中国平安银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":13,\"groupName\":\"中国建设银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":11,\"groupName\":\"招商银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":24,\"groupName\":\"广东发展银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":16,\"groupName\":\"中国工商银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":45,\"groupName\":\"上海银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":43,\"groupName\":\"杭州银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":41,\"groupName\":\"兴业银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":39,\"groupName\":\"上海浦东发展银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":37,\"groupName\":\"北京银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":68,\"groupName\":\"北京农商银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":35,\"groupName\":\"中信银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":33,\"groupName\":\"中国民生银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0}],\"payPlatform\":7},{\"payGroupList\":[{\"groupId\":124,\"groupName\":\"花呗分期\",\"paymentPlatform\":17,\"useType\":0}],\"payPlatform\":17},{\"payGroupList\":[{\"groupId\":122,\"groupName\":\"美国运通卡支付\",\"paymentPlatform\":18,\"useType\":0}],\"payPlatform\":18},{\"payGroupList\":[{\"groupId\":77,\"groupName\":\"微信扫码支付\",\"paymentPlatform\":1,\"useType\":0},{\"groupId\":1,\"groupName\":\"支付宝平台\",\"paymentPlatform\":1,\"useType\":0},{\"groupId\":4,\"groupName\":\"万事达卡平台\",\"paymentPlatform\":1,\"useType\":0}],\"payPlatform\":1},{\"payGroupList\":[{\"groupId\":71,\"groupName\":\"电子钱包\",\"paymentPlatform\":9,\"useType\":0}],\"payPlatform\":9}],\"privilege\":{}}}}}],\"totalIntegral\":0}';
    var t_projectCityId = '1653';
    var t_isVerification = 'false';
    var t_verifyCodecrypt = '3e96c0e57a130a3e5c08e88b1515bfa6';
    var t_queryCommodityVo = '{\"bef\":\"\",\"businessSubType\":2,\"businessType\":107001,\"cityId\":1653,\"commodity\":\"2|12552129^1^9110519\",\"oid\":0,\"projectId\":167146,\"ref\":\"\",\"sellChannel\":\"100100010001\",\"sign\":\"759bf9655264db4623907f6ef773a867\",\"tid\":\"mec_95fefdfe-1ff9-4597-b498-c0f7018c644e\",\"tradePlatform\":106002,\"tradeSubPlatform\":0,\"tradeThreePlatfrom\":0}';
    var t_deliveryCompanyIdMap = '{\"defaultCommodityGroupId\":{1:[1653]}}';
    var t_policyPrivilegeMap = '{\"defaultCommodityGroupId\":{1653:{\"companyDescription\":\"地址：请联系客服到指定公司上门自取,营业时间：星期一至星期日9:00-18:00\",\"companyId\":1653,\"companyName\":\"金华\",\"deliveryMethod\":[1],\"deliveryTemplateID\":0,\"payMethod\":[{\"payGroupList\":[{\"groupId\":64,\"groupName\":\"贵阳商业银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":31,\"groupName\":\"中国邮政储蓄银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":62,\"groupName\":\"富滇银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":29,\"groupName\":\"中国光大银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":60,\"groupName\":\"广州银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":27,\"groupName\":\"中国银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":58,\"groupName\":\"厦门银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":56,\"groupName\":\"南京银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":21,\"groupName\":\"中国农业银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":19,\"groupName\":\"交通银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":50,\"groupName\":\"宁波银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":48,\"groupName\":\"中国平安银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":13,\"groupName\":\"中国建设银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":11,\"groupName\":\"招商银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":24,\"groupName\":\"广东发展银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":16,\"groupName\":\"中国工商银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":45,\"groupName\":\"上海银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":43,\"groupName\":\"杭州银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":41,\"groupName\":\"兴业银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":39,\"groupName\":\"上海浦东发展银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":37,\"groupName\":\"北京银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":68,\"groupName\":\"北京农商银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":35,\"groupName\":\"中信银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0},{\"groupId\":33,\"groupName\":\"中国民生银行支付宝网关\",\"paymentPlatform\":7,\"useType\":0}],\"payPlatform\":7},{\"payGroupList\":[{\"groupId\":124,\"groupName\":\"花呗分期\",\"paymentPlatform\":17,\"useType\":0}],\"payPlatform\":17},{\"payGroupList\":[{\"groupId\":122,\"groupName\":\"美国运通卡支付\",\"paymentPlatform\":18,\"useType\":0}],\"payPlatform\":18},{\"payGroupList\":[{\"groupId\":77,\"groupName\":\"微信扫码支付\",\"paymentPlatform\":1,\"useType\":0},{\"groupId\":1,\"groupName\":\"支付宝平台\",\"paymentPlatform\":1,\"useType\":0},{\"groupId\":4,\"groupName\":\"万事达卡平台\",\"paymentPlatform\":1,\"useType\":0}],\"payPlatform\":1},{\"payGroupList\":[{\"groupId\":71,\"groupName\":\"电子钱包\",\"paymentPlatform\":9,\"useType\":0}],\"payPlatform\":9}],\"privilege\":{}}}}';
    var t_paymentPlatformMap = '{\"defaultCommodityGroupId\":{1653:[17,1,18,7,9]}}';
    var t_insuranceMap = '{\"defaultCommodityGroupId\":{}}';
    var t_buyCommoditys = '[{\"batchID\":\"9110519\",\"buyNum\":1,\"cityID\":1653,\"commodityID\":12552129}]';

    var t_frontICPLicenseType = '{\"explanation\":\"\",\"idType\":[1],\"licenseType\":1}';

    var t_businessType = '107001';
    var t_businessSubType = '2';
    var t_sellChannel='100100010001';
    var t_addCustomerUrl = 'https://security.damai.cn/securityCenter-front-web/customerManage/addCustomer?certType=1&platformCode=100100010001&sign=160ce5c106b86e5ffd35d16cc187abfb'

    //设置cnzzParam参数
    var cnzzParam = {
        'type':'submitpay',
        'title':'订单确认页',
        'view':{
            'orderId':'0',
            'userId':'118054305',
            '$pid':'167146'
        }
    };

</script>
<script type="text/javascript" src="http://g.alicdn.com/sd/sufei/0.3.94/app/common/sufei-jquery.js"></script>    <!-- footer start -->
<div class="dm-bottom-wrap">
    <div class="dm-bottom">
        <div class="dm-links">
            <a href="//www.damai.cn/companyintroduction.html" target="_blank">公司介绍</a>
            |
            <a href="//www.damai.cn/Trademark.html" target="_blank">品牌识别</a>
            |
            <a href="//www.damai.cn/QuestionDetail_186_396.html" target="_blank">企业荣誉</a>
            |
            <a href="//www.damai.cn/contactus.html" target="_blank">联系方式</a>
            |
            <a href="//www.damai.cn/privacy.html" target="_blank">隐私声明</a>
            |
            <a href="//www.damai.cn/QuestionDetail_187_397.html" target="_blank">合作招商</a>
            |
            <a href="//www.damai.cn/zhaopin.html" target="_blank">招聘信息</a>
            |
            <a href="//www.damai.cn/map.html" target="_blank">网站地图</a>
            |
            <a href="//www.damai.cn/FrdLink.html" target="_blank">友情链接</a>
        </div>
        <div class="dm-copyright">
            <p>
                <a href="//www.miitbeian.gov.cn" target="_blank">京ICP证031057号</a>
                <span>|</span>
                <a href="//www.miitbeian.gov.cn" target="_blank">京ICP备11043884号</a>
                <span>|</span>
                <a href="//www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010102000430" target="_blank">
                    <img src="//dui.dmcdn.cn/dm_2014/common/img/police.png" class="vm" />
                    京公网安备11010102000430号
                </a>
                <span>|</span>
                <a href="//dui.dmcdn.cn/dm_2014/common/img/logo/gbdsjm.jpg" target="_blank">广播电视节目制作经营许可证 (京)字第02253号</a>
            </p>
            <p>
                <a href="//dui.dmcdn.cn/dm_2014/common/img/logo/wlwhjy.jpg?v2016" target="_blank">网络文化经营许可证 京网文[2016]3438-413号</a>
                <span>|</span>
                <a href="//dui.dmcdn.cn/dm_2014/common/img/logo/yyxyc.jpg" target="_blank">营业性演出许可证 京市演587号</a>
            </p>
            <p>
                北京红马传媒文化发展有限公司 版权所有
                <a href="//www.damai.cn/">大麦网</a>
                Copyright 2003-2016 All Rights Reserved
            </p>
        </div>
    </div>
</div>
<script type="text/javascript" >
    if(typeof(dplus.define) == "function" && cnzzParam){
        dplus.define('page', function(page){
            page.setType(cnzzParam.type);//设置页面类型
            page.setTitle(cnzzParam.title);//设置页面标题
            page.view(cnzzParam.view); //必填
        });
    }
</script>
<!--<script type="text/javascript" src="//dui.damai.cn/dm_trade_system/multi/pc/common/js/mmPromise.js"></script>-->
<script type="text/javascript" src="//buy.damai.cn/js/mmPromise.js"></script>
<!-- footer end --><script type="text/javascript" id="beacon-aplus" src="//g.alicdn.com/alilog/mlog/aplus_v2.js" exparams="clog=o&aplus&sidx=aplusSidx&ckx=aplusCkx"></script>
<script type="text/javascript" src="//dui.dmcdn.cn/dm_trade_system/multi/pc/common/js/common.1.0.0.js?da789ca45014c7f1a78e"></script>
<script type="text/javascript" src="//dui.dmcdn.cn/mec_tradeportal/pc/common/js/index.1.0.0.js?da789ca45014c7f1a781"></script>
<script type="text/javascript" src="http://g.alicdn.com/sd/sufei/0.3.94/app/common/sufei-jquery.js"></script>

</body>
</html>