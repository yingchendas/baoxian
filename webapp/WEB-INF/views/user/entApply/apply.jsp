<%--
  Created by IntelliJ IDEA.
  User: Mr.wanG
  Date: 2016/8/28
  Time: 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/common/tagLib.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>经销商申请</title>
    <style type="text/css">
        .title{
            padding: 10px;
        }
        .get_btn{
            display: inline-block;
            right: 0px;
            top:-5px;
            font-size: 12px;
            color: #fff;
            background: #04BE02;
            /*padding: .5rem;*/
            border: none;
            height: 35px;
            width: 80px;
            padding: 3px;
            z-index: 998;
        }
        .btn_cover{
            z-index: 999;
            background:rgba(0,0,0,0.3);
            height: 29px;
            width: 74px;
            display: none;
        }
        .weui_cells_form{
            margin-top: 20px;
        }
        .addr{
            padding:.5rem;
        }
        .weui_cell_hd{
            width:90px !important;
        }
    </style>
</head>
<body id="bodybox">
<div class="container bd">
    <div class="weui_cells weui_cells_form">
        <div class="weui_cell">
            <div class="weui_cell_hd"><label class="weui_label">手机号</label></div>
            <div class="weui_cell_bd weui_cell_primary pr">
                <input class="weui_input" id="phoneNum" type="number" placeholder="请输入电话号码" value="${info.mobile}"/>
                <button  class="get_btn get pa">获取验证码</button>
                <span class="get_btn btn_cover pa"></span>
            </div>
        </div>
        <div class="weui_cell">
            <div class="weui_cell_hd"><label class="weui_label">验证码</label></div>
            <div class="weui_cell_bd weui_cell_primary">
                <input class="weui_input" type="number" id="checkedNum"  placeholder="请输入验证码"/>
            </div>
        </div>
    </div>

    <div class="weui_cells weui_cells_form">
        <div class="weui_cell">
            <div class="weui_cell_hd"><label class="weui_label">经销商代码</label></div>
            <div class="weui_cell_bd weui_cell_primary pr">
                <input class="weui_input" id="bsu_num" type="text" placeholder="请填写经销商代码" value="${info.code}"/>
            </div>
        </div>
        <div class="weui_cell">
            <div class="weui_cell_hd"><label class="weui_label">归属门店</label></div>
            <div class="weui_cell_bd weui_cell_primary pr">
                <input class="weui_input" id="store" type="text" name="store_info" placeholder="请填写归属门店"/>

            </div>
        </div>
    </div>
    <h5 class="c_ff7 f12" style="padding: .5rem;">经销商代码请从内部渠道获取</h5>
</div>
<div class="tc">
    <a href="#" id="subtn" class="weui_btn weui_btn_primary" style="width: 80%;">提交</a>
</div>
<script>
    /*
     * settime:2016.8.25
     author:chenying
     describe:经销商申请
     */
    $(function(){
        /*获取验证码*/
        $(".get").tap(function(){
            var phoneNum = $("#phoneNum").val();
            var timer =null;
            var item = $(this);
            if(Global.tool.checkedPhone(phoneNum)){
                var i=20;
                $(".btn_cover").css("display","block");
                item.text(""+i+"s");
                timer=setInterval(function(){
                    i--;
                    item.text(""+i+"s");
                    if(i==0){
                        clearInterval(timer);
                        item.text("获取验证码");
                        $(".btn_cover").css("display","none");
                        i=20;
                    }
                },1000);
                /*todo数据请求*/
                $.ajax({
                    url:"${path}/user/ent/sendVerify",
                    type:"post",
                    dataType:"json",
                    data:{mobile:phoneNum},
                    success:function (o) {
                        if(o.code == "success"){
                            Global.tool.toast("验证码已发送");
                        }else{
                            Global.tool.toast(o.message);
                        }
                    }
                });
            }
        });

        /*申请提交*/
        $("#subtn").tap(subForm);
    });
    
    function subForm() {
        var phoneNum = $("#phoneNum").val();//电话号码
        var checkedNum = $("#checkedNum").val();//验证码
        var bsu_num = $("#bsu_num").val();//经销商代码
        var store = $("#store").val();//门店名称
        if(!Global.tool.checkedPhone(phoneNum)){
            return false;
        }else if(checkedNum==''){
            Global.tool.toast("请输入验证码");
        }else if(bsu_num==''){
            Global.tool.toast("请填写经销商代码");
        }else if(store == ''){
            Global.tool.toast("请填写归属门店");
        }else{
            $("#subtn").unbind("tap");
            $("#subtn").removeAttr("href");
            /*todo 数据提交*/
            $.ajax({
                url:"${path}/user/ent/apply",
                type:"post",
                dataType:"json",
                data:{
                    mobile:phoneNum,
                    code:bsu_num,
                    verifyCode:checkedNum,
                    store_info:store
                },
                success:function (o) {
                    if(o.code == "success"){
                        window.location.href = "${path}/user/ent/wait";
                    }else{
                        Global.tool.toast(o.message);
                        $("#subtn").tap(subForm);
                        $("#subtn").attr("href","#");
                    }
                }
            });
        }
    }
</script>
</body>
</html>
