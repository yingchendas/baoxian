<%--
  Created by IntelliJ IDEA.
  User: Mr.wanG
  Date: 2016/8/27
  Time: 17:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/common/tagLib.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>U惠保</title>
    <link rel="stylesheet" type="text/css" href="${ctxCss}/mui.css"/>
    <style type="text/css">
			
		        .erBox {
					    top:32%;
					    left:30%;
					  }
		        .text{
					  	bottom:16%;
					  	
					  }
		        .text p{
			   		font-weight: bolder;
			   		color: #fff;
			   }
			   .erBox{
			   	width: 40%;
			   }
			
		</style>
	</head>
	<body id="bodybox" style="height: 100%;">
		<div class="container bd pr" style="position: relative;">
			<img src="${ctxImg}/erbg.png" width="100%" alt="" />
			<img src="${path}/user/commission/downloadQr?uid=${userId}" class="erBox pa" style="position: absolute;"  alt="" />
				
			<div class="pa text" style="width: 100%;padding: .5rem;position: absolute;">
				<p class="c_fff">点击右上角，分享此二维码至朋友或朋友圈，朋友通过您的推荐成功购买保险服务，您将获得丰厚的平台返利。如二维码无法显示，请手动添加“U惠保”公众号。</p>
			</div>
		</div>
	</body>
  
</html>