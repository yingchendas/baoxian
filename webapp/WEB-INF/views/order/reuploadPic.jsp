<%--
  Created by IntelliJ IDEA.
  User: Mr.wanG
  Date: 2016/9/7
  Time: 11:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/common/tagLib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>重新上传照片</title>
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
            margin-top: 0px;
        }
        .addr{
            padding:.5rem;
        }
        .weui_cells_form .weui_cell_hd{
            width:80px !important;
        }
        /*上传照片*/
        .notice{
            background: rgba(0,0,0,.3);
            color: #fff;
            width: 80%;
            margin: 10px auto;
            border-radius: 5px;
            text-align: center;
            padding: .5rem;
        }
        .front_box{
            display: block;
            text-align: center;
            width: 95%;
            margin: 20px auto;
            height: 240px;
            border: 1px dashed #04BE02;
        }
        .obj{
            width: 100%;
        }
        .icon{
            left: 45%;
            top:90px;
        }
    </style>
</head>
<body id="bodybox">
<%--<div class="container bd">--%>
    <%--<!--联系方式-->--%>
    <%--<h5 class="title">联系方式</h5>--%>
    <%--<div class="weui_cells weui_cells_form">--%>
        <%--<div class="weui_cell">--%>
            <%--<div class="weui_cell_hd"><label class="weui_label">手机号</label></div>--%>
            <%--<div class="weui_cell_bd weui_cell_primary pr">--%>
                <%--<input class="weui_input" id="phoneNum" type="number"   placeholder="请输入电话号码"/>--%>
                <%--<button  class="get_btn get pa">获取验证码</button>--%>
                <%--<span class="get_btn btn_cover pa"></span>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="weui_cell">--%>
            <%--<div class="weui_cell_hd"><label class="weui_label">验证码</label></div>--%>
            <%--<div class="weui_cell_bd weui_cell_primary">--%>
                <%--<input class="weui_input" type="number" id="checkedNum"  placeholder="请输入验证码"/>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
    <%--<!--联系地址-->--%>
    <%--<h5 class="title">联系地址(保单将送至该地址)</h5>--%>
    <%--<div class="weui_cells weui_cells_form">--%>
        <%--<div class="weui_cell">--%>
            <%--<div class="weui_cell_hd"><label class="weui_label">联系人</label></div>--%>
            <%--<div class="weui_cell_bd weui_cell_primary pr">--%>
                <%--<input class="weui_input" id="man" type="text"   placeholder="请填写收货人姓名"/>--%>

            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="weui_cell">--%>
            <%--<div class="weui_cell_hd"><label class="weui_label">详细地址</label></div>--%>
            <%--<div class="weui_cell_bd weui_cell_primary">--%>
                <%--<input class="weui_input" id="addr" type="text"  placeholder="请填写详细地址"/>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>

<!--上传照片-->
<h5 class="title">投保资料<span class="c_666 f12">（按保险公司要求,需提供投保资料。）</span> </h5>
<div class=" bd" style="margin-bottom: 80px;">
    <form action="#"  class="dropzone well" id="">
        <label for="front1" class="front_box box1 pr" style="margin-top: 0;" id="addFile">
                <div class="icon pa">
                    <i class="iconfont icon-jia c_04b f1m"></i>
                    <h5 class="c_666 f12">行驶证第一页</h5>
                </div>


            <input type="file"  name="front" id="front1" value="" style="display: none;" />
        </label>
				<label for="front2" class="front_box box11 pr" style="margin-top: 0;" id="addFile0">
                <div class="icon pa">
                    <i class="iconfont icon-jia c_04b f1m"></i>
                    <h5 class="c_666 f12">行驶证第二页</h5>
                </div>


            <input type="file"  name="front" id="front2" value="" style="display: none;" />
        </label>
        <label for="fronts3" class="front_box box2 pr" id="addFile1">
                <div class="icon pa">
                    <i class="iconfont icon-jia c_04b f1m"></i>
                    <h5 class="c_666 f12">身份证正面</h5>
                </div>


            <input type="file" name="fronts" id="fronts3" value="" style="display: none;" />
        </label>
         <label for="fronts4" class="front_box box22 pr" id="addFile11">
                <div class="icon pa">
                    <i class="iconfont icon-jia c_04b f1m"></i>
                    <h5 class="c_666 f12">身份证反面</h5>
                </div>


            <input type="file" name="fronts" id="fronts4" value="" style="display: none;" />
        </label>
    </form>
</div>
<form action="${path}/order/reuploadPic" method="post" id="upForm">
<footer class="weui_tab" style="position: fixed;bottom: 0;width: 100%;z-index: 999;height: 50px;">
    <div class="weui_tab_bd">

    </div>
    <div class="weui_tabbar">
        <input type="hidden" name="oid" value="${oid}">
        <input type="hidden" name="idCar" id="idCar">
        <input type="hidden" name="workCar" id="workCar">
        <input type="hidden" name="idCarf" id="idCarf">
        <input type="hidden" name="workCarf" id="workCarf">
        <a href="javascript:void(0)" id="pay" class="weui_btn  weui_btn_primary" style="width: 100%;padding: 5px;">保存</a>
    </div>
