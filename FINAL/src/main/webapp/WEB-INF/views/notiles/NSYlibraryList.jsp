<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>==== 도서관 목록 ====</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- DAUM MAP API KeyValue= 89cb38301850de4bd9d2de6028e68d65-->
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=89cb38301850de4bd9d2de6028e68d65&libraries=services"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script type="text/javascript">

	$(document).ready(function(){
		
		goSearch("1");
		
		// ==== 검색 엔터키적용 ====
		$("#searchWord").keydown(function (key) {
            if (key.keyCode == 13) { 
               goSearch("1");
            }
        }); // end of ("#searchWord").keydown
        
		// ==== DAUM MAP API ======================================================
	    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
	    mapOption = {
	        center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
	        level: 5 // 지도의 확대 레벨
	    };
	    //지도를 미리 생성
	    var map = new daum.maps.Map(mapContainer, mapOption);
	    //주소-좌표 변환 객체를 생성
	    var geocoder = new daum.maps.services.Geocoder();
	    //마커를 미리 생성
	    var marker = new daum.maps.Marker({
	        position: new daum.maps.LatLng(37.537187, 127.005476),
	        map: map
	    });
	 	// ==== DAUM MAP API ====================================================== 
        
	}); // end of (documnet).ready
	
	// ==== 도서관전체 목록 및 검색하여 나오는 목록을 보여주는 기능 ====
	function goSearch(currentShowPageNo){
		
		var searchWord = $("#searchWord").val();
		var colname = $("#colname").val();
		
		console.log("colname 값 "+ colname);
		console.log("searchWord 값 "+ searchWord);
		
		var form_data = {searchWord:searchWord, colname:colname, currentShowPageNo:currentShowPageNo, sizePerPage:2};
		var url = "LibraryList.ana";
		
		$.ajax({
			url:"<%=request.getContextPath()%>/getLibraryList.ana",
			type:"GET",
			data:form_data,
			dataType:"JSON",
			success: function(json){
				
				var resultHTML = "";
				
				if(json.length > 0) { 
					
					$.each(json, function(entryIndex, entry){
					console.log("locationyValue:"+entry.locationy);
					console.log("locationyValue:"+entry.locationx);
					resultHTML += 
						"<tr>"
						+"<td>"+entry.idx+"</td>"
						+"<td>"+entry.name+"</td>"
						+"<td>"+entry.addr+"</td>"
						+"<td>"+entry.libcode+"</td>"
						+"<td>"+entry.regDate+"</td>"
						+"<td>"
						+"<button type='button' onClick='getLibraryDetailInfo("+entry.idx+")'>Info.</button>"
						+"</td>"
						+"</tr>";
					});// $.each(data, function(entryIndex, entry) onClick='goLocation("+entry.locationy+","+entry.locationx+")'
							
					$("#result").empty().html(resultHTML);
					console.log("goSearch(currentShowPageNo) :" +currentShowPageNo);
					makeBarPage(currentShowPageNo);
					
				}//if_1 
				else{
					$("#result").empty();
					
				}//if_1_else_1 

			}, // end of success
			error: function(request, status, error){
				alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
			} // error
			
		});// end of ajax
		
	}// end of goSearch
	
	function makeBarPage(currentShowPageNo){
		
		var searchWord = $("#searchWord").val();
		var colname = $("#colname").val();
		
		var form_data = {searchWord:searchWord, colname:colname, currentShowPageNo:currentShowPageNo, sizePerPage:2};
		
		$.ajax({
			url:"<%=request.getContextPath()%>/getMakeBarPage.ana",
			type:"GET",
			data:form_data,
			dataType:"JSON",
			success:function(json){
				
				if(json.totalPage !=0){
					
					var totalPage = json.totalPage;
					console.log("totalPage : "+totalPage);
					
					var pageBarHTML="";
					
					var blockSize = 3;
					
					var loop = 1;
					
					var pageNo = Math.floor((currentShowPageNo - 1)/blockSize) * blockSize + 1;
					console.log("currentShowPageNo1 : "+currentShowPageNo);
					console.log("PageNO1 : "+pageNo);
					//[이전]
					if(pageNo !=1 ){
						console.log("PageNO2 : "+pageNo);
						 pageBarHTML += "<li><a href='javascript:goSearch(\""+(pageNo-1)+"\");'><</a></li>";
							 

					}//if_2
					
					while(!(loop > blockSize || pageNo > totalPage)){
						console.log("PageNO3 : "+pageNo);
						if(pageNo == currentShowPageNo) {
							console.log("PageNO4 : "+pageNo);
				    		 pageBarHTML += "<li><span style='color:red; font-weight:bold; text-decoration:underline;'>"+pageNo+"</span></li>";	
						}
				    	else {
				    	  	
				    		pageBarHTML += "<li><a href='javascript:goSearch(\""+pageNo+"\");'>"+pageNo+"</a></li>";
				    	}//if_else_3

				       	 loop++;
				    	 pageNo++;
					}//while
					//[다음]
				    
					if( !(pageNo > totalPage) ) {
				    	 
						pageBarHTML += "<li><a href='javascript:goSearch(\""+pageNo+"\");'>></a></li>";
					}//if_3
				     
				     $("#pageBar").empty().html(pageBarHTML);
				     
				     pageBarHTML = "";
					
				}//if_1
				else {
					$("#pageBar").empty();
				}//if_1_else_1
				
			},//success
			error: function(request, status, error){
				alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
			} // error
			
			
		});//end of ajax
		
	}// end of function makeBarPage()
	
	// ==== 파업창을 열어 특정도서관의 상세정보를 보여주는 기능 ====
	function getLibraryDetailInfo(idx){
		
		var frm = document.idxFrm;
		var url = "LibraryDetailInfo.ana";
		var option = "width="+700+",height="+600;
		window.open("","도서관상세정보",option);
		
		frm.action = url;
		frm.idx.value =idx;
		frm.target = "도서관상세정보";
		frm.method = "GET";
		frm.submit();
	}// end of getLibraryDetailInfo(idx)
	
