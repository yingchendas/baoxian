<%--
  Created by IntelliJ IDEA.
  User: Mr.wanG
  Date: 2016/8/26
  Time: 17:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/common/tagLib.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>兑换返利</title>
    <style type="text/css">
        header{
            padding: 1rem;
        }
    </style>
</head>
<body id="bodybox">

<div class="container bd">
    <header class="tc bg_f" >
        <h5 class="f17 c_666">您的钱包余额为<span class="c_ff7">${comm.commissionBalance}</span>元</h5>
        <h5 class="c_666">可提现: ${comm.commissionBalance}元</h5>
    </header>
    <!--填写账号-->
    <div class="weui_cells weui_cells_form">
        <div class="weui_cell">
            <div class="weui_cell_hd"><label class="weui_label">银行卡号</label></div>
            <div class="weui_cell_bd weui_cell_primary">
                <input class="weui_input" type="number" id="weiAcount" name="bank_card" placeholder="请输入银行卡号" />
            </div>
        </div>
        <div class="weui_cell">
            <div class="weui_cell_hd"><label class="weui_label">银行名称</label></div>
            <div class="weui_cell_bd weui_cell_primary">
                <input class="weui_input" type="text" id="owerName" name="bank_name" placeholder="请输入银行名称" />
            </div>
        </div>
    </div>
    <p class="c_ff7 f12" style="padding: 0 .5rem;">仅支发卡行:中国银行、建设银行、工商银行、农业银行、交通银行</p>
    <!--兑换金额-->
    <div class="weui_cells weui_cells_form">
        <div class="weui_cell">
            <div class="weui_cell_hd"><label class="weui_label">兑换金额</label></div>
            <div class="weui_cell_bd weui_cell_primary">
                <input class="weui_input" type="number" id="ex_money" name="amountd" placeholder="请输入兑换金额" />
            </div>
        </div>
        <%--<div class="weui_cell weui_vcode">--%>
            <%--<div class="weui_cell_hd"><label class="weui_label">验证码</label></div>--%>
            <%--<div class="weui_cell_bd weui_cell_primary">--%>
                <%--<input class="weui_input" type="text" id="ex_number" placeholder="请输入验证码" />--%>
            <%--</div>--%>
            <%--<div class="weui_cell_ft">--%>
                <%--<img src="${path}/user/commission/verifyCode" width="80px" alt="点击刷新" id="vfimg"/>--%>
            <%--</div>--%>
        <%--</div>--%>
        <div class="weui_cell">
            <div class="weui_cell_hd"><label class="weui_label">交易密码</label></div>
            <div class="weui_cell_bd weui_cell_primary">
                <input class="weui_input" type="password" id="pwd" name="passwrod" placeholder="请输入交易密码" />
            </div>
        </div>
    </div>
</div>
<p class="c_ff7 f12" style="padding: 0 .5rem;">提现申请提交后，我们将于每月1日进行处理，如遇节假日则顺延</p>
<div class="btn" style="margin-top: 2rem;">
    <a href="javascript:void(0)" class="weui_btn  weui_btn_primary" id="subtn" style="width: 80%;padding: .2rem 0;">提交兑换申请</a>
</div>
<script >
    var cw = '${comm.commissionBalance}';
    /*
     * settime:2016.8.23
     * author:chenying
     * describe:兑换佣金
     */
    $(function(){
        $("#vfimg").tap(function () {
            this.src = '${path}/user/commission/verifyCode';
        });
        /*验证输入信息,验证成功后提交数据*/
        $("#subtn").tap(function(){
            var weiAcount = $("#weiAcount").val();//银行卡号
            var owerName = $("#owerName").val();//银行名
            var ex_money = $("#ex_money").val();//兑换金额
            var ex_number = $("#ex_number").val();//验证码
            var pwd = $("#pwd").val();//交易密码
            if(weiAcount==""){
                Global.tool.toast("请输入银行卡号");
            }else if(owerName ==""){
                Global.tool.toast("请输入银行名");
            }else if(ex_money ==""){
                Global.tool.toast("请输入兑换金额");
            }else if(ex_money*1 > cw*1){
                Global.tool.toast("输入兑换金额超出可兑换总额");
            }
            /*else if(ex_number ==""){
                Global.tool.toast("请输入验证码");
            }*/else if(pwd ==''){
                Global.tool.toast("请输入交易密码");
            }
            else{
                //验证成功后提交数据
                $.ajax({
                    url:"${path}/user/commission/apply",
                    type:"post",
                    dataType:"json",
                    data:{
                        bank_name:owerName,
                        bank_card:weiAcount,
                        amountd:ex_money,
//                        verifyCode : ex_number,
                        password:pwd
                    },
                    success:function (o) {
                        if(o.code == "success"){
//                            Global.tool.toast("提现申请提交成功，您可在兑换明细中查看进度");
                            window.location.href="${path}/user/commission/main";
                        }else{
                            Global.tool.toast(o.message);
                        }
                    }
                });
            }
        })
    })

</script>
</body>
</html>
