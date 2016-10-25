<%--
  Created by IntelliJ IDEA.
  User: Mr.wanG
  Date: 2016/8/26
  Time: 11:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/common/tagLib.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <link rel="stylesheet" type="text/css" href="${ctxCss}/mui.css"/>
    <title>赚佣金</title>
    <style type="text/css">
        header{
            padding: 1.1rem;
        }
        /*begin*/
        #sliderSegmentedControl{
            width: 100% !important;
            border: 1px solid red;
            border: none;
        }

        .title{
            display: -webkit-box;
            background: #FAFAFA;
            /*border: 1px solid #999;*/
        }
        .mui-slider-item{
            border: none !important;
        }
        .title .mui-control-item{
            border: none !important;
            display: block !important;
            border-right: 1px solid #ccc !important;



            -webkit-box-flex: 1 !important;
        }
        .title .mui-active{
            color: #04BE02 !important;
            border-bottom: 1px solid #04BE02 !important;
        }
        .mui-table-view{
            padding: 0 !important;
        }
        .mui-table-view-cell{
            display: -webkit-box;
            padding: 1rem .1rem !important;
        }
        .mui-table-view-cell div{
            /*border-right: 1px solid #999 !important;*/

            padding: 0px 0;

            -webkit-box-flex: 1;
        }
        .discount{
            background-color: #f8f8f8 !important;
        }
        .titleChild{
            display: block;
            -webkit-box-flex: 1;
            padding: .6rem 0 !important;
        }
        #sliderSegmentedControl{
            border-bottom: 1px solid #ccc !important;
        }
    </style>
</head>
<body id="bodybox">

<!--内容-->
<div class="mui-content">

    <div id="slider" class="mui-slider mui-fullscreen" style="margin-top: 0px;height: 85%;">
        <div id="sliderSegmentedControl" class="mui-scroll-wrapper mui-slider-indicator mui-segmented-control mui-segmented-control-inverted">
            <div class=" title">
                <a class="mui-control-item mui-active" href="#item1mobile">
                    赚取明细
                </a>
                <a class="mui-control-item" href="#item2mobile">
                    提现明细
                </a>
            </div>
        </div>
        <div class="mui-slider-group">
            <div id="item1mobile" class="mui-slider-item mui-control-content mui-active">
                <div id="scroll1" class="mui-scroll-wrapper">
                    <div class="mui-scroll" type="1">
                        <ul class="mui-table-view discount" id="templateBox">
                        </ul>
                    </div>
                </div>
            </div>
            <div id="item2mobile"  class="mui-slider-item mui-control-content">
                <div class="mui-scroll-wrapper">
                    <div class="mui-scroll" type="2">
                        <div class=" title ">
                            <a class=" tc c_666 titleChild" >
                                兑换渠道
                            </a>
                            <a class=" tc c_666 titleChild">
                                银行卡号
                            </a>
                            <a class="tc c_666 titleChild">
                                金额
                            </a>
                        </div>
                        <ul class="mui-table-view discount">
                        </ul>
                    </div>
                </div>
            </div>

        </div>

    </div>
</div>
</div>
<script type="text/javascript" src="${ctxJs}/lib/mui.js"></script>

