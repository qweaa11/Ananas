<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"  %>    

<%
	String ctxPath = request.getContextPath();
%> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 관리 시스템</title>

  
  
  
</head>

<body>
	<div id="mycontainer">
		<div id="myheader">
			<tiles:insertAttribute name="header"/>
		</div>
		
		
		<div id="mysideinfo" class="col-lg-2 sideinfo">         
			<tiles:insertAttribute name="sideinfo" />
		</div>
		<div id="mycontent" class="container" style="margin-bottom: 100px;">
		
		<div id="mycontent" class="col-lg-10" style="margin-top: 30px; float: left;">
			<tiles:insertAttribute name="content"/>
		</div>
		<br style="clear: both;" />
		
		<div id="myfooter">
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
</body>
</html>