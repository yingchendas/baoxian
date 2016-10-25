<%--
  Created by IntelliJ IDEA.
  User: xuran
  Date: 2016/8/27
  Time: 18:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/common/tagLib.jsp"%>
<html>
<head>
    <title>支付</title>
</head>
<body>
<script src="http://res.wx.qq.com/open/js/jweixin-1.1.0.js"></script>
<script>
    $(function () {
        $.ajax({
            url: '${path}/order/jsInit',
            type: 'post',
            data:{
                url:window.location.href
            },
            dataType:'json',
            success: function (data) {

                if (data.code == "success"){
                    console.log(JSON.stringify(data))
                    wx.config({
//        debug: true, // 开启调试模式,调用的所有api的返回值会在客户端alert出来，若要查看传入的参数，可以在pc端打开，参数信息会通过log打出，仅在pc端时才会打印。
                        appId: data.message.appId, // 必填，公众号的唯一标识
                        timestamp:  data.message.js.timestamp, // 必填，生成签名的时间戳
                        nonceStr: data.message.js.noncestr, // 必填，生成签名的随机串
                        signature: data.message.js.signature,// 必填，签名，见附录1
                        jsApiList: ['chooseWXPay'] // 必填，需要使用的JS接口列表，所有JS接口列表见附录2
                    });
                }
            },
            error: function () {
                Global.tool.toast("服务器错误");
            }
        })
    })

    wx.ready(function(){
        wx.chooseWXPay({
            timestamp: ${pay.timeStamp}, // 支付签名时间戳，注意微信jssdk中的所有使用timestamp字段均为小写。但最新版的支付后台生成签名使用的timeStamp字段名需大写其中的S字符
            nonceStr: '${pay.nonceStr}', // 支付签名随机串，不长于 32 位
            package: 'prepay_id=${pay.package_id}', // 统一支付接口返回的prepay_id参数值，提交格式如：prepay_id=***）
            signType: '${pay.signType}', // 签名方式，默认为'SHA1'，使用新版支付需传入'MD5'
            paySign: '${pay.sign}', // 支付签名
            success: function (res) {
                console.log(res)
                Global.tool.success();
                // 支付成功后的回调函数
                window.location.href="${path}/order/payReturn?orderId=${orderId}"
            }
        });
    })
    wx.error(function(res){
        console.log("失败")
    })
</script>
</body>
</html>
