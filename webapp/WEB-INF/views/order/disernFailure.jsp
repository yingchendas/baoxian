<%--
  Created by IntelliJ IDEA.
  User: xuran
  Date: 2016/8/31
  Time: 16:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/common/tagLib.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <c:if test="${status==2}">
        <title>确认车辆</title>
    </c:if>
    <c:if test="${status!=2}">
        <title>温馨提示</title>
    </c:if>
    <link rel="stylesheet" type="text/css" href="${ctxWeuiCss}/weui.min.css"/>
    <link rel="stylesheet" type="text/css" href="${ctxCss}/common/common.css"/>
    <style type="text/css">
    	.weui_cells_form{
				padding: 10px;
				background: #fff;
				width: 88%;
				margin: 20px auto;
				border: 3px dashed #04BE02;
				border-color: red blue red blue;
				border-radius: 10px;
			}
			.weui_cells_form .weui_cell:before{
				border: none;
			}
			.weui_cells_form .weui_cell{
				font-size: 15px;
				
			}
			.weui_cells_form .weui_cell .weui_cell_hd{
				color:#999;
			}
			.weui_cells_form .weui_cell input{
				font-size: 14px;
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
    </style>
</head>
<body id="bodybox">
<div class="container bd">
    <header>
        <div class="weui_msg">
            <div class="weui_text_area">
                <c:if test="${status==1}">
                    <div class="weui_icon_area"><i class="weui_icon_warn weui_icon_msg c_04b"></i></div>
                    <p class="weui_msg_desc">尊敬的<span class="c_ff7">${username}</span>，很抱歉无法查询您的爱车<span class="c_ff7">${idCard}</span>的相关信息,修改车辆信息或继续车险报价。</p>
                </c:if>
                <c:if test="${status==3}">
                    <div class="weui_icon_area"><i class="weui_icon_warn weui_icon_msg c_04b"></i></div>
                    <p class="weui_msg_desc">尊敬的<span class="c_ff7">${username}</span>，您的爱车<span class="c_ff7">${idCard}</span>保险还未到投保时间。上年保险截止日期90日内，可投保第二年保险。请于<span class="c_ff7 "><fmt:formatDate value="${time}" pattern="yyyy-MM-dd"/></span>日后购买下一年保险，感谢您的关注！ </p>
                    <!--新增-->
                    <div class="weui_cell" style="padding:auto	 0;">
                        <div class="weui_cell_hd"><label class="weui_label f15">手机号</label></div>
                        <div class="weui_cell_bd weui_cell_primary pr">
                            <input class="weui_input f14 _focus" id="phoneNum" type="number"   placeholder="请输入电话号码"/>
                            <button onclick="saveCar()" class="get_btn get pa">提交</button>
                        </div>
                    </div>
                </c:if>
                <c:if test="${status==4}">
                    <div class="weui_icon_area"><i class="weui_icon_warn weui_icon_msg c_04b"></i></div>
                    <p class="weui_msg_desc">${errorInfo}</p>
                </c:if>


            </div>
        </div>

        <c:if test="${status==1}">
        <div class="weui_cells weui_cells_access">
            <a class="weui_cell" href="${path}/order/redirectToPhoto">
                <div class="weui_cell_bd weui_cell_primary">
                    <p>修改车牌和车主姓名</p>
                </div>
                <div class="weui_cell_ft"></div>
            </a>
            <a class="weui_cell" href="${path}/order//chooseCaseNotMeg">
                <div class="weui_cell_bd weui_cell_primary">
                    <p class="c_04b">信息无误,继续报价</p>
                </div>
                <div class="weui_cell_ft"></div>
            </a>
        </div>
        </c:if>
        <c:if test="${status==2}">
            <!--查询成功-->
            <div class=" weui_cells_form"  >
                <div class="weui_cell">
                    <div class="weui_cell_hd"><label class="weui_label">车主姓名</label></div>
                    <div class="weui_cell_bd weui_cell_primary">
                        <input class="weui_input" disabled="disabled"  type="text"  placeholder="${my:tuoming(vehicle.carOwnerInfo.name,1 )}" />
                    </div>
                </div>
                <div class="weui_cell">
                    <div class="weui_cell_hd"><label class="weui_label">车主身份证号</label></div>
                    <div class="weui_cell_bd weui_cell_primary">
                        <input class="weui_input"  type="text" disabled="disabled"  placeholder="${my:tuoming(vehicle.carOwnerInfo.idNo,2 )}" />
                    </div>
                </div>
                <div class="weui_cell">
                    <div class="weui_cell_hd"><label class="weui_label">车牌号</label></div>
                    <div class="weui_cell_bd weui_cell_primary">
                        <input class="weui_input" type="text" disabled="disabled"  placeholder="${vehicle.licenseNo}" />
                    </div>
                </div>
                <div class="weui_cell">
                    <div class="weui_cell_hd"><label class="weui_label">车辆品牌型号</label></div>
                    <div class="weui_cell_bd weui_cell_primary">
                        <input class="weui_input" type="text" disabled="disabled"  placeholder="${vehicle.modelCode}" />
                    </div>
                </div>
                <div class="weui_cell">
                    <div class="weui_cell_hd"><label class="weui_label">车辆车架号</label></div>
                    <div class="weui_cell_bd weui_cell_primary">
                        <input class="weui_input"  type="text" disabled="disabled"  placeholder="${my:tuoming(vehicle.vin, 3)}" />
                    </div>
                </div>
                <div class="weui_cell">
                    <div class="weui_cell_hd"><label class="weui_label">发动机号码</label></div>
                    <div class="weui_cell_bd weui_cell_primary">
                        <input class="weui_input"  type="text" disabled="disabled"  placeholder="${vehicle.engineNo}" />
                    </div>
                </div>
                <div class="weui_cell">
                    <div class="weui_cell_hd"><label class="weui_label">注册日期</label></div>
                    <div class="weui_cell_bd weui_cell_primary">
                        <input class="weui_input"  type="text" disabled="disabled"  placeholder="${vehicle.enrollDate}" />
                    </div>
                </div>
                <div class="weui_cell">
			            <div class="weui_cell_hd"><label class="weui_label">是否过户车</label></div>
			            <div class="weui_cell_bd weui_cell_primary">
			                <input class="weui_input"  type="text" disabled="disabled"   placeholder="<c:if test="${vehicle.transferFlag==1}">是</c:if><c:if test="${vehicle.transferFlag==0}">否</c:if>" />
			            </div>
			        </div>
			         <div class="weui_cell">
			            <div class="weui_cell_hd"><label class="weui_label">是否贷款车</label></div>
			            <div class="weui_cell_bd weui_cell_primary">
			                <input class="weui_input"  type="text" disabled="disabled"   placeholder="<c:if test="${vehicle.loanFlag==1}">是</c:if><c:if test="${vehicle.loanFlag==0}">否</c:if>" />
			            </div>
			        </div>
            </div>
            <footer class="weui_tab" style="position: fixed;bottom: 0;width: 100%;z-index: 999;height: 50px;">
                <div class="weui_tab_bd">

                </div>
                <div class="weui_tabbar">
                    <a href="${path}/order/chooseCaseNotMeg" id="rec_btn" class="weui_btn  weui_btn_primary" style="width: 100%;padding: 5px;">下一步</a>
                </div>
            </footer>
        </c:if>

        <c:if test="${status==3||status==4}">
            <!--查询成功-->
            <div class=" weui_cells_form"  >
                <div class="weui_cell">
                    <div class="weui_cell_hd"><label class="weui_label">车主姓名</label></div>
                    <div class="weui_cell_bd weui_cell_primary">
                        <input class="weui_input" disabled="disabled"  type="text"  placeholder="${my:tuoming(vehicle.carOwnerInfo.name,1 )}" />
                    </div>
                </div>
                <div class="weui_cell">
                    <div class="weui_cell_hd"><label class="weui_label">车主身份证号</label></div>
                    <div class="weui_cell_bd weui_cell_primary">
                        <input class="weui_input"  type="text" disabled="disabled"  placeholder="${my:tuoming(vehicle.carOwnerInfo.idNo,2 )}" />
                    </div>
                </div>
                <div class="weui_cell">
                    <div class="weui_cell_hd"><label class="weui_label">车牌号</label></div>
                    <div class="weui_cell_bd weui_cell_primary">
                        <input class="weui_input" type="text" disabled="disabled"  placeholder="${vehicle.licenseNo}" />
                    </div>
                </div>
                <div class="weui_cell">
                    <div class="weui_cell_hd"><label class="weui_label">车辆品牌型号</label></div>
                    <div class="weui_cell_bd weui_cell_primary">
                        <input class="weui_input" type="text" disabled="disabled"  placeholder="${vehicle.modelCode}" />
                    </div>
                </div>
                <div class="weui_cell">
                    <div class="weui_cell_hd"><label class="weui_label">车辆车架号</label></div>
                    <div class="weui_cell_bd weui_cell_primary">
                        <input class="weui_input"  type="text" disabled="disabled"  placeholder="${my:tuoming(vehicle.vin,3)}" />
                    </div>
                </div>
                <div class="weui_cell">
                    <div class="weui_cell_hd"><label class="weui_label">发动机号码</label></div>
                    <div class="weui_cell_bd weui_cell_primary">
                        <input class="weui_input"  type="text" disabled="disabled"  placeholder="${vehicle.engineNo}" />
                    </div>
                </div>
                <div class="weui_cell">
                    <div class="weui_cell_hd"><label class="weui_label">注册日期</label></div>
                    <div class="weui_cell_bd weui_cell_primary">
                        <input class="weui_input"  type="text" disabled="disabled"  placeholder="${vehicle.enrollDate}" />
                    </div>
                </div>
                <div class="weui_cell">
			            <div class="weui_cell_hd"><label class="weui_label">是否过户车</label></div>
			            <div class="weui_cell_bd weui_cell_primary">
			                <input class="weui_input"  type="text" disabled="disabled"   placeholder="<c:if test="${vehicle.transferFlag==1}">是</c:if><c:if test="${vehicle.transferFlag==0}">否</c:if>" />
			            </div>
			        </div>
			         <div class="weui_cell">
			            <div class="weui_cell_hd"><label class="weui_label">是否贷款车</label></div>
			            <div class="weui_cell_bd weui_cell_primary">
			                <input class="weui_input"  type="text" disabled="disabled"    placeholder="<c:if test="${vehicle.loanFlag==1}">是</c:if><c:if test="${vehicle.loanFlag==0}">否</c:if>" />
			            </div>
			        </div>
            </div>
        </c:if>

    </header>
</div>
<script>
    function saveCar() {
        var phoneNum = $("#phoneNum").val();
        var mobilereg = /^1\d{10}$/;
        if(phoneNum==""){
            Global.tool.toast("请输入电话号码");
        }else if(!mobilereg.test(phoneNum)){
            Global.tool.toast("输入电话号码有误");
        }else{
            $.ajax({
                type: 'GET',
                dataType:"json",
                url: '${path}/order/savePhone?phone='+phoneNum,
                success:function (data) {
                    if(data.code=="success"){

                        Global.tool.toast("保存成功");
                    }else{
                        Global.tool.toast("保存失败");
                    }
                }
            })
        }
    }
</script>
</body>
</html>
