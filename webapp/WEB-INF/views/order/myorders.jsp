<%--
  Created by IntelliJ IDEA.
  User: Mr.wanG
  Date: 2016/8/25
  Time: 14:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/common/tagLib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>保单管理</title>
    <style type="text/css">
        .weui_cells:before{
            border: none;
        }
        .weui_cells:after{
            border: none;
        }
        ._title{
            padding: .5rem;
            display: -webkit-box;
            background: #FAFAFA;
            border: .5px solid #04BE02;
            border-radius: 5px;
            /*width: 90%;*/
            margin: 0 auto;
        }
        ._title>div{
            -webkit-box-flex: 1 !important;
            text-align: center;
            font-size: 14px;
            color: #999;
        }
        .list_info{
            display: -webkit-box;
            background: #FAFAFA;
            /*margin-top: 10px;*/
            padding: .8rem  0;
            /*border-top: 1px solid red;*/
        }
        .list_info>div{
            -webkit-box-flex: 1 !important;
            text-align: center;
            color: #999;
            font-size: 14px;
        }
        button{
            border: none;
            border: 1px solid #ccc;
            padding: .2rem .5rem;
            border-radius: 5px;

        }

        .btnBox{
            padding-bottom: 5px;
        }
        .Nowpage{
            margin: 0 10px;
        }
        .box{
            display: none;
        }
        .transformRotate{
            -webkit-transform:rotate(180deg);
            transform:rotate(180deg);
            transition-duration:.5s, .5s, .5s;
        }
        .preBtn{
            color: #fff;
            background: #04BE02;
            border: 1px solid #04BE02;
        }
    </style>
