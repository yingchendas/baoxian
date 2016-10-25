<%--
  Created by IntelliJ IDEA.
  User: xuran
  Date: 2016/10/10
  Time: 14:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/common/tagLib.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>U惠保-您的车险管家</title>
    <link rel="stylesheet" type="text/css" href="${ctxWeuiCss}/weui.min.css"/>
</head>
<body style="background: #fff;">
<div style="position: relative;">
    <img src="${ctxImg}/share.png" width="100%" alt="" />
    <img src="${path}/user/commission/downloadQr?uid=${userId}" width="34%" style="position: absolute;left: 13%;bottom: 20%;" alt="" />
</div>

</body>
</html>
