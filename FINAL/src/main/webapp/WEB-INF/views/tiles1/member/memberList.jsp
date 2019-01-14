<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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

<script type="text/javascript">
	$(document).ready(function() {
		
	});
	
	function findAllMemberByName(name) {
		
	}// end of findAllMemberByName
	
	function findAllMemberById(id) {
		
	}// end of findAllMemberById
</script>

<div class="container">
	<div class="row">

		<div class="container border" style="height: 50%; width: 80%; align-content: center;">
			<form name="searchFrm">
				<select id="searchSelect">
					<option value="name">이름</option>
					<option value="bookid">아이디</option>
				</select>
				<input type="text" />
				<button type="button" id="search" onclick="btnSearch">검색</button>
			</form>
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
					</tr>
				</thead>
				<tbody align="center">
					<c:if test="${empty memberList}">
					<tr>
						<td><span style="color: #ff0000; font-weight: bold;">회원이 존재하지 않습니다.</span></td>
					</tr>
					</c:if>
					
					<c:if test="${not empty memberList}">
						<c:forEach var="memberVO" items="${memberList}" varStatus="status">
					<tr>
						<td>${status.count}</td>
						<td>${memberVO.name}</td>
						<td>${memberVO.memberid}</td>
						<td>${memberVO.ages}</td>
						<td>${memberVO.email}</td>
						<td>${memberVO.phone}</td>
						<td>${memberVO.status}</td>
					</tr>
						</c:forEach>
					</c:if>
				</tbody>
			</table>
			
		</div>
	
	</div>

</div>