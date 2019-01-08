<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



	<!--================ Start Header Menu Area =================-->
	<div class="menu-trigger">
		<span></span>
		<span></span>
		<span></span>
	</div>
	<header class="fixed-menu">
		<span class="menu-close"><i class="fa fa-times"></i></span>
		<div class="menu-header">
			<div class="logo d-flex justify-content-center" style="cursor: pointer;" onclick="javascript:location.href='index.action'">
				<img src="resources/img/liblogo.png" style="width: 80px; height: 123px;" alt="">
			</div>
		</div>
		<div class="nav-wraper">
			<div class="navbar">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link" href="resources/index.html"><img src="resources/img/header/nav-icon1.png" alt="">home</a></li>
					<li class="nav-item submenu dropdown">
						<a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" role="button" aria-haspopup="true" 
						 aria-expanded="false"><img src="resources/img/header/nav-icon2.png" alt="">회원관리</a>
						<ul class="dropdown-menu">
							<li class="nav-item"><a class="nav-link" href="#">회원목록</a></li>
							<li class="nav-item"><a class="nav-link" href="#">회원등록</a></li>
						</ul>
					</li>
					<li class="nav-item submenu dropdown">
						<a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" role="button" aria-haspopup="true" 
						 aria-expanded="false"><img src="resources/img/header/nav-icon2.png" alt="">도서관리</a>
						<ul class="dropdown-menu">
							<li class="nav-item"><a class="nav-link" href="#">도서목록</a></li>
							<li class="nav-item"><a class="nav-link" href="#">도서등록</a></li>
						</ul>
					</li>
					<li class="nav-item"><a class="nav-link" href="resources/menu.html"><img src="resources/img/header/nav-icon3.png" alt="">menu</a></li>
					<li class="nav-item"><a class="nav-link" href="resources/book-table.html"><img src="resources/img/header/nav-icon4.png" alt="">Book
							Table</a></li>
					<li class="nav-item"><a class="nav-link" href="resources/Chefs.html"><img src="resources/img/header/nav-icon5.png" alt="">Chefs</a></li>
					<li class="nav-item submenu dropdown">
						<a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" role="button" aria-haspopup="true"
						 aria-expanded="false"><img src="resources/img/header/nav-icon6.png" alt="">Pages</a>
						<ul class="dropdown-menu">
							<li class="nav-item"><a class="nav-link" href="resources/elements.html">element</a></li>
						</ul>
					</li>
					<li class="nav-item submenu dropdown">
						<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
						 aria-expanded="false"><img src="resources/img/header/nav-icon7.png" alt="">Blog</a>
						<ul class="dropdown-menu">
							<li class="nav-item"><a class="nav-link" href="resources/blog.html">Blog</a></li>
							<li class="nav-item"><a class="nav-link" href="resources/single-blog.html">Blog Details</a></li>
						</ul>
					</li>
					<li class="nav-item"><a class="nav-link" href="resources/contact.html"><img src="resources/img/header/nav-icon8.png" alt="">contact</a></li>
				</ul>
			</div>
		</div>
	</header>
	<!--================ End Header Menu Area =================-->
