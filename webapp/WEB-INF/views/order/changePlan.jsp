<%--
  Created by IntelliJ IDEA.
  User: xuran
  Date: 2016/8/26
  Time: 11:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/common/tagLib.jsp"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <meta http-equiv="refresh" >
    <title>选择方案</title>
    <link rel="stylesheet" type="text/css" href="${ctxWeuiCss}/weui.min.css"/>
    <link rel="stylesheet" type="text/css" href="${ctxCss}/common/common.css"/>
    <style type="text/css">
        /*.notice{
            margin-right: 5px;
        }*/
        .notice{
            margin-right: 5px;
            color: #04BE02;
            /*border: 1px solid #04BE02;*/
            font-size: 12px;

            /*padding: .3rem;*/
            border-radius: 2px;
            /*display: none;*/
        }
        .introduce{
            padding: 1rem;
            border-top: 0.5px solid #CECECE;
            display: none;
        }
        .list{
            border-bottom: 1px solid #CECECE;
        }
        #bodybox{
            margin-bottom: 100px;
        }
        /*新增*/
        .stu-to{
            /*border-radius: 10px !important;
            border: 1px solid red;*/
        }
        .stu-to>span{
            padding: .3rem;
            background: #ccc;
            color: #fff;
            /*border-radius: 10px !important;*/
        }
        .active{
            background: #04BE02 !important;
            /*box-shadow: 5px -3px #04BE02 !important;*/
        }
        /*开关按钮*/
        .weui_switch {
            -webkit-appearance: none;
            appearance: none;
            position: relative;
            width: 78px;
            height: 32px;
            border: 1px solid #f8f8f8;
            outline: 0;
            border-radius: 16px;
            box-sizing: border-box;
            background: #F8F8F8;
        }
        .weui_switch:before {
            content: " ";
            position: absolute;
            top: 0;
            left: 0;
            width: 76px;
            height: 30px;
            border-radius: 15px;
            background-color: #ccc;
            -webkit-transition: -webkit-transform .3s;
            transition: -webkit-transform .3s;
            transition: transform .3s;
            transition: transform .3s, -webkit-transform .3s;
        }
        .weui_switch:after {
            content: " ";
            position: absolute;
            top: 0;
            left: 0;
            width: 30px;
            height: 30px;
            border-radius: 15px;
            background-color: #f8f8f8;
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.4);
            -webkit-transition: -webkit-transform .3s;
            transition: -webkit-transform .3s;
            transition: transform .3s;
            transition: transform .3s, -webkit-transform .3s;
        }
        .weui_switch:checked {
            border-color: #04BE02;
            background-color: #04BE02;
        }
        .weui_switch:checked:before {
            -webkit-transform: scale(0);
            transform: scale(0);
        }
        .weui_switch:checked:after {
            -webkit-transform: translateX(48px);
            transform: translateX(48px);
        }
        .tou_info{
            top: 8px;
            left: 35px;
        }
        select {

            direction: rtl;

        }
        .icon-icon-question{
        		color:#999 !important;
        }
        ._move{
				position: fixed; bottom: 0; width: 100%;z-index: 999;
			}
    </style>
