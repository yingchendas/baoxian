<%--
  Created by IntelliJ IDEA.
  User: xuran
  Date: 2016/8/27
  Time: 11:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/common/tagLib.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>查看报价</title>
    <link rel="stylesheet" type="text/css" href="${ctxWeuiCss}/weui.min.css"/>
    <link rel="stylesheet" type="text/css" href="${ctxCss}/common/common.css"/>
    <style type="text/css">
        ul li{
            list-style: none;
            padding:.5rem;
            background: #fff;
            margin: 10px auto 0 auto;
            width: 87%;
        }

        .company_name{
            margin-top: 3px;
            margin-left: 5px;
        }
        .youhui{
            padding: .3rem;
            font-size: 12px;
            margin-top: 0px;
            border-radius: 5px;
        }
        .info{
            margin-top: 10px;
            font-size: 14px;

        }
        .active{
            border: 1.3px solid #04BE02;

        }
        .price{
            margin-top: 3px;
        }
        /*保单详情*/
			.cover{
				height: 100%;
			    width: 100%;
			    position: fixed;
			    left: 0;
			    right: 0;
			    top: 0;
			    bottom: 0;
			    background: rgba(0, 0, 0, 0.6);
			    overflow: hidden;
			    z-index: 1000000;
			   display: none;
				
				 
			}
			.scrollBox{
				height:100%;
			    width: 100%;
			    position: fixed;
			    left: 0;
			    right: 0;
			   top: 0;
			    background: rgba(0, 0, 0, 0.0);
			    overflow-y: scroll;
			    z-index: 1000001;
			    display: none;
				
			}
        .info_title>span{
            display: inline-block;
            width: 33.3%;
        }

        header{
            padding: .5rem 1rem;
        }
        .cover header div{
            width: 100%;
        }
        .userName,.money{
            margin-top: 3px;
            margin-left: 5%;
        }
        .coverBox,.tel,.addr{
            width: 90%;
            border-radius: 5px;
            margin: 1rem auto;
            padding:1rem .5rem;
        }
        .container>div{
            margin-top: 10px;
        }
        .icon-gou1{
            display: none;
        }
        .notice{
            margin-right: 20px;
            padding: .3rem;
        }
        .bus_info>div{
            width: 33.3%;
           
            font-size: 12px;
        }
				.weui_cell_primary{
				font-size: 12px;
				text-align: left;
			}
    </style>
</head>
<body id="bodybox">
<!--保单详情-->
<div class="cover nextBtn pf">
	


</div>
<c:forEach items="${lists}" var="list">
<div class="scrollBox ${list.ent.id}" >

    <div class="coverBox bd bg_f nextBtn">
        <header class="clearfix tl pr">

            <div class="clearfix  fl" style="width: 60%;">
                <img class="fl"  width="40px" alt="logo" />
                <span class="tc fl userName c_666" name="${list.ent.id}"></span>
            </div>
            <p class="fr money">
                <span>￥</span><span class="f17 c_ff7" name="${list.ent.id}"></span><span>元</span>
            </p>
        </header>
            <!--交强险-->
            <div >
                <div class="clearfix" style="padding: .3rem 1rem;">
                    <h4 class="fl c_666">强制险</h4>
                    <span class="fr  f15" style="padding: .3rem .5rem;border-radius: 5px;">小计￥${list.compAmount}元</span>
                </div>
                <div class="weui_cells " style="margin-top: 0px;background: #f8f8f8;">
                    <c:forEach items="${list.comInfo.compulsoryAmountList}" var="compul">
                        <c:if test="${compul.insuranceCode=='J1'}">
                            <div class="weui_cell">
                                <div class="weui_cell_bd weui_cell_primary">
                                    <p>交强险</p>
                                </div>
                                <div class="weui_cell_ft c_666 f12">${compul.premium}</div>
                            </div>
                        </c:if>
                        <c:if test="${compul.insuranceCode=='CCS'}">
                            <div class="weui_cell">
                                <div class="weui_cell_bd weui_cell_primary">
                                    <p>车船税</p>
                                </div>
                                <div class="weui_cell_ft c_666 f12">${compul.premium}</div>
                            </div>
                        </c:if>
                    </c:forEach>


                </div>

            </div>
            <!--商业险-->
            <div class="busi_policy" >
                <div class="clearfix" style="padding: .3rem 1rem;">
                    <h4 class="fl c_666">商业险</h4>
                    <span class="fr  f15" style="padding: .3rem .5rem;border-radius: 5px;">小计￥${list.comInfo.commerceTotalPremium}元</span>
                </div>
                <div class="info_title clearfix">
                    <span class="tc fl c_04b">险种</span>
                    <span class="tc fl c_04b">保额</span>
                    <span class="tc fl c_04b">保费</span>
                </div>
                <div class="weui_cells" style="margin-top: 0px; background: #f8f8f8;">
                    <c:forEach items="${list.comInfo.commerceAmountList}" var="commer">
                    <div class="weui_cell bus_info">
                        <div class="weui_cell_bd weui_cell_primary tl">
                            <p>${commer.insuranceName}</p>
                        </div>
                        <c:if test="${commer.amount=='0.0'}">
                            <div class="weui_cell_ft tc c_04b">投保</div>
                        </c:if>
                        <c:if test="${commer.amount!='0.0'}">
                            <div class="weui_cell_ft tc c_04b">${commer.amount}</div>
                        </c:if>
                        <div class="weui_cell_ft tc c_666">${commer.premium}</div>
                    </div>
                    </c:forEach>
                </div>
                <c:if test="${list.info!=null&&list.info!=''}">
                    <div class="tr" style="padding: 1rem;">
                        <span class="c_fff bg_ff7 type3" style="border-radius: 5px; padding: .3rem;" id="span3">${list.info.name}</span>
                    </div>
                </c:if>

            </div>
            <%--<div class="tc nextBtn c_fff" style="position: fixed;left: 50%;">--%>
			        <%--<i class="iconfont icon-close c_fff f1m " style="font-size: 1.5rem;" ></i>--%>
			    <%--</div>--%>
    </div>
       <div class="tc nextBtn c_fff" style="margin-bottom: 80px">
            <i class="iconfont icon-close c_fff f1m " style="font-size: 1.5rem;" ></i>
        </div>
		   <footer class="weui_tab" style="position: fixed;bottom: 0;width: 100%;z-index: 999;height: 50px;">
		        <div class="weui_tab_bd">
		
		       </div>
		        <div class="weui_tabbar">
		           <a name="chooseA" class="weui_btn  weui_btn_primary chooseA" style="width: 100%;padding: 5px;">下一步</a>
		        </div>
		    </footer>
    <%--<div class="tc ">--%>
        <%--<a name="chooseA" class="weui_btn  weui_btn_primary chooseA" style="width: 60%;">下一步</a>--%>
    <%--</div>--%>

