<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- saved from url=(0536)https://ipassport.damai.cn/mini_login.htm?lang=zh_cn&appName=damai&appEntrance=default&styleType=vertical&bizParams=&notLoadSsoView=true&notKeepLogin=false&isMobile=false&returnUrl=https%3A%2F%2Fpassport.damai.cn%2Fdologin.htm%3FredirectUrl%3Dhttps%253A%252F%252Fx.damai.cn%252Fmarkets%252Fdmpc%252Fpoplogin_callback%26platform%3D106002&cssUrl=https://g.alicdn.com/??damai-mod/kissy-loginmask/0.0.11/skin.css&regUrl=https%3A%2F%2Fpassport.damai.cn%2Fregister&plainReturnUrl=https%3A%2F%2Fpassport.damai.cn%2Flogin&rnd=0.0670101026699843 -->
<html lang="en" data-spm-anchor-id="0.0.0.i0.64cc79f463VKNH">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta name="robots" content="noodp, noydir">
    <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Expires" content="-1">
    <title>Login</title>
    <link rel="shortcut icon" href="https://g.alicdn.com/vip/havana-login/0.3.2/images/favicon.ico?v=20141022"
          type="image/x-icon">
    <link href="${ctx}/static/cssGoodsLogin/index.css" rel="stylesheet" type="text/css">

    <%--<link href="./Login_files/damai.css" rel="stylesheet" type="text/css">--%>
    <link href="${ctx}/static/cssGoodsLogin/saved_resource.css" rel="stylesheet" type="text/css">
</head>
<body id="mini-login-body" scroll="no" class="damai lang-zh_CN   pc  theme-default">

