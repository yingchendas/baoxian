<%--
  Created by IntelliJ IDEA.
  User: xuran
  Date: 2016/8/25
  Time: 15:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/common/tagLib.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>选择投保方案</title>
    <link rel="stylesheet" type="text/css" href="${ctxWeuiCss}/weui.min.css"/>
    <link rel="stylesheet" type="text/css" href="${ctxCss}/common/common.css"/>
    <style type="text/css">
        .container{
				
				/*margin: 1rem auto;*/
				 padding:1rem 0rem;
			}
			.busi_policy{
				margin-top: 20px;
			}
			.notice{
				margin-right: 15px;
				color: #04BE02;
				/*border: 1px solid #04BE02;*/
				font-size: 12px;
				padding: .3rem;
				border-radius: 2px;
			}
			.active{
				color: #04BE02;
				border-bottom: 1px solid #04BE02;
			}
			.money{
				width: 80px;
			}
			
			/*新增*/
			.xubao_info{
				display: none;
			}
			/*.btn_title{
				margin: 10px 0;
			}*/
			.weui_input{
				color: #000 !important;
			}
			.weui_label{
				font-size: 13px;
				
			}
			.xubao_info .weui_cell:before{
				border: none;
			}
			.xubao_info .weui_cell_hd{
				width: 70%;
			}
			.weui_input{
				font-size: 13px;
			}
			.xubao_info .weui_input{
				
				font-size: 13px;
				text-align: right;
			}
			.xubao_info .weui_cell{
				border-bottom: .5px dashed #04BE02;
				padding: .2rem .5rem;
			}
			.icon-icon-question{
        		color:#999 !important;
        }
    </style>
</head>
<body id="bodybox" >