</div>
</c:forEach>
<!--公司详情-->
<div class="container bd">
    <!--价格详情-->
    <ul class="price_box ">
        <c:forEach items="${lists}" var="list">
            <li class="company_info pr " entId ="${list.ent.id}" actGoodsId="${list.actGoods.id}" comprice="${list.comInfo.commerceTotalPremium}">
                <header class="clearfix">
                    <img class="fl" src="${ctxImg}/${list.ent.code}.png"  alt="logo" width="40px"/>
                    <h5 class="fl company_name">${list.ent.name}</h5>
                    <p class="fr price c_666">￥<span class="f18 c_ff7">${list.comInfo.totalPremium}</span>元</p>
                </header>
                <c:if test="${list.actGoods!=''&&list.actGoods!=null}">
                    <p class="clearfix">
                        <span class="c_fff bg_ff7 youhui dinline fr">${list.actGoods.name}</span>
                    </p>
                </c:if>
                <p class="f16 info f12 c_666">
                    ${list.info.des}
                </p>
                <%--<i class="iconfont icon-gou1 f2m c_04b pa" style="right: -1px;bottom: -12px;"></i>--%>
                <!--新增查看详情-->
                <div class="clearfix" style="padding: 0.5rem; border-top: 1px solid #ccc;margin-top: 10px;">
                    <span class="c_04b pocity_info fr">查看保单详情>></span>

                </div>
            </li>
        </c:forEach>
    </ul>
</div>
<div class="tc clearfix" style="margin: 0px auto 50px auto;">
    <a href="${path}/order/redirectToCompany" class="weui_btn weui_btn_plain_primary fl f14" style="width: 42%;margin-top: 15px;margin-left: 6%;">重选保险公司</a>
    <a href="${path}/order/redirectChangeInsurance" class="weui_btn weui_btn_plain_primary fl f14" style="width: 42%;margin-left: 6%;">修改保险方案</a>
</div>
<%--<footer class="weui_tab" style="position: fixed;bottom: 0;width: 100%;z-index: 999;height: 50px;">--%>

    <%--<div class="weui_tabbar">--%>
        <%--<a href="javascript:void(0)" class="weui_btn  weui_btn_primary byBtn" style="width: 100%;padding: 5px;">投保</a>--%>
    <%--</div>--%>
<%--</footer>--%>

<script>
    $(function(){
        //默然选择
        $(".icon-gou1").eq(0).css("display","block");
        var closeDiv;
        /*立即投保*/
        $(".pocity_info").tap(function(){
            var obj = $(this).parent().parent();
            closeDiv = $(this).parent().parent().attr("entId");
            var comprice = $(this).parent().parent().attr("comprice");
            $(".coverBox").find("img").attr("src",obj.find("img").attr("src"));
            $("."+obj.attr("entId")).find("span[class='tc fl userName c_666']").html(obj.find("h5").html());
            $("."+obj.attr("entId")).find("span[class='f17 c_ff7']").html(obj.find("span[class='f18 c_ff7']").html());
            $("."+obj.attr("entId")).find("span[class='c_fff bg_ff7 type3']").html(obj.find("span[class='c_fff bg_ff7 youhui dinline fr']").html());
            $("."+obj.attr("entId")).find("a[class='weui_btn  weui_btn_primary chooseA']")
                    .attr("href","${path}/order/redirectToUploadData?entId="+obj.attr("entId")+"&actGoodsId="
                            +obj.attr("actGoodsId"));
//            $("#span3").html(obj.find("span[class='c_fff bg_ff7 youhui dinline fr']").html());
            <%--$("#chooseA").attr("href","${path}/order/redirectToUploadData?entId="+obj.attr("entId")+"&actGoodsId="--%>
                    <%--+obj.attr("actGoodsId")+"&price="+obj.find("span[class='f18 c_ff7']").html());--%>
            setTimeout(function () {
                $(".cover").show();
                $("."+obj.attr("entId")).show();
            },400);
        });
        /*关闭投保详情*/
        $(".nextBtn").tap(function(){
        	setTimeout(function(){
        		 var obj = $(".price_box").find("li[entId='"+closeDiv+"']");
             $("."+obj.attr("entId")).hide();
             $(".cover").hide();
        	},500)
           
        });

    })
</script>
</body>
</html>

