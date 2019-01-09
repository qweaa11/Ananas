<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<style type="text/css">
	.detail table, th, td {border: 1px solid lightgrey;}
	.detail th {background-color: #0099ff}
	
	.btn3d {
    position:relative;
    top: -6px;
    border:0;
     transition: all 40ms linear;
     margin-top:10px;
     margin-bottom:10px;
     margin-left:2px;
     margin-right:2px;
	}
	.btn3d:active:focus,
	.btn3d:focus:hover,
	.btn3d:focus {
	    -moz-outline-style:none;
	         outline:medium none;
	}
	.btn3d:active, .btn3d.active {
	    top:2px;
	}
	.btn3d.btn-white {
	    color: #666666;
	    box-shadow:0 0 0 1px #ebebeb inset, 0 0 0 2px rgba(255,255,255,0.10) inset, 0 8px 0 0 #f5f5f5, 0 8px 8px 1px rgba(0,0,0,.2);
	    background-color:#fff;
	}
	.btn3d.btn-white:active, .btn3d.btn-white.active {
	    color: #666666;
	    box-shadow:0 0 0 1px #ebebeb inset, 0 0 0 1px rgba(255,255,255,0.15) inset, 0 1px 3px 1px rgba(0,0,0,.1);
	    background-color:#fff;
	}
	.btn3d.btn-danger {
	    box-shadow:0 0 0 1px #b93802 inset, 0 0 0 2px rgba(255,255,255,0.15) inset, 0 8px 0 0 #AA0000, 0 8px 8px 1px rgba(0,0,0,0.5);
	    background-color:#D73814;
	}
	.btn3d.btn-danger:active, .btn3d.btn-danger.active {
	    box-shadow:0 0 0 1px #b93802 inset, 0 0 0 1px rgba(255,255,255,0.15) inset, 0 1px 3px 1px rgba(0,0,0,0.3);
	    background-color: #D73814;
	}
	
</style>

<div class="container">
	<h1>회원 기본정보</h1>
	<table class="table detail">
	    <tbody>
	        <tr>
	          <th>회원번호</th>
	            <td>12345</td>
	          <th>회원명</th>
	          	<td>박민규</td>
	        </tr>
	        <tr>
	          <th>ID</th>
	            <td>pmk7257</td>
	          <th>E-mail</th>
	          	<td>pmk7257@naver.com</td>
	        </tr>
	        <tr>
	          <th>주민번호</th>
	            <td>910704-1xxxxxx</td>
	          <th>나이</th>
	            <td>18살(전체,아동,청소년,성인)</td>
	        </tr>
	      	<tr>
	          <th>연락처</th>
	          	<td>010-3432-2323</td>
	          <th>주소</th>
	            <td>서울시 광진구 중곡동 30-14 1층</td>
	        </tr>
	        <tr>
	          <th>성별</th>
	          	<td>남자</td>	          
	          <th>회원상태</th>
	            <td>휴면 or 탈퇴</td>
	        </tr>
	        <tr>
	          <th>가입일자</th>
	          	<td>2018-01-01</td>
	          <th>로그인 기록</th>
	          	<td>마지막 로그인(2018-10-10 23:00:00) 로그아웃(2018-10-10 23:10:50)</td>	          
	        </tr>
	    </tbody>
	</table>
</div>

<div class="container">	        
	<button type="button" class="btn3d btn btn-white btn-lg"><span class="glyphicon glyphicon-tag"></span> 휴면(ON)</button>
	<button type="button" class="btn3d btn btn-white btn-lg"><span class="glyphicon glyphicon-tag"></span> 휴면(OFF)</button>        
	<button type="button" class="btn btn-danger btn-lg btn3d"><span class="glyphicon glyphicon-remove"></span> 탈퇴</button>       	
</div>

<br/>
<br/>
<br/>
<div class="container">
	<h1>회원 기본상태</h1>
	<table class="table detail">
	    <tbody>
	        <tr>
	          <th>회원번호</th>
	            <td>12345</td>
	          <th>회원명</th>
	          	<td>박민규</td>
	        </tr>
	        <tr>
	          <th>ID</th>
	            <td>pmk7257</td>
	          <th>E-mail</th>
	          	<td>pmk7257@naver.com</td>
	        </tr>
	        <tr>
	          <th>주민번호</th>
	            <td>910704-1xxxxxx</td>
	          <th>나이</th>
	            <td>18살(전체,아동,청소년,성인)</td>
	        </tr>
	      	<tr>
	          <th>연락처</th>
	          	<td>010-3432-2323</td>
	          <th>주소</th>
	            <td>서울시 광진구 중곡동 30-14 1층</td>
	        </tr>
	        <tr>
	          <th>성별</th>
	          	<td>남자</td>	          
	          <th>회원상태</th>
	            <td>휴면 or 탈퇴</td>
	        </tr>
	        <tr>
	          <th>가입일자</th>
	          	<td>2018-01-01</td>
	          <th>로그인 기록</th>
	          	<td>마지막 로그인(2018-10-10 23:00:00) 로그아웃(2018-10-10 23:10:50)</td>	          
	        </tr>
	    </tbody>
	</table>
</div>

