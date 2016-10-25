<%--
  Created by IntelliJ IDEA.
  User: Mr.wanG
  Date: 2016/8/28
  Time: 11:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/common/tagLib.jsp"%>
<html>
<head>
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>经销商认证</title>
    <style type="text/css">
        .notice{
            background: rgba(0,0,0,.3);
            width: 90%;
            margin: 10px auto;
            border-radius: 5px;
            text-align: center;
            padding: .5rem;
            display: none;
        }
    </style>
</head>
<body>
    <h5 class="notice c_c22" style="display: block"> 认证审核中，请稍后！处理时效为1个工作日，节假日顺延</h5>

    <div class="tc">
        <a href="${path}/user/center" id="subtn" class="weui_btn weui_btn_primary" style="width: 40%;">返回</a>
    </div>
</body>
</html>
