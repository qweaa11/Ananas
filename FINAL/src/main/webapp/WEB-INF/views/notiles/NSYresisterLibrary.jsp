<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String ctxPath = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>==== 도서관 등록 페이지 ====</title>
	<!-- DAUM 주소 API  -->
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<!-- DAUM MAP API -->
	<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=89cb38301850de4bd9d2de6028e68d65&libraries=services"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<script type="text/javascript">
	
	$(document).ready(function(){
		
		// ==== 11자리 핸드폰 번호 정규표현식 처리하기(정규표현식 변경필요) ====	
		$(".fail").hide();
		$(".unfail").hide();
		
		$("#tel").blur(function(){
			var tel = $(this).val();
			var regExp_TEL = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
			var bool = regExp_TEL.test(tel);
			
			if(!bool){
				$(".fail").show();
				$("#tel").val("");
			}
			else{
				$(".fail").hide();
				$(".unfail").show();
			}
		});// end of ("#tel").blur(function()
		
		/* // 파일 확장자 정규표현식 체크
		$(".upload").check(function(){
			var imgFile = $(this).val();
			var regExp_imgFile = "^([\\S]+(\\.(?i)(jpg|png|gif|bmp))$)";
			var bool regExp_imgFile.test(imgFile);
			
			if(!bool){
				alter("jpg, png, gif, bmp형식의 파일만 사용 가능 합니다.");
				$(".upload").val("");
			}
			
		});	 */ 
		
				
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
	 	// ==== DAUM MAP API======================================================
		
	 	// ==== 주소 및 지도표시 기능 ====		
		$("#goPost").click(function(){
			
			new daum.Postcode({
		        oncomplete: function(data) {
		            
		            // 주소 정보를 해당 필드에 넣는다.
		            $("#post").val(data.postcode1+"-"+data.postcode2);
					$("#addr").val(data.address);
					$("#addrDetail").focus();
					
		            // 주소로 상세 정보를 검색
		            geocoder.addressSearch(data.address, function(results, status) {
		                // 정상적으로 검색이 완료됐으면
		                if (status === daum.maps.services.Status.OK) {
		                	//첫번째 결과의 값을 활용
		                    var result = results[0]; 
		                    // 해당 주소에 대한 좌표를 받아서
		                    var coords = new daum.maps.LatLng(result.y, result.x);
		                    // 지도를 보여준다.
		                    console.log("위치값 :"+result.y+","+result.x);
		                    console.log("위치값 :"+coords);
		                    $("#location").val(coords);
		                    $("#locationy").val(result.y);
		                    $("#locationx").val(result.x);
		                    
		                    mapContainer.style.display = "block";
		                    
		                    map.relayout();
		                    // 지도 중심을 변경한다.
		                    
		                    map.setCenter(coords);
		                    // 마커를 결과값으로 받은 위치로 옮긴다.
		                    marker.setPosition(coords);
		                } // if
		                
		            }); // end of geocoder.addressSearch
		            
		        } // end of oncomplete: function(data)
			
		    }).open(); // end of new daum.Postcode
		
		});// end of $("#goPost").click(function()
				
	});// end of ready
	
	// ==== 도서관 등록하기 기능 ====
	function goResister(){
		
		// ==== 입력란에 공백이 있으면 등록 불가 ====
		var name = $("#name").val();
		var tel = $("#tel").val();
		var post = $("#post").val();
		var addr = $("#addr").val();
		
		if(name == "" || tel == "" || post == "" || addr == ""  ){
			alert("입력란의 공백이 없이 입력해주세요.")
		}
		else{
			var frm = document.libFrm;
			frm.action = "ResisterLibraryEnd.ana";
			frm.method = "POST";
			frm.submit();
		}//end of if else
		
	}// end of goResister()
	
	</script>	
</head>

<style type="text/css">
	.input-group {margin-bottom:10px;
				height:35px;}
	
	.form-control {height:36px;}
</style>

<body>
<div class="container">
	<h3>도서관 등록 페이지</h3>
	
	<form name="libFrm" enctype="multipart/form-data">
		<!-- ==== 도서관명 ==== -->
		<div class="input-group">
			<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
			<input id="email" type="text" class="form-control" name="name" placeholder="도서관 이름" style="width:300px;">
		</div>

		<!-- ==== 도서관 연락처 ==== -->
		<div class="input-group" style="height:35px;">
			<span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
			<input id="tel" type="text" class="form-control" name="tel" placeholder="연락처 10~11자리 숫자로만 입력('-'제외)" style="width:300px;">
		</div>
		<span class="fail" style="font-size:10pt; color:red; margin-bottom:50px;">형식에 맞지 않은 번호입니다.</span>
		<span class="unfail" style="font-size:10pt; color:blue; margin-bottom:50px;">사용가능한 번호입니다.</span>
		<br>
		<!-- ==== 도서관 우편번호 주소 & 지도 표시 ==== -->
		<div class="input-group" style="height:35px;" > 
			<span class="input-group-addon">우편번호</span> 
			<input id="post" type="text" class="form-control" name="post" placeholder="우편번호" style="width:100px; height:36px;">
			&nbsp;&nbsp;<button id="goPost" type="button" style="height:36px;" >우편번호 검색</button>
		</div>
		
		<div class="input-group">
			<span class="input-group-addon">주소</span>
			<input id="addr" type="text" class="form-control" name="addr" placeholder="주소 입력" style="width:525px; height:36px;">
		</div>
		
		<div class="input-group">
			<span class="input-group-addon">상세주소</span>
			<input id="addrDetail" type="text" class="form-control" name="addrDetail" placeholder="상세주소 입력" style="width:500px; height:36px;">
		</div>
		<!-- DAUM 지도  -->
		<div id="map" style="width:600px;height:300px;margin-top:10px;display:none"></div>
		<input type="hidden" id="location" name="location" value=""/>
		<input type="hidden" id="locationy" name="locationy" value=""/>
		<input type="hidden" id="locationx" name="locationx" value=""/>
		<br>
		
		<!-- ==== 도서관 이미지 첨부하기 ==== -->
		<div class="input-group">
			<span class="input-group-addon">이미지추가</span>
			<input type="file" name="imgFile" id="imgFile" class="form-control upload" placeholder="" aria-describedby="file_upload" style="width:485px; height:36px;">
		</div>
		
		<!-- ==== 도서관 등록하기 ==== -->
		<button type="button" style="margin-top:10px; height:36px; width:100px;" onClick="goResister();">등록하기</button>
		
	</form>
	<br>
</div>

</body>
</html>