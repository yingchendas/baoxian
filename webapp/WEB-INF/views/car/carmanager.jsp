<%--
  Created by IntelliJ IDEA.
  User: xuran
  Date: 16/8/17
  Time: 09:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<%@include file="/WEB-INF/views/common/tagLib.jsp"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>车辆管理</title>
    <link rel="stylesheet" href="${ctxWeuiCss}/weui.min.css" />
    <link rel="stylesheet" type="text/css" href="${ctxCss}/common/common.css"/>
    <style type="text/css">
        body{
            background: #F8F8F8;
        }
        .car_info{
            padding: 1rem;
        }
    </style>
</head>
<body>
<div class="bd">
    <div class="weui_cells">
        <c:forEach items="${lists}" var="list">
            <div class="weui_cell car_info">
                <div class="weui_cell_bd weui_cell_primary">
                    <p>${list.plate_no}</p>
                </div>
                <a href="${path}/car/redirectToUpdate?id=${list.id}" class="c_ff7">
                    编辑
                </a>
                <div class="weui_cell_ft c_666 delBtn" cls="${list.id}" style="margin-left: 10px;">删除</div>
            </div>
        </c:forEach>
    </div>
</div>
<footer class="weui_tab" style="position: fixed;bottom: 0;width: 100%;z-index: 999;height: 50px;">
    <div class="weui_tab_bd">

    </div>
    <div class="weui_tabbar">
        <a href="${path}/car/redirectToUpdate" class="weui_btn  weui_btn_primary" style="width: 100%;">添加车辆</a>
    </div>
</footer>

<script>
    $(function(){
        //删除车辆
        $(".delBtn").tap(function(){
            var id = $(this).attr("cls");
            window.location.href="${path}/car/delete?id="+id;
        })
    })
</script>
</body>
</html>
