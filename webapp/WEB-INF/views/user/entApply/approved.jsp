<%--
  Created by IntelliJ IDEA.
  User: Mr.wanG
  Date: 2016/8/28
  Time: 11:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/common/tagLib.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
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
<body id="bodybox">
<!--已审核通过-->
<div class="weui_cells weui_cells_form">
    <div class="weui_cell">
        <div class="weui_cell_hd"><label class="weui_label">认证状态</label></div>
        <div class="weui_cell_bd weui_cell_primary pr">
            <input class="weui_input" disabled="disabled" type="text" placeholder="认证成功"/>
        </div>
    </div>

</div>
<div class="weui_cells weui_cells_form">
    <div class="weui_cell">
        <div class="weui_cell_hd"><label class="weui_label">经销商</label></div>
        <div class="weui_cell_bd weui_cell_primary pr">
            <input class="weui_input" disabled="disabled" type="text" placeholder="${info.company_name}"/>

        </div>
    </div>
    <div class="weui_cell">
        <div class="weui_cell_hd"><label class="weui_label">门店信息</label></div>
        <div class="weui_cell_bd weui_cell_primary pr">
            <input class="weui_input" disabled="disabled" type="text" placeholder="${info.store_info}"/>

        </div>
    </div>
    <div class="weui_cell">
        <div class="weui_cell_hd"><label class="weui_label">绑定手机</label></div>
        <div class="weui_cell_bd weui_cell_primary pr">
            <input class="weui_input" disabled="disabled" type="text" placeholder="${info.mobile}"/>
        </div>
    </div>
</div>
</body>
</html>
