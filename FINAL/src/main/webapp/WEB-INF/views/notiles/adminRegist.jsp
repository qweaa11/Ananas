<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/javascript">

	$(document).ready(function(){
		
		$("#error_passwd").hide();
		$(".error").hide();
		$("#name").focus();
		
		$("#error_id").empty();
	    $("#good_id").empty();
	      
        $("#idcheck").click(function(){
    	  
    	  if($("#libid").val().trim() == "") {
    		  alert("ID를 입력하세요!!");
    		  return;
    	  }
    	  
    	  var form_data = {userid:$("#libid").val()};
			$.ajax({
				url:"<%=request.getContextPath() %>/idDuplicateCheck.ana",
				type:"GET",
				data:form_data,
			    dataType:"JSON",
			    success:function(json){
			    	if(json.n == 0) {
			    		$("#error_id").empty();
			    		$("#good_id").empty().html("ID로 사용가능");
			    	}
			    	else if(json.n == 1) {
			    		$("#good_id").empty();
			    		$("#error_id").empty().html("이미사용중");
			    	}
			    },
			    error: function(request, status, error){
					alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
				}
			});
    	  
        });// end of  $("#idcheck").click()------------------
		
		$("#pwd").blur(function(){
	         var passwd= $(this).val();
	         
	         //-- 숫자/문자/특수문자/ 포함 형태의 8~15자리 이내의 암호 정규식 2
	         var regExp_PW = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9]).*$/g;
	         // 또는      
	         // var regExp_PW = new RegExp(/^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9]).*$/g);
	         
	         var bool = regExp_PW.test(passwd);
	         
	         if(!bool) $("#error_passwd").show();
	         else $("#error_passwd").hide();
	      });// end of $("#pwd").blur(function())-----------------------------------------------------
	      
	      $("#pwdcheck").blur(function(){
	          var passwd = $("#pwd").val();
	          var passwdCheck = $(this).val();
	          
	          if(passwd != passwdCheck) $(this).parent().parent().find(".error").show();
	          else $(this).parent().parent().find(".error").hide();
	       });// end of $("#pwdcheck").blur(function())------------------------------------------------
		
	});// end of $(document).ready(function())--------------------

</script>


<!------ Include the above in your HEAD tag ---------->



<div class="container">
	<div class="row">
		<div class="col-md-8"> 
<h1 class="entry-title"><span>관리자 등록</span> </h1>
<hr>
<form class="form-horizontal" method="post" name="adimFrm">                

<!-- 아이디 입력 -->
<div class="form-group">
	<label class="control-label col-sm-3">아이디 <span class="text-danger">*</span></label>
		<div class="col-md-8 col-sm-9">
			<div class="input-group">
				<span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
					<input style="width: 260px" type="text" class="form-control" name="libid" id="libid" placeholder="아이디를 입력해주세요" value="" required>
			</div>
			<a id="idcheck" style="cursor: pointer;"><img src="resources/img/idcheck.gif"></a>
			<span id="error_id" style="color: red; font-weight: bold;"></span>
		    <span id="good_id" style="color: blue; font-weight: bold;"></span>
		    <div class="error" style="color: red;">아이디는 필수입력 사항입니다.</div>
		</div>
</div>

<!-- 비밀번호 입력 -->
<div class="form-group">
	<label class="control-label col-sm-3">비밀번호 <span class="text-danger">*</span></label>
		<div class="col-md-5 col-sm-8">
			<div class="input-group">
				<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
					<input style="width: 260px" type="password" class="form-control" name="pwd" id="pwd" placeholder="비밀번호 (5-15 글자)" value="">
			</div>
			<span id="error_passwd" style="color: red">영문자,숫자,특수기호가 혼합된 8~15 글자로만 입력가능합니다.</span>   
		</div>
</div>

<!-- 비밀번호 재입력 -->
<div class="form-group">
	<label class="control-label col-sm-3">비밀번호 재확인 <span class="text-danger">*</span></label>
		<div class="col-md-5 col-sm-8">
			<div class="input-group">
				<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
					<input style="width: 260px" type="password" class="form-control" name="pwdcheck" id="pwdcheck" placeholder="비밀번호 재확인" value="">
			</div>
			<span class="error" style="color: red">암호가 일치하지 않습니다.</span>  
		</div>
</div>

<!-- 이름 입력 -->
<div class="form-group">
	<label class="control-label col-sm-3">이름 <span class="text-danger">*</span></label>
		<div class="col-md-8 col-sm-9">
			<input style="width: 299px" type="text" class="form-control" name="name" id="name" placeholder="이름을 입력해주세요" value="">
		</div>
</div>

<!-- 도서관 번호 입력 -->
<div class="form-group">
	<label class="control-label col-sm-3">도서관 번호 <span class="text-danger">*</span></label>
		<div class="col-md-8 col-sm-9">
			<select class="form-control"  name="libcode" style="width: 130px" >
				<c:forEach items="libcode">
					<option value="">도서관 번호</option>
					<option value="1">도서관 번호</option>
				</c:forEach>
			</select>
		</div>
</div>

<!-- 휴대전화 입력 -->
<div class="form-group">
	<label class="control-label col-sm-3">휴대전화 <span class="text-danger">*</span></label>
		<div class="col-md-5 col-sm-8">
			<div class="input-group">
				<span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
					<input style="width: 260px" type="text" class="form-control" name="contactnum" id="contactnum" placeholder="휴대전화 번호를 입력해주세요" value="">
			</div>
		</div>
</div>

<!-- 관리자 등급 입력 -->
<div class="form-group">
	<label class="control-label col-sm-3">관리자 등급<span class="text-danger">*</span></label>
		<div style="margin-left: 0%" class="col-xs-8">
			<div class="form-group" style="margin-left: 0%">
				<select class="form-control"  name="grade" style="width: 78px" >
					<option value="">등급</option>
					<option value="1">사서</option>
					<option value="2">도서관장</option>
				</select>
			</div>
		</div>
</div>

<!-- 등록하기 버튼 -->
<div class="form-group">
	<div class="col-xs-offset-3 col-xs-10">
		<input name="Submit" type="submit" value="등록하기" class="btn btn-primary">
	</div>
</div>
</form>
		</div>
	</div>
</div>