<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
	#searchSelect {
		padding: .2em .4em;
		font-size:13pt;
	    border-radius: 3px;
	}
	
	#search {
		padding: .2em .4em;
		font-size: 13pt;
		background-color: #0d55a2;
		color: #fff;
		border-radius: 3px;
		text-decoration: none;
		border: none;
	}
</style>

<div class="container">
	<div class="row">

		<div class="container border" style="height: 50%; width: 80%; align-content: center;">
			<select id="searchSelect">
				<option value="name">이름</option>
				<option value="bookid">아이디</option>
			</select>
			<input type="text" />
			<button type="button" id="search">검색</button>
			<table class="table table-striped">
				<thead>
					<tr>
						<th style="text-align: center;">번호(RNO)</th>
						<th style="text-align: center;">이름</th>
						<th style="text-align: center;">아이디</th>
						<th style="text-align: center;">구분(연령대)</th>
						<th style="text-align: center;">이메일</th>
						<th style="text-align: center;">연락처</th>
						<th style="text-align: center;">회원상태</th>
						<th style="text-align: center;">대여일자</th>
						<th style="text-align: center;">반납일자</th>
					</tr>
				</thead>
				<tbody align="center">
					<tr>
						<td>1</td>
						<td>김국하</td>
						<td>kimkh</td>
						<td>성인</td>
						<td>kimkh@naver.com</td>       
						<td>01012345678</td>
						<td>일반</td>
						<td>2018-12-30</td>
						<td>2018-01-20</td>
					</tr>
					
					<tr>
						<td>2</td>
						<td>김기복</td>
						<td>kimkb</td>
						<td>성인</td>
						<td>cancho?@gmail.com</td>       
						<td>01012345678</td>
						<td>일반</td>
						<td>2018-12-30</td>
						<td>2018-01-20</td>
					</tr>
		
					<tr>
						<td>3</td>
						<td>정구현</td>
						<td>jeonggh</td>
						<td>일반</td>
						<td>nine9ash@gmail.com</td>       
						<td>01012345678</td>
						<td>예약상태</td>
						<td>2018-12-30</td>
						<td>2018-01-20</td>
					</tr>
					
					<tr>
						<td>4</td>
						<td>유민후</td>
						<td>ryumh</td>
						<td>성인</td>
						<td>ryumh@naver.com</td>       
						<td>01012345678</td>
						<td>일반</td>
						<td>2017-12-30</td>
						<td>?!?!?!?!!</td>
					</tr>
					
					<tr>
						<td>5</td>
						<td>유세원</td>
						<td>yousw</td>
						<td>성인</td>
						<td>yousw@naver.com</td>       
						<td>01012345678</td>
						<td>휴면</td>
						<td>2018-12-30</td>
						<td>2018-01-13</td>
					</tr>
					
					<tr>
						<td>6</td>
						<td>노승윤</td>
						<td>nohsy</td>
						<td>성인</td>
						<td>nohsy@naver.com</td>       
						<td>01012345678</td>
						<td>이용정지(7일)</td>
						<td>2018-12-30</td>
						<td>2018-01-13</td>
					</tr>
					
					<tr>
						<td>7</td>
						<td>양정구</td>
						<td>yangjg</td>
						<td>성인</td>
						<td>yangjg@naver.com</td>       
						<td>01012345678</td>
						<td>휴면</td>
						<td>2018-12-30</td>
						<td>2018-01-13</td>
					</tr>
					
					<tr>
						<td>8</td>
						<td>백승범</td>
						<td>becksb</td>
						<td>성인</td>
						<td>becksb@naver.com</td>       
						<td>01012345678</td>
						<td>이용정지(20일)</td>
						<td>2018-12-30</td>
						<td>?@!#?#!$?!$</td>
					</tr>
					
					<tr>
						<td>9</td>
						<td>박민규</td>
						<td>parkmg</td>
						<td>성인</td>
						<td>parkmg@naver.com</td>       
						<td>01012345678</td>
						<td>탈퇴</td>
						<td>2018-12-30</td>
						<td>2018-01-13</td>
					</tr>
					
					<tr>
						<td>10</td>
						<td>장동수</td>
						<td>jangds</td>
						<td>성인</td>
						<td>jangds@naver.com</td>       
						<td>01012345678</td>
						<td>휴면</td>
						<td>2018-12-30</td>
						<td>2018-01-20</td>
					</tr>
					
					<tr>
						<td>1</td>
						<td>김국하</td>
						<td>kimkh</td>
						<td>성인</td>
						<td>kimkh@naver.com</td>       
						<td>01012345678</td>
						<td>대여중(연장)</td>
						<td>2018-12-30</td>
						<td>2018-01-20</td>
					</tr>
					
					<tr>
						<td>2</td>
						<td>김기복</td>
						<td>kimkb</td>
						<td>성인</td>
						<td>cancho?@gmail.com</td>       
						<td>01012345678</td>
						<td>대여중</td>
						<td>2018-12-30</td>
						<td>2018-01-20</td>
					</tr>
					
					<tr>
						<td>3</td>
						<td>정구현</td>
						<td>jeonggh</td>
						<td>성인</td>
						<td>nine9ash@naver.com</td>       
						<td>01012345678</td>
						<td>예약상태</td>
						<td>2018-12-30</td>
						<td>2018-01-20</td>
					</tr>
					
					<tr>
						<td>4</td>
						<td>유민후</td>
						<td>ryumh</td>
						<td>성인</td>
						<td>ryumh@naver.com</td>       
						<td>01012345678</td>
						<td>대여중(연체)</td>
						<td>2017-12-30</td>
						<td>?!?!?!?!!</td>
					</tr>
					
					<tr>
						<td>5</td>
						<td>유세원</td>
						<td>yousw</td>
						<td>성인</td>
						<td>yousw@naver.com</td>       
						<td>01012345678</td>
						<td>대여중</td>
						<td>2018-12-30</td>
						<td>2018-01-13</td>
					</tr>
					
					<tr>
						<td>6</td>
						<td>노승윤</td>
						<td>nohsy</td>
						<td>성인</td>
						<td>nohsy@naver.com</td>       
						<td>01012345678</td>
						<td>반납완료</td>
						<td>2018-12-30</td>
						<td>2018-01-13</td>
					</tr>
					
					<tr>
						<td>7</td>
						<td>양정구</td>
						<td>yangjg</td>
						<td>성인</td>
						<td>yangjg@naver.com</td>       
						<td>01012345678</td>
						<td>대여중(연체)</td>
						<td>2018-12-30</td>
						<td>2018-01-13</td>
					</tr>
					
					<tr>
						<td>8</td>
						<td>백승범</td>
						<td>becksb</td>
						<td>성인</td>
						<td>becksb@naver.com</td>       
						<td>01012345678</td>
						<td>분실신고</td>
						<td>2018-12-30</td>
						<td>?@!#?#!$?!$</td>
					</tr>
					
					<tr>
						<td>9</td>
						<td>박민규</td>
						<td>parkmg</td>
						<td>성인</td>
						<td>parkmg@naver.com</td>       
						<td>01012345678</td>
						<td>대여중(연체)</td>
						<td>2018-12-30</td>
						<td>2018-01-13</td>
					</tr>
					
					<tr>
						<td>10</td>
						<td>장동수</td>
						<td>jangds</td>
						<td>성인</td>
						<td>jangds@naver.com</td>       
						<td>01012345678</td>
						<td>대여중(연장)</td>
						<td>2018-12-30</td>
						<td>2018-01-20</td>
					</tr>
		
				</tbody>
			</table>
			
		</div>
	
	</div>

</div>