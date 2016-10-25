<!--
   settime:2016.8.25
   author:chenying
   describe:拍照上传
-->
<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<%@include file="/WEB-INF/views/common/tagLib.jsp"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
		<title>信息录入</title>
		<link rel="stylesheet" href="${path}/common/weui/dist/style/weui.min.css" />
		<link rel="stylesheet" type="text/css" href="${path}/common/ui/css/common/common.css"/>
		<style type="text/css">
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
				width: 80%;
				margin: 20px auto;
				padding: 2.5rem 0;
				border: 1px dashed #04BE02;
			}
			.obj{
				width: 100%;
			}
			.weui_cell_hd:after{
				border: none;
			}
			select {

				direction: rtl;

			}
					/*开关按钮*/
			.weui_switch {
			  -webkit-appearance: none;
			          appearance: none;
			  position: relative;
			  width: 78px;
			  height: 32px;
			  border: 1px solid #ccc;
			  outline: 0;
			  border-radius: 16px;
			  box-sizing: border-box;
			  background: #F8F8F8;
			}
			.weui_switch:before {
			  content: " ";
			  position: absolute;
			  top: 0;
			  left: 0;
			  width: 76px;
			  height: 30px;
			  border-radius: 15px;
			  background-color: #f8f8f8;
			  -webkit-transition: -webkit-transform .3s;
			  transition: -webkit-transform .3s;
			  transition: transform .3s;
			  transition: transform .3s, -webkit-transform .3s;
			}
			.weui_switch:after {
			  content: " ";
			  position: absolute;
			  top: 0;
			  left: 0;
			  width: 30px;
			  height: 30px;
			  border-radius: 15px;
			  background-color: #f8f8f8;
			  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.4);
			  -webkit-transition: -webkit-transform .3s;
			  transition: -webkit-transform .3s;
			  transition: transform .3s;
			  transition: transform .3s, -webkit-transform .3s;
			}
			.weui_switch:checked {
			  border-color: #04BE02;
			  background-color: #04BE02;
			}
			.weui_switch:checked:before {
			  -webkit-transform: scale(0);
			          transform: scale(0);
			}
			.weui_switch:checked:after {
			  -webkit-transform: translateX(48px);
			          transform: translateX(48px);
			}
			._box{
				margin-top: 5px;
			}
			._box:before{
				border: none;
			}
			._box:after{
				border: none;
			}
			/*轮播样式*/
			.focus{ width:100%;max-height: 325px;margin:0 auto; position:relative; overflow:hidden;   }
			.focus .hd{ width:100%; height:11px;  position:absolute; z-index:1; bottom:15px; text-align:center;  }
			.focus .hd ul{ display:inline-block; height:5px; padding:3px 5px; background-color:rgba(255,255,255,0.7); 
				-webkit-border-radius:5px; -moz-border-radius:5px; border-radius:5px; font-size:0; vertical-align:top;
			}
			.focus .hd ul li{ display:inline-block; width:5px; height:5px; -webkit-border-radius:5px; -moz-border-radius:5px; border-radius:5px; background:#8C8C8C; margin:0 5px;  vertical-align:top; overflow:hidden;   }
			.focus .hd ul .on{ background:#FE6C9C;  }
		
			.focus .bd{ position:relative; z-index:0; }
			.focus .bd li img{ width:100%;max-height: 100%; }
			.focus .bd li a{ -webkit-tap-highlight-color:rgba(0, 0, 0, 0); /* 取消链接高亮 */  }
		</style>
	</head>
	<body id="bodybox">
		<header class="clearfix">
			<div id="focus" class="focus">
				<div class="hd">
					<ul></ul>
				</div>
				<div class="bd">
					<ul>
						<c:if test="${status==1}">
							<li class="imgList"><a href="javascript:void(0)"><img src="${path}/download?path=${banner}&width=640&height=400&time="<%=System.currentTimeMillis()%>  /></a></li>
						</c:if>
						<c:if test="${status==0}">
							<c:forEach items="${imgs}" var="img">
								<li class="imgList"><a href="javascript:void(0)"><img src="${path}/download?path=${img.img}&width=640&height=400&time="<%=System.currentTimeMillis()%>  /></a></li>
							</c:forEach>
						</c:if>

					</ul>
				</div>
			</div>
			<!--<img src="${path}/common/ui/images/renbao2.png" width="100%" alt="" />-->
		</header>
	<div class="weui_cells weui_cells_form" style="margin-top: 0px;">
		
		<div class="weui_cell weui_cell_select weui_select_before">
			<label class="weui_label" style="margin-left: 18px;width: 80px;">车牌号</label>
			<div class="weui_cell_hd">
				<select class="weui_select" style="width: 80px;" name="select2">
					<option value="川A">川A</option>
					<option value="川B">川B</option>
					<option value="川C">川C</option>
					<option value="川D">川D</option>
					<option value="川E">川E</option>
					<option value="川F">川F</option>
					<option value="川H">川H</option>
					<option value="川J">川J</option>
					<option value="川K">川K</option>
					<option value="川L">川L</option>
					<option value="川M">川M</option>
					<option value="川Q">川Q</option>
					<option value="川R">川R</option>
					<option value="川S">川S</option>
					<option value="川T">川T</option>
					<option value="川U">川U</option>
					<option value="川V">川V</option>
					<option value="川W">川W</option>
					<option value="川X">川X</option>
					<option value="川Y">川Y</option>
					<option value="川Z">川Z</option>
				</select>
			</div>
			<div class="weui_cell_bd weui_cell_primary pr">
				<input class="weui_input f15" id="carNumber" type="text" placeholder="请输入车牌号"/>
				 <i class="iconfont icon-close c_666 pa" style="right: 5px;top:-1px; display: none;font-size: 1.2rem;"></i>
			</div>

		</div>
		<div class="weui_cell">
			<div class="weui_cell_hd"><label class="weui_label">车主姓名</label></div>
			<div class="weui_cell_bd weui_cell_primary pr">
				<input class="weui_input f15" id="user_name" type="text"  placeholder="请填写车主姓名" />
				<i class="iconfont icon-close c_666 pa" style="right: 5px;top:-1px; display: none;font-size: 1.2rem;"></i>
			</div>
		</div>
		<%--<div class="weui_cell">--%>
			<%--<div class="weui_cell_hd"><label class="weui_label">车牌号</label></div>--%>
			<%--<div class="weui_cell_bd weui_cell_primary">--%>
				<%--<input class="weui_input" id="carNumber" type="text"  placeholder="请填写车牌号" />--%>
			<%--</div>--%>
		<%--</div>--%>
	</div>
		<%--<div class="container bd" style="margin-bottom: 80px;">--%>
			<%--<form action="${path}/common/fileupload"  class="dropzone well" >--%>
				<%--<label for="front" class="front_box" id="addFile">--%>
					<%--<div class="box1">--%>
						<%--<i class="iconfont icon-jia c_04b f1m"></i>--%>
						<%--<h5 class="c_666 f12">行驶证正面</h5>--%>
					<%--</div>--%>
					<%----%>
					<%--<input type="file"  name="front" id="front" value="" style="display: none;" />--%>
				<%--</label>--%>
			<%--</form>--%>
			<%--<form action="${path}/common/fileupload"  class="dropzone well" >--%>
				<%--<label for="fronts" class="front_box" id="addFile1">--%>
					<%--<div class="box2">--%>
						<%--<i class="iconfont icon-jia c_04b f1m"></i>--%>
						<%--<h5 class="c_666 f12">身份证正面</h5>--%>
					<%--</div>--%>
					<%----%>
					<%--<input type="file" name="fronts" id="fronts" value="" style="display: none;" />--%>
				<%--</label>--%>
			<%--</form>--%>
		<%--</div>--%>
		<!--新增-->
			<!--<div class="weui_cells _box" style="background: #f8f8f8;">
		        <div class="weui_cell" style="padding: 0 .7rem;">
		            <div class="weui_cell_bd weui_cell_primary">
		                <p class="f15">是否过户车</p>
		            </div>
		            <div class="weui_cell_ft">
		            	<div style="width: 80px;margin-top: 10px;margin-right: 10px;" class="pr">
							<input class="weui_switch" name="guohu" onchange="changesType(this)"  type="checkbox"/>
							<span class="pa f16 tou_info c_fff" style="top: 5px;left: 45px;color: #666;">否</span>
						</div>
		            </div>
		        </div>
		        <div class="weui_cell" style="padding: 0 .7rem;">
		            
		            <div class="weui_cell_bd weui_cell_primary">
		                <p class="f15">是否贷款车</p>
		            </div>
		            <div class="weui_cell_ft">
		            	<div style="width: 80px;margin-top: 10px;margin-right: 10px;" class="pr">
							<input class="weui_switch" name="daikuan" onchange="changesType(this)"  type="checkbox"/>
							<span class="pa f16 tou_info c_fff" style="top: 5px;left: 45px;color: #666;">否</span>
						</div>
		            </div>
		        </div>
		    </div>-->
		
		<div style="margin-top: 20px;">
			<a href="javascript:void(0)" id="rec_btn" class="weui_btn  weui_btn_primary" style="width: 95%;padding: .2rem 0;">提交</a>
		</div>
		<%--<footer class="weui_tab" style="position: fixed;bottom: 0;width: 100%;z-index: 999;height: 50px;">
			<div class="weui_tab_bd">

			</div>
			<div class="weui_tabbar">
				<a href="javascript:void(0)" id="rec_btn" class="weui_btn  weui_btn_primary" style="width: 100%;padding: 5px;">提交</a>
			</div>
		</footer>--%>
		<script type="text/javascript" src="${path}/common/ui/js/lib/jquery-1.7.min.js"></script>
		<!--<script type="text/javascript" src="../js/touch.js"></script>-->
		<!--<script type="text/javascript" src="${path}/common/ui/js/lib/jquery.ui.widget.js"></script>
		<script type="text/javascript" src="${path}/common/ui/js/lib/jquery.iframe-transport.js"></script>
		<script type="text/javascript" src="${path}/common/ui/js/lib/jquery.fileupload.js"></script>-->
		<script src="${path}/common/ui/js/lib/TouchSlide.1.1.js"></script>
		<script type="text/javascript" src="${path}/common/ui/js/lib/global.js"></script>
		<script>
			var idCar =null,workCar=null;
			
			/*选择是什么车*/
//			function changesType(item){
//				var obj = $(item);
//					if(item.checked){
//						obj.next().css({"top": "5px","left": "20px","color":"#fff"});
//						obj.next().text("是");
//						$("#addFile").css("display","block");
//						if(obj.attr("name")=="daikuan"){
//							loanFlag=1;
//						}
//						if(obj.attr("name")=="guohu"){
//							transferFlag=1;
//						}
//						
//					}else{
//						obj.next().css({"top": "5px","left": "45px","color":"#666"});
//						obj.next().text("否");
//						if(obj.attr("name")=="daikuan"){
//							loanFlag=0;
//						}
//						if(obj.attr("name")=="guohu"){
//							transferFlag=0;
//						}
//					}
//			}
					
			
			
			$(function () {
				
				 /*初始化投保按钮*/
//			        var checkedList = $(".weui_switch");
//			        for(var i=0;i<checkedList.length;i++){
//			            var item = checkedList.eq(i);
//			            if(item.attr("checked")==true||item[0].checked){
//			                item.next().css({"top": "5px","left": "20px","color":"#fff"});
//			                item.next().text("是");
//			                if(item.attr("name")=="daikuan"){
//								loanFlag=1;
//							}
//							if(item.attr("name")=="guohu"){
//								transferFlag=1;
//							}
//			                
//			            }else{
//			                item.next().css({"top": "5px","left": "45px","color":"#666"});
//			                item.next().text("否");
//							if(item.attr("name")=="daikuan"){
//								loanFlag=0;
//							}
//							if(item.attr("name")=="guohu"){
//								transferFlag=0;
//							}
//			            }
//			        }
				
					/*轮播*/
				if($(".imgList").length==1){
					TouchSlide({ 
						slideCell:"#focus",
						titCell:".hd ul", //开启自动分页 autoPage:true ，此时设置 titCell 为导航元素包裹层
						mainCell:".bd ul", 
						effect:"leftLoop", 
						autoPlay:false,//自动播放
						autoPage:true //自动分页
					});
				}else if($(".imgList").length>1){
					TouchSlide({ 
						slideCell:"#focus",
						titCell:".hd ul", //开启自动分页 autoPage:true ，此时设置 titCell 为导航元素包裹层
						mainCell:".bd ul", 
						effect:"leftLoop", 
						autoPlay:true,//自动播放
						autoPage:true //自动分页
					});
				}
				
				
				
				<%--$('#addFile').fileupload({--%>
					<%--dataType: 'json',--%>
<%--//                dropZone: $('#addBulletins'),--%>
					<%--sequentialUploads: true,--%>
					<%--singleFileUploads: true,--%>
					<%--limitMultiFileUploads: 1,--%>
					<%--url: '${path}/common/fileupload',--%>
					<%--limitConcurrentUploads: 1,--%>
					<%--done: function (e, data) {--%>
					<%--},--%>
					<%--success:function (e, data) {--%>
						<%--console.log(data)--%>
						<%--var img = document.createElement("img");--%>
						<%--img.classList.add("obj");--%>
						<%--img.src ="${path}/download?path="+e.message+"&width=580&height=400" ;--%>
						<%--$(".box1").html(img);--%>
						<%--workCar = e.message;--%>
					<%--},--%>
					<%--send: function (e, data) {--%>
					<%--},--%>
					<%--fail: function (e, data) {--%>
					<%--}--%>
				<%--});--%>
				<%--$('#addFile1').fileupload({--%>
					<%--dataType: 'json',--%>
<%--//                dropZone: $('#addBulletins'),--%>
					<%--sequentialUploads: true,--%>
					<%--singleFileUploads: true,--%>
					<%--limitMultiFileUploads: 1,--%>
					<%--url: '${path}/common/fileupload',--%>
					<%--limitConcurrentUploads: 1,--%>
					<%--done: function (e, data) {--%>
					<%--},--%>
					<%--success:function (e, data) {--%>
						<%--console.log(e)--%>
						<%--var img = document.createElement("img");--%>
						<%--img.classList.add("obj");--%>
						<%--img.src ="${path}/download?path="+e.message+"&width=580&height=400" ;--%>
						<%--$(".box2").html(img);--%>
						<%--idCar = e.message;--%>
					<%--},--%>
					<%--send: function (e, data) {--%>
					<%--},--%>
					<%--fail: function (e, data) {--%>
					<%--}--%>
				<%--});--%>
				//识别照片
				$("#rec_btn").click(function(){
					var selectVule = $(".weui_select").val();
					var user_name = $("#user_name").val();
					var carNumber = $("#carNumber").val();
					var car = selectVule+carNumber;
					var req = /^[\u4E00-\u9FA5][\da-zA-Z]{6}$/;
					console.log(car);
					if(user_name==''){
						Global.tool.toast("请输入车主姓名");
					}else if(carNumber==""){
						Global.tool.toast("请输入车牌号");
					}else if(!req.test(car)){
						Global.tool.toast("车牌号不正确");
					}
					else{
						Global.tool.weiLoade();
						$.ajax({
							type: 'GET',
							dataType:"json",
							url: '${path}/order/submitCar?username='+user_name+"&idCard="+car,
							success:function (data) {
								if(data.code=="success"){
									Global.tool.closeLoade(1000,"weLoading");
									if(data.message==-3){
										Global.tool.idcarDialog("请补全相应信息",-3);
										$('._cancel').on("click",function(){
											$(".weui_dialog_confirm").remove();
										})
										$("._sure").on("click",function(){
											var idNo = $("._number").val();
											var classID = $("._select").val();//证件类型
											var customID = $("._custom").val();//客户类型
//											var reg = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
//											if(reg.test(idNo)){
												$(".weui_dialog_confirm").remove();
												Global.tool.weiLoade();
												$.ajax({
													type: 'GET',
													dataType:"json",
													url: '${path}/order/changeIdNo?idNo='+idNo+"&classID="+classID+"&customID="+customID,
													success:function (data) {
														if(data.code=="success"){
															window.location.href="${path}/order/redirectByStatus?status="+data.message;
															Global.tool.closeLoade(10,"weLoading");
															
														}else{
															Global.tool.toast("服务器错误");
															Global.tool.closeLoade(10,"weLoading");
														}
													}
												})
//											}else{
//												Global.tool.toast("身份证号输入不正确！");
//											}
											
										})
										
									}else if(data.message==-4){
										Global.tool.idcarDialog("请补全相应信息",-4);
										$('._cancel').on("click",function(){
											$(".weui_dialog_confirm").remove();
										})
										$("._sure").on("click",function(){
											var status=2;//2==非运营车辆
											
											var chooseList = $('._chooseStatus');
											for(var i=0;i<chooseList.length;i++){
												if(chooseList.eq(i).hasClass("icon-gou2")){
													if(chooseList.eq(i).parent().hasClass("_fou")){
														status=2;
													}else{
														status=1;
													}
												}
											}
//											if($("#_s11")[0].checked){
//												status=1
//											}else{
//												status=2
//											}
											$(".weui_dialog_confirm").remove();
											Global.tool.weiLoade();
											$.ajax({
												type: 'GET',
												dataType:"json",
												url: '${path}/order/changeIdNo?nature='+status,
												success:function (data) {
													if(data.code=="success"){
														window.location.href="${path}/order/redirectByStatus?status="+data.message;
														Global.tool.closeLoade(10,"weLoading");
														
													}else{
														Global.tool.toast("服务器错误");
														Global.tool.closeLoade(10,"weLoading");
													}
												}
											})
											
										})
									}else if(data.message==-5){
										Global.tool.idcarDialog("请补全相应信息",-5);
										$('._cancel').on("click",function(){
											$(".weui_dialog_confirm").remove();
										})
										$("._sure").on("click",function(){
											var status=2;//2==非运营车辆
												var chooseList = $('._chooseStatus');
												for(var i=0;i<chooseList.length;i++){
													if(chooseList.eq(i).hasClass("icon-gou2")){
														if(chooseList.eq(i).parent().hasClass("_fou")){
															status=2;
														}else{
															status=1;
														}
													}
												}
											
											
											
//												if($("#_s11")[0].checked){
//													status=1
//												}else{
//													status=2
//												}
												var idNo = $("._number").val();
												var classID = $("._select").val();//证件类型
												var customID = $("._custom").val();//客户类型
//												var reg = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
//												if(reg.test(idNo)){
													$(".weui_dialog_confirm").remove();
													Global.tool.weiLoade();
													$.ajax({
														type: 'GET',
														dataType:"json",
														url: '${path}/order/changeIdNo?idNo='+idNo+"&nature="+status+"&classID="+classID+"&customID="+customID,
														success:function (data) {
															if(data.code=="success"){
																window.location.href="${path}/order/redirectByStatus?status="+data.message;
																Global.tool.closeLoade(10,"weLoading");
															}else{
																Global.tool.toast("服务器错误");
																Global.tool.closeLoade(10,"weLoading");
															}
														}
													})
//											}else{
//													Global.tool.toast("身份证号输入不正确！")
//											}
										})
									}else{
										window.location.href="${path}/order/redirectByStatus?status="+data.message;
										Global.tool.closeLoade(10,"weLoading");
									}
								}else{
									Global.tool.toast("服务器错误");
									Global.tool.closeLoade(10,"weLoading");
								}
								
							}
						})
						<%--window.location.href="${path}/order/redirectToOneKey?"+--%>
								<%--"username="+user_name+"&idCard="+car;--%>
					}

				})
				
				/*车牌空格大小写转换*/
				$("#carNumber").on("keyup",function(){
					var num = $(this).val();
	//				$(this).val(num.toUpperCase())
					$(this).val(num.toUpperCase().replace(' ','').replace(/^([\u4E00-\u9FA5]+，?)+$/g,''));
				})
				$("#carNumber").on("blur",function(){
					var num = $(this).val();
	//				$(this).val(num.toUpperCase())
					$(this).val(num.toUpperCase().replace(' ','').replace(/^([\u4E00-\u9FA5]+，?)+$/g,''));
				})
				
				
				/*增加删除icon函数*/
				$(".weui_input").on("keyup",function(){
					var item = $(this);
					item.next().show();
					
				})
				$(".weui_input").on("focus",function(){
					var item = $(this);
					item.next().show();
					
				})
				/*清除输入框中内容*/
				$(".icon-close").on("click",function(){
					var item = $(this);
					item.prev().val("");
					item.prev().focus();
					item.hide();
				})
				$(".weui_input").on("blur",function(){
					var item = $(this);
					setTimeout(function(){
						item.next().hide();
					},200)
					
				})
			});





			//		$(function(){
			//			//识别照片
			//			$("#rec_btn").tap(function(){
			//				//识别成功后跳转至onekey.html
			//				window.location.href="onekey.html";
			//			})
			//		})
			//	//上传照片后再页面上显示
			//	function handleFiles(files,item){
			//		var item = $(item);
			//		console.log(item.prev())
			//	    for (var i = 0; i < files.length; i++) {
			//	        var file = files[i];
			//	        var imageType = /image.*/;
			//
			//	        if (!file.type.match(imageType)) {
			//	            continue;
			//	        }
			//
			//	        var img = document.createElement("img");
			//	        img.classList.add("obj");
			//	        img.file = file;
			//	     	 item.prev().html(img);
			//
			//	        var reader = new FileReader();
			//	        reader.onload = (function(aImg){
			//	            return function(e){
			//	                aImg.src = e.target.result;
			//	            };
			//	        })(img);
			//	        reader.readAsDataURL(file);
			//	    }
			//	}


		</script>
	</body>
	<!--<script type="text/javascript" src="../../zepto/zepto.min.js"></script>-->

</html>
