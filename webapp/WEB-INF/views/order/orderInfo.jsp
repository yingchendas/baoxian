<%--
  Created by IntelliJ IDEA.
  User: Mr.wanG
  Date: 2016/8/25
  Time: 17:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/common/tagLib.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>保单详情</title>
    <style type="text/css">
        header div{
            width: 100%;
        }
        header{
            padding: 1rem;
            background: #fff;
            /*background: #F8F8F8;*/
        }
        .jiaoqiang{
            padding:.8rem 1rem;
        }
        .busi_policy>h4{
            padding:.8rem 1rem;
        }
        .userName,.money{
            margin-top: 3px;
            margin-left: 3%;
        }
        .tel,.addr{
            margin-top: 10px;
            padding: 1rem;
        }

        .container>div{
            margin-top: 10px;
        }
        .notice{
            margin-right: 15px;
            color: #04BE02;
            border: 1px solid #04BE02;
            font-size: 12px;
            padding: .3rem;
            border-radius: 2px;
        }

        /*新增*/
        .info_title{
					background: #fff;
				}
				.info_title>div{
					display: inline-block;
					width: 33.3%;
					padding: .3rem 0;
					
				}
        .bus_info>div{
            width: 33.3%;
        }
        .weui_cell_primary{
				font-size: 12px;
			
			}
			.weui_cells{
				margin: 0 auto; width: 98%;border-radius: 10px;
			}
			.weui_cells:before,.weui_cells:after{
				border: none;
			}
    </style>
</head>
<body id="bodybox">

<div class="container bd ">
    <div class="coverBox bd  nextBtn" style="margin-top: 0;">
    	<p class="f14" style="padding: 0.5rem 1rem;">订单号：<span class="c_999">${info.out_trade_no}</span></p>
        <header class="clearfix tl pr">
            <!--<i class="iconfont icon-close c_666 f1m pa" style="top: -20px;right:0;font-size: 1.4rem;"></i>-->
            <div class="clearfix">
                <div class="clearfix  fl" style="width: 60%;">
                    <img class="fl" src="${ctxImg}/${info.company.code}.png" width="40px" alt="logo" />
                    <span class="tc fl userName c_666">${info.company.name}</span>
                </div>
                <p class="fr money">
                    <span>￥</span><span class="f17 c_ff7">${info.totalMoney}</span><span>元</span>
                </p>
            </div>
            <c:if test="${!empty info.discount}">
            	<div class="clearfix " style="margin-top: 5PX;border-top: .5px solid #ccc;">
                <div class="clearfix  fl" style="width: 60%;">
                    <span class="tc fl userName c_666">原价</span>
                </div>
                <p class="fr money" style="text-decoration:line-through;">
                    <span>￥</span><span class="f17 c_999"><fmt:formatNumber value="${(info.total_fee - info.discount.protection_limit) / 100}" pattern="0.##"/></span><span>元</span>
                </p>
            </div>
            <div class="clearfix " style="margin-top: 5PX;border-top: .5px solid #ccc;">
                <div class="clearfix  fl" style="width: 60%;">
                    <span class="tc fl userName c_666">已优惠</span>
                </div>
                <p class="fr money">
                    <span>￥</span><span class="f17 c_ff7"><fmt:formatNumber value="${0 - info.discount.protection_limit / 100}" pattern="0.##"/></span><span>元</span>
                </p>
            </div>
            </c:if>
        </header>
        <!--交强险-->
        <div >
            <div class="clearfix" style="padding: .3rem 1rem;">
                <h4 class="fl c_666">强制险</h4>
                <span class="fr  f14" style="padding: .1rem .5rem;border-radius: 5px;">小计￥${info.compulsoryTotal}元</span>
            </div>
            <div class="weui_cells " >
                <c:forEach items="${info.compulsoryInsurance}" var="cly">
                <div class="weui_cell">
                    <div class="weui_cell_bd f12 weui_cell_primary">
                        <p>${cly.name}</p>
                    </div>
                    <div class="weui_cell_ft c_666 f12">${cly.protection_limitText}</div>
                </div>
                </c:forEach>
            </div>

        </div>
        <!--商业险-->
        <div class="busi_policy" style="margin-bottom: 10px;">
            <div class="clearfix" style="padding: .3rem 1rem;">
                <h4 class="fl c_666">商业险</h4>
                <span class="fr  f14" style="padding: .1rem .5rem;border-radius: 5px;">小计￥${info.commercialTotal}元</span>
            </div>
            
            <div class="weui_cells" >
	            	<div class="info_title weui_cell clearfix">
									<div class="tl fl c_666 f14">险种</div>
									<div class="tc fl c_666 f14">保额</div>
									<div class="tc fl c_666 f14">保费</div>
								</div>
                <c:forEach items="${info.commercialInsurances}" var="com">
                <div class="weui_cell bus_info">
                    <div class="weui_cell_bd weui_cell_primary tl">
                        <p>${com.name}</p>
                    </div>
                    <div class="weui_cell_ft tc c_04b f12" >${com.des}</div>
                    <div class="weui_cell_ft tc c_666 f12">${com.protection_limitText}</div>
                </div>
                </c:forEach>
            </div>
            <c:if test="${!empty info.gift}">
            <div class="tr" style="padding: 1rem;">
                <span class="c_fff bg_ff7" style="border-radius: 5px; padding: .3rem;">${info.gift.des}</span>
            </div>
            </c:if>
        </div>
    </div>
</div>
<!--<div class="tc" style="padding: 1rem;">
    <span class="c_fff bg_ff7" style="border-radius: 5px; padding: .3rem;">加油卡,价值1000元</span>
</div>-->
<c:if test="${info.order_status.code == 2}">
<header class="clearfix" style="padding: .5rem 1rem;">
	<p class="c_666 f14">强制险生效时间：<span class="c_999"><fmt:formatDate value="${info.compulsory_effectime}" pattern="yyyy-MM-dd HH:mm:ss"/></span></p>
	<p class="c_666 f14">商业险生效时间：<span class="c_999"><fmt:formatDate value="${info.commercial_effectime}" pattern="yyyy-MM-dd HH:mm:ss"/></span></p>
</header>
</c:if>
<div class="tel bg_f">
    <label >联系电话</label>&nbsp;&nbsp;&nbsp;<span class="c_666">${info.phone}</span>
</div>
<div class="addr bg_f" style="margin-bottom: 60px;">
    <h5>${info.username}</h5>
    <p class="c_666">${info.address}</p>
</div>
<c:if test="${info.order_status.code == 0}">
<footer class="weui_tab" style="position: fixed;bottom: 0;width: 100%;z-index: 999;height: 80px;">
    <div class="weui_tabbar">
        <a href="${path}/order/redirectToCreateOrder?orderId=${info.id}" class="weui_btn  weui_btn_primary" style="width: 100%;padding: 5px;">去支付</a>
    </div>
</footer>
</c:if>
</body>
</html>
