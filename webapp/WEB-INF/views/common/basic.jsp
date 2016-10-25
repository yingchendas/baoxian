<%--
  Created by IntelliJ IDEA.
  User: Lein
  Date: 16/8/24
  Time: 10:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<%@include file="/WEB-INF/views/common/tagLib.jsp" %>
<%@taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><decorator:title default="xxx"/> </title>
    <link rel="stylesheet" href="${path}/common/weui/dist/style/weui.min.css" />
    <link rel="stylesheet" type="text/css" href="${path}/common/ui/css/common/common.css"/>
    <script src="http://res.wx.qq.com/open/js/jweixin-1.1.0.js"></script>
    <decorator:head></decorator:head>
</head>
<body>
    <script type="text/javascript" src="${ctxCommon}/zepto/zepto.min.js"></script>
    <script type="text/javascript" src="${ctxJs}/touch.js"></script>
    <script type="text/javascript" src="${ctxJs}/lib/global.js"></script>
    <script type="application/javascript">
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
                        appId: data.message.appId, // 必填，公众号的唯一标识
                        timestamp:  data.message.js.timestamp, // 必填，生成签名的时间戳
                        nonceStr: data.message.js.noncestr, // 必填，生成签名的随机串
                        signature: data.message.js.signature,// 必填，签名，见附录1
                        jsApiList: ['onMenuShareTimeline','onMenuShareAppMessage'] // 必填，需要使用的JS接口列表，所有JS接口列表见附录2
                    });
                }
            },
            error: function () {
                Global.tool.toast("服务器错误");
            }
        })

        wx.ready(function(){
            wx.onMenuShareTimeline({
                title: 'U惠保-您的车险管家', // 分享标题
                link: 'wx.huaxinds.com/client/order/redirectShare?userId=<sec:authentication property="principal.id"/>', // 分享链接
                imgUrl: 'http://wx.huaxinds.com/client/common/ui/images/Uhuibao.jpg', // 分享图标
                success: function () {
                    // 用户确认分享后执行的回调函数
                },
                cancel: function () {
                    // 用户取消分享后执行的回调函数
                }
            });

            wx.onMenuShareAppMessage({
                title: 'U惠保-您的车险管家', // 分享标题
                desc: '专业、快速、精准的车险一站式服务平台，更多优惠快戳我看看...', // 分享描述
                link: 'wx.huaxinds.com/client/order/redirectShare?userId=<sec:authentication property="principal.id"/>', // 分享链接
                imgUrl: 'http://wx.huaxinds.com/client/common/ui/images/Uhuibao.jpg', // 分享图标
                type: '', // 分享类型,music、video或link，不填默认为link
                dataUrl: '', // 如果type是music或video，则要提供数据链接，默认为空
                success: function () {
                    // 用户确认分享后执行的回调函数
                },
                cancel: function () {
                    // 用户取消分享后执行的回调函数
                }
            });
        })
    </script>
    <decorator:body></decorator:body>
</body>
</html>