</head>
<body id="bodyBox">
<div class="container">
    <div class="weui_cells weui_cells_access">
        <a class="weui_cell" href="javascript:void(0)" id="a0">
            <!--<div class="weui_cell_hd"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAC4AAAAuCAMAAABgZ9sFAAAAVFBMVEXx8fHMzMzr6+vn5+fv7+/t7e3d3d2+vr7W1tbHx8eysrKdnZ3p6enk5OTR0dG7u7u3t7ejo6PY2Njh4eHf39/T09PExMSvr6+goKCqqqqnp6e4uLgcLY/OAAAAnklEQVRIx+3RSRLDIAxE0QYhAbGZPNu5/z0zrXHiqiz5W72FqhqtVuuXAl3iOV7iPV/iSsAqZa9BS7YOmMXnNNX4TWGxRMn3R6SxRNgy0bzXOW8EBO8SAClsPdB3psqlvG+Lw7ONXg/pTld52BjgSSkA3PV2OOemjIDcZQWgVvONw60q7sIpR38EnHPSMDQ4MjDjLPozhAkGrVbr/z0ANjAF4AcbXmYAAAAASUVORK5CYII=" alt="" style="width:20px;margin-right:5px;display:block"></div>-->
            <div class="weui_cell_bd weui_cell_primary">
                <p>生效的保单</p>
            </div>
            <div class="iconfont icon-xiajiantou c_666"></div>
        </a>
        <div class="box" id="list0">
            <div class="_title">
                <!--<div>
                    类型
                </div>-->
                <div>
                    车牌号
                </div>
                <div>
                    时间
                </div>
                <div>
                    金额
                </div>
                <div>
                    状态
                </div>
            </div>
            <div class="list_info">
                <div>无数据</div>
            </div>
            <div class="tc btnBox"  types="0"  style="background: #FAFAFA;">
                <button class="preBtn">上一页</button><span class="c_666 Nowpage">1/1</span><button class="nextBtn">下一页</button>
            </div>
        </div>
        <a class="weui_cell" href="javascript:void(0)" id="a1">
            <!--<div class="weui_cell_hd"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAC4AAAAuCAMAAABgZ9sFAAAAVFBMVEXx8fHMzMzr6+vn5+fv7+/t7e3d3d2+vr7W1tbHx8eysrKdnZ3p6enk5OTR0dG7u7u3t7ejo6PY2Njh4eHf39/T09PExMSvr6+goKCqqqqnp6e4uLgcLY/OAAAAnklEQVRIx+3RSRLDIAxE0QYhAbGZPNu5/z0zrXHiqiz5W72FqhqtVuuXAl3iOV7iPV/iSsAqZa9BS7YOmMXnNNX4TWGxRMn3R6SxRNgy0bzXOW8EBO8SAClsPdB3psqlvG+Lw7ONXg/pTld52BjgSSkA3PV2OOemjIDcZQWgVvONw60q7sIpR38EnHPSMDQ4MjDjLPozhAkGrVbr/z0ANjAF4AcbXmYAAAAASUVORK5CYII=" alt="" style="width:20px;margin-right:5px;display:block"></div>-->
            <div class="weui_cell_bd weui_cell_primary">
                <p>待系统处理的保单</p>
            </div>
            <div class="iconfont icon-xiajiantou c_666"></div>
        </a>
        <div class="box" id="list1">
            <div class="_title">
                <!--<div>
                    类型
                </div>-->
                <div>
                    车牌号
                </div>
                <div>
                    时间
                </div>
                <div>
                    金额
                </div>
                <div>
                    状态
                </div>
            </div>
            <div class="list_info">
                <div>无数据</div>
            </div>
            <div class="tc btnBox"  types="1"  style="background: #FAFAFA;">
                <button class="preBtn">上一页</button><span class="c_666 Nowpage">1/1</span><button class="nextBtn">下一页</button>
            </div>
        </div>
        <a class="weui_cell" href="javascript:void(0)" id="a2">
            <!--<div class="weui_cell_hd"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAC4AAAAuCAMAAABgZ9sFAAAAVFBMVEXx8fHMzMzr6+vn5+fv7+/t7e3d3d2+vr7W1tbHx8eysrKdnZ3p6enk5OTR0dG7u7u3t7ejo6PY2Njh4eHf39/T09PExMSvr6+goKCqqqqnp6e4uLgcLY/OAAAAnklEQVRIx+3RSRLDIAxE0QYhAbGZPNu5/z0zrXHiqiz5W72FqhqtVuuXAl3iOV7iPV/iSsAqZa9BS7YOmMXnNNX4TWGxRMn3R6SxRNgy0bzXOW8EBO8SAClsPdB3psqlvG+Lw7ONXg/pTld52BjgSSkA3PV2OOemjIDcZQWgVvONw60q7sIpR38EnHPSMDQ4MjDjLPozhAkGrVbr/z0ANjAF4AcbXmYAAAAASUVORK5CYII=" alt="" style="width:20px;margin-right:5px;display:block"></div>-->
            <div class="weui_cell_bd weui_cell_primary">
                <p>待支付</p>
            </div>
            <div class="iconfont icon-xiajiantou c_666"></div>
        </a>
        <div class="box" id="list2">
            <div class="_title">
                <!--<div>
                    类型
                </div>-->
                <div>
                    车牌号
                </div>
                <div>
                    时间
                </div>
                <div>
                    金额
                </div>
                <div>
                    状态
                </div>
            </div>
            <div class="list_info">
                <div>无数据</div>
            </div>
            <div class="tc btnBox"  types="2"  style="background: #FAFAFA;">
                <button class="preBtn">上一页</button><span class="c_666 Nowpage">1/1</span><button class="nextBtn">下一页</button>
            </div>
        </div>
        <a class="weui_cell" href="javascript:void(0)" id="a3">
            <!--<div class="weui_cell_hd"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAC4AAAAuCAMAAABgZ9sFAAAAVFBMVEXx8fHMzMzr6+vn5+fv7+/t7e3d3d2+vr7W1tbHx8eysrKdnZ3p6enk5OTR0dG7u7u3t7ejo6PY2Njh4eHf39/T09PExMSvr6+goKCqqqqnp6e4uLgcLY/OAAAAnklEQVRIx+3RSRLDIAxE0QYhAbGZPNu5/z0zrXHiqiz5W72FqhqtVuuXAl3iOV7iPV/iSsAqZa9BS7YOmMXnNNX4TWGxRMn3R6SxRNgy0bzXOW8EBO8SAClsPdB3psqlvG+Lw7ONXg/pTld52BjgSSkA3PV2OOemjIDcZQWgVvONw60q7sIpR38EnHPSMDQ4MjDjLPozhAkGrVbr/z0ANjAF4AcbXmYAAAAASUVORK5CYII=" alt="" style="width:20px;margin-right:5px;display:block"></div>-->
            <div class="weui_cell_bd weui_cell_primary">
                <p>已支付</p>
            </div>
            <div class="iconfont icon-xiajiantou c_666"></div>
        </a>
        <div class="box" id="list3">
            <div class="_title">
                <!--<div>
                    类型
                </div>-->
                <div>
                    车牌号
                </div>
                <div>
                    时间
                </div>
                <div>
                    金额
                </div>
                <div>
                    状态
                </div>
            </div>
            <div class="list_info">
                <div>无数据</div>
            </div>
            <div class="tc btnBox"  types="3"  style="background: #FAFAFA;">
                <button class="preBtn">上一页</button><span class="c_666 Nowpage">1/1</span><button class="nextBtn">下一页</button>
            </div>
        </div>
        <a class="weui_cell" href="javascript:void(0)" id="a4">
            <!--<div class="weui_cell_hd"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAC4AAAAuCAMAAABgZ9sFAAAAVFBMVEXx8fHMzMzr6+vn5+fv7+/t7e3d3d2+vr7W1tbHx8eysrKdnZ3p6enk5OTR0dG7u7u3t7ejo6PY2Njh4eHf39/T09PExMSvr6+goKCqqqqnp6e4uLgcLY/OAAAAnklEQVRIx+3RSRLDIAxE0QYhAbGZPNu5/z0zrXHiqiz5W72FqhqtVuuXAl3iOV7iPV/iSsAqZa9BS7YOmMXnNNX4TWGxRMn3R6SxRNgy0bzXOW8EBO8SAClsPdB3psqlvG+Lw7ONXg/pTld52BjgSSkA3PV2OOemjIDcZQWgVvONw60q7sIpR38EnHPSMDQ4MjDjLPozhAkGrVbr/z0ANjAF4AcbXmYAAAAASUVORK5CYII=" alt="" style="width:20px;margin-right:5px;display:block"></div>-->
            <div class="weui_cell_bd weui_cell_primary">
                <p>已失效</p>
            </div>
            <div class="iconfont icon-xiajiantou c_666"></div>
        </a>
        <div class="box" id="list4">
            <div class="_title">
                <!--<div>
                    类型
                </div>-->
                <div>
                    车牌号
                </div>
                <div>
                    时间
                </div>
                <div>
                    金额
                </div>
                <div>
                    状态
                </div>
            </div>
            <div class="list_info">
                <div>无数据</div>
            </div>
            <div class="tc btnBox" types="4" style="background: #FAFAFA;">
                <button class="preBtn">上一页</button><span class="c_666 Nowpage">1/1</span><button class="nextBtn">下一页</button>
            </div>
        </div>
    </div>
