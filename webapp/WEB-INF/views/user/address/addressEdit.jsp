<%--
  Created by IntelliJ IDEA.
  User: Mr.wanG
  Date: 2016/8/23
  Time: 17:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/common/tagLib.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>修改地址</title>
    <style type="text/css">

    </style>
</head>
<body id="bodybox">
<form action="${path}/user/address/edit" method="post" id="addForm">
    <input type="hidden" name="id" value="${info.id}">
    <input type="hidden" name="user_id" value="${info.user_id}">
    <div class="container bd">
        <div class="weui_cells weui_cells_form">
            <div class="weui_cell">
                <div class="weui_cell_hd"><label class="weui_label">收货人</label></div>
                <div class="weui_cell_bd weui_cell_primary">
                    <input class="weui_input" id="user_name" name="username" type="text"  placeholder="请填写收货人姓名" value="${info.username}" />
                </div>
            </div>
            <div class="weui_cell">
                <div class="weui_cell_hd"><label class="weui_label">联系电话</label></div>
                <div class="weui_cell_bd weui_cell_primary">
                    <input class="weui_input" id="phone" name="phone" type="text"  placeholder="请填写收货人联系电话" value="${info.phone}"/>
                </div>
            </div>
            <div class="weui_cell">
                <div class="weui_cell_hd"><label class="weui_label">收货地址</label></div>
                <div class="weui_cell_bd weui_cell_primary">
                    <input class="weui_input" id="addr" type="text" name="address" placeholder="请收货人地址" value="${info.address}"/>
                </div>
            </div>
            <div class="weui_cell">
                <div class="weui_cell_hd"><label class="weui_label">邮政编码</label></div>
                <div class="weui_cell_bd weui_cell_primary">
                    <input class="weui_input" id="post_code" type="text" name="post_code" placeholder="请收货人地址邮政编码" value="${info.post_code}"/>
                </div>
            </div>
        </div>
        <div class="weui_cells weui_cells_checkbox">
            <label class="weui_cell weui_check_label" for="s11">
                <div class="weui_cell_hd">
                    <input type="checkbox" class="weui_check" name="is_def" id="s11" value="1" <c:if test="${info.is_def == 1}">checked</c:if>>
                    <i class="weui_icon_checked"></i>
                </div>
                <div class="weui_cell_bd weui_cell_primary">
                    <p>设置为默认地址</p>
                </div>
            </label>
        </div>
    </div>
</form>
<div class="tc" style="margin-top: 20px;">
    <a href="javascript:void(0)" id="saveBtn" class="weui_btn  weui_btn_primary" style="width: 90%;">保存</a>
</div>
<script type="text/javascript">
    $(function(){
        $("#saveBtn").tap(function(){
            var user_name = $("#user_name").val();//收货人姓名
            var addr = $("#addr").val();//收货地址
            var phon = $("#phone").val();
            var post = $("#post_code").val();
            if(user_name == ""){
                Global.tool.toast("请输入收货人姓名");
            }else if(addr ==""){
                Global.tool.toast("请输入收货地址");
            }else if(phon == ""){
                Global.tool.toast("请输入收货人联系电话");
            }else if(!/^1[0-9]{10}$/.test(phon)){
                Global.tool.toast("收货人联系电话格式不正确");
            }else if(post != '' && !/^[0-9]{6}$/.test(post)){
                Global.tool.toast("邮政编码格式不正确");
            }else{
                /*todo 数据验证成功提交数据*/
                $("#addForm").submit();
            }
        })
    })
</script>
</body>
</html>