</head>
<body id="bodybox">
<div class="container bd">

    <!--交强险-->
    <div class="clearfix bg_f" style="padding: 1rem .5rem;">
        <p class="fl c_666  jiaoqiang"><span class="policyName">交强险</span><i class="iconfont icon-icon-question f18 c_04b "></i></p>
        <span class="c_04b fr">投保</span>
    </div>
    <div class="clearfix bg_f" style="padding: .5rem;margin-top: 10px;">
        <p class="fl c_666  bord" style="margin-top: 0px;"><span class="policyName">车船税</span><i class="iconfont icon-icon-question f18 c_04b "></i></p>
        <div class="c_04b fr" >
            <span>交税</span>
            <%--<div class="weui_cell weui_cell_select pr">--%>
                <%--&lt;%&ndash;<select class="weui_select c_04b" name="select1">&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<option value="1" selected="" >交税</option>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;&lt;%&ndash;<option value="3">不交税</option>&ndash;%&gt;&ndash;%&gt;--%>
                <%--&lt;%&ndash;</select>&ndash;%&gt;--%>
               <%----%>
                <%--&lt;%&ndash;<span class="iconfont icon-xiajiantou c_666 look pa" style="right: 5px;top: 13px;"></span>&ndash;%&gt;--%>
            <%--</div>--%>
        </div>
    </div>
    <!--商业险-->
    <div class="busi_policy">
        <h4 class="c_666" style="padding: .5rem;">商业险:</h4>
        <div class="weui_cells" style="margin-top: 0px;">
            <div class="list">
                <c:forEach items="${insuranceList}" var="list">
                    <div class="weui_cell plist-info">
                        <div class="weui_cell_bd weui_cell_primary">
                            <p class="question" msg="${list.msg}"><span class="policyName">${list.name}</span><i class="iconfont icon-icon-question f18 c_04b "></i>
                                <c:if test="${list.code=='Z1'||list.code=='Z2'||list.code=='F5'}">
                                    <span class="f12 c_ff7" style="margin-left: 8%">￥${jq}</span>
                                </c:if>

                            </p>
                        </div>
                        <c:if test="${list.code!=list.codeNotIndemnity}">
                            <div class="weui_cell_bd checked">
                                <div class=" weui_cells_checkbox notice">
                                    <label class="weui_cell weui_check_label" for="${list.code}">
                                        <div class="weui_cell_hd">
                                            <input type="checkbox" class="weui_check" onchange="_mianpei(this)" name="checkbox1" id="${list.code}">
                                            <i class="weui_icon_checked"></i>
                                        </div>
                                        <div class="weui_cell_bd weui_cell_primary">
                                            <p class="c_666">不计免赔</p>
                                        </div>
                                    </label>
                                </div>
                            </div>
                        </c:if>
                        <div class="weui_cell_ft c_04b">
                            <c:if test="${list.code=='Z1'||list.code=='Z2'||list.code=='F8'||list.code=='F3'||list.code=='F12'||list.code=='F5'}">

                                <div style="width: 80px;" class="pr">
                                    <input class="weui_switch" code="${list.code}" onchange="changeType(this)" placeholder="投保" type="checkbox"/>
                                    <span class="pa f12 tou_info c_fff" style="">不投保</span>
                                </div>
                            </c:if>

                            <c:if test="${list.code=='Z3'||list.code=='Z4'||list.code=='F1'||list.code=='F2'}">
                            <div class="weui_cell weui_cell_select pr">
                                <select class="weui_select c_666 type2"  onchange="flagChecked(this)"  name="${list.code}">
                                    <option value="-1">无</option>
                                    <c:forEach items="${list.price}" var="price">
                                        <option class="sel"  value="${price}">${price}</option>
                                    </c:forEach>
                                </select>
                                <span class="iconfont icon-xiajiantou c_666 look pa" style="right: 5px;top: 13px;"></span>
                            </div>
                            </c:if>

                            <c:if test="${list.code=='Z5'}">
                                <div class="weui_cell weui_cell_select pr">
                                    <select class="weui_select c_666 type2"  onchange="flagChecked(this)"  name="${list.code}">
                                        <option value="-1">无</option>
                                        <c:forEach items="${list.price}" var="price">
                                            <option class="sel"  value="${price}">${price}/座</option>
                                        </c:forEach>
                                    </select>
                                    <span class="iconfont icon-xiajiantou c_666 look pa" style="right: 5px;top: 13px;"></span>
                                </div>
                            </c:if>
                        </div>
                    </div>
                </c:forEach>
            </div>
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
<div class="tc" style="margin: 20px auto 80px auto;">
    <a href="${path}/order/redirectChangeInsurance" class="weui_btn weui_btn_plain_primary f14" style="width: 40%;">恢复初始方案</a>
</div>
<footer class="weui_tab _move" style="height: 50px;">
    <div class="weui_tab_bd">

    </div>
    <div class="weui_tabbar">
        <a href="javascript:void(0)" class="weui_btn  weui_btn_primary type3" style="width: 100%;padding: 5px;">下一步</a>
    </div>
