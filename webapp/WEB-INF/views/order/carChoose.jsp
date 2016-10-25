<%--
  Created by IntelliJ IDEA.
  User: xuran
  Date: 2016/8/25
  Time: 11:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/common/tagLib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <link rel="stylesheet" type="text/css" href="${ctxWeuiCss}/weui.min.css"/>
    <link rel="stylesheet" type="text/css" href="${ctxCss}/common/common.css"/>
    <title>选择车辆</title>
    <style type="text/css">

        .car_info{
            width: 97%;
            margin: 0 .5%;
            padding: .6rem 0;
            margin-top: 10px;
        }
        .car_info>p{
            padding: .3rem;
        }
        .addr_tittle ,.addr_info p{
            padding:.5rem 1rem;
        }
        .active{
            color: #04BE02;
            border: 1.5px solid #04BE02;
        }
        .icon-gou{
            top:-11px;
            right: -1px;
        }
        .addr_info_body{
            width: 100%;
        }
    </style>
</head>
<body id="bodybox">
<div class="bd container">
    <div class="car_info bg_f active clearfix pr">
        <p>东风标致 标志3008 2.0L 手自一体 2013 2013经典款</p>
        <p >新车参考价161700元</p>
        <i class="iconfont icon-gou f2m pa"></i>
    </div>
    <div class="car_info bg_f  clearfix pr">
        <p>东风标致 标志3008 2.0L 手自一体 2013 2013经典款</p>
        <p >新车参考价161700元</p>
        <i class="iconfont icon-gou f2m pa" style="display: none;"></i>
    </div>
</div>
<div class="tc" style="margin-top: 20px;">
    <a id="carBack" class="weui_btn weui_btn_mini  weui_btn_plain_primary" style="width: 45%;">不是以上车型</a>
</div>
<div class="tc" style="margin-top: 20px;">
    <a id="submit" class="weui_btn  weui_btn_primary" style="width: 90%;">确认</a>
</div>
<script>
    /*选择车辆信息*/
    $(".car_info").tap(function(){
        var item = $(this);
        item.addClass("active");
        item.find(".iconfont").css("display","block");
        item.siblings().removeClass("active");
        item.siblings().find(".iconfont").css("display","none");

    })
    $("#carBack").tap(function(){
        history.go(-1);
    })

    $("#submit").tap(function(){
        window.location.href="${path}/order/chooseCase"
    })
</script>
</body>
</html>
