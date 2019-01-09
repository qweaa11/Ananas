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
		      
	<div class="container-fluid" style="margin-top:50px; margin-left:120px;"> 
	<div class="row">

					

					<div id="mycontent" class="col-lg-9"
						style="margin-top: 60px;">
						<tiles:insertAttribute name="content" />
					</div>
					<div id="mysideinfo" class="col-lg-offset-1 col-lg-2">
						<tiles:insertAttribute name="sideinfo" />
					</div>
					

				</div>
			</div>
		
		<br style="clear: both;" />
	</div>	
		<div id="myfooter">
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
</body>
</html>