<script>
    window.viewConfig = {
        "api": {
            "smsLoginApi": "/damai/user/doLogin",
            "loginApi": "/damai/user/doLogin",
            "smsLoginRegApi": "/newlogin/sms/reg.do",
            "aKeyCheckApi": "/newlogin/akey-query.do",
            "getQRCodeApi": "/newlogin/qrcode/generate.do",
            "checkQRCodeApi": "/newlogin/qrcode/query.do",
            "accountCheckApi": "/damai/user/doLogin",
            "aKeyPushApi": "/newlogin/akey-push.do",
            "sendSmsApi": "/newlogin/sms/send.do",
            "hasLoginApi": "/newlogin/hasLogin.do"
        },
        "defaultView": "password",
        "inputDeleteEnable": false,
        "labelType": "icon",
        "loginTypes": [{"title": "密码登录", "type": "password"}, {"title": "短信登录", "type": "sms"}, {
            "title": "扫码登录",
            "type": "qrcode"
        }],
        "machineVerifyType": "nocaptcha",
        "pwaEffect": false,
        "rsaExponent": "10001",
        "rsaModulus": "d3bcef1f00424f3261c89323fa8cdfa12bbac400d9fe8bb627e8d27a44bd5d59dce559135d678a8143beb5b8d7056c4e1f89c4e1f152470625b7b41944a97f02da6f605a49a93ec6eb9cbaf2e7ac2b26a354ce69eb265953d2c29e395d6d8c1cdb688978551aa0f7521f290035fad381178da0bea8f9e6adce39020f513133fb",
        "toastErrorStyle": false,
        "viewCfg": {
            "password": {
                "moduleCfg": {
                    "blockCfg": {
                        "snsLogin": {
                            "snsConfig": {
                                "iconSize": 22,
                                "iframeUrl": "https://ipassport.damai.cn/sns_oauth.htm",
                                "loginType": [{
                                    "name": "weixin",
                                    "responseAction": "window",
                                    "text": "sign with weixin"
                                }, {"name": "qq", "responseAction": "window", "text": "sign with qq"}, {
                                    "name": "weibo",
                                    "responseAction": "window",
                                    "text": "sign with weibo"
                                }, {"name": "alipay", "responseAction": "window", "text": "sign with alipay"}]
                            }, "type": "snsLogin"
                        },
                        "forgotPasswordLink": {
                            "href": "/damai/jsp/user/retrievePassword1.jsp",
                            "text": "忘记密码",
                            "type": "link"
                        },
                        "registerLink": {"href": "/damai/jsp/user/register.jsp", "text": "免费注册", "type": "link"}
                    },
                    "blockClassMapping": {"block8": "sns-login-block", "block9": "login-links"},
                    "blockLayout": {"block8": ["snsLogin"], "block9": ["forgotPasswordLink", "registerLink"]}
                }, "showMobileLogin": false
            },
            "qrcode": {
                "moduleCfg": {
                    "blockCfg": {"title": {"text": "请升级至大麦最新版本", "type": "text"}},
                    "blockClassMapping": {"block0": "qrcode-login-title"},
                    "blockLayout": {"block0": ["title"]}
                },
                "qrCodeImgUrl": "https://gcodex.alicdn.com/qrcode.do?biz_code=havana&size=140&content=",
                "size": 130,
                "useImgQrCode": true
            }
        },
        "viewStyle": "tab"
    };
    window.viewData = {
        "appEntrance": "damai",
        "appName": "damai",
        "countryAreaConfig": {
            "countryList": [{
                "areaName": "中国大陆",
                "checkKey": "^(86){0,1}1\\d{10}$",
                "countryCode": "CN",
                "phoneCode": "86"
            }, {
                "areaName": "中国香港",
                "checkKey": "^(00){0,1}(852){1}0{0,1}[1,5,6,9](?:\\d{7}|\\d{8}|\\d{12})$",
                "countryCode": "HK",
                "phoneCode": "852"
            }, {
                "areaName": "中国澳门",
                "checkKey": "^(00){0,1}(853){1}6\\d{7}$",
                "countryCode": "MO",
                "phoneCode": "853"
            }, {
                "areaName": "中国台湾地区",
                "checkKey": "^(00){0,1}(886){1}0{0,1}[6,7,9](?:\\d{7}|\\d{8}|\\d{10})$",
                "countryCode": "TW",
                "phoneCode": "886"
            }], "defaultCountryCode": "CN"
        },
        "foreign": false,
        "isMobile": false,
        "lang": "zh_CN",
        "loginFormData": {
            "appEntrance": "damai",
            "appName": "damai",
            "bizParams": "",
            "csrf_token": "xOyrjg264ZDzyuxdMgURj5",
            "fromSite": -2,
            "hsiz": "1aad19bd97728a8062fa4cdb7737be50",
            "isMobile": false,
            "lang": "zh_CN",
            "mobile": false,
            "returnUrl": "https://passport.damai.cn/dologin.htm?redirectUrl=https%3A%2F%2Fx.damai.cn%2Fmarkets%2Fdmpc%2Fpoplogin_callback&platform=106002",
            "umidToken": "5117c111dfeb2d0bba233169356d472e405f2ee0"
        },
        "mobile": false,
        "nocaptchaAppKey": "CF_APP_TBLogin_PC",
        "returnUrl": "https://passport.damai.cn/dologin.htm?redirectUrl=https%3A%2F%2Fx.damai.cn%2Fmarkets%2Fdmpc%2Fpoplogin_callback&platform=106002",
        "showAutioSlipCode": false,
        "umidEncryptAppName": "090D1F110F1878292829161C",
        "umidServer": "https://ynuf.alipay.com",
        "umidServiceLocation": "cn",
        "umidToken": "5117c111dfeb2d0bba233169356d472e405f2ee0"
    };
    window._lang = {
        "error-login-mobile-empty": "请输入手机号码",
        "view-mobile-country-area-popup-cancel-btn-title": "取消",
        "view-pwdlogin-mobile-loginid-title": "手机号",
        "view-qrcodelogin-expired-title": "二维码已失效",
        "view-mobile-country-area-popup-ok-btn-title": "确认",
        "view-qrcodelogin-refresh-tips": "请刷新二维码后重新扫码",
        "error-login-click-nocaptcha-empty": "请点击下方圆圈进行验证",
        "error-login-nocaptcha-empty": "请拖动滑块完成验证",
        "view-smslogin-smscode-get-text": "获取验证码",
        "view-akey-login-btn-text": "通过手机安全登录",
        "error-login-smsCode-empty": "请输入短信验证码",
        "view-pwdlogin-loginid-title": "登录名",
        "view-qrcodelogin-bottom-desc": "打开<a href=\"http://mobile.damai.cn\" target=\"_blank\">大麦手机客户端</a><br/>扫一扫登录",
        "view-pwdlogin-password-title": "登录密码",
        "view-login-form-loginid-placeholder": "请输入手机号或邮箱",
        "error-login-checkcode-empty": "请输入验证码",
        "view-akey-login-push-success-msg": "请求发送成功",
        "error-fm-login-id-empty": "请输入手机号或邮箱",
        "view-qrcodelogin-explain-tips": "手机扫码 安全登录",
        "view-akey-login-push-error-tip": "请刷新后重新发送请求",
        "view-qrcodelogin-canceled-title": "登录失败",
        "view-smslogin-loginid-title": "手机号：",
        "view-smslogin-reg-agreement": "同意 <a href=\"https://x.damai.cn/markets/app/agreement\" target=\"_blank\">《大麦网会员服务协议》</a>及<a href=\"https://x.damai.cn/markets/app/clause\"  target=\"_blank\">《隐私权专项》</a>",
        "view-sms-code-send-suc-tip": "短信验证码已发送，可能会有延后请耐心等待",
        "view-akey-login-push-error-msg": "登录失败",
        "view-smslogin-smscode-title": "验证码：",
        "view-login-form-mobile-loginid-placeholder": "请输入手机号",
        "view-qrcodelogin-scaned-tips": "请在手机上根据提示确认登录",
        "error-login-havana-audiocheckcode-empty": "请输入语音验证码",
        "view-login-form-password-placeholder": "请输入登录密码",
        "view-login-button-loging-button-text": "登录中...",
        "view-smslogin-reg-button-title": "同意协议并注册",
        "view-dingtalk-qrcode-login-title": "钉钉扫码登录",
        "view-login-haslogin-other-account": "使用其他帐户登录",
        "view-qrcodelogin-master-title": "扫码登录",
        "view-smslogin-switch-account": "切换账号",
        "view-akey-login-push-error-refresh-btn-text": "请点击刷新",
        "view-qrcodelogin-button-title": "刷新二维码",
        "view-haslogin-button-login-button-text": "快速进入",
        "error-fm-login-password-empty": "请输入密码",
        "view-smslogin-smscode-placeholder": "请输入验证码",
        "view-smslogin-smscode-count-text": "秒后重发",
        "view-login-image-checkcode-placeholder": "图片验证码",
        "view-smslogin-mobile-pattern-error": "手机号码格式不正确，请重新输入",
        "view-qrcodelogin-scaned-title": "扫描成功！",
        "view-smslogin-loginid-placeholder": "请输入手机号",
        "view-login-button-login-button-text": "登录",
        "view-smslogin-smscode-timeout-text": "重新发送",
        "view-haslogin-button-loging-button-text": "快速进入",
        "view-akey-login-push-success-confirm-tip": "请在手机上确认登录",
        "view-login-form-checkcode-title": "验证码",
        "error-network-busy": "网络繁忙，请稍后重试",
        "error-send-verification-code-first": "请先发送短信验证码",
        "view-login-haslogin-title": "检测到您的以下帐号已登录，请直接进入："
    };
</script>

<script type="text/javascript" charset="utf-8" src="${ctx}/static/js/booking/index.js(2).js"></script>
</body>
</html>