</footer>
</form>
<script type="text/javascript" src="${path}/common/ui/js/lib/jquery-1.7.min.js"></script>
<!--<script type="text/javascript" src="../js/touch.js"></script>-->
<script type="text/javascript" src="${path}/common/ui/js/lib/jquery.ui.widget.js"></script>
<script type="text/javascript" src="${path}/common/ui/js/lib/jquery.iframe-transport.js"></script>
<script type="text/javascript" src="${path}/common/ui/js/lib/jquery.fileupload.js"></script>
<script>
    /*
     * settime:2016.8.23
     author:chenying
     describe:上传资料
     */
    $(function(){
        /*上传图片*/
        /*上传行驶证*/
        $('#addFile').fileupload({
            dataType: 'json',
            //                dropZone: $('#addBulletins'),
            sequentialUploads: true,
            singleFileUploads: true,
            limitMultiFileUploads: 1,
            url: '${path}/common/fileupload',
            limitConcurrentUploads: 1,
            done: function (e, data) {
                console.log(data);
            },
            success:function(e,data){
                <%--var img = document.createElement("img");--%>
                <%--img.classList.add("obj");--%>
                <%--img.src ="${path}/download?path="+e.message+"&width=580&height=400" ;--%>
                <%--$(".box1").html(img);--%>
                $(".box1").find(".icon").css("display","none");
                $(".box1").css({
                    "background-image":"url('${path}/download?path="+e.message+"&width=640&height=400')",
                    "background-size":"cover"


                });
                $("#workCar").val(e.message);
            },
            send: function (e, data) {
            },
            fail: function (e, data) {
            }
        });
        /*上传行驶证第二页*/
        $('#addFile0').fileupload({
            dataType: 'json',
            //                dropZone: $('#addBulletins'),
            sequentialUploads: true,
            singleFileUploads: true,
            limitMultiFileUploads: 1,
            url: '${path}/common/fileupload',
            limitConcurrentUploads: 1,
            done: function (e, data) {
                console.log(data);
            },
            success:function(e,data){
                <%--var img = document.createElement("img");--%>
                <%--img.classList.add("obj");--%>
                <%--img.src ="${path}/download?path="+e.message+"&width=580&height=400" ;--%>
                <%--$(".box1").html(img);--%>
                $(".box11").find(".icon").css("display","none");
                $(".box11").css({
                    "background-image":"url('${path}/download?path="+e.message+"&width=640&height=400')",
                    "background-size":"cover"


                });
                $("#workCarf").val(e.message);
            },
            send: function (e, data) {
            },
            fail: function (e, data) {
            }
        });
        /*上传身份证*/
        $('#addFile1').fileupload({
            dataType: 'json',
            //                dropZone: $('#addBulletins'),
            sequentialUploads: true,
            singleFileUploads: true,
            limitMultiFileUploads: 1,
            url: '${path}/common/fileupload',
            limitConcurrentUploads: 1,
            done: function (e, data) {
                console.log(data);
            },
            success:function(e,data){
                <%--var img = document.createElement("img");--%>
                <%--img.classList.add("obj");--%>
                <%--img.src ="${path}/download?path="+e.message+"&width=580&height=400" ;--%>
                <%--$(".box2").html(img);--%>
                $(".box2").find(".icon").css("display","none");
                $(".box2").css({
                    "background-image":"url('${path}/download?path="+e.message+"&width=640&height=400')",
                    "background-size":"cover"
                });
                $("#idCar").val(e.message);
            },
            send: function (e, data) {
            },
            fail: function (e, data) {
            }
        });
        /*上传身份证反面*/
        $('#addFile11').fileupload({
            dataType: 'json',
            //                dropZone: $('#addBulletins'),
            sequentialUploads: true,
            singleFileUploads: true,
            limitMultiFileUploads: 1,
            url: '${path}/common/fileupload',
            limitConcurrentUploads: 1,
            done: function (e, data) {
                console.log(data);
            },
            success:function(e,data){
                <%--var img = document.createElement("img");--%>
                <%--img.classList.add("obj");--%>
                <%--img.src ="${path}/download?path="+e.message+"&width=580&height=400" ;--%>
                <%--$(".box2").html(img);--%>
                $(".box22").find(".icon").css("display","none");
                $(".box22").css({
                    "background-image":"url('${path}/download?path="+e.message+"&width=640&height=400')",
                    "background-size":"cover"
                });
                $("#idCarf").val(e.message);
            },
            send: function (e, data) {
            },
            fail: function (e, data) {
            }
        });

        /*去支付*/
        $("#pay").on("click",function(){
            var idCar = $("#idCar").val(), workCar=$("#workCar").val();
            var idCarf =$("#idCarf").val(),workCarf=$("#workCarf").val()
            if(!idCar){
                Global.tool.toast("请先上传身份证正面照片");
            }else if(!idCarf){
            	 Global.tool.toast("请先上传身份证反面照片");
            }
            else if(!workCar){
                Global.tool.toast("请先上传行驶证第一页");
            }else if(!workCarf){
                Global.tool.toast("请先上传行驶证第二页");
            }
            else{
                $("#upForm").submit();
            }
        });
    })

</script>
</body>
</html>