<div class="container bd" >
    <div style="">
        <h5 class="c_666 c_04b" style="padding: .5rem;">车主信息</h5>
    </div>
    <div class="weui_cells weui_cells_form" style="margin-top: 0px;">
        <div class="weui_cell">
            <div class="weui_cell_hd"><label class="weui_label">车主名称</label></div>
            <div class="weui_cell_bd weui_cell_primary">
                <input class="weui_input" disabled="disabled" id="user_name" type="text"  placeholder="${my:tuoming(table.vehicleInfo.carOwnerInfo.name,1 )}" />
            </div>
        </div>
        <div class="weui_cell">
            <div class="weui_cell_hd"><label class="weui_label">车型名称</label></div>
            <div class="weui_cell_bd weui_cell_primary">
                <input class="weui_input" disabled="disabled" id="idNumber" type="text"  placeholder="${table.vehicleInfo.modelCode}" />
            </div>
        </div>
    </div>
   <div class="pr btn_title" >
			<h5 class="c_999 f15" style="padding: .8rem;">续保信息:</h5>
			<p  class=" pa c_04b" style="right: 8px; top:12px;"><span class="f14">展开查看更多</span><i class="iconfont icon-xiajiantou  c_666"></i></p>
			
		</div>
    <!--续保信息-->
    <div class="xubao_info">
    <div id="xubao">
        <!--续保信息-->

        <div class="clearfix car_title">
            <h5 class="c_666 fl c_04b" style="padding: .5rem;">往年保险信息</h5>
            <!--<h5 class="c_666 fr eg_show c_04b">在哪里查看车辆信息</h5>-->
        </div>
        <div class="weui_cells weui_cells_form" style="margin-top: 0;">
            <div class="weui_cell">
                <div class="weui_cell_hd"><label class="weui_label">保险公司</label></div>
                <div class="weui_cell_bd weui_cell_primary">
                    <input class="weui_input" id="carNumber" type="text" disabled="disabled"  placeholder="${table.formerInfo.insureCompany}" />
                </div>
            </div>
            <div class="weui_cell">
                <div class="weui_cell_hd"><label class="weui_label">商业险保单号</label></div>
                <div class="weui_cell_bd weui_cell_primary">
                    <input class="weui_input" id="classNumber" disabled="disabled" type="text"  placeholder="${table.formerInfo.commercePolicyNo}" />
                </div>
            </div>
            <div class="weui_cell">
                <div class="weui_cell_hd"><label class="weui_label">交强险保单号</label></div>
                <div class="weui_cell_bd weui_cell_primary">
                    <input class="weui_input" id="discernNumber" type="text" disabled="disabled"  placeholder="${table.formerInfo.compulsoryPolicyNo}" />
                </div>
            </div>
            <div class="weui_cell">
                <div class="weui_cell_hd"><label class="weui_label">商业险总保费</label></div>
                <div class="weui_cell_bd weui_cell_primary">
                    <input class="weui_input" id="powerNumber1" type="text" disabled="disabled"  placeholder="￥${table.formerInfo.commerceTotalPremium}" />
                </div>
            </div>
            <div class="weui_cell">
                <div class="weui_cell_hd"><label class="weui_label">交强险总保费</label></div>
                <div class="weui_cell_bd weui_cell_primary">
                    <input class="weui_input" id="powerNumber2" type="text" disabled="disabled"  placeholder="￥${table.formerInfo.compulsoryTotalPremium}" />
                </div>
            </div>
            <div class="weui_cell">
                <div class="weui_cell_hd"><label class="weui_label">保险生效日期（商业险）</label></div>
                <div class="weui_cell_bd weui_cell_primary">
                    <input class="weui_input" id="powerNumber3" type="text" disabled="disabled"  placeholder="${table.formerInfo.commercePolicyBeginDate}" />
                </div>
            </div>
            <div class="weui_cell">
                <div class="weui_cell_hd"><label class="weui_label">保险生截止日期（商业险）</label></div>
                <div class="weui_cell_bd weui_cell_primary">
                    <input class="weui_input" id="powerNumber4" type="text" disabled="disabled"  placeholder="${table.formerInfo.commercePolicyEndDate}" />
                </div>
            </div>
            <div class="weui_cell">
                <div class="weui_cell_hd"><label class="weui_label">保险生效日期（交强险）</label></div>
                <div class="weui_cell_bd weui_cell_primary">
                    <input class="weui_input" id="powerNumber5" type="text" disabled="disabled"  placeholder="${table.formerInfo.compulsoryPolicyBeginDate}" />
                </div>
            </div>
            <div class="weui_cell">
                <div class="weui_cell_hd"><label class="weui_label">保险生截止日期（交强险）</label></div>
                <div class="weui_cell_bd weui_cell_primary">
                    <input class="weui_input" id="powerNumber" type="text" disabled="disabled"  placeholder="${table.formerInfo.compulsoryPolicyEndDate}" />
                </div>
            </div>
        </div>
        <div class="clearfix car_title">
            <h5 class="c_666 fl c_04b" style="padding: .5rem;">投保信息</h5>
            <!--<h5 class="c_666 fr eg_show c_04b">在哪里查看车辆信息</h5>-->
        </div>
        <div class="weui_cells weui_cells_form" style="margin-top: 0;">

            <div class="weui_cell">
                <div class="weui_cell_hd"><label class="weui_label">起保日期(商业险)</label></div>
                <div class="weui_cell_bd weui_cell_primary">
                    <input class="weui_input" id="busdate" type="text" disabled="disabled" placeholder="${commerTime}" />
                    <div class="weui_cell_ft">sd</div>
                </div>
            </div>
            <div class="weui_cell">
                <div class="weui_cell_hd"><label class="weui_label">起保日期(交强险)</label></div>
                <div class="weui_cell_bd weui_cell_primary">
                    <input class="weui_input" id="jiaoDate" type="text" disabled="disabled" placeholder="${compulTime}" />
                    <div class="weui_cell_ft">sd</div>
                </div>
            </div>

        </div>
    </div>
    </div>
    <header>
        <div class="bd" style="height: 100%;">
                <div class="weui_tab">

                    <div class="weui_navbar ">
                        <c:if test="${xubaoStatus!=0}">
                        <div cls="" class="weui_navbar_item type5">
                            续保
                        </div>
                        </c:if>
                        <c:forEach items="${tems}" var="tem">
                            <div cls="${tem.id}" class="weui_navbar_item type">
                                    ${tem.name}
                            </div>
                        </c:forEach>

                    </div>
                    <div class="weui_tab_bd">

                    </div>
                </div>
        </div>
    </header>
    <!--交强险-->
    <div class="clearfix bg_f" style="padding: 1rem .5rem;">
        <p class="fl c_666 jiaoqiang">交强险<i class="iconfont icon-icon-question f18 c_04b "></i></p>
        <span class="c_04b fr">投保</span>
    </div>
    <div class="clearfix bg_f" style="padding: .6rem;margin-top: 10px;">
        <p class="fl c_666 bord" >车船税<i class="iconfont icon-icon-question f18 c_04b "></i></p>
        <div class="c_04b fr " style="margin-right: 5px" >
            <span>交税</span>
            <%--<div class="weui_cell weui_cell_select pr">--%>
                <%--<select class="weui_select c_04b" name="select1">--%>
                    <%--<option value="1" selected="">交税</option>--%>
                <%--</select>--%>
                <%--<span class="iconfont icon-xiajiantou c_666 look pa" style="right: 5px;top: 13px;"></span>--%>
            <%--</div>--%>
        </div>
    </div>
    <!--商业险-->
    <div class="busi_policy" style="margin-bottom: 60px;">
        <h4 class="c_666 bg_f" style="padding: .5rem;">商业险:</h4>
        <div class="weui_cells type4" style="margin-top: 0px;">
            <div class="list">
            <c:forEach items="${items}" var="item">
                <div class="weui_cell type3" price="${item.price}" code="${item.code}"  name="${item.code.name}">
                    <div class="weui_cell_bd weui_cell_primary">
                        <p class="question" msg="${item.code.msg}">${item.code.name}<i class="iconfont icon-icon-question f18 c_04b "></i></p>
                    </div>

                    <c:if test="${item.code.code!=item.code.codeNotIndemnity}">
                        <div class="weui_cell_bd">
                            <div class=" weui_cells_checkbox notice">
                                <label class="weui_cell weui_check_label" for="${item.code}">
                                    <div class="weui_cell_hd">
                                        <input type="checkbox" class="weui_check" name="checkbox1" id="${item.code}" >
                                        <i class="weui_icon_checked"></i>
                                    </div>
                                    <div class="weui_cell_bd weui_cell_primary">
                                        <p class="c_04b">不计免赔</p>
                                    </div>
                                </label>
                            </div>
                        </div>
                    </c:if>

                    <div class="weui_cell_ft c_ff7 c_04b money">${item.price}</div>
                </div>
            </c:forEach>
            </div>
        </div>

    </div>
