<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String ctxPath = request.getContextPath();
%>

<style>

	.border { border: solid 1px red; }

</style>

<script>

	$(document).ready(function(){
		
		
		
		
	});  // end of $(document).ready(function(){});-------------------------------------------------------------------

</script>



<div class="container" style="height: 50%;">

	<form name="regiFrm" enctype="multipart/form-data">
		<div class="border">
			<h2> <a style="color: red; font-weight: bold;; font-family: serif; ">자료등록</a> &nbsp;&nbsp;&nbsp;	<img src="<%= ctxPath%>/resources/img/BWFile.jpg"> <a style="color: black;; font-style: normal; font-family: serif; font-size: small;">자료관리>자료등록</a> </h2>
		</div>
		<div style="border: solid 1px black; background-color: #f9ecf2; margin: 2px; padding: 5px;">
			<input type="radio" value="단행본"/>단행본&nbsp;&nbsp;
			<input type="radio" value="단행본"/>연간물&nbsp;&nbsp;
			<input type="radio" value="단행본"/>비도서&nbsp;&nbsp;
		</div>
		<div class="border">
			<h2><img src="<%= ctxPath%>/resources/img/BWFile.jpg"> <a style="color: black;; font-style: normal; font-family: serif; font-size: small;">서지정보</a> </h2>
		</div>
		<div style="border: solid 1px black; background-color: #f9ecf2; margin: 2px; padding: 1px;">
			*** 입력항목이 2개 이상인 경우에는 세미콜론(;)으로 구분하세요.
		</div>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	</form>




</div>