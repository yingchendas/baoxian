<%--
  Created by IntelliJ IDEA.
  User: xuran
  Date: 2016/9/7
  Time: 17:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<%@include file="/WEB-INF/views/common/tagLib.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>提交成功</title>
    <link rel="stylesheet" type="text/css" href="../../weui/dist/style/weui.min.css">
</head>
<body id="bodyBox">
<div class="weui_msg">
    <div class="weui_icon_area"><i class="weui_icon_success weui_icon_msg"></i></div>
    <div class="weui_text_area">
        <h2 class="weui_msg_title">提交成功</h2>
        <p class="weui_msg_desc">尊敬的U惠保用户，您的车险算价已提交。保险公司算价成功后，我们会第一时间告知您，请留意公众号的推送信息，您也可以在“个人中心-保单管理-等待系统处理”中查看。</p>
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
