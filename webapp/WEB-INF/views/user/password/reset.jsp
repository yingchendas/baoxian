<%--
  Created by IntelliJ IDEA.
  User: Mr.wanG
  Date: 2016/9/3
  Time: 22:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/common/tagLib.jsp"%>
<%
    request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>修改交易密码</title>
</head>
<body id="bodybox">
<div class="container bd">
    <form action="" method="post" id="subForm">
    <div class="weui_cells weui_cells_form" style="margin-top: 0;">
        <div class="weui_cell">
            <div class="weui_cell_hd"><label class="weui_label">原密码</label></div>
            <div class="weui_cell_bd weui_cell_primary">
                <input class="weui_input" id="oldPwd" type="password" name="oldPass" placeholder="请输入原密码" />
            </div>
        </div>
        <div class="weui_cell">
            <div class="weui_cell_hd"><label class="weui_label">新密码</label></div>
            <div class="weui_cell_bd weui_cell_primary">
                <input class="weui_input" id="newPwd" type="password" name="password" placeholder="请输入新密码" />
            </div>
        </div>
        <div class="weui_cell">
            <div class="weui_cell_hd"><label class="weui_label">重复新密码</label></div>
            <div class="weui_cell_bd weui_cell_primary">
                <input class="weui_input" id="rePwd" type="password" name="repass" placeholder="请再次输入密码" />
            </div>
        </div>
    </div>
    <div class="tc" style="margin-top: 20px;">
        <a href="javascript:void(0)" id="saveBtn" class="weui_btn weui_btn_primary" style="width: 90%;">确认修改</a>
    </div>
    </form>
</div>
<script>
    $(function(){
        $("#saveBtn").tap(function(){
            var oldPwd = $("#oldPwd").val();
            var newPwd = $("#newPwd").val();
            var rePwd = $("#rePwd").val();
            if(oldPwd==''){
                Global.tool.toast("请输入原密码");
            }else if(newPwd == ''){
                Global.tool.toast("请输入新密码");
            }else if(newPwd.length < 6 || newPwd.length > 10){
                Global.tool.toast("新密码长度应为6-10个字符");
            }else if(rePwd==''){
                Global.tool.toast("请确认新密码");
            }else if(newPwd != rePwd){
                Global.tool.toast("确认密码与密码不一致");
            }else{
                $.ajax({
                    url:"${path}/user/pswd/reset",
                    type:"post",
                    dataType:"json",
                    data:$("#subForm").serializeArray(),
                    success:function (o) {
                        if(o.code == "success"){
                            $("#saveBtn").unbind("tap");
                            Global.tool.toastJump("修改成功", "${path}/user/center");
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