</div>
<script>
    var noWpage=1,noWpage1=1,noWpage2=1,noWpage3=1,noWpage4=1;//noWpage0：生效的保单；noWpage1：待系统处理的保单noWpage2：待支付noWpage3：已支付noWpage4：已失效
    var totalPage = 1, totalPage1 = 1, totalPage2 = 1, totalPage3 = 1, totalPage4 = 1;//总页数
    var pageSize = 6;
    $(function(){
        /*展开保单详情*/
        var openFalg =1
        $(".weui_cell").tap(function(){
            var item = $(this);
            $(".weui_cell").removeClass("open")
            item.addClass("open");
            for(var i=0;i<$(".box").length;i++){
                if($(".box").eq(i).prev().hasClass("open")){
                    item.next().toggle();
                    item.find('.iconfont').toggleClass("transformRotate");
                }else{
                    $(".box").eq(i).hide();
                    $(".box").eq(i).prev().find('.iconfont').removeClass("transformRotate");
                }
            }
        });

        /*翻页上一页*/
        $('.preBtn').tap(function(){
            var item = $(this);
            var flag = item.parent().attr("types");
            var Nowpage = item.next();//页面显示
            console.log(flag);
            switch(flag){
                case "0":
                    if(noWpage == 1){
                        Global.tool.toast("已经是第一页啦!");
                    }else{
                        noWpage-=1;
                        getData(flag, noWpage, pageSize, Nowpage);
                    };
                    break;
                case "1":
                    if(noWpage1 == 1){
                        Global.tool.toast("已经是第一页啦!");
                    }else{
                        noWpage1-=1;
                        getData(flag, noWpage1, pageSize, Nowpage);
                    };
                    break;
                case "2":
                    if(noWpage2 == 1){
                        Global.tool.toast("已经是第一页啦!");
                    }else{
                        noWpage2-=1;
                        getData(flag, noWpage2, pageSize, Nowpage);
                    };
                    break;
                case "3":
                    if(noWpage3 == 1){
                        Global.tool.toast("已经是第一页啦!");
                    }else{
                        noWpage3-=1;
                        getData(flag, noWpage3, pageSize, Nowpage);
                    };
                    break;
                case "4":;
                    if(noWpage4 == 1){
                        Global.tool.toast("已经是第一页啦!");
                    }else{
                        noWpage4-=1
                        getData(flag, noWpage4, pageSize, Nowpage);
                    };
                    break;
            }
        });
        /*翻页下一页*/
        $('.nextBtn').tap(function(){
            var item = $(this);
            var flag = item.parent().attr("types");//0=生效的保单；1：待系统处理的保单2：待支付3：已支付4：已失效
            var Nowpage = item.prev();//页面显示
            console.log(flag);
            switch(flag){
                case "0":
                    if(noWpage == totalPage){
                        Global.tool.toast("已经是最后一页啦!");
                    }else{
                        noWpage+=1;
                        getData(flag, noWpage, pageSize, Nowpage);
                    };

                    break;
                case "1":
                    if(noWpage1 == totalPage1){
                        Global.tool.toast("已经是最后一页啦!");
                    }else{
                        noWpage1+=1;
                        getData(flag, noWpage1, pageSize, Nowpage);
                    };
                    break;
                case "2":
                    if(noWpage2 == totalPage2){
                        Global.tool.toast("已经是最后一页啦!");
                    }else{
                        noWpage2+=1;
                        getData(flag, noWpage2, pageSize, Nowpage);
                    };
                    break;
                case "3":
                    if(noWpage3 == totalPage3){
                        Global.tool.toast("已经是最后一页啦!");
                    }else{
                        noWpage3+=1;
                        getData(flag, noWpage3, pageSize, Nowpage);
                    };
                    break;
                case "4":
                    if(noWpage4 == totalPage4){
                        Global.tool.toast("已经是最后一页啦!");
                    }else{
                        noWpage4+=1;
                        getData(flag, noWpage4, pageSize, Nowpage);
                    };
                    break;
            }
        });
        //初始化
        init();
    });
    /*渲染函数*/
    function renderFunction(page, t, sp){
        if(page.result.length == 0) return;
        /*数据请求成功后改变页数*/
        sp.text(page.nonce+"/"+page.max);

        var listDiv = $("#list"+t);
        listDiv.children(".list_info").remove();
        var preDiv = listDiv.children("._title");
        for(var i = 0; i < page.result.length; i++){
            var data = page.result[i];
            var trDiv = $("<div class='list_info' oid='"+data.id+"'><div>"+data.plate_no+"</div><div>"+data.create_time+"</div><div><p class=\"c_ff7\">"+(data.protection_limit?data.protection_limit:"算价中")+"</p></div></div>");
            switch (data.order_status){
                case 0:
                    var toPay = $("<div><a href=\"javascript:void(0)\" class=\"weui_btn weui_btn_mini weui_btn_primary\">去支付</a></div>");
                    toPay.children().tap(function (event) {
                        //支付页面
                        window.location.href = "${path}/order/redirectToCreateOrder?orderId=" + $(this).parent().parent().attr("oid");
                        event.stopPropagation();
                    });
                    toPay.appendTo(trDiv);
                    break;
                case 1:
                    trDiv.append("<div><p>等待出单</p></div>");
                    break;
                case 2:
                    trDiv.append("<div><p>已生效</p></div>");
                    break;
                case 3:
                    trDiv.append("<div><p class=\"c_c22\">支付超时</p></div>");
                    break;
                case 4:
                    trDiv.append("<div><p class=\"c_c22\">已退单</p></div>");
                    break;
                case 5:
                    trDiv.append("<div><p class=\"c_c22\">已作废</p></div>");
                    break;
                case 6:
                    trDiv.append("<div><p>处理中...</p></div>");
                    break;
                case 7:
                    var toUpload = $("<div><a href=\"javascript:void(0)\" class=\"weui_btn weui_btn_mini weui_btn_primary\">上传资料</a></div>");
                    toUpload.children().tap(function (event) {
                    	var item = $(this)
                        //上传页面
                        setTimeout(function(){
                        	 window.location.href="${path}/order/reuploadPic?id="+item.parent().parent().attr("oid");
                        },300)
                       
                        event.stopPropagation();
                    });
                    toUpload.appendTo(trDiv);
                    break;
            }
            //打开保单详情
            trDiv.tap(function () {
                window.location.href="${path}/order/info?id="+$(this).attr("oid");
            });
            preDiv.after(trDiv);
            preDiv = trDiv;
        }
        switch (t){
            case 0:
                totalPage = page.max;
                break;
            case 1:
                totalPage1 = page.max;
                break;
            case 2:
                totalPage2 = page.max;
                break;
            case 3:
                totalPage3 = page.max;
                break;
            case 4:
                totalPage4 = page.max;
                break;
        }
    }
    
    function getData(t, n, s, sp) {
        $.ajax({
            url:"${path}/order/myorders",
            type:"post",
            dataType:"json",
            data:{type:t,pno:n,psize:s},
            success:function (o) {
                if(o.code == "success"){
                    renderFunction(o.message, t, sp);
                }else{
                    Global.tool.toast(o.message);
                }
            }
        });
    }

    function init() {
        getData(0, 1, pageSize, $("#list0").find(".Nowpage"));
        getData(1, 1, pageSize, $("#list1").find(".Nowpage"));
        getData(2, 1, pageSize, $("#list2").find(".Nowpage"));
        getData(3, 1, pageSize, $("#list3").find(".Nowpage"));
        getData(4, 1, pageSize, $("#list4").find(".Nowpage"));
        var tab = "${initTabe}";
        if(tab != "-1"){
            $("#a${initTabe}").addClass("open");
            $("#a${initTabe}").find('.iconfont').toggleClass("transformRotate");
            $("#list${initTabe}").show();
        }
    }
</script>
</body>
</html>