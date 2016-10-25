<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/common/tagLib.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>QA</title>
    <style type="text/css">
        h4{
            padding: .5rem;
            font-size: 13px;
            background: #abddc1;
            box-shadow: 5px 3px 5px #ccc;
            margin-left: 2%;
            width: 70%;
            color: #009844;
            position: relative;

        }
        /*h4:after{content:'';position:absolute;left:100%;
			top:0px;width:16px;height:15px;border-width:0;
			border-style:solid;border-color:transparent;
			margin-left:-3px;border-bottom-width:8px;
			border-bottom-color:currentColor;
			border-radius:0 0 30px 0;color:#abddc1;
			}*/
			h4:after{
				content:'';position:absolute;left:100%;top:5px;
				width:0; height:0; border-width:10px; border-style:solid dashed dashed; border-color:transparent transparent  transparent  #abddc1; font-size:0; line-height:0;
			}
        .info{
            margin-top: 15px;
            padding: 0 .5rem;
        }
        .info>img{
          width: 50px !important;
        }
        p{
            padding: .5rem;
            background: #abddc1;
            box-shadow: 5px 3px 5px #ccc;
            color: #666;
            width: 73%;
            margin: 0 auto;
            border-radius: 5px;
            font-size: 12px;
            margin-right: 2%;
            color: #009844;
            position: relative;
        }
		/*p:before{content:'';position:absolute;right:100%;top:0px;
			width:16px;height:15px;border-width:0;border-style:solid;
			border-color:transparent;margin-right:-3px;
			border-bottom-width:8px;border-bottom-color:currentColor;
			border-radius:0 0 0 30px;color:#abddc1;}*/
			p:before{
				content:'';position:absolute;right:100%;top:10px;
				width:0; height:0; border-width:10px; border-style:solid dashed dashed; border-color:transparent #abddc1 transparent  transparent ; font-size:0; line-height:0;
			}
    </style>
</head>
<body id="bodybox">
<header>
    <img src="${ctxImg}/qabg.png" width="100%"/>
