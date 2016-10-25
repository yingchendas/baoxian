<%--
  Created by IntelliJ IDEA.
  User: xuran
  Date: 2016/8/27
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/common/tagLib.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>上传资料</title>
    <link rel="stylesheet" type="text/css" href="${ctxWeuiCss}/weui.min.css"/>
    <link rel="stylesheet" type="text/css" href="${ctxCss}/common/common.css"/>
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

        select {

            direction: rtl;

        }
        .weui_cell_select{
            margin-top: 0;
        }
        .weui_cell_select:before{
            border: none;
        }
        .active{
            border: 1px solid #04BE02;
        }
        .userName,.money{
				margin-top: 3px;
				margin-left: 3%;
			}
			.delete{
				text-decoration:line-through;
				color: #999;
			}
			.nowBox{
				display: none;
				border-top: .5px solid #ccc;
			}
			._move{
				position: fixed; bottom: 0; width: 100%;z-index: 999;
			}
			._cellTable{
				display: none;
			}
			/*新增*/
			.cover{
				height: 100%;
			    width: 100%;
			    position: fixed;
			    left: 0;
			    right: 0;
			    top: 0;
			    bottom: 0;
			    background: rgba(0, 0, 0, 0.5);
			    overflow: hidden;
			    z-index: 1000000;
			   /*display: none;*/
				
				 
			}
			.scrollBox{
				max-height:400px;
			    width: 90%;
			    position: fixed;
			    left: 5%;
			    right: 0;
			    bottom: 125px;
			    background: rgba(0, 0, 0, 0.5);
			    overflow-y: scroll;
			    z-index: 1000001;
			    border-radius: 5px;
			    /*display: none;*/
				
			}
			.scrollBox::-webkit-scrollbar{width:5px; height:5px;}
			.scrollBox::-webkit-scrollbar-button{width:0;height:0;}
			.scrollBox::-webkit-scrollbar-corner{display:block; }
			.scrollBox::-webkit-scrollbar-thumb{background-clip:padding-box;background-color:rgba(233,55,145,.8);border-radius:8px;}//还可以设置滚动条的颜色
			.scrollBox::-webkit-scrollbar-thumb:hover{background-clip:padding-box;background-color:rgba(0,0,0,.5);border-radius:8px;}
			.weui_cells{
				margin-top: 0;
				
			}
			.cancel{
				position: fixed;
				bottom: 15px;
				width:90%;
				left: 5%;
				border-radius: 10px;
				z-index: 1000002;
				background: #f8f8f8;
				font-size: 17px;
				color: #666;
				padding: 11px 0;
			}
			.newbtn{
				position: fixed;
				bottom: 70px;
				width:90%;
				left: 5%;
				border-radius: 10px;
				z-index: 1000002;
				background: #f8f8f8;
				font-size: 17px;
				color: #666;
				padding: 11px 0;
			}
			.newAddr{
				display: none;
			}
			.addrList{
				padding: 18px 0;
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
			.beneficiary{
				display: none;
			}
    </style>
</head>
<body id="bodybox">
	<!--<header class="clearfix tl pr bg_f" style="padding: .8rem 0.5rem;">
			<div class="clearfix">
				<div class="clearfix  fl" style="width: 60%;">
					<img class="fl" src="../../images/pingan.jpg" width="40px" alt="logo" />
					<span class="tc fl userName c_666">太平洋保险</span>
				</div>
				<p class="fr money c_ff7" style=" ">
					<span>￥</span><span class="f16 ">123.55</span><span>元</span>
				</p>
			</div>
			<div class="clearfix nowBox c_ff7" style="margin-top: 5PX;">
				<div class="clearfix  fl" style="width: 60%;">
					<span class="tc fl f16 userName c_ff7">折后价</span>
				</div>
				<p class="fr ">
					<span>￥</span><span class="f16  nowMoney">123.55</span><span>元</span>
				</p>
			</div>
		</header>-->
    <c:if test="${entStatus!=1}">
        <h5 class="title">优惠码</h5>
        <div class="weui_cells weui_cells_form">
            <div class="weui_cell">
                <div class="weui_cell_hd"><label class="weui_label">优惠码</label></div>
                <div class="weui_cell_bd weui_cell_primary pr">
                    <input class="weui_input _focus f15" id="privilegeNum" type="text"   placeholder="请输入优惠码（选填）"/>
                    <button  class="get_btn search pa">兑换</button>
                    <!--<span class="get_btn btn_cover pa"></span>-->
                </div>
            </div>
        </div>
    </c:if>
<div class="container bd">
    <!--联系方式-->
    <h5 class="title">联系方式</h5>
    <div class="weui_cells weui_cells_form">
        <div class="weui_cell">
            <div class="weui_cell_hd"><label class="weui_label">手机号</label></div>
            <div class="weui_cell_bd weui_cell_primary pr">
                <input class="weui_input f15 _focus" id="phoneNum" type="number"   placeholder="请输入电话号码"/>
                <button  class="get_btn get pa">获取验证码</button>
                <span class="get_btn btn_cover pa"></span>
            </div>
        </div>
        <div class="weui_cell">
            <div class="weui_cell_hd"><label class="weui_label">验证码</label></div>
            <div class="weui_cell_bd weui_cell_primary">
                <input class="weui_input f15 _focus" type="number" id="checkedNum"  placeholder="请输入验证码"/>
            </div>
        </div>
    </div>
    <!--新增-->
		<c:if test="${status==1}">
			<div class="weui_cells _box" >
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
			</div>
			
			<div class="beneficiary">
				<div class="weui_cells weui_cells_form">
			        <div class="weui_cell">
			            <div class="weui_cell_hd"><label class="weui_label">受益人</label></div>
			            <div class="weui_cell_bd weui_cell_primary pr">
			                <input class="weui_input f15 _focus" id="beneficiary" type="text"   placeholder="请输入受益人姓名"/>
			                <!--<span class="get_btn btn_cover pa"></span>-->
			            </div>
			           
			        </div>
			         
			    </div>
			    <p class="c_ff7 f12" style="padding:0 .5rem;">注：如贷款未偿还完，根据保险公司规定，保险收益人，请填写贷款方名称。</p>
			</div>
		</c:if>

    <!--联系地址-->
    <div class="weui_cell weui_cell_select" style="width: 92%;margin:0 auto;background: #f8f8f8;padding: .8rem 0;border-radius: 5px;">
        <h5 >联系地址(保单将送至该地址)</h5>
        <div class="weui_cell_bd weui_cell_primary pr">
        	<button  class="get_btn otherAddr  pa" style="top: -18px;">其它地址</button>

        </div>
    </div>
    
    <!--地址渲染-->
	        <div class="_cellTable">
	        	<div class="cover nextBtn pf">
					
						</div>
						<div class="scrollBox ">
							<div class="coverBox bd bg_f ">
								<div class="weui_cells weui_cells_access">
							        <c:forEach items="${addrs}" var="addr">
												<a class="weui_cell addrList" href="javascript:void(0);">
								            <div class="weui_cell_bd  weui_cell_primary">
								                <p><span class="userName">${addr.username}</span><span class="addr">${addr.address}</span></p>
								            </div>
								        </a>
			                </c:forEach>
							    </div>
							</div>
						</div>
						<div class="tc c_fff newbtn bg_primary" style="background: #04BE02;color: #fff;" >
								新增	
						</div>
						<div class="tc c_04b cancel" >
								取消	
						</div>
	        </div>
    <c:if test="${address!=null&&address.is_def==1}">

        <div class="weui_cells weui_cells_form ">
            <div class="weui_cell">
                <div class="weui_cell_hd"><label class="weui_label">联系人</label></div>
                <div class="weui_cell_bd weui_cell_primary pr">
                    <input class="weui_input f15 _focus" id="man" type="text" value="${address.username}"   placeholder="请填写收货人姓名"/>
                </div>
            </div>
            <div class="weui_cell">
                <div class="weui_cell_hd"><label class="weui_label">详细地址</label></div>
                <div class="weui_cell_bd weui_cell_primary">
                    <input class="weui_input f15 _focus" id="addr" type="text" value="${address.address}"   placeholder="请填写详细地址"/>
                </div>
            </div>
        </div>
    		<%--<div class="moren bg_f f16 c_666" style="padding: .8rem;">--%>
		        	<%--<div>--%>
		        		<%--<label>联系人:</label>&nbsp;&nbsp;&nbsp<span class="f14">${address.username}</span>--%>
		        	<%--</div>--%>
		        	<%--<div style="margin-top: 3px;">--%>
		        		<%--<label>联系地址:</label>&nbsp;&nbsp;&nbsp<span class="f14">${address.address}</span>--%>
		        	<%--</div>--%>
	        <%--</div>--%>
        <!--<div class="weui_cells weui_cells_form ">
            <div class="weui_cell">
                <div class="weui_cell_hd"><label class="weui_label">联系人</label></div>
                <div class="weui_cell_bd weui_cell_primary pr">
                    <input class="weui_input f15" id="man" type="text"  value="${address.username}"  placeholder="请填写收货人姓名"/>

                </div>
            </div>
            <div class="weui_cell">
                <div class="weui_cell_hd"><label class="weui_label">详细地址</label></div>
                <div class="weui_cell_bd weui_cell_primary">
                    <input class="weui_input f15" id="addr" type="text" value="${address.address}"  placeholder="请填写详细地址"/>
                </div>
            </div>
        </div>-->
    </c:if>
    <c:if test="${address==null||(address!=null&&address.is_def==0)}">
        <div class="weui_cells weui_cells_form newAddr">
            <div class="weui_cell">
                <div class="weui_cell_hd"><label class="weui_label">联系人</label></div>
                <div class="weui_cell_bd weui_cell_primary pr">
                    <input class="weui_input f15 _focus" id="man" type="text"  placeholder="请填写收货人姓名"/>

                </div>
            </div>
            <div class="weui_cell">
                <div class="weui_cell_hd"><label class="weui_label">详细地址</label></div>
                <div class="weui_cell_bd weui_cell_primary">
                    <input class="weui_input f15 _focus" id="addr" type="text"  placeholder="请填写详细地址"/>
                </div>
            </div>
        </div>
    </c:if>
</div>

<!--上传照片-->
<c:if test="${status==1}">
    <h5 class="title">投保资料<span class="c_666 f12">（按保险公司要求,需提供投保资料）</span> </h5>
</c:if>
<c:if test="${status!=1}">
    <h5 class="title">投保资料<span class="c_666 f12">（按保险公司要求,需提供投保资料,可稍后上传。）</span> </h5>
</c:if>
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
<footer class="weui_tab _move" style="height: 50px;" >
			<div class="weui_tab_bd">

			</div>
			<div class="weui_tabbar">
				<button href="javascript:void(0)" id="pay" class="weui_btn  weui_btn_primary" style="width: 100%;padding: 5px;">提交</button>
			</div>
		</footer>	
<script type="text/javascript" src="${path}/common/ui/js/lib/jquery-1.7.min.js"></script>
<!--<script type="text/javascript" src="../js/touch.js"></script>-->
<script type="text/javascript" src="${path}/common/ui/js/lib/jquery.ui.widget.js"></script>
<script type="text/javascript" src="${path}/common/ui/js/lib/jquery.iframe-transport.js"></script>
<script type="text/javascript" src="${path}/common/ui/js/lib/jquery.fileupload.js"></script>
<script type="text/javascript" src="${path}/common/ui/js/lib/global.js"></script>
<script>

    var addrFlag=0;
    var morenFlag =0;
    var loanFlag =0,transferFlag=0
    
    /*选择是什么车*/
			function changesType(item){
				var obj = $(item);
					if(item.checked){
						obj.next().css({"top": "5px","left": "20px","color":"#fff"});
						obj.next().text("是");
						if(obj.attr("name")=="daikuan"){
							$(".beneficiary").css("display","block");
							loanFlag=1;
						}else{
							transferFlag=1;
						}
						
						
					}else{
						obj.next().css({"top": "5px","left": "45px","color":"#666"});
						obj.next().text("否");
						if(obj.attr("name")=="daikuan"){
							$(".beneficiary").css("display","none");
							loanFlag=0;
						}else{
							transferFlag=0;
						}
					}
			}
    
    /*选择地址函数*/
    function addrChoose(e){
        var index=e.selectedIndex;
        var item = $(e.options[index])

        if(item.val()=="1"){
        	$("._cellTable").css("display","block");
            $("#man").attr("disabled",false);
            $("#addr").attr("disabled",false);

            $("#man").val("");
            $("#addr").val("");
            $("#man").parent().parent().addClass("active");
            addrFlag=1;
        }else if(item.val()=="2"){
        		$("._cellTable").css("display","none");
            $("#man").attr("disabled",true);
            $("#addr").attr("disabled",true);
            $("#man").parent().parent().removeClass("active");
            addrFlag=0;
        }
        else{
        	$("._cellTable").css("display","block");
            var userName = item.attr("name");
            var addr = item.attr("addr");
            $("#man").val(userName);
            $("#addr").val(addr);
            $("#man").attr("disabled",true);
            $("#addr").attr("disabled",true);
            $("#man").parent().parent().removeClass("active");
            setTimeout(function(){
			  			$(".weui_select").val("地址管理");
			  		},2)
            addrFlag=0;
        }

    }
    
     /*关闭弹框*/
		function closeDailog(){
		 	$(".sure").on("click",function(){
		 		$(".weui_dialog_alert").remove();
		 	})
		 }
      var idCar =null,idCarf=null,workCarf=null, workCar=null;
    /*
     * settime:2016.8.23
     author:chenying
     describe:上传资料
     */
    $(function(){
    	/*初始化投保按钮*/
        var checkedList = $(".weui_switch");
        for(var i=0;i<checkedList.length;i++){
            var item = checkedList.eq(i);
            if(item.attr("checked")==true||item[0].checked){
                item.next().css({"top": "5px","left": "20px","color":"#fff"});
                item.next().text("是");
                	$(".beneficiary").css("display","block");
				loanFlag=1;
				transferFlag=1
                
            }else{
                item.next().css({"top": "5px","left": "45px","color":"#666"});
                item.next().text("否");
				$(".beneficiary").css("display","none");
				loanFlag=0;
				transferFlag=0;
            }
        }
    	
    	
    	if(${address!=null&&address.is_def==1}){
    		$(".newAddr").hide();
            $("#man").attr("disabled",true);
            $("#addr").attr("disabled",true);
    		 addrFlag=0;
    	}
    	
    	/*地址选择*/
			$(".addrList").on("click",function(){
				var item = $(this);
				var userName = item.find(".userName").text();
				var addr = item.find(".addr").text();
				$("#man").val(userName);
				$("#addr").val(addr);
				$("._cellTable").hide();
				$(".newAddr").show();
//				$(".moren").hide();
				$("#man").attr("disabled",true);
			  	$("#addr").attr("disabled",true);
			  	 addrFlag=0;
			})
			$(".otherAddr").on("click",function(){
				$("._cellTable").show();
			})
			$(".cancel").on("click",function(){
				$("._cellTable").hide();
			})
			/*新增地址*/
			$(".newbtn").on("click",function(){
				$(".newAddr").show();
//				$(".moren").hide();
                $("#man").val("");
                $("#addr").val("");
				$("#man").attr("placeholder","请填写收货人姓名")
				$("#addr").attr("placeholder","请填写详细地址");
				$("#man").attr("disabled",false);
			  	$("#addr").attr("disabled",false);
			  	 addrFlag=1;
				$("._cellTable").hide();
			})
    	
    	
    	/*解决软键盘出现按钮定位问题*/
			 $("#man").attr("disabled",true);
        $("#addr").attr("disabled",true);
			$('._focus').bind('focus',function(){  
				$(".weui_tab").removeClass("_move")
	        }).bind('blur',function(){  
	        	$(".weui_tab").addClass("_move")
	        });
    	/*查询折扣*/
			$(".search").on("click",function(){
					var privilegeNum = $("#privilegeNum").val();//优惠码
                $.ajax({
                    url : "${path}/order/checkRateNoMsg",
                    type : "post",
                    dataType : "json",
                    data : {code:privilegeNum,eid:'${ent.id}'},
                    success : function (data) {
                        if(data.code == "success"){
                            /*查询成功*/
                            Global.tool.alert("提示","优惠码有效，实际抵扣价格以订单价格为准!");
                            closeDailog();
                        }else{
                            /*查询失败*/
                            Global.tool.alert("提示","优惠码无效/有误，请确认后再次输入！");
                            closeDailog();
                        }
                    },
                    error:function () {
                        Global.tool.alert("服务器错误");
                        closeDailog();
                    }
                });
					
				})
    	
    	
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
                workCar = e.message;
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
                workCarf = e.message;
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
                idCar = e.message;
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
                idCarf = e.message;
            },
            send: function (e, data) {
            },
            fail: function (e, data) {
            }
        });
        /*获取验证码*/
        $(".get").on("click",function(){
            var phoneNum = $("#phoneNum").val();
            var timer =null;
            var item = $(this);
            if(Global.tool.checkedPhone(phoneNum)){
                var i=20;
                $(".btn_cover").css("display","block");
                item.text(""+i+"s");
                timer=setInterval(function(){

                    i--;
                    item.text(""+i+"s");
                    if(i==0){
                        clearInterval(timer);
                        item.text("获取验证码");
                        $(".btn_cover").css("display","none");
                        i=20;
                    }
                },1000);
                /*todo数据请求*/
                $.ajax({
                    url: '${path}/user/ent/sendVerify',
                    data: {mobile:phoneNum},
                    type: 'post',
                    dataType:'json',
                    success: function (data) {
                        if (data.code === "success")
                            Global.tool.toast("验证码发送成功");
                        else {
                            Global.tool.toast("验证码发送失败");
                            clearInterval(timer);
                            i=20;
                            item.text("获取验证码");
                            $(".btn_cover").css("display","none");
                        }
                    },
                    error: function () {
                        Global.tool.toast("服务器错误");
                        clearInterval(timer);
                        i=20;
                        item.text("获取验证码");
                        $(".btn_cover").css("display","none");
                    }
                })
            }
        })

        /*去支付*/
        $("#pay").on("click",function(){
            var phoneNum = $("#phoneNum").val();//电话号码
            var checkedNum = $("#checkedNum").val();//验证码
            var man = $("#man").val();//联系人
            var addr = $("#addr").val();//详细地址
            var mobilereg = /^1\d{10}$/;
            if(${status==1}){
                if(idCar==null){
                    Global.tool.toast("请上传证件照");
                    return false;
                }
                if(workCar==null){
                    Global.tool.toast("请上传证件照");
                    return false;
                }
                if(workCarf==null){
                	 Global.tool.toast("请上传证件照");
					return false;
                }
                if(idCarf==null){
                	 Global.tool.toast("请上传证件照");
					return false;
                }
            }
            if(phoneNum==""){
                Global.tool.toast("请输入电话号码");
            }else if(!mobilereg.test(phoneNum)){
                Global.tool.toast("输入电话号码有误");
            }
            else if(checkedNum==''){
                Global.tool.toast("请输入验证码");
            }else if(man==''){
                Global.tool.toast("请填写收货人姓名");
            }else if(addr == ''){
                Global.tool.toast("请填写详细地址");
            }else{
            		$("#pay").attr("disabled",true);
				var beneficiary = $("#beneficiary").val();
                /*todo 数据提交*/
                $.ajax({
                    url: '${path}/order/applyTo',
                    data: {verifyCode:checkedNum},
                    type: 'post',
                    success: function (data) {
                        if (data.code === "success"){
                            var form = $("<form action='${path}/order/createOrderNoMsg' method='post'>");
                            form.append("<input type='hidden' name='phone' value='"+phoneNum+"'>");
                            form.append("<input type='hidden' name='address' value='"+addr+"'>");
                            form.append("<input type='hidden' name='username' value='"+man+"'>");
                            form.append("<input type='hidden' name='code' value='"+checkedNum+"'>");
                            form.append("<input type='hidden' name='flag' value='"+addrFlag+"'>");
                            form.append("<input type='hidden' name='loanFlag' value='"+loanFlag+"'>");
                            form.append("<input type='hidden' name='beneficiary' value='"+beneficiary+"'>");
                            if(idCar!=null){
                                form.append("<input type='hidden' name='idCar' value='"+idCar+"'>");
                            }
                            if(workCar!=null){
                                form.append("<input type='hidden' name='workCar' value='"+workCar+"'>");
                            }
                            if(workCarf!=null){
                                form.append("<input type='hidden' name='workCarf' value='"+workCarf+"'>");
                            }
                            if(idCarf!=null){
                                form.append("<input type='hidden' name='idCarf' value='"+idCarf+"'>");
                            }
                            form.submit();
                            <%--window.location.href="${path}/order/createOrderNoMsg?phone="+phoneNum+"&address="+addr+"&username="+man+"&code="+checkedNum+"&idCar="+idCar+"&workCar="+workCar--%>
                        }
                        else {
                            Global.tool.toast(data.message);
                            $("#pay").attr("disabled",false);
                        }
                    },
                    error: function () {
                    		$("#pay").attr("disabled",false);
                        Global.tool.toast("服务器错误")
                    }
                })

            }
        })

    })

</script>
</body>
</html>
