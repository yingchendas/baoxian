<%--
  Created by IntelliJ IDEA.
  User: Mr.wanG
  Date: 2016/8/26
  Time: 10:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/common/tagLib.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>我的钱包</title>
    <style type="text/css">
        header{
            background: #fff;

            padding:.5rem 1rem;
        }

        .userName{
            margin-top: 20px;
            margin-left: 5%;
        }
        .commission_own{
            margin-top: 20px;
            padding:.5rem .7rem ;
        }
        .commission_own>div{
            margin-top: 20px;
        }
    </style>
</head>
<body id="bodybox">
<div class="container bd">
    <div class="weui_dialog_confirm" style="display: none;">
        <div class="weui_mask"></div>
        <div class="weui_dialog">
            <div class="weui_dialog_hd"><strong class="weui_dialog_title">分享二维码</strong></div>
            <div class="weui_dialog_bd">确认分享您的专属二维码？</div>
            <div class="weui_dialog_ft">
                <a href="#" class="weui_btn_dialog default cancel">取消</a>
                <a href="#" class="weui_btn_dialog primary sure">确定</a>
            </div>
        </div>
    </div>
    <header >
        <div class="clearfix " style="padding: 0 2rem;">
            <img class="fl" src="${wx.headimgurl}" width="60px" alt="用户头像" />
            <span class="tc fl userName c_666">${user.nickname}</span>
            <img src="${ctxImg}/dengji1.png" alt="" class="fr" width="40px" style="margin-top: 10px;"/>
        </div>
        <p class="c_666 f16 tc" style="margin-top: 10px;">您的钱包余额为:<span class="c_ff6 f18">${comm.commissionBalance}</span> 元</p>
        <p class="tc c_999 f14">已提现 <fmt:formatNumber value="${comm.extract_commText}" pattern="#.##"/> 元</p>
        <p class="tc c_999 f14">已赚取返利 <fmt:formatNumber value="${comm.total_commText}" pattern="#.##"/>元</p>
        <div class="bd spacing">
            <div class="button_sp_area clearfix">
                <a href="${path}/user/commission/dlist" class="weui_btn  weui_btn_primary fl" style="width: 45%;margin-top: 1rem;">查明细</a>
                <a href="${path}/user/commission/withdraw" class="weui_btn weui_btn_primary fr" style="width: 45%;">提现</a>
            </div>
        </div>
    </header>
    <c:if test="${user.is_ent == 0}">
    <!--立即赚佣金-->
    <div class="commission_own bg_f ">
        <p class="c_666">通过您推荐的客户，成功购买保险服务后，您将获得丰厚的平台返利。</p>
        <div class="tc">
            <a href="#" class="weui_btn weui_btn_warn earnBtn" style="width: 55%;background: #FF7F00;">立即分享</a>
        </div>
    </div>
    <!--推荐详情-->
    <div class="commission_own bg_f ">
        <p class="c_666">您目前为<span class="c_c22">1级会员</span> ，您将获得，您所推荐的2级会员/3级会员购买保险服务，所产生的平台返利。(您推荐的用户为2级会员，该2级会员推荐的用户为您的3级会员。)</p>
        <div class="tc">
            <a href="${path}/user/commission/rlist" class="weui_btn weui_btn_primary " style="width: 55%;">查看推荐详情</a>
        </div>
    </div>
    </c:if>
</div>
<script type="text/javascript">
   $(function () {
       $(".earnBtn").tap(function(){

           $(".weui_dialog_confirm").show();

       });
       /*取消*/
       $(".cancel").tap(function(){
           $(".weui_dialog_confirm").hide();
       });
       /*确认*/
       $(".sure").tap(function(){
           //跳转至分享页
           $(".weui_dialog_confirm").hide();
           window.location.href = "${path}/user/commission/qr";
       })
   })
</script>
</body>
</html>