</div>
<%--<div class=" weui_cells_checkbox">--%>
    <%--<label class="weui_cell weui_check_label" for="s11" style="padding: 15px;">--%>
        <%--<div class="weui_cell_hd">--%>
            <%--<input type="checkbox" onchange="changeFuncton(this)" class="weui_check" name="checkbox1" id="s11" >--%>
            <%--<i class="weui_icon_checked"></i>--%>
        <%--</div>--%>
        <%--<div class="weui_cell_bd weui_cell_primary">--%>
            <%--<p class="c_04b">不计免赔</p>--%>
        <%--</div>--%>
    <%--</label>--%>
<%--</div>--%>
<footer class="weui_tab" style="position: fixed;bottom: 0;width: 100%;z-index: 999;height: 50px;">
    <div class="weui_tab_bd">

    </div>
    <div class="weui_tabbar">
        <a href="javascript:void(0)" class="weui_btn  weui_btn_primary type2" style="width: 100%;padding: 5px;">选择</a>
    </div>
</footer>
<%--<div class="tc" style="margin-top: 20px;">--%>
    <%--<a href="javascript:void(0)" class="weui_btn  weui_btn_primary type2" style="width: 90%;">选择</a>--%>
<%--</div>--%>
<script>
    var status = 0;
    /*选择类型*/
    $(function(){
    	
    	/*默认选中续保信息开始*/
    	 $(".type5").addClass("active");
    		xubao();
    	
    	
    	
    	
    	

//        $("#busdate").val("2016-09-22")
//        $("#jiaoDate").val("2016-09-22")
        /*打开保险详情*/
        $(".question").tap(function(){
            var title = $(this).text();
            var msg = $(this).attr("msg");
            Global.tool.alert(title,msg);
//            Global.tool.alert(title,"交强险");

            /*关闭弹框*/
            $(".sure").tap(function(){
                setTimeout(function(){
                    $(".weui_dialog_alert").remove();
                },500)

            })
        })
        /*打开交强*/
        $(".jiaoqiang").tap(function () {
            var title = "交强险";
            var msg = "机动车交通事故责任强制保险是对被保险机动车发生道路交通事故造成受害人（不包括本车人员和被保险人）的人身伤亡、财产损失，在责任限额内予以赔偿的强制性责任保险。交强险是强制保险制度。";
            Global.tool.alert(title,msg);
            /*关闭弹框*/
            $(".sure").tap(function(){
                setTimeout(function(){
                    $(".weui_dialog_alert").remove();
                },500)

            })
        })
        $(".bord").tap(function () {
            var title = "车船税";
            var msg = "车船税是指对在我国境内应依法办理登记的车辆、船舶，根据其种类，按照规定的计税依据和年税额标准计算征收的一种财产税。机动车需要在投保交强险时缴纳车船税。";
            Global.tool.alert(title,msg);
            /*关闭弹框*/
            $(".sure").tap(function(){
                setTimeout(function(){
                    $(".weui_dialog_alert").remove();
                },500)

            })
        })
        for(var i=0;i<$(".weui_check").length;i++){
            $(".weui_check")[i].checked=true;
        }

//
//        if(status==0){
//            $(".weui_check")[0].checked=false;
//            $(".notice").hide();
//
//        }else{
//            $(".weui_check")[0].checked=true;
//            $(".notice").show();
//        }
        //
       
        $(".type").tap(function(){
            var item = $(this);
            item.addClass("active");
            item.siblings().removeClass("active");
            var id = item.attr("cls");
            $.ajax({
                type: 'GET',
                url: '${path}/order/queryInsuranceByPid?tid='+id,
                success:function (data) {
                    if(data.code="success"){
                        var html="";
                        for(var i=0;i<data.message.length;i++){
                        html+="<div class='weui_cell type3'  price='"+data.message[i].in.price+"' code='"+data.message[i].in.code+"'  name='"+data.message[i].name+"'>"+
                            "<div class='weui_cell_bd weui_cell_primary'>"+
                            "<p class='question'  msg='"+data.message[i].msg+"'>"+data.message[i].name+"<i class='iconfont icon-icon-question f18 c_04b '></i></p>"+
                            "</div>";
                            if(data.message[i].codeNotIndemnity!=data.message[i].in.code){
                                html+="<div class='weui_cell_bd'>" +
                                        "<div class=' weui_cells_checkbox notice'>"+
                                        "<label class='weui_cell weui_check_label' for='"+data.message[i].in.code+"'>"+
                                        "<div class='weui_cell_hd'>"+
                                        " <input type='checkbox' class='weui_check' name='checkbox1' id='"+data.message[i].in.code+"' >"+
                                        "<i class='weui_icon_checked'></i>"+
                                        "</div>"+
                                        "<div class='weui_cell_bd weui_cell_primary' >"+
                                        "<p class='c_04b'>不计免赔</p>"+
                                        "</div>"+

                                        "</label>"+
                                        "</div>" +
                                        "</div>"

                            }

                            html+="<div class='weui_cell_ft c_ff7 c_04b money'>"+data.message[i].in.price+"</div>" +"</div>";
                        }
                    var div = $(".type4");
                        div.empty();
                        div.append(html);
                        for(var i=0;i<$(".weui_check").length;i++){
                            $(".weui_check")[i].checked=true;
                        }
                        /*打开保险详情*/
                        $(".question").tap(function(){
                            var title = $(this).text();
                            var msg = $(this).attr("msg");
                            Global.tool.alert(title,msg);
//            Global.tool.alert(title,"交强险");

                            /*关闭弹框*/
                            $(".sure").tap(function(){
                                setTimeout(function(){
                                    $(".weui_dialog_alert").remove();
                                },500)

                            })
                        })
                    }
                    if(data.code=="fault"){
                        Global.tool.toast("服务器错误");
                    }
                }
            })
        })

        $(".type5").tap(function(){
            var item = $(this);
            item.addClass("active");
            item.siblings().removeClass("active");
            $.ajax({
                type: 'GET',
                url: '${path}/order/queryXubao',
                success:function (data) {
                    if(data.code="success"){
                        var html="";
                        for(var i=0;i<data.message.length;i++){
                            html+="<div class='weui_cell type3'  price='"+data.message[i].in.price+"' code='"+data.message[i].in.code+"'  name='"+data.message[i].name+"'>"+
                                    "<div class='weui_cell_bd weui_cell_primary'>"+
                                    "<p class='question'  msg='"+data.message[i].msg+"'>"+data.message[i].name+"<i class='iconfont icon-icon-question f18 c_04b '></i></p>"+
                                    "</div>";
                            if(data.message[i].codeNotIndemnity!=data.message[i].in.code){
                                html+="<div class='weui_cell_bd'>" +
                                        "<div class=' weui_cells_checkbox notice'>"+
                                        "<label class='weui_cell weui_check_label' for='"+data.message[i].in.code+"'>"+
                                        "<div class='weui_cell_hd'>"+
                                        " <input type='checkbox' class='weui_check' name='checkbox1' id='"+data.message[i].in.code+"' >"+
                                        "<i class='weui_icon_checked'></i>"+
                                        "</div>"+
                                        "<div class='weui_cell_bd weui_cell_primary' >"+
                                        "<p class='c_04b'>不计免赔</p>"+
                                        "</div>"+

                                        "</label>"+
                                        "</div>" +
                                        "</div>"

                            }

                            html+="<div class='weui_cell_ft c_ff7 c_04b money'>"+data.message[i].in.price+"</div>" +"</div>";
                        }
                        var div = $(".type4");
                        div.empty();
                        div.append(html);
                        for(var i=0;i<$(".weui_check").length;i++){
                            $(".weui_check")[i].checked=true;
                        }
                        /*打开保险详情*/
                        $(".question").tap(function(){
                            var title = $(this).text();
                            var msg = $(this).attr("msg");
                            Global.tool.alert(title,msg);
//            Global.tool.alert(title,"交强险");

                            /*关闭弹框*/
                            $(".sure").tap(function(){
                                setTimeout(function(){
                                    $(".weui_dialog_alert").remove();
                                },500)

                            })
                        })


                    }
                    if(data.code=="fault"){
                        Global.tool.toast("服务器错误");
                    }
                }
            })
        })

        $(".type2").on("click",function(){
            var count = 0;
            <%--window.location.href="${path}/order/changeInsurance?temId="+c1+"&status="+status;--%>
            var  myselect=document.getElementsByClassName("type3");
            var form = $("<form action='${path}/order/changeInsurance' method='post'>");
            for(var i=0;i<myselect.length;i++){
                form.append("<input type='hidden' name='insuranceVOs["+count+"].price' value='"+$(myselect[i]).attr("price")+"'>");
                form.append("<input type='hidden' name='insuranceVOs["+count+"].code' value='"+$(myselect[i]).attr("code")+"'>");
                form.append("<input type='hidden' name='insuranceVOs["+count+"].name' value='"+$(myselect[i]).attr("name")+"'>");
                if($(myselect[i]).find("input").attr("checked")){
                    form.append("<input type='hidden' name='insuranceVOs["+count+"].status' value='1'>");
                }else{
                    form.append("<input type='hidden' name='insuranceVOs["+count+"].status' value='0'>");
                }
                count++;
            }
//        form.appendTo($("body"));
            form.submit();
        })

        /*打开关闭续保信息*/
        var openFlag=1
        $(".btn_title").tap(function(){
            var item = $(this);

            if(openFlag==1){

                item.find("i").removeClass("icon-xiajiantou");
                item.find("i").addClass("icon-shangjiantou");
                item.find("span").text("收起");
                $(".xubao_info").show();
                openFlag =0;
            }else{

                item.find("i").removeClass("icon-shangjiantou");
                item.find("i").addClass("icon-xiajiantou");
                item.find("span").text("展开查看更多");
                $(".xubao_info").hide();
                openFlag=1;
            }
        })

    })
    
    /*默认选中续保信息*/
   function xubao(){
   		var item = $(".type5");
            item.addClass("active");
            item.siblings().removeClass("active");
            $.ajax({
                type: 'GET',
                url: '${path}/order/queryXubao',
                success:function (data) {
                    if(data.code="success"){
                        var html="";
                        for(var i=0;i<data.message.length;i++){
                            html+="<div class='weui_cell type3'  price='"+data.message[i].in.price+"' code='"+data.message[i].in.code+"'  name='"+data.message[i].name+"'>"+
                                    "<div class='weui_cell_bd weui_cell_primary'>"+
                                    "<p class='question'  msg='"+data.message[i].msg+"'>"+data.message[i].name+"<i class='iconfont icon-icon-question f18 c_04b '></i></p>"+
                                    "</div>";
                            if(data.message[i].codeNotIndemnity!=data.message[i].in.code){
                                html+="<div class='weui_cell_bd'>" +
                                        "<div class=' weui_cells_checkbox notice'>"+
                                        "<label class='weui_cell weui_check_label' for='"+data.message[i].in.code+"'>"+
                                        "<div class='weui_cell_hd'>"+
                                        " <input type='checkbox' class='weui_check' name='checkbox1' id='"+data.message[i].in.code+"' >"+
                                        "<i class='weui_icon_checked'></i>"+
                                        "</div>"+
                                        "<div class='weui_cell_bd weui_cell_primary' >"+
                                        "<p class='c_04b'>不计免赔</p>"+
                                        "</div>"+

                                        "</label>"+
                                        "</div>" +
                                        "</div>"

                            }

                            html+="<div class='weui_cell_ft c_ff7 c_04b money'>"+data.message[i].in.price+"</div>" +"</div>";
                        }
                        var div = $(".type4");
                        div.empty();
                        div.append(html);
                        for(var i=0;i<$(".weui_check").length;i++){
                            $(".weui_check")[i].checked=true;
                        }
                        /*打开保险详情*/
                        $(".question").tap(function(){
                            var title = $(this).text();
                            var msg = $(this).attr("msg");
                            Global.tool.alert(title,msg);
//            Global.tool.alert(title,"交强险");

                            /*关闭弹框*/
                            $(".sure").tap(function(){
                                setTimeout(function(){
                                    $(".weui_dialog_alert").remove();
                                },500)

                            })
                        })


                    }
                    if(data.code=="fault"){
                        Global.tool.toast("服务器错误");
                    }
                }
            })
   }
    
    
//    function changeFuncton(item){
//        if($(item).attr("checked")){
//            $(".notice").show();
//            status=1;
//        }else{
//            $(".notice").hide();
//            status=0;
//        }
//
//    }
</script>
</body>
</html>

