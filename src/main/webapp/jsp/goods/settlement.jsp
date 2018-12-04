<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en" delegate-events="click,input,compositionstart,compositionend,keyup,blur,focus,change">
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
<body ms-controller="main" class="" data-spm="orderconfirm">
<div id="_umfp" style="display:inline;width:1px;height:1px;overflow:hidden"></div>
<div class="top-s">
    <div class="top-con">
        <ul class="fl">
            <li class="mini-logo">
                <a href="${pageContext.request.contextPath }/show/index" title="大麦网"><img src="${ctx}/static/image/mini-logo.png" alt="大麦网"></a>
            </li>
            <li id="headerUserinfo" class="dm-info">
                <span class="dm-name" data-id="${user.id}">HI,${user.nickname}</span>
                <a class="dm-exit" title="退出" href="${ctx}/user/destroy/?Info=1">退出</a>
            </li>
            <li class="mydm o" onmouseenter="showInfo(jQuery(this))" onmouseleave="hideInfo(jQuery(this))">
                <div class="dm-t mydm-t">
                    <a href="${ctx}/user/modular/1" target="_blank">我的大麦</a>
                    <b></b>
                </div>
                <div class="dm-c mydm-c">
                    <a href="${ctx}/user/modular/1" target="_blank" title="个人信息">个人信息</a>
                    <a href="${ctx}/order/query/${user.id}/0" target="_blank" title="订单管理">订单管理</a>
                    <a href="${ctx}/order/reduce/${user.id}" target="_blank" title="我的优惠券">我的优惠券</a>
                </div>
            </li>
        </ul>
    </div>
</div>
<div class="g-doc" ms-controller="main">
    <div ms-controller="component"></div>
    <div class="g-hd"></div>
    <div class="g-bd">
        <div class="m-panel m-panel-default">
            <img src="${ctx}/static/image/shopping_two_flow.jpg">
            <div class="hd"><h2 class="tt">购票人信息</h2></div>
            <div class="bd">
                <div class="m-tab m-delivery m-delivery-1">
                    <div class="hd">
                        <div class="itm z-crt">
                            <i class="ico ico-express"></i>
                            <span class="txt">快递配送</span>
                        </div>
                    </div>
                    <div class="bd">
                        <div class="itm z-show">
                            <div class="m-panel m-panel-gray">
                                <div class="hd">
                                    <div class="lbox"><h2 class="tt">收货人信息</h2></div>
                                </div>
                                <div class="bd">
                                    <div class="m-m-list">
                                        <ul>

                                            <c:forEach var="obj" items="${addressList}" varStatus="index">
                                                <li>
                                                    <input type="hidden" id="addressId" value="${obj.addressId}">
                                                    <input name="_consignee" type="radio" data-addres="${obj.provinceName.areainfoName}${obj.cityName.areainfoName}${obj.areaName.areainfoName}" value="${obj.addressId}" <c:if test="${index.index==0}"> checked</c:if> >
                                                    <span value="${index.index}" >
                                                配送地址：${obj.addressAddressee}&nbsp; ${obj.provinceName.areainfoName}${obj.cityName.areainfoName}${obj.areaName.areainfoName}
                                                <span style="width:150px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;display: inline-block; vertical-align: bottom">${obj.detailed}</span>
                                                &nbsp;${obj.phone}
                                            </span>
                                                </li>
                                            </c:forEach>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="m-panel m-panel-default">
            <div class="hd">
                <h2 class="tt">选择付款方式</h2>
            </div>
            <div class="bd">
                <div class="m-form" id="paymethod">
                    <div class="itm itm-2">
                        <label class="u-radio">
                            <input type="radio" value="1" name="paymethod" checked="checked">
                            <span class="txt">网上付款</span>
                        </label>
                    </div>
                    <div class="itm itm-2" style="display: none;">
                        <label class="u-radio">
                            <input type="radio" value="3" name="paymethod">
                            <span class="txt">货到付款</span>
                        </label>
                    </div>
                </div>
            </div>
        </div>
        <div class="m-panel m-panel-default">
            <div class="hd">
                <h2 class="tt">商品清单</h2>
            </div>
            <div>
                <div class="m-table-5">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tbody>
                        <tr>
                            <th scope="col" class="w1">商品名称</th>
                            <th scope="col" class="w2">座位号</th>
                            <th scope="col" class="w3">价格</th>
                            <th scope="col" class="w4">数量</th>
                            <th scope="col" class="w5">价格小计（元）</th>
                        </tr>
                        </tbody>
                    </table>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tbody>

                        <c:forEach var="obj" items="${productsList}" varStatus="index">
                            <tr>
                                <td class="w1">
                                    <input value="${obj.showId}" class="showId" type="hidden">
                                    <p>
                                        <a target="_blank" href="${ctx}/show/detail/${obj.showId}">${obj.showNmae}</a>
                                        ${obj.showTime}
                                    </p>
                                </td>
                                <td class="w2">
                                    <c:if test="${obj.seat==null}">
                                        <p>暂无座位信息</p>
                                    </c:if>
                                    <p></p>
                                </td>
                                <td class="w3">
                                    <p>${obj.price}</p>
                                </td>
                                <td class="w4">
                                    <p>${obj.num}</p>
                                </td>
                                <td class="w5">
                                    <p>${obj.subtotal}</p>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <table style="width: 100%;">
                        <tbody>
                        <tr>
                            <td>
                                <span class="new-hb">合计：¥ ${nums}</span>
                                <a href="javascript:void(0);" class="new-link">《退换货约定》</a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="bd">
                <div class="m-discount">
                    <div class="hd">
                        <div class="m-collapse m-collapse-1">

                        </div>
                    </div>
                    <div class="bd">
                        <div class="row">
                            <p class="txt">
                                商品金额：<span class="cell"  >¥ ${nums}</span>
                            </p>
                        </div>
                        <div class="row">
                            <p class="txt">
                                商品运费：
                                <span class="cell">
                                <span>+</span>¥ 0.00
                            </span>
                            </p>
                        </div>
                    </div>
                    <div class="ft">
                        <div class="row">
                            <p class="txt txt-total">
                                待支付总额：<span class="txt-danger" data-nums="${nums}" data-num="${num}">¥ ${nums}</span>
                            </p>
                        </div>
                        <div class="row">
                            <label class="u-checkbox">
                                <input type="checkbox" value="1" checked="checked" onclick="chilk(jQuery(this))">
                                <span class="txt">
                                我已阅读并同意
                                <a href="javascript:void(0);" target="_blank" class="txt-primary">《大麦网订票服务条款》</a>
                            </span>
                            </label>
                        </div>
                        <div class="row">
                            <p class="txt">同意“票品为不记名凭证，请您妥善保管，遗失不补”</p>
                        </div>
                        <div class="row">
                            <button id="orderConfirmSubmit" class="c_submit u-btn u-btn-c2 u-btn-rds u-btn-lg z-dis1">
                                同意以上协议并提交订单
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</div>
<div class="m-mask z-hide"></div>
<div class="m-mask1 z-hide"></div>
<div id="m-mask"></div>
<div id="guide"><a href="http://www.360.cn/" class="guide-360"></a><a
        href="http://www.google.cn/intl/zh-CN/chrome/browser/" class="guide-ch"></a><a
        href="https://support.microsoft.com/zh-cn/help/17621/internet-explorer-downloads" class="guide-ie"></a><img
        src="${ctx}/static/images/g-weixin.jpg" class="guide-weixin">
