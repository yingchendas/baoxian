<%--
  Created by IntelliJ IDEA.
  User: Mr.wanG
  Date: 2016/8/23
  Time: 15:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/common/tagLib.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>地址管理</title>
    <style type="text/css">
        body{
				background: #f8f8f8;
			}
			.addr_info{
				width: 97%;
				margin: 0 .5%;
				padding: .2rem 0;
				margin-top: 10px;
			}
			.addr_tittle ,.addr_info p{
				padding:.2rem .5rem;
			}
			.active{
				border: 2px solid #04BE02;
			}
			.addr_info_body{
				width: 100%;
			}
			.editClass{
				width: 90% !important;margin-left: -125px;
			}
			.edit_box{
				width: 100px;
				/*display: none;*/
				right: -20px;
				top: 40px;
			}
			.editBtn .delBtn{
				font-size: 6rem;
			}
			.btn{
				margin-top: 20px;
			}
			.btn a{
				border-radius: 10px;
				margin-left: 10%;
			}
			.icon-gou1{
				display: none;
			}
    </style>
</head>
<body id="bodybox">
    <div class="bd container">
        <c:if test="${!empty addressList}">
            <c:forEach items="${addressList}" var="addr" varStatus="vs">
            <div class="addr_info bg_f clearfix pr">
                <div class="fl addr_info_body" style="width: 63%;">
                    <div class="addr_tittle clearfix">
                        <h5 class="name fl f16 c_666">${addr.username}
                        <c:if test="${addr.is_def == 1}">
                            <span class="addr_status c_c22 f12">(默认地址)</span>
                        </c:if>
                        </h5>
                        
                    </div>
                    <p class="c_999 f15">
                        ${addr.address}
                    </p>
                </div>
                <div class="edit_box fr tc"style="width: 30%;margin-right: 2%;">
                    <span class="editBtn iconfont icon-bianji c_04b f2m" addrId="${addr.id}"></span>
                    <span class="delBtn iconfont icon-shanchu c_ff7 f2m"  addrId="${addr.id}"></span>
                </div>
                <span class="iconfont icon-gou1 c_04b f2m pa" style="bottom: -10px;right: 0;"></span>
            </div>
            </c:forEach>
        </c:if>
    </div>
    <div style="margin-top: 20px;">
			<a href="javascript:void(0)" id="addBtn" class="weui_btn  weui_btn_primary" style="width: 95%;padding: .2rem 0;">添加地址</a>
		</div>

    <script type="text/javascript">
        $(function () {
            /*默认事件*/
//          $(".icon-gou1").eq(0).hide();

            /*选中事件*/
//          	$(".addr_info").tap(function(){
//                  var item = $(this);
//                  item.addClass("active");
//                  item.find(".iconfont").show();
//                  item.siblings().removeClass("active");
//                  item.siblings().find(".iconfont").hide();
//          	});
            //编辑按钮事件
//          $("#edit").tap(function(){
//              var item = $(this);
//              if(item.text()=="编辑"){
//                  $(".addr_info_body").addClass("editClass");
//                  $(".edit_box").show();
//                  item.text("完成");
//              }else{
//                  $(".addr_info_body").removeClass("editClass");
//                  $(".edit_box").hide();
//                  item.text("编辑");
//              }
//
//          });


            /*确认编辑*/
            $(".editBtn").tap(function(){
                window.location.href="${path}/user/address/toEdit?id="+$(this).attr("addrId");
            });

            /*删除地址*/
            $(".delBtn").tap(function(){
            	Global.tool.dialog("温馨提示","您是否需要删除该地址？");
            	/*取消*/
            	$("._cancel").tap(function(){
            		setTimeout(function(){
            			 $(".weui_dialog_confirm").remove();
            		},300)
            	})
                var _this = $(this);
                $("._sure").tap(function(){
                	//todo 删除数据库数据
	                $.ajax({
	                    url:"${path}/user/address/delete",
	                    type:"post",
	                    dataType:"json",
	                    data:{id:_this.attr("addrId")},
	                    success:function (o) {
	                        if(o.code=="success"){
	                            _this.parent().parent().remove();
															 $(".weui_dialog_confirm").remove();
															 Global.tool.toast("删除成功！");
//	                            if($(".addr_info").length==1){
//	                                $(".addr_info").addClass("active");
//	                                $(".addr_info").find(".iconfont").show();
//	                            }
	                        }else{
	                            Global.tool.toast(o.message);
	                        }
	                    }
	                });
                })
                
            });
        });
        $("#addBtn").tap(function () {
            window.location = "${path}/user/address/toCreate";
        });
    </script>
</body>
</html>
