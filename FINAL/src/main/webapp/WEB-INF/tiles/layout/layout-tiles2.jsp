<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<%
	String ctxPath = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 관리 시스템</title>


<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link
	href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css"
	rel="stylesheet">
<link href="resources/css/headerStyles.css" rel="stylesheet">


</head>

<body>
	<div id="mycontainer">

		<div id="myheader">
			<tiles:insertAttribute name="header" />
		</div>

		<div id="mycontent" style="margin-top: 30px;">
			<tiles:insertAttribute name="content" />
		</div>
		<div id="mysideinfo" style="">
			<tiles:insertAttribute name="sideinfo" />
		</div>

		<br style="clear: both;" />
		<div id="myfooter">
			<tiles:insertAttribute name="footer" />
		</div>
	</div>

</body>
</html>