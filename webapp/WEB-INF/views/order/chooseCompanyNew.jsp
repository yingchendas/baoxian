<%--
  Created by IntelliJ IDEA.
  User: xuran
  Date: 2016/10/14
  Time: 10:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/common/tagLib.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>选择公司</title>
    <link rel="stylesheet" type="text/css" href="${ctxWeuiCss}/weui.min.css"/>
    <link rel="stylesheet" type="text/css" href="${ctxCss}/common/common.css"/>
    <style type="text/css">
        ul li{
            list-style: none;
        }
        .company_info img{
            margin-left: 5px;
        }
        .company_info h5{
            margin-left: 5px;
            margin-top: 3px;
            font-weight: 600;
            color: #333;
        }
        .company_info{
            border-bottom:1px solid #e3e3e3 ;
            margin-top: 2px;
        }
        .youhui{
            padding: .5rem 1rem;
            border-radius: 5px;
            margin-top: -30px;
            font-size: 12px;
            /*border: .5px solid #04BE02;*/
            border: none;
            margin-right: .5rem;
            background: #04BE02;
        }
        .mui-table-view-cell{
            width: 99%;
            margin: 10px 0;

        }
        .companyBox{
            width: 100%;
            /*padding: .8rem 0rem;*/
            background: #fff;
            border: 1px solid #e3e3e3;
            border-radius: 3px;

        }
        .oldPrice{
            text-decoration:line-through;
            margin-left: 3px;
        }
        .platformACtive{

            padding: 0 .5rem .8rem ;
        }
        .activeTitle{
            background: #FFC320;
            width: 30%;
        }
        .activeInfo{
            width: 62%;
        }
        .zhanwei{
            margin-top: 10px;
            height: 50px;
            width: 2%;

            background: #FFC320;
            border: 1px solid #FFC320;
            border-left: 2px dashed #fff;
        }
        .activeTitle,.activeInfo{
            height: 50px;
            margin-top: 10px;
            text-align: center;
            line-height: 50px;
            border: 1px solid #FFC320;
        }
        .totalPrice{
            padding: .5rem;
            margin-top: -33px;
            /*border: .5px solid #04BE02;*/
            margin-right: .5rem;
        }
        /*进度条*/
        .bar {
            height: 30px;
            width: 0;
            transition: width 1.2s ease-in-out;
            position: relative;
            margin: 0.5rem 0;
            border-radius: 4px;
        }
        @media(max-width: 350px) {
            .bar {
                margin: 2.5rem 0 0.5rem;
            }
        }
        .bar.mint {
            background-color: #14c3a2;
				  background-image: repeating-linear-gradient(-45deg, #14c3a2, #14c3a2 30px, #22e8c3 30px, #22e8c3 60px);
				  background-size: 600px 100%;
				  animation: barberpole 12s linear infinite;
				  border-bottom: 0.2rem solid #0d7e68;
        }
        .bar.active:after, .bar.active:before {
            opacity: 1;
        }
        .bar:before {
           content: attr(data-skill);
					display: block;
					position: absolute;
					top: -5px;
					left: 13%;
					padding: 10px;
					height: 30px;
					font-style: italic;
					color: #fff;
					opacity: 0;
					-webkit-transition: opacity 2s 0.6s;
					transition: opacity 2s 0.6s;
					z-index: 9999999;
        }
        .bar:after {
            /*content: attr(data-percent) "%";*/
            display: block;
            position: absolute;
            top: 0;
            right: 0;
            height: 40px;
            padding: 10px;
            opacity: 0;
            transition: opacity 2s 0.6s;
        }
        @media(max-width: 350px) {
            .bar:after {
                left: 0;
            }
        }

        @-webkit-keyframes barberpole {
            from {
                background-position: 0% 0%;
            }

            to {
                background-position: 600px 0%;
            }
        }
        @-moz-keyframes barberpole {
            from {
                background-position: 0% 0%;
            }

            to {
                background-position: 600px 0%;
            }
        }
        @keyframes barberpole {
            from {
                background-position: 0% 0%;
            }

            to {
                background-position: 600px 0%;
            }
        }
        .bar.active[data-percent="100"] {
           width: 70%;
					 margin: -30px 10% 0 0;
        }

        /*投保详情*/
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
            /*text-align: center;*/
        }
        .weui_cell_primary{
            font-size: 12px;
        }
        .weui_cells{
            margin: 0 auto; width: 98%;border-radius: 3px;
        }
        /*.weui_cells:before,.weui_cells:after{
            border: none;
        }*/
        h4{
            font-weight: 500;
        }
        .coverBox{
            display: none;
        }
        .transformRotate{
            -webkit-transform:rotate(180deg);
            transform:rotate(180deg);
            transition-duration:.5s, .5s, .5s;
        }
        .priceInfo{
            /*border-top: 1px solid #e3e3e3;*/
            padding:0 0 1rem;
        }
        .lookInfo{
            padding: .5rem 1rem;
            border-radius: 5px;
            font-size: 12px;
            /*border: .5px solid #04BE02;*/
            border: none;
            left: 39%;
            bottom: -13px;
            background: #04BE02;
        }
        .youhuiBtn{
            padding: .5rem;
            border-radius: 5px;
            font-size: 12px;
            color: #fff;
            border: none;
            margin-top: -8px;
            background: #04BE02;
        }
        .alredYouhui{
            padding: .5rem;
            border-radius: 5px;
            font-size: 12px;
            color: #fff;
            border: none;
            margin-top: -8px;
            background: #AE0000;

        }
        .weui_cells:before{
            border: none;
        }
        .weui_cells:after{
            border: none;

        }
        ._dikou{
            display: none;
        }

    </style>
