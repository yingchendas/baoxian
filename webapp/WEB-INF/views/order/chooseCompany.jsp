<%--
  Created by IntelliJ IDEA.
  User: xuran
  Date: 2016/8/26
  Time: 16:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/common/tagLib.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <meta http-equiv="refresh" >
    <title>选择公司</title>
    <link rel="stylesheet" type="text/css" href="${ctxWeuiCss}/weui.min.css"/>
    <link rel="stylesheet" type="text/css" href="${ctxCss}/common/common.css"/>
    <style type="text/css">
        .container{
            margin-bottom: 60px;
        }
        .company_info{
            padding: .3rem 0;

        }
        .company_info img{
            margin-left: 5px;
        }
        .company_info h5{
				margin-left: 5px;
				margin-top: 5px;
			}
			.company_info{
				margin-top: 5px;
			}
        .youhui{
            padding: .3rem;
            border-radius: 5px;
            margin-top: .5rem;
            font-size: 12px;
            border: .5px solid #04BE02;
        }
        .mui-table-view-cell{
            padding: 1rem .5rem;
            background: #fff;
            border-bottom: 1px solid #ccc;
        }
    </style>
</head>
<body id="bodybox">
<c:if test="${status==1}">
    <div class="container bd">
        <ul class="mui-table-view">
            <c:forEach items="${lists}" var="list">
                <li class="mui-table-view-cell ">
                    <input type="radio" name="storeName" onchange ="oneChoose(this)" id="${list.ent.id}" class="goodSelect checkChild" style="display: none;"/>
                    <label for="${list.ent.id} " class="clearfix checkLabel">
                        <span class="fl weui_icon_circle icon" style="display: inline-block;margin-top: 12px;"></span>
                        <p class="clearfix fl">
                        <div class="fl company_info" >
                            <img class="fl logo" src="${ctxImg}/${list.ent.code}.png"  alt="Logo" width="40px"/>
                            <h5 class="fl">${list.ent.name}</h5>
                        </div>
                        <c:if test="${list.act!=''&&list.act!=null}">
                            <span  class="fr c_04b youhui">${list.act.name}</span>
                        </c:if>
                        </p>
                    </label>

                </li>
            </c:forEach>

        </ul>
    </div>
</c:if>
<c:if test="${status!=1}">
    <div class="container bd">
        <ul class="mui-table-view">
            <c:forEach items="${lists}" var="list">
                <li class="mui-table-view-cell ">
                    <input type="checkbox" name="storeName"  id="${list.ent.id}" class="goodSelect checkChild" style="display: none;"/>
                    <label for="${list.ent.id} " class="clearfix checkLabel">
                        <span class="fl weui_icon_circle icon" style="display: inline-block;margin-top: 12px;"></span>
                        <p class="clearfix fl">
                        <div class="fl company_info" >
                        <img class="fl logo" src="${ctxImg}/${list.ent.code}.png"  alt="Logo" width="40px"/>
                            <h5 class="fl">${list.ent.name}</h5>
                        </div>
                        <c:if test="${list.act!=''&&list.act!=null}">
                            <span  class="fr c_04b youhui">${list.act.name}</span>
                        </c:if>
                        </p>
                    </label>

                </li>
            </c:forEach>

        </ul>
    </div>
</c:if>
<c:if test="${status!=1}">
    <footer class="weui_tab" style="position: fixed;bottom: 0;width: 100%;z-index: 999;height: 48px;">

        <div class="weui_tabbar clearfix">
            <div class="weui_cells weui_cells_checkbox fl" style="width: 50%;padding: 0px 0; margin: 0px;">

                <label class="weui_cell weui_check_label clearfix" for="all">
                    <input type="checkbox" class="weui_check" name="checkbox3" id="all" >
                    <span class="fl weui_icon_circle icon" style="display: inline-block;margin-top: 8px;"></span>
                    <div class="weui_cell_bd weui_cell_primary fl" style="margin-top: 10px;">
                        <p>全选</p>
                    </div>
                </label>

            </div>
            <a href="javascript:void(0)" id="priceBtn" style="display: inline-block;width: 50%;padding: 15px 0;color: #fff;" class="fr bg_primary tc">立刻报价</a>
        </div>
    </footer>
