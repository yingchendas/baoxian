<%--
  Created by IntelliJ IDEA.
  User: Mr.wanG
  Date: 2016/8/27
  Time: 16:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/common/tagLib.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>赚佣金</title>
    <link rel="stylesheet" type="text/css" href="${ctxCss}/mui.css"/>
    <style type="text/css" media="all">
        header{
            padding: 1.1rem;
        }

        #wrapper {
            position:absolute; z-index:1;
            top:154px; bottom:48px; left:-9999px;
            width:100%;
            background:#f8f8f8;
            height: 80%;
            overflow:auto;
        }
        #thelist li{
            border-bottom: 1px solid #ccc;
        }
        #thelist li>div{
            width: 33.3%;
            text-align: center;
            padding: .5rem 0;
        }
        .recommend_time{
            line-height: 43px;

        }
    </style>
</head>
<body id="bodybox">
<div class="container bd">
    <!--<header class="tc bg_f" >
        <h5 class="f17 c_666">您的佣金余额为</h5>
        <h3 class="c_ff7">239.0</h3>
    </header>-->
    <div class="bd" style="height: 100%;margin-top: 0px;">
        <div class="weui_tab">
            <div class="weui_navbar">
                <div class="weui_navbar_item c_04b">
                    用户
                </div>
                <div class="weui_navbar_item c_04b">
                    等级
                </div>
                <div class="weui_navbar_item c_04b">
                    时间
                </div>
            </div>

        </div>
    </div>
</div>
<!--内容-->
<div id="good-list" style="margin-top: 3rem;" class="mui-scroll-wrapper mui-content" style="padding-bottom: 2rem;">

    <div class="mui-scroll" >
        <ul id="thelist" class="mui-table-view">

        </ul>
    </div>
</div>
<script type="text/javascript" src="${ctxJs}/lib/mui.js"></script>
<script >
    $(function(){
        mui.init({
            pullRefresh: {
                container: '#good-list',
                up: {
                    contentrefresh: '正在加载...',

                    contentnomore:'没有更多数据了',//可选，请求完毕若没有更多数据时显示的提醒内容；
                    callback: randerpage

                }
            }
        });
        setTimeout(function(){
            mui('#good-list').pullRefresh().pullupLoading();

        },300);

        //页面数据请求函数
        var pno = 1;
        function randerpage(){
//		mui('#good-list').pullRefresh().refresh(true);
            $.ajax({
                url:"${path}/user/commission/rlist",
                type:"post",
                dataType:"json",
                data:{
                    pno:pno,
                    psize:10
                },
                success:function (o) {
                    if(o.code == "success"){
                        createList(o.message);
                        if(o.message.length > 0){
                            pno++;
                            mui('#good-list').pullRefresh().endPullupToRefresh(false);
                        }else{
                            mui('#good-list').pullRefresh().endPullupToRefresh(true); //参数为true代表没有更多数据了。
                        }
                    }else{
                        Global.tool.toast(o.message);
                    }
                }
            });
        }

        function createList(data) {
            var ulObj = $("#thelist");
            for(var i = 0; i < data.length; i++){
                var liObj = $("<li class=\"clearfix mui-table-view-cell\"></li>");
                liObj.append("<div class=\"fl\"><img src=\""+data[i].headimgurl+"\" width=\"40px\" alt=\"logo\" /></div>");
                liObj.append("<div class=\"fl\"><img src=\"${ctxImg}/dengji"+data[i].level+".png\" width=\"30px\" alt=\"\" /></div>");
                liObj.append("<div class=\"fl recommend_time c_666\">"+data[i].create_time+"</div>");
                liObj.appendTo(ulObj);
            }
        }
    });
</script>
</body>
</html>