</script>

    
<style type="text/css">

	#customers {
		font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
		border-collapse: collapse;
		width: 100%;
	}

	#customers td, #customers th {
		border: 1px solid #ddd;
		padding: 8px;
	}

	#customers tr:nth-child(even){background-color: #f2f2f2;}

	#customers tr:hover {background-color: #ddd;}

	#customers th {
		padding-top: 12px;
		padding-bottom: 12px;
		text-align: center;
		background-color: #8c8c8c;
		color: white;
	}

</style>

</head>

<body>
	<div class="container" style="text-align:center;">
		<h1>도서관 목록</h1>
		<br>
		
		<form name="searchFrm" style="border:solid green 0px; text-align:right;">
			<select name="colname" id="colname" style="height:30px; border:solid red 0px;">
				<option value="addr">주소</option>
				<option value="name">도서관명</option>
			</select>
			<input type="text" name="searchWord" id="searchWord" placeholder="Search.."style="height:30px; border:solid blue 0px;"/>
			<button type="button" onClick="goSearch('1');" style="height:30px">Search</button>
			<!-- 엔터키 리로드 방지용 (같은 form안에 input태그가 2개 이상 있어야 한다)-->
			<input type="text" style="display:none;"/>
		</form>
		<br>		
			
		<table id="customers">
			<thead>
				<tr>
					<th>번호</th>
					<th>도서관명</th>
					<th>도서관 주소</th>
					<th>도서관코드</th>
					<th>등록 날짜</th>
					<th>정보</th>
				</tr>
			</thead>
			<!-- AJAX에서 다음 tbody태그 안에 값을 넣어준다  -->
			<tbody id="result"></tbody>
		</table>
		<br>
			
		<!-- ==== #121. 페이지바 보여주기   -->
		<!-- AJAX에서 다음 ul태그 안에 값을 넣어준다  -->
		<ul class="pagination pagination-lg" id="pageBar" style=""></ul>	
	</div><!-- end of div class="container"  --> 
	
	<!-- 특정도서관 상세정보를 보기위해 값을 form에 저장하여 넘겨준다 -->
	<form name="idxFrm">
		<input type="hidden" id="idx" name="idx" value="">
	</form>

</body>
</html>