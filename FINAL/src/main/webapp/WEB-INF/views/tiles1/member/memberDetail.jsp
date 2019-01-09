<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    
<style type="text/css">
	table, th, td {border: solid gray 1px;}
	#table {border-collapse: collapse; width: 750px;} 
	
	#table {border-collapse: collapse; width: 920px;}
	#table th, #table td {padding: 5px;}
	#table th {background-color: #DDDDDD;}
	  
</style>

<script type="text/javascript">

</script>

<div class="container" style="border: solid 1px red;">
	<h1 style="margin-bottom: 30px;">회원 기본정보</h1>
	
	<table id="table">
		<tr>
			<th>회원번호</th>
			<td><input type="text" value="1234"></td>
			
			<th>가입일자</th>
			<td><input type="text" value="180108"></td>
		</tr>
		
		<tr>	
			<th>회원명</th>
			<td><input type="text" value="김유정"></td>
			
			<th>나이</th>
			<td><input type="text" value="20"></td>
		</tr>
		
		<tr>	
			<th>아이디</th>
			<td><input type="text" value="ky123"></td>
			
			<th>주민번호</th>
			<td><input type="text" value="990205-2033492"></td>
		</tr>
		
		<tr>
			<th>연락처</th>
			<td><input type="text" value="010-1234-5678"></td>
			
			<th>주소</th>
			<td><input type="text" value="서울 특별시 종로구 종로1번길 101-102"></td>
		</tr>
		
		<tr>	
			<th>E-mail</th>
			<td><input type="text" value="ky123@gmail.com"></td>
			
			<th>성별</th>
			<td><input type="text" value="여자"></td>
		</tr>	
			
		<tr>	
			<th>회원등급</th>
			<td><input type="text" value="일반"></td>
			
			<th>로그인 기록</th>
			<td><input type="text" value="마지막 로그인(2018-10-10 23:00:00) 로그아웃(2018-10-10 23:10:50)"></td>
		</tr>
	</table>
	
	<br/>
	<button type="button" onClick="">정보수정</button>
	<button type="button" onClick="">정보수정</button>
</div>

<br/>
<br/>
<div class="container" style="border: solid 1px red;">
	<h1 style="margin-bottom: 30px;">회원 기본상태</h1>

	<table id="table">
		<tr>
			<th>총 대여권수</th>
			<td>100권</td>
			
			<th>총 반납권수</th>
			<td>101권</td>
			
			<th>총 미반납권수</th>
			<td>0권</td>
			
			<th>총 연체일</th>
			<td>100일</td>
		</tr>
		
		<tr>	
			<th>상태</th>
			<td>연체중</td>
			
			<th>현재 대여권수</th>
			<td>4권</td>
			
			<th>총 분실권수</th>
			<td>0권</td>
			
			<th>총 연체료</th>
			<td>10,000원</td>
		</tr>
		
		<tr>	
			<th></th>
			<td></td>
			
			<th></th>
			<td></td>
			
			<th></th>
			<td></td>
			
			<th>연체료 미납액</th>
			<td>3,000원</td>
		</tr>
		
		<tr>	
			<th></th>
			<td></td>
			
			<th></th>
			<td></td>
			
			<th></th>
			<td></td>
			
			<th>연체료 미납액</th>
			<td>3,000원</td>
		</tr>
	</table>
</div>


<br/>
<br/>
<div class="container">
	<h1 style="margin-bottom: 30px;">도서 대여정보</h1>
	
	<div class="col-sm-3">
    	<form action="#" method="get">
        	<div class="input-group">
            
            <input class="form-control" id="system-search" name="q" placeholder="Search for" required>
           	<span class="input-group-btn">
           	<button type="submit" class="btn btn-default" style="margin-bottom: 25%"><i class="glyphicon glyphicon-search"></i></button>            	
           	</span>                     	
            </div>
            <input type="checkbox" /><span>도서명</span>
            <input type="checkbox" /><span>저자</span>
            <input type="checkbox" /><span>출판사</span>
            <input type="checkbox" /><span>도서번호</span>
    	</form>
    </div>

	<div class="row">
		<div class="col-md-12">
    	 <table class="table table-list-search">
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
                     <td>2018-12-27</td>
                     <td>2018-12-29(2일)</td>
                     <td style="color: red;">1일</td>
                     <td>9201</td>
                     <td>자바가 정말 쉬워서 미쳐버리겠네요. 이거 원래 그래요?</td>
                     <td>서영학</td>
                     <td>KH정보교육원</td>
                     <td>자기개발</td>
                     <td>대여</td>
                     <td>500원</td>
                 </tr>
                 
                 <tr>
                     <td>1</td>
                     <td>2018-12-24</td>
                     <td>2018-12-27</td>
                     <td>2018-12-29(2일)</td>
                     <td style="color: red;">1일</td>
                     <td>8074</td>
                     <td>수학의정석</td>
                     <td>서영학</td>
                     <td>KH정보교육원</td>
                     <td>자기개발</td>
                     <td>대여</td>
                     <td>500원</td>
                 </tr>                 
             </tbody>
             
         </table>   
		</div>
	</div>
</div>


<div class="container">페이지바</div>
<br/>

