<%--
  Created by IntelliJ IDEA.
  User: xuran
  Date: 2016/8/24
  Time: 11:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<%@include file="/WEB-INF/views/common/tagLib.jsp"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>车辆管理</title>
    <link rel="stylesheet" href="${path}/common/weui/dist/style/weui.min.css" />
    <link rel="stylesheet" type="text/css" href="${ctxCss}/common/common.css"/>
    <style type="text/css">
        .car_title h5{
            margin-top: 1rem;
            padding: .5rem;
        }
        .weui_cells_form:first-child{
            margin-top: 0 !important;
        }
        .notice{
            padding: .5rem;
        }
        .cover{
            width: 100%;
            height: 100%;
            z-index: 9999;
            background: rgba(0,0,0,.5);
            display: none;
        }
        .cover .imgBox{
            margin: 35% 10%
        }
        .cover p{
            line-height: 2.5rem;
        }
    </style>
</head>
<body id="bodybox">

<div id="container" class="container bd">
    <div class="cover pf">
        <div class="c_fff tc imgBox">
            <h4>行驶证信息示例</h4>
            <p>请对照红框选择区域进行填写</p>
            <img src="${ctxImg}/eg.png" width="80%"/>
            <p class="c_fff tc close">
                <i class="iconfont icon-close f18" style="color: #fff !important;"></i>
            </p>
        </div>


    </div>
    <div class="clearfix car_title">
        <h5 class="c_666 fl">车辆信息</h5>
        <h5 class="c_666 fr eg_show c_04b">在哪里查看车辆信息</h5>
    </div>

    <form id="form" action="${path}/car/save">
        <input type="hidden" name="id" value="${car.id}">
    <div class="weui_cells weui_cells_form" style="margin-top: 0;">
        <div class="weui_cell">
            <div class="weui_cell_hd"><label class="weui_label">姓名</label></div>
            <div class="weui_cell_bd weui_cell_primary">
                <input class="weui_input" id="userName" name="owner" type="text"  placeholder="请填写车主姓名" value="${car.owner}"/>
            </div>
        </div>
        <div class="weui_cell">
            <div class="weui_cell_hd"><label class="weui_label">车牌号</label></div>
            <div class="weui_cell_bd weui_cell_primary">
                <input class="weui_input" id="carNumber" name="plate_no" type="text"  placeholder="请填写车牌号" value="${car.plate_no}"/>
            </div>
        </div>
        <div class="weui_cell">
            <div class="weui_cell_hd"><label class="weui_label">品牌型号</label></div>
            <div class="weui_cell_bd weui_cell_primary">
                <input class="weui_input" id="classNumber" name="model" type="text"  placeholder="请填写完整品牌型号" value="${car.model}"/>
            </div>
        </div>
        <div class="weui_cell">
            <div class="weui_cell_hd"><label class="weui_label">车辆识别代号</label></div>
            <div class="weui_cell_bd weui_cell_primary">
                <input class="weui_input" type="text" id="discernNumber" name="vin"  placeholder="请填写" value="${car.vin}"/>
            </div>
        </div>
        <div class="weui_cell">
            <div class="weui_cell_hd"><label class="weui_label">发动机号码</label></div>
            <div class="weui_cell_bd weui_cell_primary">
                <input class="weui_input" id="powerNumber" type="text" name="engine_no"  placeholder="请填写" value="${car.engine_no}"/>
            </div>
        </div>

    </div>
    <div class="weui_cells weui_cells_form">

        <div class="weui_cell">
            <div class="weui_cell_hd"><label class="weui_label">注册日期</label></div>
            <div class="weui_cell_bd weui_cell_primary">
                <input class="weui_input" id="date" type="date" name="register_date" value="<fmt:formatDate value="${car.register_date}" pattern="yyyy-MM-dd" />" placeholder="请选择" />
                <div class="weui_cell_ft">sd</div>
            </div>
        </div>

    </div>
    </form>
    <h5 class="c_ff7 notice">注意:请输入内容与行驶证一致!</h5>
</div>
<div class="tc" style="margin-top: 20px;">
    <a id="saveBtn" class="weui_btn  weui_btn_primary" style="width: 90%;">保存</a>
</div>

<script>
    $(function(){
        /*显示实例图片*/
        $(".eg_show").tap(function(){
            $(".cover").show(300);
        });
        /*关闭实例图片*/
        $(".close").tap(function(){
            $(".cover").hide(100);
        })

        /*数据验证并提交数据*/
        $("#saveBtn").tap(function(){
            var classNumber = $("#classNumber").val();//品牌型号
            var discernNumber = $("#discernNumber").val();//车辆识别代号
            var powerNumber = $("#powerNumber").val();//发动机号码
            var date = $("#date").val();//注册日期
            var userName = $("#userName").val();
            var carNumber = $("#carNumber").val();
            if(userName==''){
                Global.tool.toast("请输入车主姓名");
            }else if(carNumber==''){
                Global.tool.toast("请输入车牌号");
            }
            else if(classNumber ==''){
                Global.tool.toast("请输入品牌型号");
            }else if(discernNumber == ""){
                Global.tool.toast("请输入车辆识别代号");
            }else if(powerNumber == ""){
                Global.tool.toast("请输入发动机号码");
            }else if(date == ""){
                Global.tool.toast("请选择注册日期");
            }else{
                /*todo 数据验证成功提交数据*/
                $("#form").submit();
            }
        })
    })
</script>
</body>
</html>