<script type="text/javascript" src="${ctxJs}/lib/mui.pullToRefresh.js"></script>
<script type="text/javascript" src="${ctxJs}/lib/mui.pullToRefresh.material.js"></script>
<script>
    mui.init();
    //阻尼系数
    var deceleration = mui.os.ios ? 0.002 : 0.0008;
    mui('.mui-scroll-wrapper').scroll({
        bounce: false,
        indicators: true, //是否显示滚动条
        deceleration: deceleration
    });
    mui.ready(function() {
        //循环初始化所有下拉刷新，上拉加载。
        mui.each(document.querySelectorAll('.mui-slider-group .mui-scroll'), function(index, pullRefreshEl) {
            mui(pullRefreshEl).pullToRefresh({
                //			down: {
                //				callback: function() {
                //					var self = this;
                //
                //					setTimeout(function() {
                //						var ul = self.element.querySelector('.mui-table-view');
                //						var type = $(ul).parent().attr("type");
                //						pullDown(ul, type, self);
                //						self.endPullDownToRefresh();
                //					}, 1000);
                //				}
                //			},
                up: {
                    callback: function() {
                        var self = this;

                        setTimeout(function() {
                            var ul = self.element.querySelector('.mui-table-view');
                            var type = $(ul).parent().attr("type");
                            createFragment(ul, type, self);
                            self.endPullUpToRefresh();
                        }, 1000);
                    },
                    auto: true,
                }
            });


        });

    });
    /*
     * ul==刷新内容需要添加的盒子
     * type==数据类型/赚取明细/兑换明细
     * self==刷新主体
     * */
    /*上拉加载函数*/
    var ePno = 1, wPno = 1;
    var createFragment = function(ul, type, self) {
        console.log(type);
        $.ajax({
            url:"${path}/user/commission/elist",
            type:"post",
            dataType:"json",
            data:{
                pno:type == '1' ? ePno : wPno,
                psize:10,
                type:type
            },
            success:function (o) {
                if(o.code == "success"){
                    if(type == '1'){
                        createEarnList(o.message, ul);
                    }else{
                        createWithdrawalList(o.message, ul);
                    }
                    if(o.message.length > 0){
                        if(type == '1'){
                            ePno++;
                        }else{
                            wPno++;
                        }
                    }else{
                        self.endPullUpToRefresh(true);
                        self.endPullDownToRefresh();
                    }
                }else{
                    Global.tool.toast(o.message);
                }
            }
        });
        /*switch(type) {
            case "1":
                $.ajax({
                    url:"${path}/user/commission/elist",
                    type:"post",
                    dataType:"json",
                    data:{
                        pno:ePno,
                        psize:10,
                        type:type
                    },
                    success:function (o) {
                        if(o.code == "success"){
                            createEarnList(o.message.result, ul);
                            if(o.message.next){
                                ePno++;
                            }else{
                                self.endPullUpToRefresh(true);
                                self.endPullDownToRefresh();
                            }
                        }else{
                            Global.tool.toast(o.message);
                        }
                    }
                });
                break;
            case "2":
                self.endPullUpToRefresh(true);
                self.endPullDownToRefresh();
                break;
        }*/

    };
    //var pullDown = function(ul, type, self) {
    //	$(ul).empty();
    //	switch(type) {
    //		case "1":
    //			self.endPullUpToRefresh(true);
    //			self.endPullDownToRefresh();
    //			break;
    //		case "2":
    //			self.endPullUpToRefresh(true);
    //			self.endPullDownToRefresh();
    //			break;
    //	}
    //}
    function createEarnList(data, ulObj) {
        for(var i = 0; i < data.length; i++){
            var liObj = $("<li class=\"mui-table-view-cell\"></li>");
            liObj.append("<div class=\"pr tc\"><span style=\"margin-right: 5px;\" class=\"c_666\">"+data[i].nickname+"</span><img class=\"pa\" src=\"${ctxImg}/dengji1.png\" style=\"width: 30px;top:-5px\" width=\"20px\"/></div>");
            liObj.append("<div class=\"tc\"><p>"+data[i].create_time+"</p></div>");
//            if(data[i].status == 1) {
                liObj.append("<div class=\"tc\"><span class=\"c_ff7 f18\">" + data[i].remuneration_amountText + "</span><span>元</span><p>已入账</p></div>");
//            }else if(data[i].status == 0){
//                liObj.append("<div class=\"tc\"><span class=\"c_04b f18\">" + data[i].remuneration_amountText + "</span><span>元</span><p>待入账</p></div>");
//            }else if(data[i].status == 2){
//                liObj.append("<div class=\"tc\"><span class=\"c_04b f18\">" + data[i].remuneration_amountText + "</span><span>元</span><p>客户退单</p></div>");
//            }
            liObj.appendTo(ulObj);
        }
    }

    function createWithdrawalList(data, ulObj) {
        for(var i = 0; i < data.length; i++){
            var liObj = $("<li class=\"mui-table-view-cell\"></li>");
            liObj.append("<div class=\"pr tc\"><h5 style=\"margin-right: 5px;\" class=\"c_666\">"+data[i].bank_name+"</h5><p>"+data[i].create_timeText+"</p></div>");
            liObj.append("<div class=\"tc\"><p style=\"line-height: 40px;\">"+data[i].bank_card+"</p></div>");
            liObj.append("<div class=\"tc\"><p><span class=\"c_ff7 f18\">"+data[i].amountText+"</span><span>元</span></p><p>"+data[i].statusText+"</p></div>");
            liObj.appendTo(ulObj);
        }
    }
</script>
</body>
</html>
