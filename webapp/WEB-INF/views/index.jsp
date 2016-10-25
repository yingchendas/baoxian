<!--
settime:2016.8.16
author:chenying
describe:构建首页
-->
<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<%@include file="/WEB-INF/views/common/tagLib.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
	<title>首页</title>
	<meta http-equiv="refresh">
	<link rel="stylesheet" href="${ctxWeuiCss}/weui.min.css" />
	<link rel="stylesheet" type="text/css" href="${ctxCss}/common/common.css"/>
	<style type="text/css">
		.container{
			margin-bottom: 50px;
		}
		.oneKey img{
			width: 60px;
			height: 60px;
			left: 18px;
			top: -28px;

		}
		.weui_tabbar:before{
			border: none !important;
		}
		.weui_tabbar_item{
			padding: 3px 0 0;
		}


		/*.weui_cell:before{
            border: none;
        }
        .weui_cell:after{
            border: none;
        }*/
		.weui_cells:before{
			border: none;

		}
		.weui_cells:after{
			border: none;

		}

		.test1{
			background: url(${ctxImg}/bg1.png) no-repeat;
			background-size: cover;

			-webkit-border-right: 1px solid #ccc;
		}
		.ce{
			position: relative;
		}
		.ce:after{
			content: "";
			display: block;
			position: absolute;
			left: -50%;
			width: 200%;
			height: 1px;
			background: #ccc;
			-webkit-transform:scale(0.5);
			transform:scale(0.5);
		}
		.test2{
			background: url(${ctxImg}/bg2.png) no-repeat;
			background-size: cover;
		}

		/*轮播样式*/
		.focus{ width:100%;max-height: 425px;   margin:0 auto; position:relative; overflow:hidden;   }
		.focus .hd{ width:100%; height:11px;  position:absolute; z-index:1; bottom:15px; text-align:center;  }
		.focus .hd ul{ display:inline-block; height:5px; padding:3px 5px; background-color:rgba(255,255,255,0.7);
			-webkit-border-radius:5px; -moz-border-radius:5px; border-radius:5px; font-size:0; vertical-align:top;
		}
		.focus .hd ul li{ display:inline-block; width:5px; height:5px; -webkit-border-radius:5px; -moz-border-radius:5px; border-radius:5px; background:#8C8C8C; margin:0 5px;  vertical-align:top; overflow:hidden;   }
		.focus .hd ul .on{ background:#FE6C9C;  }

		.focus .bd{ position:relative; z-index:0; }
		.focus .bd li img{ width:100%;max-height: 100%; }
		.focus .bd li a{ -webkit-tap-highlight-color:rgba(0, 0, 0, 0); /* 取消链接高亮 */  }

		/*新增*/
		.listShow>a{
			display: inline-block;
			width: 24.3%;
			padding:  0.9rem 0;
			float: left;
		}

		.orderInfo{
			position: relative;
		}
		.orderInfo:before{
			content: "";
			display: block;
			position: absolute;
			left: -50%;
			width: 200%;
			height: 1px;
			background: #ececec;
			-webkit-transform:scale(0.5);
			transform:scale(0.5);
		}
		.borderLine{
			 	border-right:1px solid #ececec ;
			 }
			  .line{
			 	border-top: 1px solid #ececec;
			 }
	</style>
</head>
<body id="bodybox">
<div class="container">
	<header class="banner">
		<div id="focus" class="focus">
			<div class="hd">
				<ul></ul>
			</div>
			<div class="bd">
				<ul>
					<c:forEach items="${imgs}" var="img">
						<li class="imgList"><a href="javascript:void(0)"><img src="${path}/download?path=${img.img}&width=750&height=506"/></a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<!--<img src="../images/haibao.png" width="100%" alt="" />-->
	</header>
	<!--新增-->
	<div class="listShow bg_f clearfix" style="margin-top: 10px;">
		<a class="tc borderLine" href="${path}/user/redirectAboutus">
			<div>
				<img src="${ctxImg}/jieshao.png" width="40px" alt="" />
			</div>
			<span class="f14 c_666">U惠保介绍</span>
		</a>
		<a class="tc borderLine" href="${path}/qa">
			<div>
				<img src="${ctxImg}/wenda.png" width="40px" alt="" />
			</div>
			<span class="f14 c_666" >购买问答</span>
		</a>
		<a class="tc borderLine" href="${path}/buyflow">
			<div>
				<img src="${ctxImg}/goumai.png" width="40px" alt="" />
			</div>
			<span class="f14 c_666">购买流程</span>
		</a>
		<a class="tc" href="${path}/collaborate">
			<div>
				<img src="${ctxImg}/hezuo.png" width="40px" alt="" />
			</div>
			<span class="f14 c_666">合作保险</span>
		</a>
		<!--<h4 class="pa c_fff tc f14" style="width: 30%;padding: .1rem 0;background: #434343;left: 35%;top:  -12px;border-radius: 3px;">购买流程</h4>
        <img src="../images/liucheng1.png" width="100%" alt="" />-->
	</div>
	<!--<div class="index_list">-->
	<div class="weui_cells weui_cells_access">
		<a class="weui_cell line" href="${path}/order/myorders">
			<div class="weui_cell_hd" style="margin-top: 4px;margin-right: 5px;">
				<img src="${ctxImg}/dingdan.png"  width="20px"  alt="" />
			</div>
			<div class="weui_cell_bd weui_cell_primary">
				<p class="c_666 f15">订单详情</p>
			</div>
			<div class="weui_cell_ft">
			</div>

		</a>
	</div>
	<div class="clearfix orderInfo bg_f" id="orderInfo">
	</div>
	<div class="weui_cells weui_cells_access">
		<a class="weui_cell line" href="${path}/user/commission/dlist">
			<div class="weui_cell_hd" style="margin-top: 4px;margin-right: 5px;">
				<img src="${ctxImg}/shouyi.png"  width="20px"  alt="" />
			</div>
			<div class="weui_cell_bd weui_cell_primary">
				<p class="c_666 f15">收益详情</p>
			</div>
			<div class="weui_cell_ft">
			</div>
		</a>
	</div>
	<div class="clearfix orderInfo bg_f" id="remInfo">

	</div>
	<!--</div>-->
</div>
<!--footer-->
<footer class="weui_tab" style="position: fixed;bottom: 0;width: 100%;z-index: 999;height: 50px;">

	<div class="weui_tabbar bg_f ce ">
		<a href="${path}/service" class="weui_tabbar_item ">
			<div class="weui_tabbar_icon pr" >
				<img src="${ctxImg}/service1.png" width="40px"/>
			</div>
			<p class="weui_tabbar_label">理赔服务</p>
		</a>
		<a href="${path}/order/redirectToPhoto" class="weui_tabbar_item  oneKey">
			<div style="width: 100px; margin: 0 auto;" class="pr">
				<img src="${ctxImg}/index.png" class="pa" style="z-index: 10000;" alt="" width="60px" />
				<p class="weui_tabbar_label f14 pa " style="top: 30px;font-size: 13px;left: 23px;z-index: 10000;">一键报价</p>
			</div>
		</a>
		<a href="${path}/user/center" class="weui_tabbar_item" >
			<div class="weui_tabbar_icon pr">
				<img src="${ctxImg}/center.png" width="40px" alt="" />
			</div>
			<p class="weui_tabbar_label tc">个人中心</p>
		</a>
	</div>
</footer>
<script type="text/javascript" src="${ctxJs}/lib/mui.js"></script>
<script type="text/javascript" src="${ctxJs}/lib/jquery-1.7.min.js"></script>
<script src="http://res.wx.qq.com/open/js/jweixin-1.1.0.js"></script>
<script src="${ctxJs}/lib/TouchSlide.1.1.js"></script>
<script>
	$(function(){
//		$(".info").css("height",$(".info").width()+"px");
//		$(".info").css("padding-top",($(".info").width())/2+"px");
//		$(".info").css("padding-bottom",($(".info").width())/2+"px");
		$.ajax({
			url : "${path}/getLastOrder?r="+Math.random(),
			type : "post",
			dataType : "json",
			success : function (o) {
				if(o.code == "success"){
					var baseDiv = $("#orderInfo");
					if(o.message){
						baseDiv.html("");
						var order = o.message;
						var temp = $("<div class=\"clearfix\" style=\"padding: 1rem 1rem 0.5rem 1rem;\"><h5 class=\"c_666 fl f15\" style=\"font-weight: 200;\">订单号：<span>"+order.out_trade_no+"</span></h5></div>");
						if(order.orderStatusCode == 2){
							temp.append("<span class=\"fr\" style=\"color: #06bf04;font-weight: bold;\">"+order.orderStatusText+"</span>");
						}else{
							temp.append("<span class=\"fr c_666\">"+order.orderStatusText+"</span>");
						}
						baseDiv.append(temp);
						baseDiv.append("<div class=\"clearfix\" style=\"padding: 0 1rem 1rem 1rem;\"><h5 class=\"c_666 fl f15\" style=\"font-weight: 200;\">"+order.username+"</h5><span class=\"fr\" style=\"color: #666;font-weight: bold;\">"+order.totalfee+"元</span></div>");
					}else{
						baseDiv.html("<p class=\"c_999 f15\" style=\"font-weight: 200;padding: 1rem;\">您目前没有任何订单，下单之后点击此处查看订单详情！</p>");
					}
				}
			}
		});
		$.ajax({
			url : "${path}/getLastRemuneration?r="+Math.random(),
			type : "post",
			dataType : "json",
			success : function (o) {
				if(o.code == "success"){
					var baseDiv = $("#remInfo");
					if(o.message){
						var rem = o.message;
						baseDiv.html("<div class=\"clearfix tc\" style=\"padding: 1rem 1rem 0.5rem 1rem;\"><span class=\"c_04b f2m\">"+rem.remuneration_amountText+"</span><span>元</span></div><div class=\"clearfix\" style=\"padding: 0 1rem 1rem 1rem;\"><h5 class=\"c_666 fl f15\" style=\"font-weight: 200;\">返利来源："+rem.nickname+"</h5><p class=\"fr\" style=\"color: #333;font-weight: 200;\">时间："+rem.create_time+"</p></div>");
					}else{
						baseDiv.html("<p class=\"c_999 f15\" style=\"font-weight: 200;padding: 1rem;\">您目前没有收益！</p>");
					}
				}
			}
		});
		/*轮播*/
		if($(".imgList").length>=1){
			TouchSlide({
				slideCell:"#focus",
				titCell:".hd ul", //开启自动分页 autoPage:true ，此时设置 titCell 为导航元素包裹层
				mainCell:".bd ul",
				effect:"leftLoop",
				autoPlay:true,//自动播放
				autoPage:true//自动分页
			});
		}
		
	});
</script>
<script type="application/javascript">
	$.ajax({
		url: '${path}/order/jsInit',
		type: 'post',
		data:{
			url:window.location.href
		},
		dataType:'json',
		success: function (data) {

			if (data.code == "success"){
				console.log(JSON.stringify(data))
				wx.config({
					appId: data.message.appId, // 必填，公众号的唯一标识
					timestamp:  data.message.js.timestamp, // 必填，生成签名的时间戳
					nonceStr: data.message.js.noncestr, // 必填，生成签名的随机串
					signature: data.message.js.signature,// 必填，签名，见附录1
					jsApiList: ['onMenuShareTimeline','onMenuShareAppMessage'] // 必填，需要使用的JS接口列表，所有JS接口列表见附录2
				});
			}
		},
		error: function () {
			Global.tool.toast("服务器错误");
		}
	})

	wx.ready(function(){
		wx.onMenuShareTimeline({
			title: 'U惠保-您的车险管家', // 分享标题
			link: 'wx.huaxinds.com/client/order/redirectShare?userId=<sec:authentication property="principal.id"/>', // 分享链接
			imgUrl:'http://wx.huaxinds.com/client/common/ui/images/Uhuibao.jpg', // 分享图标
			success: function () {
				// 用户确认分享后执行的回调函数
			},
			cancel: function () {
				// 用户取消分享后执行的回调函数
			}
		});

		wx.onMenuShareAppMessage({
			title: 'U惠保-您的车险管家', // 分享标题
			desc: '专业、快速、精准的车险一站式服务平台，更多优惠快戳我看看...', // 分享描述
			link: 'wx.huaxinds.com/client/order/redirectShare?userId=<sec:authentication property="principal.id"/>', // 分享链接
			imgUrl:'http://wx.huaxinds.com/client/common/ui/images/Uhuibao.jpg', // 分享图标
			type: '', // 分享类型,music、video或link，不填默认为link
			dataUrl: '', // 如果type是music或video，则要提供数据链接，默认为空
			success: function () {
				// 用户确认分享后执行的回调函数
			},
			cancel: function () {
				// 用户取消分享后执行的回调函数
			}
		});
	})
</script>
</body>

</html>
