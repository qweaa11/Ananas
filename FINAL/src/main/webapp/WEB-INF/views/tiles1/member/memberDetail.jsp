<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<style type="text/css">
	table, th, td {border: 1px solid lightgrey;}
	th {background-color: #f2f2f2}
	
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
	.btn3d.btn-primary {
	    box-shadow:0 0 0 1px #417fbd inset, 0 0 0 2px rgba(255,255,255,0.15) inset, 0 8px 0 0 #4D5BBE, 0 8px 8px 1px rgba(0,0,0,0.5);
	    background-color:#4274D7;
	}
	.btn3d.btn-primary:active, .btn3d.btn-primary.active {
	    box-shadow:0 0 0 1px #417fbd inset, 0 0 0 1px rgba(255,255,255,0.15) inset, 0 1px 3px 1px rgba(0,0,0,0.3);
	    background-color:#4274D7;
	}
	.btn3d.btn-success {
	    box-shadow:0 0 0 1px #31c300 inset, 0 0 0 2px rgba(255,255,255,0.15) inset, 0 8px 0 0 #5eb924, 0 8px 8px 1px rgba(0,0,0,0.5);
	    background-color:#78d739;
	}
	.btn3d.btn-success:active, .btn3d.btn-success.active {
	    box-shadow:0 0 0 1px #30cd00 inset, 0 0 0 1px rgba(255,255,255,0.15) inset, 0 1px 3px 1px rgba(0,0,0,0.3);
	    background-color: #78d739;
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


<script type="text/javascript">

</script>


<div class="container">
	<h1>회원 기본정보</h1>
	<table class="table">
	    <tbody>
	        <tr>
	          <th>회원번호</th>
	            <td>${pmgMemberVO.idx }</td>
	          <th>회원명</th>
	          	<td>${pmgMemberVO.name }</td>
	        </tr>
	        <tr>
	          <th>ID</th>
	            <td>${pmgMemberVO.memberid }</td>
	          <th>E-mail</th>
	          	<td>${pmgMemberVO.email }</td>
	        </tr>
	        <tr>
	          <th>생년월일</th>
	            <td>${pmgMemberVO.birth }</td>
	          <th>나이</th>
	            <td>${pmgMemberVO.age }살(전체,아동,청소년,성인)</td>
	        </tr>
	      	<tr>
	          <th>연락처</th>
	          	<td>${pmgMemberVO.phone }</td>
	          <th>주소</th>
	            <td>${pmgMemberVO.address }</td>
	        </tr>
	        <tr>
	          <th>성별</th>
	          	<td>${pmgMemberVO.gender }</td>	          
	          <th>회원상태</th>
	            <td>${pmgMemberVO.status }</td>
	        </tr>
	        <tr>
	          <th>가입일자</th>
	          	<td>${pmgMemberVO.regDate }</td>
	          <th>로그인 기록</th>
	          	<td>마지막 로그인(${pmgMemberVO.lastDate }), 마지막 암호 변경일(${pmgMemberVO.pwDate })</td>	          
	        </tr>
	    </tbody>
	</table>
</div>

<div class="container">	        
	<button type="button" class="btn3d btn btn-white btn-lg"><span class="glyphicon glyphicon-tag"></span> 활동</button>
	<button type="button" class="btn btn-primary btn-lg btn3d"><span class="glyphicon glyphicon-cloud"></span> 휴면해제</button>
	<button type="button" class="btn btn-success btn-lg btn3d"><span class="glyphicon glyphicon-ok"></span> 정지</button>        
	<button type="button" class="btn btn-danger btn-lg btn3d"><span class="glyphicon glyphicon-remove"></span> 탈퇴</button>       	
</div>



<br/>
<br/>
<br/>
<div class="container">
	<h1>도서 대여정보</h1>
	<div class="col-sm-12 pull-center well">
		<form class="form-inline" action="#" method="POST">				
			<select class="form-control">
				<option>도서명</option>
				<option>저자</option>
				<option>출판사</option>
				<option>도서번호</option>
			</select>
	                  
			<div class="input-group custom-search-form">
				<input type="text" class="form-control" placeholder="Search..." />
					<span class="input-group-btn">
						<button class="btn btn-default" type="button">
							<i>search</i>
						</button>
					</span>
			</div>				
		</form>
	</div>
</div>

<div class="container">
  <div class="row">
   <div class="col-md-4">
	<table class="table">
	    <tbody>
	        <tr>
	          <th>총 도서대여</th>
	            <td>10권</td>
	    	</tr>
	    	<tr>        
	          <th>총 도서반납</th>
	          	<td style="color: blue;">8권</td>
	        </tr>
	        <tr> 	
	          <th>총 도서미반납</th>
	          <td style="color: red;">2권</td>
	        </tr>
	        <tr>  	          	
	          <th>총 도서분실</th>
	          	<td>0권</td>
	        </tr>	        	     	        	       
	    </tbody>
	</table>
   </div>
   <div class="col-md-4 col-md-offset-4">
	<table class="table">
	    <tbody>
	        <tr>
	          <th>도서대여</th>
	            <td>2권</td>
	    	</tr>
	    	<tr>        
	          <th>도서연장신청</th>
	          	<td>1권</td>
	        </tr>
	        <tr> 	
	          <th>예약</th>
	          <td>2019-01-14 월요일</td>
	        </tr>
	        <tr>  	          	
	          <th>대여유무</th>
	          	<td style="color: red;">가능 or 불가</td>
	        </tr>	        	     	        	       
	    </tbody>
	</table>
   </div>
  </div>	
</div>

<div class="container">
	<table class="table">
		<thead>	    
		<tr>
			<th>번호</th>
			<th>대여일</th>
			<th>반납일</th>
			<th>반납연장일</th>
			<th>연체일</th>
			<th>도서번호</th>
			<th>도서명</th>
			<th>저자</th>
			<th>출판사</th>
			<th>구분</th>
			<th>상태</th>
			<th>연체료</th>
		</tr>
		</thead>		
		<tbody>
			<tr>
				<td>1</td>
				<td>2018-12-24</td>
				<td>2018-12-31</td>
				<td>0</td>
				<td>0</td>
				<td>12345</td>
				<td>자바의 정석</td>
				<td>박민규</td>
				<td>민후당</td>
				<td>자기개발</td>
				<td>대출</td>
				<td>0원</td>
			</tr>
			<tr>
				<td>2</td>
				<td>2018-12-24</td>
				<td>2018-12-31</td>
				<td>0</td>
				<td>0</td>
				<td>23125</td>
				<td>해리포터와 마법사의 돌</td>
				<td>민후</td>
				<td>서림</td>
				<td>소설</td>
				<td>대출</td>
				<td>0원</td>
			</tr>
			<tr>
				<td>1</td>
				<td>a</td>
				<td>A</td>
				<td>1</td>
				<td>1</td>
				<td>a</td>
				<td>A</td>
				<td>1</td>
				<td>1</td>
				<td>a</td>
				<td>A</td>
				<td>1</td>
			</tr>
		</tbody>
	</table>
</div>

<div class="container" style="text-align: center;">
	<ul class="pagination">
              <li class="disabled"><a href="#">«</a></li>
              <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
              <li><a href="#">2</a></li>
              <li><a href="#">3</a></li>
              <li><a href="#">4</a></li>
              <li><a href="#">5</a></li>
              <li><a href="#">»</a></li>
	</ul>
</div>

<br/>
<br/>








