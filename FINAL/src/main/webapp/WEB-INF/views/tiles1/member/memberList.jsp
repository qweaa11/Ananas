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
		searchKeep();
		
		// 한 행을 클릭할 경우 체크박스 선택, 해제
		$(".td").click(function() {
			var flag = $(this).parent().find(".check").is(":checked");
			$(this).parent().find(".check").prop("checked",!flag);
		});// end of tr click

		// 체크박스를
		$("")
	});
	
	function search() {
		var searchFrm = document.searchFrm;
		searchFrm.method = "GET";
		searchFrm.action = "memberList.ana";
		searchFrm.submit();
	}// end of search
	
	function searchKeep() {
		if(${searchWord != null && searchWord!= "" && searchWord != "null"}) {
			$("#colname").val("${colname}");
			$("#searchWord").val("${searchWord}");
		}// end of if
	}// end of searchKeep
	
	function allCheckFalse() {
		var flag = $("input:checkbox[name=idx]").prop("checked",false);
	}// end of allCheck
	
	function accountUnclock() {// 계정 활성화 함수(휴면해제)
		alert("선택하신 회원들을 모두 활성화시키겠습니까?");
		
		var flag = $("input:checkbox[name=idx]").prop("checked", true);
		if(flag) {
			var frm = document.searchFrm;
		}
	}// end of accountUnlock
	
	function accountRemove() {// 계정 탈퇴처리
		
	}// end of accountRemove
	
	function accountRevoke() {
		
	}// end of accountRevoke
</script>

<div class="container">
	<div class="row">

		<div class="container border" style="height: 50%; width: 100%; align-content: center;">
			<form name="searchFrm">
				<div>
					<select id="colname" name="colname" style="height: 25px;" >
						<option value="name">이름</option>
						<option value="memberid">아이디</option>
					</select>
					<input type="text" id="searchWord" name="searchWord" />
					<button type="button" class="btn btn-info" onclick="search();">검색</button>
				</div>

				<div style="float: left;">
					<button type="button" id="lock"class="btn btn-dark" onclick="allCheckFalse();"><i class="glyphicon glyphicon-remove"></i></button>
				</div>
				<div style="float: right;">
					<button type="button" class="btn btn-success" onclick="unlock();">휴면해제<i class="glyphicon glyphicon-ok"></i></button>
					<button type="button" class="btn btn-warning" onclick="revoke();">이용정지<i class="glyphicon glyphicon-remove"></i></button>
					<button type="button" class="btn btn-danger" onclick="remove();">탈퇴처리<i class="glyphicon glyphicon-remove"></i></button>
				</div>
			</form>
			<table id="table-member" class="table table-striped table-hover">
				<thead>
					<tr>
						<th style="text-align: center;">선택</th>
						<th style="text-align: center;">번호(RNO)</th>
						<th style="text-align: center;">이름</th>
						<th style="text-align: center;">아이디</th>
						<th style="text-align: center;">구분(연령대)</th>
						<th style="text-align: center;">성별</th>
						<th style="text-align: center;">이메일</th>
						<th style="text-align: center;">연락처</th>
						<th style="text-align: center;">회원상태</th>
						<th style="text-align: center;">가입일자</th>
						<th style="text-align: center;">상세정보</th>
					</tr>
				</thead>
				<tbody align="center">
					<c:if test="${empty memberList}">
					<tr>
						<td colspan="10"><span style="color: #ff4d4d; font-weight: bold;">입력된 내용과 일치하는 회원이 존재하지 않습니다.</span></td>
					</tr>
					</c:if>
					
					<c:if test="${not empty memberList}">
						<c:forEach var="memberVO" items="${memberList}" varStatus="no">
					<tr  style="cursor: pointer;">
						<td><input type="checkbox" id="idx${no.count}" class="check" name="idx"/></td>
						<td class="td">${no.count}</td>
						<td class="td">${memberVO.name}</td>
						<td class="td">${memberVO.memberid}</td>
						<td class="td">${memberVO.ages}</td>
						<td class="td">${memberVO.gender}</td>
						<td class="td">${memberVO.email}</td>
						<td class="td">${memberVO.phone}</td>
						<td class="td">${memberVO.status}</td>
						<td class="td">${memberVO.regDate}</td>
						<td class="detail">
							<input type="text" value="${memberVO.idx}"/>
							<button class="btn btn-dark"><i class="glyphicon glyphicon-user"></i></button>
						</td>
					</tr>
						</c:forEach>
					</c:if>
				</tbody>
			</table>
			
		</div>
	
	</div>

</div>