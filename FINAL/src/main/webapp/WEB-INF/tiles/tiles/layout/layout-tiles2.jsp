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

<<<<<<< HEAD
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
<link href="resources/css/headerStyles.css" rel="stylesheet">  
  
=======
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  
  <!-- Required meta tags -->
	
	<link rel="icon" href="resources/img/favicon.png" type="image/png">
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="resources/css/bootstrap.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="resources/vendors/linericon/style.css">
	<link rel="stylesheet" href="resources/css/font-awesome.min.css">
	<link rel="stylesheet" href="resources/css/magnific-popup.css">
	<link rel="stylesheet" href="resources/vendors/owl-carousel/owl.carousel.min.css">
	<link rel="stylesheet" href="resources/vendors/lightbox/simpleLightbox.css">
	<link rel="stylesheet" href="resources/vendors/nice-select/css/nice-select.css">
	<link rel="stylesheet" href="resources/vendors/jquery-ui/jquery-ui.css">
	<link rel="stylesheet" href="resources/vendors/animate-css/animate.css">
	<!-- main css -->
	<link rel="stylesheet" href="resources/css/style.css">
  <script type="text/javascript" src="<%=request.getContextPath() %>/resources/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>
>>>>>>> branch 'master' of https://github.com/qweaa11/Ananas.git
  
</head>

<body>
	<div id="mycontainer">
	
		<div id="myheader">
			<tiles:insertAttribute name="header"/>
		</div>
		      
	<div class="container-fluid" style="margin-top:50px; margin-left:120px;"> 
		<div class="row">
				<div id="mycontent" class="col-lg-9"
						style="margin-top: 60px; border: 1px solid gray;">
						<tiles:insertAttribute name="content" />
					</div>
					<div id="mysideinfo" class=" col-lg-offset-9 col-lg-2">
						<tiles:insertAttribute name="sideinfo" />
					</div>
					

				</div>
			</div>
		
<<<<<<< HEAD
		
		<div id="mysideinfo" class="col-lg-2 sideinfo" style="padding-left: 50px;">         
			<tiles:insertAttribute name="sideinfo" />
		</div>
		
		<div id="mycontent" class="col-lg-10" style="margin-top: 30px; float: left;">
			<tiles:insertAttribute name="content"/>
		</div>
=======
>>>>>>> branch 'master' of https://github.com/qweaa11/Ananas.git
		<br style="clear: both;" />
	</div>	
		<div id="myfooter">
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
	
</body>
</html>