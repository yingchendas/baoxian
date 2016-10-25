<%--
  Created by IntelliJ IDEA.
  User: Mr.wanG
  Date: 2016/9/3
  Time: 22:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/common/tagLib.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>设置交易密码</title>
</head>
<body id="bodybox">
<form action="" method="post" id="subForm">
<div class="container bd">
    <div class="weui_cells weui_cells_form" style="margin-top: 0;">
        <div class="weui_cell">
            <div class="weui_cell_hd"><label class="weui_label">设置密码</label></div>
            <div class="weui_cell_bd weui_cell_primary">
                <input class="weui_input" id="newPwd" type="password" name="password" placeholder="请设置密码"/>
            </div>
        </div>
        <div class="weui_cell">
            <div class="weui_cell_hd"><label class="weui_label">确认密码</label></div>
            <div class="weui_cell_bd weui_cell_primary">
                <input class="weui_input" id="rePwd" type="password" name="repass" placeholder="请再次输入密码"/>
            </div>
        </div>
    </div>
    <div class="tc" style="margin-top: 20px;">
        <a href="javascript:void(0)" id="saveBtn" class="weui_btn  weui_btn_primary" style="width: 90%;">设置</a>
    </div>
</div>
</form>
<script>
    $(function(){
        $("#saveBtn").tap(function(){
            var newPwd = $("#newPwd").val();
            var rePwd = $("#rePwd").val();
            if(newPwd == ''){
                Global.tool.toast("请输入新密码");
            }else if(newPwd.length < 6 || newPwd.length > 10){
                Global.tool.toast("密码长度应为6-10个字符");
            }else if(rePwd==''){
                Global.tool.toast("请确认新密码");
            }else if(newPwd != rePwd){
                Global.tool.toast("确认密码与密码不一致");
            }else{
                $.ajax({
                    url:"${path}/user/pswd/init",
                    type:"post",
                    dataType:"json",
                    data:$("#subForm").serializeArray(),
                    success:function (o) {
                        if(o.code == "success"){
                            $("#saveBtn").unbind("tap");
                            Global.tool.toastJump("设置成功", "${path}/user/center");
                        }else{
                            Global.tool.toast(o.message);
                        }
                    }
                });
            }
        });
    });
</script>
</body>
</html>
