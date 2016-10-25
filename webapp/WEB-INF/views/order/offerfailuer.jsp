<%--
  Created by IntelliJ IDEA.
  User: xuran
  Date: 2016/9/13
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/common/tagLib.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>出错啦</title>
    <link rel="stylesheet" type="text/css" href="${ctxWeuiCss}/weui.min.css"/>
    <style type="text/css">
        .weui_cells_form{
            padding: 10px;
            background: #fff;
            width: 88%;
            margin: 20px auto;
            border: 3px dashed #04BE02;
            border-color: #FF7F00 #04BE02 #FF7F00 #04BE02;
            border-radius: 10px;
        }
        .weui_cells_form .weui_cell:before{
            border: none;
        }
    </style>
</head>
<body id="bodybox">
<div class="container bd">
    <header>
        <div class="weui_msg">
            <div class="weui_icon_area"><i class="weui_icon_warn weui_icon_msg c_04b"></i></div>
            <div class="weui_text_area">
                <p class="weui_msg_desc">${fail}</p>
            </div>
        </div>

    </header>

    <div style="margin-top: 10PX;">
        <a href="${path}/order/redirectIndex" id="rec_btn" class="weui_btn  weui_btn_primary" style="width: 95%;">返回首页</a>
    </div>
</div>
</body>
</html>