</head>
<body id="bodybox">
<div class="container bd">
    <ul>
        <c:forEach items="#{lists}" var="list">
            <li class=" mui-table-view-cell">
                <!--公司名-->
                <div class="clearfix companyBox">
                    <div class="company clearfix">
                        <div class="company_info" style="padding: 1rem 0;width: 100%;" >
                            <div class="clearfix" style="width: 50%;">
                                <img class="fl img"  src="${ctxImg}/${list.ent.code}.png" alt="Logo" width="40px"/>
                                <h5 class="fl f15">${list.ent.name}</h5>
                            </div>
                            <div class="fr" style="width: 50%;">
																<div class="clearfix">
	                            		<button class="fr c_fff youhui" entId="${list.ent.id}" companyName="${list.ent.name}">立即报价</button>
	                            	</div>
                            </div>
                        </div>
                        <c:if test="${list.act!=null}">
                            <div class="platformACtive clearfix">
                                <h4 class="activeTitle fl f14 c_fff "><span class="iconfont icon-youhuiquan c_fff" style="margin-right: 5px;"></span>${list.act.sub_name}</h4>
                                <div class="fl zhanwei">

                                </div>
                                <p class="activeInfo fl c_999 f14">${list.act.name}</p>
                            </div>
                        </c:if>
                    </div>
                    <!--保险详情-->
                    <div class="coverBox bd nextBtn"  style="margin-top: 0;">
                        <%--<div class="company_info" style="padding: 1rem 0;width: 100%;" >
                            <div class="clearfix">
                                <img class="fl" src="../../images/PAZYCX.png" alt="Logo" width="40px"/>
                                <h5 class="fl f15 c_333">平安车险</h5>
                            </div>
                            <span class="fr c_ffc f18 totalPrice" companyName="平安车险">￥345.00</span>
                        </div>

                        <!--交强险-->
                        <div >
                            <div class="clearfix"  style="padding: .3rem .5rem;margin-top: 0px;">
                                <h4 class="fl c_666">强制险</h4>
                                <span class="fr  f14 c_666" style="padding: .1rem .5rem;border-radius: 5px;">小计￥1015元</span>
                            </div>
                            <p class="f14 bg_f c_333" style="padding:0 0.5rem .5rem .5rem;">保单号：<span class="c_333">131121213113212132132121321</span></p>
                            <div class="weui_cells " style="background: #f8f8f8;width: 95%;">
                                <div class="weui_cell">
                                    <div class="weui_cell_bd weui_cell_primary">
                                        <p class="c_666">交强险</p>
                                    </div>
                                    <div class="weui_cell_ft c_666 f12">655.0</div>
                                </div>
                                <div class="weui_cell">
                                    <div class="weui_cell_bd weui_cell_primary">
                                        <p class="c_666">车船税</p>
                                    </div>

                                    <div class="weui_cell_ft f12 c_666">360.0</div>
                                </div>


                            </div>

                        </div>
                        <!--商业险-->
                        <div class="busi_policy" style="margin-bottom: 10px;">
                            <div class="clearfix" style="padding: .3rem .5rem;">
                                <h4 class="fl c_666">商业险<span class="f14">（折扣率7.5折）</span></h4>
                                <span class="fr  f14 c_666" style="padding: .1rem .5rem;border-radius: 5px;">小计￥2189.28元</span>
                                <span class="f12 fr oldPrice c_666" style="margin-top: 5px;">原价￥123</span>
                            </div>
                            <p class="f14 bg_f c_333" style="padding:0 0.5rem .5rem .5rem;">保单号：<span class="c_333">131121213113212132132121321</span></p>
                            <div class="weui_cells" style="margin: 0 auto; width: 95%;border-radius: 3px;background: #f8f8f8;" >
                                <div class="info_title weui_cell clearfix" style="background: #f8f8f8;">
                                    <div class="tl fl c_666 f14">险种</div>
                                    <div class="tc fl c_666 f14">保额</div>
                                    <div class="tc fl c_666 f14">保费</div>
                                </div>
                                <div class="weui_cell bus_info">
                                    <div class="weui_cell_bd c_666 tl weui_cell_primary">
                                        <p>机动车损失险</p>
                                    </div>
                                    <div class="weui_cell_ft tc c_04b f12" >100万</div>
                                    <div class="weui_cell_ft tc c_666 f12">876.98</div>

                                </div>
                                <div class="weui_cell bus_info">
                                    <div class="weui_cell_bd c_666 tl weui_cell_primary">
                                        <p>三者险不计免赔</p>
                                    </div>
                                    <div class="weui_cell_ft tc c_04b f12" >投保</div>
                                    <div class="weui_cell_ft tc c_666 f12">123.98</div>

                                </div>
                                <div class="weui_cell bus_info">
                                    <div class="weui_cell_bd c_666 tl weui_cell_primary">
                                        <p>玻璃险</p>
                                    </div>
                                    <div class="weui_cell_ft tc c_04b f12" >投保</div>
                                    <div class="weui_cell_ft tc c_666 f12">123.98</div>

                                </div>

                            </div>
                            <!--平台优惠-->
                            <div class="clearfix" style="padding: 1rem;">
                                <div class="clearfix">
                                    <h4 class="c_666 fl">平台优惠</h4>
                                    <button class="youhuiBtn _btn fr">使用优惠码</button>
                                    <button class="alredYouhui _btn fr">不使用优惠码</button>
                                </div>
                                <!--活动详情/优惠详情-->
                                <div>
                                    <span class="c_04b" style="border-radius: 5px; padding: .3rem 0;">加油卡,价值1000元</span>
                                    <p class="bg_defualt f14 c_999" style="padding: .5rem;border-radius: 3px;">活动详情，从后台读</p>
                                </div>

                            </div>
                            <!--价格-->
                            <div style="padding: 0 1rem ;">
                                <div class="clearfix f14">
                                    <h4 class="c_999 fl">车险价格</h4>
                                    <span class="c_999 fr oldPrice">￥12332</span>
                                </div>
                                <div class="clearfix f14">
                                    <h4 class="c_999 fl">优惠码抵扣</h4>
                                    <span class="c_999 fr">￥12332.00</span>
                                </div>
                                <div class="clearfix f18" style="border-top: 1px solid #e3e3e3;">
                                    <h4 class="c_333 fl">实际支付</h4>
                                    <span class="c_ffc fr">￥12332</span>
                                </div>
                                <a href="upload_data.html" id="rec_btn" class="weui_btn  weui_btn_primary" style="width: 100%;padding: 0px;margin-top: 5px;">去支付</a>
                            </div>

                        </div>
                        <div class="tc shouBtn">
                            <span class="iconfont icon-spread-up c_04b f1m" style="font-weight: 200;"></span>
                        </div>--%>
                    </div>
                </div>

            </li>
        </c:forEach>

    </ul>
