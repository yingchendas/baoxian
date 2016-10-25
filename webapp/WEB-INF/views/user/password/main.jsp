<%--
  Created by IntelliJ IDEA.
  User: Mr.wanG
  Date: 2016/9/3
  Time: 22:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/common/tagLib.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>密码管理</title>
</head>
<body id="bodyBox">
<div class="container">
    <div class="weui_cells weui_cells_access">
        <c:if test="${hasTp}">
            <a class="weui_cell" href="${path}/user/pswd/reset">
                <div class="weui_cell_bd weui_cell_primary">
                    <p>修改交易密码</p>
                </div>
                <div class="weui_cell_ft">
                </div>
            </a>
        </c:if>
        <c:if test="${!hasTp}">
        <a class="weui_cell" href="${path}/user/pswd/init">
            <div class="weui_cell_bd weui_cell_primary">
                <p>设置交易密码</p>
            </div>
            <div class="weui_cell_ft">
            </div>
        </a>
        </c:if>
    </div>
</div>
</body>
</html>