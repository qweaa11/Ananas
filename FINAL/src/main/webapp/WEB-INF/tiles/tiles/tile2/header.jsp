<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<script>
	$(document).ready(function () {
		$("#menu-toggle").click(function(e) {
		    e.preventDefault();
		    $("#wrapper").toggleClass("toggled");
		});
	})
	
</script>

	<div class="container">
		
		
		<div class="row">
			
			<div class="navbar navbar-inverse navbar-fixed-top" role="navigation" style="margin-bottom: 10px;"> 
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					  </button>
					  <a class="navbar-brand" href="#">ANANAS</a>
				</div>  
				
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">회원관리<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="#">회원목록</a></li>
								<li><a href="#">회원등록</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">도서관리<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="#">도서목록</a></li>
								<li><a href="#">도서등록</a></li>
								<li><a href="#">삭제기록</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">대출/반납/예약<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="#">대출</a></li>
								<li><a href="#">반납</a></li>
								<li><a href="#">예약</a></li>
							</ul>
						</li>
						<li><a href="#">통계</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">도서관 관리<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="#">도서관 목록</a></li>
								<li><a href="#">도서관 등록</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
			
		</div>
		
	</div>
	
	<div class="container" style="margin-top: 50px;">
		<div id="wrapper" style="clear: both;" class="toggled">      
		        
		    
	
	        <!-- Sidebar -->
	        <div id="sidebar-wrapper">
	            <ul class="sidebar-nav" style="margin-left:0;">
	                <li class="sidebar-brand">
	                    
					<a href="#menu-toggle"  id="menu-toggle" style="margin-top:20px;float:right;" > <i class="fa fa-bars " style="font-size:20px !Important;" aria-hidden="true" aria-hidden="true"></i> 
	                   
	                </li>
	                <li>
	                    <a href="#"><i class="fa fa-sort-alpha-asc " aria-hidden="true"> </i> <span style="margin-left:10px;">Section</span>  </a>
	                </li>
	                <li class="dropdown"> 
			          
			          <a href="#" class="dropdown-toggle" data-toggle="dropdown">
			          <i class="fa fa-play-circle-o " aria-hidden="true"> </i>
			           <span style="margin-left: 10px;">Usuarios</span><span class="caret" style="margin-left: 3px;"></span></a>  
			          <ul class="dropdown-menu forAnimate drop" role="menu" style="margin-left:10px;">
			            <li><a href="#">Crear</a></li>
			            <li><a href="#">Modificar</a></li>
			            <li><a href="#">Reportar</a></li>
			            <li><a href="#">Separated link</a></li>
			            <li><a href="#">Informes</a></li>
			          </ul>
			        </li>
	                <li>
	                    <a href="#"> <i class="fa fa-play-circle-o " aria-hidden="true"> </i> <span style="margin-left:10px;"> Section</span> </a>
	                </li>
	                <li>
	                    <a href="#"> <i class="fa fa-puzzle-piece" aria-hidden="true"> </i> <span style="margin-left:10px;"> Section</span> </a>
	                </li>
	                <li>
	                    <a href="#"> <i class="fa fa-font" aria-hidden="true"> </i> <span style="margin-left:10px;"> Section</span> </a>
	                </li>
	                <li>
	                    <a href="#"><i class="fa fa-info-circle " aria-hidden="true"> </i> <span style="margin-left:10px;">Section </span> </a>
	                </li>
	                <li>
	                    <a href="#"> <i class="fa fa-comment-o" aria-hidden="true"> </i> <span style="margin-left:10px;"> Section</span> </a>
	                </li>
	                
	            </ul>
	        </div>
	        
	        <!-- /#sidebar-wrapper -->
	        
			</a>
	   
	   		<!-- /#wrapper --> 
				
		</div>
	</div> 