</c:if>
<c:if test="${status==1}">
    <footer class="weui_tab" style="position: fixed;bottom: 0;width: 100%;z-index: 999;height: 50px;">
        <div class="weui_tab_bd">

        </div>
        <div class="weui_tabbar">
            <a href="javascript:void(0)" id="nextBtn" class="weui_btn  weui_btn_primary" style="width: 100%;padding: 5px;">下一步</a>
        </div>
    </footer>
</c:if>
<script src="${ctxJs}/lib/mui.js"></script>
<script>
    /*
     settime:2016.8.22
     author:chenying
     describe:选择报价公司
     * */
    $(function(){
//        $(".weui_check").attr("checked",false);
        for(var i=0;i< $("input").length;i++){
            $("input")[i].checked=false;
        }
        //单选
        $(".goodSelect").on("click",function(){
            var item =$(this);
            chooseBox(item);
        });
        //全选
        $("#all").on("click",function(){
            if($(this)[0].checked){

                $("input[type=checkbox]").each(function() {
                    $(this)[0].checked = true;
                });
                $(this).next().eq(0).addClass("weui_icon_success");
                $(this).next().eq(0).removeClass("weui_icon_circle");
                $(".icon").addClass("weui_icon_success");
                $(".icon").removeClass("weui_icon_circle");
            }else{
                $(this).next().eq(0).removeClass("weui_icon_success");

                $("input[type=checkbox]").each(function() {
                    $(this)[0].checked = false;
                });
                $(this).next().eq(0).addClass("weui_icon_circle");
                $(".icon").removeClass("weui_icon_success");
                $(".icon").addClass("weui_icon_circle");
            }
        })
        /*点击立即报价*/
        $("#priceBtn").on("click",function(){
            var flag = 0;//是否选择公司标志
            var entIds=[];
            var checkedList = $(".checkChild");//所有check除全选
            for(var i=0;i<checkedList.length;i++){
                if(!checkedList[i].checked){
                    flag+=1;
                }else{
                    //todo此处获取公司id进行后续查询
                    entIds.push($(checkedList[i]).attr("id"));

                }
            }
            if(flag==checkedList.length){
                Global.tool.toast("请选择报价公司");
            }else{
            		Global.tool.weiLoade();
                setTimeout(function(){
                    window.location.href="${path}/order/lookPrice?entIds="+entIds
                })
            }
        })

        /*点击下一步*/
        $("#nextBtn").on("click",function(){
            var flag =1;
            var entId;
            for(var i=0;i<$("input[type=radio]").length;i++){
                if($("input[type=radio]")[i].checked){
                    entId = $("input[type=radio]").eq(i).attr("id");
                    flag+=1;
                }
            }
            if(flag==1){
                Global.tool.toast("请选择报价公司");
            }else{
                /*todo*/
                window.location.href="${path}/order/uploadDataNoMsg?entId="+entId;
            }
        })
    })

    /*单选*/
    function oneChoose(item){

        var item = $(item);

        if(item[0].checked){
            item.next().eq(0).find(".icon").addClass("weui_icon_success");
            item.next().eq(0).find(".icon").removeClass("weui_icon_circle");

        }
        item.parent().siblings().find("input[type=radio]").next().find(".icon").removeClass("weui_icon_success");
        item.parent().siblings().find("input[type=radio]").next().find(".icon").addClass("weui_icon_circle");
    }

    /*选择函数*/
    function chooseBox(item){
        if(item[0].checked){

            item.next().eq(0).find(".icon").addClass("weui_icon_success");
            item.next().eq(0).find(".icon").removeClass("weui_icon_circle");
        }else{
            item.next().eq(0).find(".icon").removeClass("weui_icon_success");
            item.next().eq(0).find(".icon").addClass("weui_icon_circle");
        }

        var checkFlag = 1 ;//全选标志1全选0非全选
        var checkAll =$("#all");//全选check;
        var checkedList = $(".checkChild");//所有check除全选
        for(var i=0;i<checkedList.length;i++){
            if(!checkedList[i].checked){
                checkFlag = 0;
            }
        }
        if(checkFlag==1){
            checkAll[0].checked =true;
            checkAll.next().eq(0).addClass("weui_icon_success");
            checkAll.next().eq(0).removeClass("weui_icon_circle");
            console.log(13);
        }else{
            checkAll[0].checked =false;
            checkAll.next().eq(0).removeClass("weui_icon_success");
            checkAll.next().eq(0).addClass("weui_icon_circle");
        }
    }

</script>
</body>
</html>
