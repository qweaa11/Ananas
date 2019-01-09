<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String CtxPath = request.getContextPath(); %>



<script type="text/javascript">
	
	$(document).ready(function(){
			
		$("#btnFind").click(function(){
			var frm = document.pwdFindFrm;
			frm.action = "<%= CtxPath%>/pwdFind.do";
			frm.method = "POST";
			frm.submit();
		});
		
		var method = "${method}";
		var userid = "${userid}";
		var email = "${email}";
		var n = "${n}";
		
		if(method=="POST" && userid != "" && email != "") {
			$("#userid").val(userid);
			$("#email").val(email);
		}
		
		if(method=="POST" && n==1) {
			$("#div_btnFind").hide();
		}
		else if(method=="POST" && (n == -1 || n == 0)) {
			$("#div_btnFind").show();
		}		

		$("#btnConfirmCode").click(function(){
			
			var frm = document.verifyCertificationFrm;
			frm.userid.value = $("#userid").val();
			frm.userCertificationCode.value = $("#input_confirmCode").val();
			frm.action = "<%= CtxPath%>/verifyCertification.do";
			frm.method = "POST";
			frm.submit();
		});
		
	});
</script>





<aside id="colorlib-hero" class="breadcrumbs">
   <div class="flexslider">
      <ul class="slides">
         <li style="background-image: url(<%=CtxPath %>/store/images/pwdfindMain1.jpg);">
           <!--  <div class="overlay"></div> -->
            <div class="container-fluid">
               <div class="row">
                  <div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
                     <div class="slider-text-inner text-center">
                        <h1>Find Password</h1>
                        <h2 class="bread"><span><a href="<%= CtxPath %>/index.do">Home</a></span> <span><a href="<%= CtxPath %>/join.do">Login</a></span></h2>
                     </div>
                  </div>
               </div>
            </div>
         </li>
        </ul> 
     </div>
</aside>
      
<div class="container">      
   <div class="col-md-12">
   	<div>
	    <form name="pwdFindFrm" method="post" class="colorlib-form">    
	       <div class="form-group" style="margin-top: 3%;">
	         <div class="col-md-4" style="margin-top: 3%;"></div> <%-- 이부분은 칸 조정할려고 넣어놨어요ㅠㅠ --%>
	       	 <div class="col-md-1" style="margin-top: 3%;">
	             <label for="userid">아이디</label>
	          </div>
	          <div class="col-md-3">
	             <input type="text" id="userid" name="userid" class="form-control" placeholder="ID">
	          </div>
	       </div>
	       <div class="form-group" style="margin-bottom: 3%;">
		       <div class="col-md-4" style="margin-top: 3%;"></div> <%-- 이부분은 칸 조정할려고 넣어놨어요ㅠㅠ --%>
		       <div class="col-md-1" style="margin-top: 3%;">
		           <label for="email">이메일</label>
		       </div>
		       <div class="col-md-3">
		           <input type="text" id="email" name="email" class="form-control" placeholder="abc@gmail.com">
		       </div>
	       </div>
		 <div id="div_findResult" align="center">
	   	   <c:if test="${n == 1}">
	   	      <div id="pwdConfirmCodeDiv">
	   	      	  인증코드가 ${email}로 발송되었습니다.<br/>
	   	      	  인증코드를 입력해주세요<br/>
	   	      	 <input type="text" name="input_confirmCode" id="input_confirmCode" required />
	   	      	 <br/><br/>
	   	      	 <button type="button" class="btn btn-info" id="btnConfirmCode">인증하기</button>    
	   	      </div>
	   	   </c:if>
	   	   
	   	   <c:if test="${n == 0}">
	   	   	  <span style="color: red;">사용자 정보가 없습니다.</span>
	   	   </c:if>
	   	   
	   	   <c:if test="${n == -1}">
	   	   	  <span style="color: red;">${sendFailmsg}</span>
	   	   </c:if>
	   	   
	   </div>
	       <div class="row" style="margin-bottom: 2%">
	          <div id="div_btnFind" name="div_btnFind" class="col-md-12" style="margin-top: 1%; margin-left: 43%;" >
	          	<button type="button" id="btnFind" name="btnFind" class="btn"><span style="font-size: 9pt;">비밀번호 찾기</span></button>
	          </div>
	       </div>
	       
	       
	    </form>
     </div>
   </div>
</div>
<form name="verifyCertificationFrm">
	<input type="hidden" name="userid" />
	<input type="hidden" name="userCertificationCode" />
</form>    
<div class="gototop js-top">
   <a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
</div>