</div>
<!--<script src="../../js/lib/mui.js"></script>
<script type="text/javascript" src="../../../zepto/zepto.min.js"></script>-->
<script>
    $(function(){

        $(".youhui").on("click",function(e){
            e.stopPropagation();

            var item = $(this);
            var entId=item.attr("entId");
            var parentBox = item.parent().parent().parent().parent();
            var companyName = item.attr("companyName"); //公司名字
					  var imgSrc = item.parent().parent().prev().find(".img").attr("src"); //logo路劲
//          parentBox.html("");
            /*加载条*/
          item.parent().html("<div class='bar mint active fr' style='z-index:999999' data-percent='100' data-skill='正在报价'></div>");
            $.ajax({
                url: '${path}/order/lookPriceNew',
                dataType:'json',
                data: {
                    entId:entId
                },
                type: 'post',
                success: function (data) {
                    if(data.code=="success"){
                        console.log(data)
                        var html ="";
                        html+= '<div class="company_info" style="padding: 1rem 0;width: 100%;" >'+
                                '<div class="clearfix">'+
                                '<img class="fl" src='+imgSrc+' alt="Logo" width="40px"/>'+
                                '<h5 class="fl f15">'+companyName+'</h5>'+
                                '</div>'+
                                '<span class="fr c_ffc f18 totalPrice" companyName='+companyName+'>￥'+data.message.comInfo.TotalPremium+'</span>'+
                                '</div>'+
                                '<div class="pr priceInfo">'+
                                '<p class="clearfix c_333" style="padding: .3rem;"><span>强制险</span><span class="fr c_333" style="margin-right: .8rem;">￥'+data.message.compAmount+'</span></p>'+
                                '<p class="clearfix c_333" style="padding: .3rem;"><span>商业险<span class="f14 c_04b">（折扣率'+data.message.discount+'折）</span></span><span class="fr c_333" style="margin-right: .8rem;">￥'+data.message.comInfo.CommerceTotalPremium+'</span><span class="f12 fr c_999 oldPrice mt5" style="margin-top:2px;">原价：￥'+data.message.comDiscountMoney+'</span> </p>'+
                                '<div class="tc">'+
                                '<span class="iconfont icon-zhankai c_04b f12" style="font-size:.5rem"></span>'+
                                '</div>'+
                                '<div class="tc">'+

                                '<button class="c_fff lookInfo">查看明细</button>'+
                                '</div>'+
                                '</div>'
                        parentBox.html(html);
                        parentBox.addClass("showBtn");
                        var content ="";

                        content+="<div class='company_info' style='padding: 1rem 0;width: 100%;' >"+
                                "               <div class='clearfix'>"+
                                "                   <img class='fl' src='${ctxImg}/"+data.message.ent.code+".png' alt='Logo' width='40px'/>"+
                                "                    <h5 class='fl f15 c_333'>"+data.message.ent.name+"</h5>"+
                                "               </div>"+
                                "               <span class='fr c_ffc f18 totalPrice' companyName='"+data.message.ent.name+"'>￥"+data.message.comInfo.TotalPremium+"</span>"+
                                "           </div>"+

                                "              <!--交强险-->"+
                                "              <div >"+
                                "                  <div class='clearfix'  style='padding: .3rem .5rem;margin-top: 0px;'>"+
                                "                       <h4 class='fl c_666'>强制险</h4>"+
                                "                      <span class='fr  f14 c_666' style='padding: .1rem .5rem;border-radius: 5px;'>小计￥"+data.message.compAmount+"元</span>"+
                                "                   </div>"+
                                "                <p class='f14 bg_f c_333' style='padding:0 0.5rem .5rem .5rem;'>保单号：<span class='c_333'>"+data.message.auditPolicyResult.compulsoryPolicyNo+"</span></p>"+
                                									"<p class='f12 bg_f c_333' style='padding:0 0.5rem .5rem .5rem;'>生效时间："+data.message.compulsoryPolicyBeginDate+"至"+data.message.compulsoryPolicyEndDate+"</p>"+
                                "               <div class='weui_cells ' style='background: #f8f8f8;width: 95%;'>";
                        for(var i=0;i<data.message.comInfo.CompulsoryAmountList.length;i++){
                            if(data.message.comInfo.CompulsoryAmountList[i].InsuranceCode=='J1'){
                                content+="<div class='weui_cell'>"+
                                        "<div class='weui_cell_bd weui_cell_primary'>"+
                                        "<p class='c_666'>交强险</p>"+
                                        "</div>"+
                                        "<div class='weui_cell_ft c_666 f12'>"+data.message.comInfo.CompulsoryAmountList[i].Premium+"</div>"+
                                        "</div>";
                            }
                            if(data.message.comInfo.CompulsoryAmountList[i].InsuranceCode=='CCS'){
                                content+="<div class='weui_cell'>"+
                                        "<div class='weui_cell_bd weui_cell_primary'>"+
                                        "<p class='c_666'>车船税</p>"+
                                        "</div>"+
                                        "<div class='weui_cell_ft c_666 f12'>"+data.message.comInfo.CompulsoryAmountList[i].Premium+"</div>"+
                                        "</div>";
                            }
                        }

                        content+="              </div>"+

                                "           </div>"+
                                "           <!--商业险-->"+
                                "             <div class='busi_policy' style='margin-bottom: 10px;'>"+
                                "                 <div class='clearfix' style='padding: .3rem .5rem;'>"+
                                "                    <h4 class='fl c_666'>商业险<span class='f14'>（折扣率"+data.message.discount+"折）</span></h4>"+
                                "                    <span class='fr  f14 c_666' style='padding: .1rem .5rem;border-radius: 5px;'>小计￥"+data.message.comInfo.CommerceTotalPremium+"元</span>"+
                                "                    <span class='f12 fr oldPrice c_666' style='margin-top: 5px;'>原价￥"+data.message.comDiscountMoney+"</span>"+
                                "               </div>"+
                                "              <p class='f14 bg_f c_333' style='padding:0 0.5rem .5rem .5rem;'>保单号：<span class='c_333'>"+data.message.auditPolicyResult.commercePolicyNo+"</span></p>"+
                                "								<p class='f12 bg_f c_333' style='padding:0 0.5rem .5rem .5rem;'>生效时间："+data.message.compulsoryPolicyBeginDate+"至"+data.message.compulsoryPolicyEndDate+"</p>"+
                                "               <div class='weui_cells' style='margin: 0 auto; width: 95%;border-radius: 3px;background: #f8f8f8;' >"+
                                "                  <div class='info_title weui_cell clearfix' style='background: #f8f8f8;'>"+
                                "                       <div class='tl fl c_666 f14'>险种</div>"+
                                "                       <div class='tc fl c_666 f14'>保额</div>"+
                                "                           <div class='tc fl c_666 f14'>保费</div>"+
                                "                    </div>";
                        for(var i=0;i<data.message.comInfo.CommerceAmountList.length;i++){
                            content+=           "<div class='weui_cell bus_info'>"+
                                    "                    <div class='weui_cell_bd c_666 tl weui_cell_primary'>"+
                                    "                        <p>"+data.message.comInfo.CommerceAmountList[i].InsuranceName+"</p>"+
                                    "                       </div>";
                            if(data.message.comInfo.CommerceAmountList[i].Amount=='0.0'){
                                content+=" <div class='weui_cell_ft tc c_04b f12'>投保</div>";
                            }else{
                                content+=" <div class='weui_cell_ft tc c_04b f12'>"+data.message.comInfo.CommerceAmountList[i].Amount+"</div>";
                            }
                            content+="<div class='weui_cell_ft tc c_666 f12'>"+data.message.comInfo.CommerceAmountList[i].Premium+"</div></div>";
                        }


                        content+="            </div>"+
                                "            <!--平台优惠-->" +
                                "            <div class='clearfix _pingtai' style='padding: 1rem;'>" ;
                        if(data.message.codeStatus==1){
                        content+=" <div class='clearfix'>"+
                            "<button class='youhuiBtn _btn fr' cls="+data.message.ent.id+">使用优惠码</button>"+
                                    "  </div>";
                            if(data.message.info!=null&&data.message.actGoods!=null){
                                content+= "  <!--活动详情/优惠详情-->"+
                                        "  <div>"+
                                        "    <h4 class='c_666'>"+data.message.info.sub_name+"</h4>"+
                                        "    <span class='c_04b' style='border-radius: 5px; padding: .3rem 0;'>"+data.message.actGoods.name+"</span>"+
                                        " <p class='bg_defualt f14 c_999' style='padding: .5rem;border-radius: 3px;'>"+data.message.info.des+"</p>"+
                                        " </div>";
                            }

                        }

                            content+=" <!--价格-->"+
                                    " <div>"+
                                    " <div class='clearfix f15' style='padding: .5rem 0;'>"+
                                    "         <h4 class='c_999 fl'>车险价格</h4>"+
                                    "         <span class='c_999 fr '>￥"+data.message.comInfo.TotalPremium+"</span>"+
                                    "         </div>"+
                                    "         <div class='clearfix f18' style='border-top: 1px solid #e3e3e3;'>"+
                                    "         <h4 class='c_333 fl'>实际支付</h4>"+
                                    "         <span class='c_ffc fr'>￥"+data.message.comInfo.TotalPremium+"</span>"+
                                    "         </div>";
                        if(data.message.actGoods==null||data.message.actGoods==undefined||data.message.actGoods=='undefined'){
                        content+=    "         <a href='${path}/order/redirectToUploadData?entId="+data.message.ent.id+"' class='weui_btn  weui_btn_primary sub' style='width: 100%;padding: 0px;margin-top: 5px;'>保存订单</a>";
                        }else{
                          content+=  "         <a href='${path}/order/redirectToUploadData?entId="+data.message.ent.id+"&actGoodsId="+data.message.actGoods.id+"' class='weui_btn  weui_btn_primary sub' style='width: 100%;padding: 0px;margin-top: 5px;'>保存订单</a>";
                        }
                           content+=         "         </div>"+
                                    "         </div>";
                        if(data.message.codeStatus==1) {
                            content+="         <!--优惠码-->"+
                                    "         <div class='clearfix _dikou' style='padding: 1rem;'>"+
                                    "         <div class='clearfix'>"+
                                    "         <button class='alredYouhui _btn fr'>不使用优惠码</button>"+
                                    "         </div>"+
                                    "         <!--活动详情/优惠详情-->"+
                                    "         <div>"+
                                    "         <h4 class='c_666'>优惠码折扣</h4>"+
                                    "         <span class='c_04b' style='border-radius: 5px; padding: .3rem 0;'>成功抵扣<span id='change1'>2345.66</span>元</span>"+
                                    " <p class='bg_defualt f14 c_999' style='padding: .5rem;border-radius: 3px;'>优惠码有效已成功抵扣<span id='change2'>2345.66</span>元，使用优惠码后，商业险价格已享受平台补贴，不可再参与平台营销活动。</p>"+
                                    " </div>"+
                                    " <!--价格-->"+
                                    " <div>"+
                                    " <div class='clearfix f15' style='padding: .5rem 0 0;'>"+
                                    "         <h4 class='c_999 fl'>车险价格</h4>"+
                                    "         <span class='c_999 fr oldPrice'>￥<span id='change3'>12332</span></span>"+
                                    "         </div>"+
                                    "         <div class='clearfix f15' style='padding: .5rem 0;'>"+
                                    "         <h4 class='c_999 fl'>优惠码抵扣</h4>"+
                                    "         <span class='c_999 fr'>￥<span id='change4'>12332</span ></span>"+
                                    " </div>"+
                                    " <div class='clearfix f18' style='border-top: 1px solid #e3e3e3;'>"+
                                    "         <h4 class='c_333 fl'>实际支付</h4>"+
                                    "         <span class='c_ffc fr'>￥<span id='change5'>12332</span ></span>"+
                                    "         </div>";
                                    if(data.message.actGoods==null||data.message.actGoods==undefined||data.message.actGoods=='undefined'){
                                        content+=    " <a href='${path}/order/redirectToUploadData?entId="+data.message.ent.id+"'   class='weui_btn weui_btn_primary sub' style='width: 100%;padding: 0px;margin-top: 5px;'>保存订单</a>";
                                    }else{
                                        content+=  " <a href='${path}/order/redirectToUploadData?entId="+data.message.ent.id+"&actGoodsId="+data.message.actGoods.id+"'  class='weui_btn  weui_btn_primary sub' style='width: 100%;padding: 0px;margin-top: 5px;'>保存订单</a>";
                                    }
                                    content+= "</div>"+
                                            "  </div>"+

                                     "        </div>"+
                                    "        <div class='tc shouBtn'>"+
                                    "            <span class='iconfont icon-spread-up c_04b f1m' style='font-weight: 200;'></span>"+
                                    "        </div>"
                        }
                        /*显示加载条*/
                        parentBox.next(".coverBox").html(content);
                    }else{
                        var html ="";
                        html+= '<div class="company_info" style="padding: 1rem 0;width: 100%;" >'+
                                '<div class="clearfix">'+
                                '<img class="fl" src='+imgSrc+' alt="Logo" width="40px"/>'+
                                '<h5 class="fl f15">'+companyName+'</h5>'+
                                '</div>'+
                                '<span class="fr c_999 f18 totalPrice" companyName='+companyName+'>报价失败</span>'+
                                '</div>'+
                                '<div class="pr priceInfo">'+
                                '<p class="c_999 f14" style="padding: .5rem;">失败原因：'+data.message+'</p>'+
                                '<div class="tc">'+
                                '</div>'+
                                '</div>';
                        parentBox.html(html);

                    }

                },
                error:function (data) {
                    var html ="";
                    html+= '<div class="company_info" style="padding: 1rem 0;width: 100%;" >'+
                            '<div class="clearfix">'+
                            '<img class="fl" src='+imgSrc+' alt="Logo" width="40px"/>'+
                            '<h5 class="fl f15">'+companyName+'</h5>'+
                            '</div>'+
                            '<span class="fr c_999 f18 totalPrice" companyName='+companyName+'>报价失败</span>'+
                            '</div>'+
                            '<div class="pr priceInfo">'+
                            '<p class="c_999 f14" style="padding: .5rem;">失败原因 : 服务器有误,请稍后再试。</p>'+
                            '<div class="tc">'+
                            '</div>'+
                            '</div>'
                    parentBox.html(html);
                }
            })


                /*投保详情todo*/
//		           parentBox.next().html("<div class='bar mint active' data-percent='100' data-skill="+companyName+"></div>")





        })
        /*展开投保详情*/
        $(".company").on("click",function(e){

            if($(this).hasClass("showBtn")){
                $(this).next().show();
                $(this).hide();
                $(".shouBtn").on("click",function(){
                    $(this).parent().hide();
                    $(this).parent().prev().show();
                })
                /*兑换优惠码*/
                $(".youhuiBtn").on("click",function(e){
                    var entId=$(this).attr("cls");
                    e.stopPropagation()
                    var _item = $(this);
                    Global.tool.alertDialog("优惠码兑换","温馨提示：使用优惠码后，商业险价格已享受平台补贴，不可再参与平台营销活动。");
                    /*取消兑换*/
                    $('._cancel').on("click",function(){
                        $(".weui_dialog_confirm").remove();
                    })
                    /*确认兑换*/
                    $('._sure').on('click',function(){
                        var num = $("._number").val();//优惠码
                        if(num==''||num==null||num=='null'){
                            Global.tool.toast("请填写优惠码");
                            return false;
                        }else{
                            $.ajax({
                                url: '${path}/order/checkRate',
                                dataType:'json',
                                data: {
                                    eid:entId,
                                    code:num
                                },
                                type: 'post',
                                success: function (data) {
                                    if(data.code=="success"){
                                        $("#change1").text(data.message.ratePrice);
                                        $("#change2").text(data.message.ratePrice);
                                        $("#change3").text(data.message.price);
                                        $("#change4").text(data.message.ratePrice);
                                        $("#change5").text(data.message.afterPrice);
                                        $(".weui_dialog_confirm").remove();
                                        console.log( _item.parent().parent().next("._dikou"))
                                        _item.parent().parent().next("._dikou").show();
                                        _item.parent().parent().hide();
                                    }else{
                                        Global.tool.toast("优惠码有误或失效");
                                    }

                                }
                            })
                        }
//
                    })
                })
                /*不使用优惠码*/
                $(".alredYouhui").on("click",function(){
                    console.log(11111)
                    var _item = $(this);
                    $.ajax({
                        url: '${path}/order/removeRate',
                        dataType:'json',
                        type: 'post',
                        success: function (data) {
                            console.log(data);
                            _item.parent().parent().prev().show();
                            _item.parent().parent().hide();
                        }
                    })

                })
            }
            e.stopPropagation()

        })
    })
</script>
</body>
</html>

