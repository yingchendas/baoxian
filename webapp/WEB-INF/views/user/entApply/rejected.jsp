<%--
  Created by IntelliJ IDEA.
  User: Mr.wanG
  Date: 2016/8/28
  Time: 11:49
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
<div class="container bd">
<!--已审核通过-->
<div class="weui_cells weui_cells_form">
    <div class="weui_cell">
        <div class="weui_cell_hd"><label class="weui_label">认证状态</label></div>
        <div class="weui_cell_bd weui_cell_primary pr" style="color:red">
            认证失败
        </div>
    </div>

</div>
<div class="weui_cells weui_cells_form">
    <div class="weui_cell">
        <div class="weui_cell_hd"><label class="weui_label">备注</label></div>
        <div class="weui_cell_bd weui_cell_primary pr">
            ${info.des}
        </div>
    </div>
</div>
    <h5 class="c_ff7 f12" style="padding: .5rem;">&nbsp;</h5>
</div>
<div class="tc">
    <a href="${path}/user/ent/reApply" id="subtn" class="weui_btn weui_btn_primary" style="width: 80%;">修改认证信息</a>
</div>
</body>
</html>