</footer>
<script>

		/*自定义数组方法检测数组中是否存在某个数*/
		Array.prototype.S=String.fromCharCode(2);
		Array.prototype.in_array=function(e){
		    var r=new RegExp(this.S+e+this.S);
		    return (r.test(this.S+this.join(this.S)+this.S));

		};
        /*关闭弹框*/
        function closeAlert(){
            $(".sure").tap(function(){
                setTimeout(function(){
                    $(".weui_dialog_alert").remove();
                },500)

            })
        }
    $(function(){
				/*解决软键盘出现按钮定位问题*/
			$('.weui_select').on('focus',function(){  
				$(".weui_tab").removeClass("_move")
	        }).on('blur',function(){  
	        	$(".weui_tab").addClass("_move")
	        });
				
				
        setTimeout(function () {
            init();
        },200);
        /*打开保险详情*/
        $(".question").tap(function(){
            var title = $(this).find(".policyName").text();
            var msg = $(this).attr("msg");
            Global.tool.alert(title,msg);
           closeAlert();

        });
        /*打开交强*/
        $(".jiaoqiang").tap(function () {
            var title = $(this).find(".policyName").text();
            var msg = "机动车交通事故责任强制保险是对被保险机动车发生道路交通事故造成受害人（不包括本车人员和被保险人）的人身伤亡、财产损失，在责任限额内予以赔偿的强制性责任保险。交强险是强制保险制度。";
            Global.tool.alert(title,msg);
            closeAlert();
        })
        $(".bord").tap(function () {
            var title = $(this).find(".policyName").text();
            var msg = "车船税是指对在我国境内应依法办理登记的车辆、船舶，根据其种类，按照规定的计税依据和年税额标准计算征收的一种财产税。机动车需要在投保交强险时缴纳车船税。";
            Global.tool.alert(title,msg);
            closeAlert();
        })

        /*初始化投保按钮*/
        var checkedList = $(".weui_switch");
        for(var i=0;i<checkedList.length;i++){
            var item = checkedList.eq(i);

            if(item.attr("checked")==true||item[0].checked){
                item.next().css({"top": "8px","left": "23px"});
                item.next().text("投保");
//                    item.parent().parent().prev().find("input")[0].checked=true;
            }else{

                item.next().css({"top": "8px","left": "35px"});
                item.next().text("不投保");
//                    item.parent().parent().prev().find("input")[0].checked=false;

            }
        }
			
			
    });


    function init() {
        <c:forEach items="${insuranceList}" var="list">
        <c:forEach items="${temList}" var="tem">
        <c:if test="${list.code==tem.code}">
        <c:if test="${list.code=='Z3'||list.code=='Z4'||list.code=='Z5'||list.code=='F1'||list.code=='F2'}">
            $("select[name=${list.code}]").val("${tem.price}");
        </c:if>
        <c:if test="${list.code=='Z1'||list.code=='Z2'||list.code=='F8'||list.code=='F3'||list.code=='F12'||list.code=='F5'}">
        $("input[code=${list.code}]")[0].checked=true;
        changeType($("input[code=${list.code}]"));
        </c:if>
            if(${tem.status==0}){
                $("#${list.code}")[0].checked=false;
            }
            if(${tem.status==1}){
                $("#${list.code}")[0].checked=true;
            }
        </c:if>
             </c:forEach>
        </c:forEach>
    }

    function changeType(item){

        var obj = $(item);
        console.log(obj.attr("checked"));
        if(obj.attr("checked")==true||item.checked){
            obj.next().css({"top": "8px","left": "23px"});
            obj.next().text("投保");
            obj.attr("checked",true);
            obj.parent().parent().prev().find("input")[0].checked=true;
        }else{
            obj.next().css({"top": "8px","left": "35px"});
            obj.next().text("不投保");
            obj.attr("checked",false);
            obj.parent().parent().prev().find("input")[0].checked=false;
        }
//		alert(item.checked);
    }

    $(".type3").on("click",function () {
        var arr=[];
        var obj={};
        var count=0;
        var form = $("<form action='${path}/order/chooseCompany' method='post'>");
        /*if(myselect.val()!=-1){
                arr.push($(myselect[i]).attr("name"))
            }*/

        var _list = $(".plist-info");
        for(var i=0;i<_list.length;i++){
            var item = _list[i];
            var free = $(item).find(".checked").find("input[type=checkbox]");

            if($(item).find(".weui_switch").length==1){
                var price2 =$(item).find(".weui_switch");
//                console.log(price2.attr("checked"))
                if((typeof( price2.attr("checked"))=='string'&&"true"==price2.attr("checked"))||(typeof( price2.attr("checked"))=='boolean'&&price2.attr("checked"))){
                    var codeList = price2.attr("code");
                    arr.push(codeList)
                    if(free.attr("checked")){
                        form.append("<input type='hidden' name='insuranceVOs["+count+"].status' value='1'>");
                    }else{
                        form.append("<input type='hidden' name='insuranceVOs["+count+"].status' value='0'>");
                    }
                    form.append("<input type='hidden' name='insuranceVOs["+count+"].price' value='投保'>");
                    form.append("<input type='hidden' name='insuranceVOs["+count+"].code' value='"+codeList+"'>");
                    count++;
                }

            }else{
                var selectList = $(item).find(".weui_select");
                var price =selectList.val();
                if(price!=-1){
                    var codeList = selectList.attr("name");
                    arr.push(codeList)
                    if(free.attr("checked")){
                        form.append("<input type='hidden' name='insuranceVOs["+count+"].status' value='1'>");
                    }else{
                        form.append("<input type='hidden' name='insuranceVOs["+count+"].status' value='0'>");
                    }
                    form.append("<input type='hidden' name='insuranceVOs["+count+"].price' value='"+price+"'>");
                    form.append("<input type='hidden' name='insuranceVOs["+count+"].code' value='"+codeList+"'>");
                    count++;
                }
            }

        }
        form.append("<input type='hidden' name='ccs' value='1'>");
        form.append("<input type='hidden' name='status' value='${status}'>");
        console.log(arr);
        if((arr.in_array("F1")||arr.in_array("F2")||arr.in_array("F3")||arr.in_array("F5")||arr.in_array("F8")||arr.in_array("F12"))&&!arr.in_array("Z1")){
            Global.tool.alert("错误提示","购买车损险之后才能购买附加险");
            closeAlert()
            return false;
        }
        if(arr.in_array("F12")&&!arr.in_array("Z3")){
            Global.tool.alert("错误提示","购买三者险之后才能购买机动车损失险无法找到第三方特约险");
            closeAlert();
            return false;
        }
        if(arr.in_array("Z1")&&!arr.in_array("Z3")){
            Global.tool.alert("错误提示","车损险不能单独购买,购买后必须购买三者险");
            closeAlert();
            return false;
        }
        form.submit();

    })

    function flagChecked(e) {
        var index=e.selectedIndex;
        var item =$(e);
        if(e.options[index].value==-1){
            item.parent().parent().prev().find("input")[0].checked=false;
            item.addClass("c_666");
            item.removeClass("c_04b");
           
        }else{
        	 item.removeClass("c_666");
        	 item.addClass("c_04b");
            item.parent().parent().prev().find("input")[0].checked=true;
        }

    }
    
    //不计免赔函数
    function _mianpei(item){
    	var item = $(item);
    	if(item[0].checked){
    		var noticeMsg = item.parent().parent().parent().parent().prev().find(".question").find(".policyName").text();
    		var selectFlag = item.parent().parent().parent().parent().next().find(".weui_select").val();
    		var inputFlag = item.parent().parent().parent().parent().next().find(".weui_switch").attr("checked");
            if(selectFlag ==undefined){

               if(!inputFlag||inputFlag=="false"){
                   Global.tool.alert("温馨提示","需先购买"+noticeMsg+"后才能选择不计免赔");
                   item[0].checked = false;
                   closeAlert();
               }else{
                   item.removeClass("c_666");
                   item.addClass("c_04b");
               }
            }else if(selectFlag==-1){
                Global.tool.alert("温馨提示","需先购买"+noticeMsg+"后才能选择不计免赔");
                item[0].checked = false;
                closeAlert();
            }
            else{
    			item.removeClass("c_666");
    			item.addClass("c_04b");
    		}
    	}
    }
</script>
</body>
</html>