</header>
<div class="container bd" >
    <div class="clearfix info" >

        <h4 class="fl" >U惠保是什么？</h4>
        <img class="fr"  src="${ctxImg}/qa.png"/>
    </div>
    <div class="clearfix info">
        <img class="fl" style="width: 60px;" width="30px" src="${ctxImg}/qa1.png"/>
        <p class="weui_msg_desc f14 fr">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;U惠保是一个互联网车险算价、出单平台，我们已获得多家保险
        	公司权威认可，您只需提交车辆基本信息，即可快速获得多家保险公司的报价，方便您对比各家保险公司的价格。比较完后，对中意的保险公司
        	，可以一键下单，快速为您的爱车完成保险购买，而且保单将通过快递的方式直接寄送到您指定的地址，为您省时、省心、省力。</p>
    </div>
    <div class="clearfix info">
        <h4 class="fl" >在U惠保购买车险与其他方式购买车险是否存在差异？</h4>
        <img class="fr"  src="${ctxImg}/qa.png"/>
    </div>
    <div class="clearfix info">
        <img class="fl" style="width: 60px;" width="30px" src="${ctxImg}/qa1.png"/>
        <p class="weui_msg_desc f14 fr">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;不存在差异！首先，在U惠保购买的车险都是各大保险公司直接出单，
        	都能享受各保险公司一致的理赔服务。如遇出险，只要拨打各保险公司24小时服务热线报案，就会有专业的定损人员第一时间到达事故现场进行查勘定损，
        	后续理赔流程完成之后，理赔款也是直接打到保单所对应的被保险人的银行账户。</p>
    </div>
    <div class="clearfix info">
        <h4 class="fl">U惠保购买的流程是什么？</h4>
        <img class="fr"  src="${ctxImg}/qa.png"/>
    </div>
    <div class="clearfix info">
        <img class="fl" style="width: 60px;" width="30px" src="${ctxImg}/qa1.png"/>
        <p class="weui_msg_desc f14 fr">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;进入购买页面、提交车辆信息、选择保险方案、获取保险公司报价、支付报价订单、等待核保、核保成功并出单，保单的配送。</p>
    </div>
    <div class="clearfix info">
        <h4 class="fl">支付方式有哪些？</h4>
        <img class="fr"  src="${ctxImg}/qa.png"/>
    </div>
    <div class="clearfix info">
        <img class="fl" style="width: 60px;" width="30px" src="${ctxImg}/qa1.png"/>
        <p class="weui_msg_desc f14 fr">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目前仅支持微信支付，后续会陆续开通支付宝、银行卡等支付功能。</p>
    </div>
    <div class="clearfix info">

        <h4 class="fl" >我的订单支付成功后，保单何时生效？</h4>
        <img class="fr"  src="${ctxImg}/qa.png"/>
    </div>
    <div class="clearfix info">
        <img class="fl" style="width: 60px;" width="30px" src="${ctxImg}/qa1.png"/>
        <p class="weui_msg_desc f14 fr">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1、对于续保车辆，订单在当天18:00前支付成功后，保单生效计算日期是从您上一年车险到期日起立即续费生效，如您上一年的车险到期日是2016年9月10日24:00，那您现在续保的车险保单生效日期为2016年9月11日00:00起。
		特例：在上年保险到期日18:00以后成功支付的订单，保单将在第三日零时生效，建议车主应提前购买车险，避免车辆脱保带来不必要的损失。
		（为保障您的权益，保单生效日期，最终以各保险公司出具的生效日期为准！）
   		<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、对于新车投保和脱保的车辆，每日18:00前（含18:00）成功支付且通过保险公司通过的订单，保单将在第二日零时生效；每日18:00以后成功支付且通过保险公司通过的订单，保单将在第三日零时生效。</p>
    </div>
    <div class="clearfix info">
        <h4 class="fl">在U惠保购买车险，如何确定投保人和被保人？</h4>
        <img class="fr"  src="${ctxImg}/qa.png"/>
    </div>
    <div class="clearfix info">
        <img class="fl" style="width: 60px;" width="30px" src="${ctxImg}/qa1.png"/>
        <p class="weui_msg_desc f14 fr">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在U惠保平台购买车险，投保人和被保人均为车主本人。</p>
    </div>
    <div class="clearfix info">
        <h4 class="fl">保单支付成功后，为什么还发生退款退单的情况？</h4>
        <img class="fr"  src="${ctxImg}/qa.png"/>
    </div>
    <div class="clearfix info">
        <img class="fl" style="width: 60px;" width="30px" src="${ctxImg}/qa1.png"/>
        <p class="weui_msg_desc f14 fr">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;保单支付成功后，需等待保险公司审核和出具保险单。
        	如果您的爱车资料不符合保险公司相关规定（特殊车型在各家保险公司的投保标准有所不同），保险公司将会拒绝该保单的承保服务
        	。此时我们将会联系您，并为您进行退款。</p>
    </div>

    <div class="clearfix info">
        <h4 class="fl">我已生效的保单，我需要退保该如何操作？</h4>
        <img class="fr"  src="${ctxImg}/qa.png"/>
    </div>
    <div class="clearfix info">
        <img class="fl" style="width: 60px;" width="30px" src="${ctxImg}/qa1.png"/>
        <p class="weui_msg_desc f14 fr">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;如需退保，请通过U惠保平台联系在线客服或者致电400-1011-886，我们将会有专人为您服务（如购买保险时有赠品，须将赠品完整退回，方可完成退款流程）。</p>
    </div>
    <div class="clearfix info">
        <h4 class="fl">理赔流程是怎么样的？</h4>
        <img class="fr"  src="${ctxImg}/qa.png"/>
    </div>
    <div class="clearfix info">
        <img class="fl" style="width: 60px;" width="30px" src="${ctxImg}/qa1.png"/>
        <p class="weui_msg_desc f14 fr">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第一步：报案（一般保险公司要求在事发48小时内报案）；第二步：查勘定损；第三步：提交索赔票据。</p>
    </div>
    <div class="clearfix info">
        <h4 class="fl">理赔需要哪些证件？</h4>
        <img class="fr"  src="${ctxImg}/qa.png"/>
    </div>
    <div class="clearfix info">
        <img class="fl" style="width: 60px;" width="30px" src="${ctxImg}/qa1.png"/>
        <p class="weui_msg_desc f14 fr">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1、无责任需准备：交强险保单、行驶证、驾驶证；
  			<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、全责或部分责任需准备：交强险保单、商业险保单、行驶证、驾驶证。</p>
    </div>
    <div class="clearfix info">
        <h4 class="fl">我的资料提交到U惠保平台是否安全？</h4>
        <img class="fr"  src="${ctxImg}/qa.png"/>
    </div>
    <div class="clearfix info">
        <img class="fl" style="width: 60px;" width="30px" src="${ctxImg}/qa1.png"/>
        <p class="weui_msg_desc f14 fr">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;U惠保将严格按照国家法律法规，保护好您的个人信息和隐私。</p>
    </div>
</div>
</body>
</html>