<%--
  Created by IntelliJ IDEA.
  User: xuran
  Date: 2016/8/30
  Time: 10:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/common/tagLib.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>支付成功</title>
    <link rel="stylesheet" type="text/css" href="${ctxWeuiCss}/weui.min.css"/>
</head>
<body id="bodyBox">
<div class="weui_msg">
    <div class="weui_icon_area"><i class="weui_icon_success weui_icon_msg"></i></div>
    <div class="weui_text_area">
        <h2 class="weui_msg_title">支付成功</h2>
        <!--<p class="weui_msg_desc">内容详情，可根据实际需要安排</p>-->
    </div>
    <div class="weui_opr_area">
        <p class="weui_btn_area">
            <a href="${path}/order/redirectIndex" class="weui_btn weui_btn_primary">返回</a>
            <!--<a href="#" class="weui_btn weui_btn_default">取消</a>-->
        </p>
    </div>
    <!--<div class="weui_extra_area">
        <a href="">查看详情</a>
    </div>-->
</div>
</body>
</html>
