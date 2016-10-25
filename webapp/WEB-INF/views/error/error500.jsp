<%--
  Created by IntelliJ IDEA.
  User: xuran
  Date: 2016/9/12
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<%@include file="/WEB-INF/views/common/tagLib.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <link rel="stylesheet" href="${path}/common/weui/dist/style/weui.min.css" />
    <link rel="stylesheet" type="text/css" href="${path}/common/ui/css/common/common.css"/>
    <title>500</title>
</head>
<body id="bodybox">
<div class="container bd" style="text-align: center;padding: 25% 0;">
    <img src="${ctxImg}/505.png" alt="" />
    <h4>出错啦！</h4>
    <p style="font-size:12px">链接不到服务器，我们正在努力加载...</p>
</div>
<div style="margin-top: 10PX;">
    <a href="${path}/order/redirectIndex" id="rec_btn" class="weui_btn  weui_btn_primary" style="width: 66%;">返回首页</a>
</div>
</body>
</html>
