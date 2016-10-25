<%--
  Created by IntelliJ IDEA.
  User: xuran
  Date: 2016/8/25
  Time: 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/common/tagLib.jsp"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>填写投保车辆</title>
    <link rel="stylesheet" type="text/css" href="${ctxWeuiCss}/weui.min.css"/>
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
            margin: 32% 10%
        }
        .cover p{
            line-height: 2.5rem;
        }
        header .weui_cell:before{
            border: none !important;
        }
        header h5{
            margin-top: 15px;
        }
    </style>
</head>
<body id="bodybox">
<div id="container" class="container bd">
    <div class="weui_dialog_alert" style="display: none;">
        <div class="weui_mask"></div>
        <div class="weui_dialog">
            <div class="weui_dialog_hd"><strong class="weui_dialog_title">无法识别车辆信息</strong></div>
            <div class="weui_dialog_bd">无法识别车辆信息，请重新输入</div>
            <div class="weui_dialog_ft">
                <a href="#" class="weui_btn_dialog primary sure">确定</a>
            </div>
        </div>
    </div>
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


    </div>

    <form id="form" action="${path}/order/submitCar">
        <div style="padding-top:10px ;">
            <h5 class="c_666 " style="padding: .5rem;">车主信息</h5>
        </div>
        <div class="weui_cells weui_cells_form" style="margin-top: 0px;">
            <div class="weui_cell">
                <div class="weui_cell_hd"><label class="weui_label">车主姓名</label></div>
                <div class="weui_cell_bd weui_cell_primary">
                    <input class="weui_input" id="syr" name="syr" type="text"  placeholder="请填写车主姓名" />
                </div>
            </div>
            <div class="weui_cell">
                <div class="weui_cell_hd"><label class="weui_label">车主身份证号</label></div>
                <div class="weui_cell_bd weui_cell_primary">
                    <input class="weui_input" id="idNo" name="idNo" type="text"  placeholder="请填写车主身份证号" />
                </div>
            </div>
        </div>
        <div class="clearfix car_title">
            <h5 class="c_666 fl">车辆信息</h5>
            <h5 class="c_666 fr eg_show c_04b">在哪里查看车辆信息</h5>
        </div>
        <div class="weui_cells weui_cells_form" style="margin-top: 0;">
            <div class="weui_cell">
                <div class="weui_cell_hd"><label class="weui_label">车牌号</label></div>
                <div class="weui_cell_bd weui_cell_primary">
                    <input class="weui_input" id="licenseNo" name="licenseNo" type="text"  placeholder="请填写车牌号" />
                </div>
            </div>
            <div class="weui_cell">
                <div class="weui_cell_hd"><label class="weui_label">品牌型号</label></div>
                <div class="weui_cell_bd weui_cell_primary">
                    <input class="weui_input" id="modelCode"  type="text" name="modelCode"  placeholder="请填写完整品牌型号" />
                </div>
            </div>
            <div class="weui_cell">
                <div class="weui_cell_hd"><label class="weui_label">车辆识别代号</label></div>
                <div class="weui_cell_bd weui_cell_primary">
                    <input class="weui_input" id="vin" type="text" name="vin"  placeholder="请填写车辆识别代号" />
                </div>
            </div>
            <div class="weui_cell">
                <div class="weui_cell_hd"><label class="weui_label">发动机号码</label></div>
                <div class="weui_cell_bd weui_cell_primary">
                    <input class="weui_input" id="engineNo" type="text" name="engineNo" placeholder="请填写发动机号码" />
                </div>
            </div>

        </div>
        <div class="weui_cells weui_cells_form">

            <div class="weui_cell">
                <div class="weui_cell_hd"><label class="weui_label">注册日期</label></div>
                <div class="weui_cell_bd weui_cell_primary">
                    <input class="weui_input" id="enrollDate" type="date" name="enrollDate"   placeholder="请选择" />
                    <div class="weui_cell_ft">sd</div>
                </div>
            </div>

        </div>
        <h5 class="c_c22 notice">注意:请输入内容与行驶证一致!</h5>
    </form>
</div>

<div class="tc" style="margin-top: 20px;">
    <a href="javascript:void(0)" id="saveBtn" class="weui_btn  weui_btn_primary" style="width: 90%;">提交</a>
</div>
<script>
    /*
     * settime:2016.8.22
     author:chenying
     describe:填写投保车辆
     */
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
            var classNumber = $("#modelCode").val();//品牌型号
            var discernNumber = $("#vin").val();//车辆识别代号
            var powerNumber = $("#engineNo").val();//发动机号码
            var date = $("#enrollDate").val();//注册日期
            var user_name = $("#syr").val();
            var carNumber = $("#licenseNo").val();
            var idNumber = $("#idNo").val();
            var reg = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/; //身份证号验证

            if(user_name==''){
                Global.tool.toast("请输入车主姓名");
            }else if(idNumber==""){
                Global.tool.toast("请输入身份证号");
            }else if(!reg.test(idNumber)){
                Global.tool.toast("身份证号输入不正确");
            }else if(carNumber==""){
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
                setTimeout(function(){
                    $("#form").submit();
                },500)
                /*查询失败显示弹框*/
                $(".weui_dialog_alert").show();
            }
        })
        /*关闭提示框*/
        $(".sure").tap(function(){
            $(".weui_dialog_alert").hide();
        })
    })
</script>
</body>
</html>
