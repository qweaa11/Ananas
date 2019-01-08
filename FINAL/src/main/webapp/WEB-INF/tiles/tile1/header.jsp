<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="icon" href="resources/img/favicon.png" type="image/png">
	<title>SteakShop Restaurant</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="resources/css/bootstrap.css">
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
</head>

<body>

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
							<li class="nav-item"><a class="nav-link" href="#">회원 목록</a></li>
							<li class="nav-item"><a class="nav-link" href="#">회원 등록</a></li>
						</ul>
					</li>
					<li class="nav-item submenu dropdown">
						<a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" role="button" aria-haspopup="true" 
						 aria-expanded="false"><img src="resources/img/header/nav-icon3.png" alt="">도서관리</a>
						<ul class="dropdown-menu">
							<li class="nav-item"><a class="nav-link" href="#">도서 목록</a></li>
							<li class="nav-item"><a class="nav-link" href="#">도서 등록</a></li>
							<li class="nav-item"><a class="nav-link" href="#">삭제기록</a></li>
						</ul>
					</li>
					<li class="nav-item submenu dropdown">
						<a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" role="button" aria-haspopup="true" 
						 aria-expanded="false"><img src="resources/img/header/nav-icon6.png" alt="">대출/반납/예약</a> 
						<ul class="dropdown-menu">
							<li class="nav-item"><a class="nav-link" href="#">대출</a></li>
							<li class="nav-item"><a class="nav-link" href="#">반납</a></li>
							<li class="nav-item"><a class="nav-link" href="#">예약</a></li>
						</ul>
					</li>
					<li class="nav-item"><a class="nav-link" href="#"><img src="resources/img/header/chart.png" height="20px" alt="">통계</a></li>
					<li class="nav-item submenu dropdown">
						<a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" role="button" aria-haspopup="true" 
						 aria-expanded="false"><img src="resources/img/header/library.png" alt="">도서관관리</a> 
						<ul class="dropdown-menu">
							<li class="nav-item"><a class="nav-link" href="#">도서관 목록</a></li>
							<li class="nav-item"><a class="nav-link" href="#">도서관 등록</a></li>
						</ul>
					</li> 
				</ul>
			</div>
		</div>
	</header>
	<!--================ End Header Menu Area =================-->
