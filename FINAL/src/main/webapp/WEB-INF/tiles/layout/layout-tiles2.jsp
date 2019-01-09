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

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  
</head>

<body>
	<div id="mycontainer">
		<div id="myheader">
			<tiles:insertAttribute name="header"/>
		</div>
		
		<div id="mysideinfo" style="margin-top:170px; margin-left:50px;">         
			<tiles:insertAttribute name="sideinfo" />
		</div>
		<div id="mycontent" class="container"  style="margin-bottom: 100px;">
			<tiles:insertAttribute name="content"/>
		</div>
		
		
		</div>
		<div id="myfooter">
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
</body>
</html>