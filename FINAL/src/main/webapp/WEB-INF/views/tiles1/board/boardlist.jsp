<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<style type="text/css">
	table, th, td {border: solid gray 1px;}
	#table {border-collapse: collapse; width: 750px;} 
	
	.subjectstyle {font-weight: bold;
    	           color: navy;
    	           cursor: pointer; }
	
	
	#table {border-collapse: collapse; width: 920px;}
	#table th, #table td {padding: 5px;}
	#table th {background-color: #DDDDDD;}
	
	a{text-decoration: none;} 
	
	    
</style>

 
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/javascript">

	$(document).ready(function(){

		
	});// end of $(document).ready()----------------------
	
	
	
		
</script>

<div style="padding-left: 10%; border: solid 0px red;">
	<h1 style="margin-bottom: 30px;">글목록</h1>
	
	<table id="table">
		<tr>
			<th style="width: 70px;  text-align: center;" >글번호</th>
			<th style="width: 360px; text-align: center;" >제목</th>
			<th style="width: 70px;  text-align: center;" >성명</th>
			<th style="width: 180px; text-align: center;" >날짜</th>
			<th style="width: 70px;  text-align: center;" >조회수</th>
			
			<!-- ==== #145. 파일과 크기를 보여주도록 수정 ==== -->
			<th style="width: 70px;  text-align: center;" >파일</th>
			<th style="width: 100px;  text-align: center;" >크기(bytes)</th>
			
		</tr>	
	</table>
</div>
