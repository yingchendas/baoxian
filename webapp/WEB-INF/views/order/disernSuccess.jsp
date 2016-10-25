<%--
  Created by IntelliJ IDEA.
  User: xuran
  Date: 2016/8/31
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/common/tagLib.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>确认车辆</title>
    <link rel="stylesheet" type="text/css" href="${ctxWeuiCss}/weui.min.css"/>
    <link rel="stylesheet" type="text/css" href="${ctxCss}/common/common.css"/>
    <style type="text/css">
        .weui_cells_form{
            padding: 10px;
            background: #fff;
            width: 88%;
            margin: 20px auto;
            border: 3px dashed #04BE02;
            border-color: #FF7F00 #04BE02 #FF7F00 #04BE02;
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
    </style>
</head>
<body id="bodybox">
<div class="container bd">
    <div class=" weui_cells_form"  >
        <div class="weui_cell">
            <div class="weui_cell_hd"><label class="weui_label">车主姓名</label></div>
            <div class="weui_cell_bd weui_cell_primary">
                <input class="weui_input" disabled="disabled"  type="text"  placeholder="张三" value="${my:tuoming(map.name,1)}"/>
            </div>
        </div>
        <div class="weui_cell">
            <div class="weui_cell_hd"><label class="weui_label">车主身份证号</label></div>
            <div class="weui_cell_bd weui_cell_primary">
                <input class="weui_input"  type="text" disabled="disabled" value="${my:tuoming(map.idNo,2)}"  placeholder="5110231111123212323" />
            </div>
        </div>
        <div class="weui_cell">
            <div class="weui_cell_hd"><label class="weui_label">车牌号</label></div>
            <div class="weui_cell_bd weui_cell_primary">
                <input class="weui_input" type="text" disabled="disabled" value="${map.idCardNo}" placeholder="川A1232" />
            </div>
        </div>
        <div class="weui_cell">
            <div class="weui_cell_hd"><label class="weui_label">车辆品牌型号</label></div>
            <div class="weui_cell_bd weui_cell_primary">
                <input class="weui_input" type="text" disabled="disabled"  value="${map.modelCode}"  placeholder="梅塞得-奔驰BJ6453-121" />
            </div>
        </div>
        <div class="weui_cell">
            <div class="weui_cell_hd"><label class="weui_label">车辆车架号</label></div>
            <div class="weui_cell_bd weui_cell_primary">
                <input class="weui_input"  type="text" disabled="disabled"  value="${my:tuoming(map.vin,3)}"  placeholder="LGSSDS232324232" />
            </div>
        </div>
        <div class="weui_cell">
            <div class="weui_cell_hd"><label class="weui_label">发动机号码</label></div>
            <div class="weui_cell_bd weui_cell_primary">
                <input class="weui_input"  type="text" disabled="disabled"  value="${map.engineNo}"  placeholder="LGssdsd11213" />
            </div>
        </div>
        <div class="weui_cell">
            <div class="weui_cell_hd"><label class="weui_label">注册日期</label></div>
            <div class="weui_cell_bd weui_cell_primary">
                <input class="weui_input"  type="text" disabled="disabled" value="<fmt:formatDate value="${map.enrollDate}" pattern="yyyy-MM-dd"/>"  placeholder="2016-08-23" />
            </div>
        </div>
        <div class="weui_cell">
            <div class="weui_cell_hd"><label class="weui_label">新车购置价</label></div>
            <div class="weui_cell_bd weui_cell_primary">
                <input class="weui_input"  type="text" disabled="disabled"  value="${map.priceNoTax}元"  placeholder="LGssdsd11213" />
            </div>
        </div>
        <div class="weui_cell">
            <div class="weui_cell_hd"><label class="weui_label">是否过户车</label></div>
            <div class="weui_cell_bd weui_cell_primary">
                <input class="weui_input"  type="text" disabled="disabled"  value="<c:if test="${map.transferFlag==1}">是</c:if><c:if test="${map.transferFlag==0}">否</c:if>"  placeholder="LGssdsd11213" />
            </div>
        </div>
         <div class="weui_cell">
            <div class="weui_cell_hd"><label class="weui_label">是否贷款车</label></div>
            <div class="weui_cell_bd weui_cell_primary">
                <input class="weui_input"  type="text" disabled="disabled"  value="<c:if test="${map.loanFlag==1}">是</c:if><c:if test="${map.loanFlag==0}">否</c:if>"  placeholder="LGssdsd11213" />
            </div>
        </div>
    </div>
</div>
<footer class="weui_tab" style="position: fixed;bottom: 0;width: 100%;z-index: 999;height: 50px;">
    <div class="weui_tab_bd">

    </div>
    <div class="weui_tabbar">
        <a href="${path}/order/chooseCase" id="rec_btn" class="weui_btn  weui_btn_primary" style="width: 100%;padding: 5px;">确认</a>
    </div>
</footer>
</body>
</html>