</div>
<!-- footer start -->
<div class="dm-bottom-wrap">
    <div class="dm-bottom">
        <div class="dm-links">
            <a href="https://www.damai.cn/companyintroduction.html" target="_blank">公司介绍</a>
            |
            <a href="https://www.damai.cn/Trademark.html" target="_blank">品牌识别</a>
            |
            <a href="https://www.damai.cn/QuestionDetail_186_396.html" target="_blank">企业荣誉</a>
            |
            <a href="https://www.damai.cn/contactus.html" target="_blank">联系方式</a>
            |
            <a href="https://www.damai.cn/privacy.html" target="_blank">隐私声明</a>
            |
            <a href="https://www.damai.cn/QuestionDetail_187_397.html" target="_blank">合作招商</a>
            |
            <a href="https://www.damai.cn/zhaopin.html" target="_blank">招聘信息</a>
            |
            <a href="https://www.damai.cn/map.html" target="_blank">网站地图</a>
            |
            <a href="https://www.damai.cn/FrdLink.html" target="_blank">友情链接</a>
        </div>
        <div class="dm-copyright">
            <p>
                <a href="https://www.miitbeian.gov.cn/" target="_blank">京ICP证031057号</a>
                <span>|</span>
                <a href="https://www.miitbeian.gov.cn/" target="_blank">京ICP备11043884号</a>
                <span>|</span>
                <a href="https://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010102000430" target="_blank">
                    <img src="${ctx}/static/image/police.png" class="vm">
                    京公网安备11010102000430号
                </a>
                <span>|</span>
                <a href="https://dui.dmcdn.cn/dm_2014/common/img/logo/gbdsjm.jpg" target="_blank">广播电视节目制作经营许可证
                    (京)字第02253号</a>
            </p>
            <p>
                <a href="https://dui.dmcdn.cn/dm_2014/common/img/logo/wlwhjy.jpg?v2016" target="_blank">网络文化经营许可证
                    京网文[2016]3438-413号</a>
                <span>|</span>
                <a href="https://dui.dmcdn.cn/dm_2014/common/img/logo/yyxyc.jpg" target="_blank">营业性演出许可证 京市演587号</a>
            </p>
            <p>
                北京红马传媒文化发展有限公司 版权所有
                <a href="https://www.damai.cn/">大麦网</a>
                Copyright 2003-2016 All Rights Reserved
            </p>
        </div>
    </div>
</div>
<!-- footer end -->
<script type="text/javascript" src="${ctx}/static/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${ctx}/static/js/booking/payment.js"></script>
</body>
</html>