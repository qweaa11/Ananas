<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<%
	String ctxPath = request.getContextPath();
%>



<style>

	.border { border: solid 1px red; }

</style>



<script>
	var resultHTML = "";

	$(document).ready(function(){
		
		
		// field select 이후에 세부 필드 나타내주는 AJAX 만들기
		$("#field").change(function(){
			var fieldCode = $("#field").val();
			$("#fieldDisplay").empty();
			console.log(fieldCode);
			resultHTML = "";
			showFieldDetail(fieldCode);
			
		});	// $("#field").change(function(){});	
	
		// 출판사 조회 버튼을 누룰때 새창으로 출판사 조회하기
		$("#Submit").click(function(){
			
			var signup = document.signup;
			signup.action = "<%= ctxPath%>/bookRegisterEnd.ana";
			signup.method="POST";
			signup.submit();
			
		});
		
		// 출판사 등록 버튼을 누룰때 
		$("#searchPublisher").click(function(){
			
			var url="findPublisher.ana";
			window.open(url, "publisher", "left=500px, top=100px, width=1100px, height=600px");
			
		});
		
		
	});  // end of $(document).ready(function(){});-------------------------------------------------------------------

	function showFieldDetail(fieldCode)
	{
		var form_data = {"fieldCode":fieldCode}
		
		$.ajax({
			url:"<%=request.getContextPath()%>/showFieldDetail.ana",
			data:form_data,
			type:"GET",
			dataType:"JSON",
			success:function(json){
				resultHTML = "<select id='field_d' name='field_d' class='custom-select' style='width: 200px;'>"+
							 "<option selected> 세부 주제 </option>";
				
				console.log("AJAX 진입");
				
				$.each(json, function(entryIndex, entry){
					
					resultHTML += "<option value=\""+entry.FCODE+"\">"+entry.FNAME+"</option>";
									
				}); // end of each()---------------------
				 
				
				
				$("#fieldDisplay").append(resultHTML);
			},
			error: function(request, status, error){
			//	alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error );
			}// end of error---------------------------------------------------------
				
			
			
			
			
		});
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
</script>



<div class="container border" style="">
	<div class="row border">
    	<div class="col-md-8">
    	      
	        <h1 class="entry-title"><span>자료 등록</span> <img src="<%= ctxPath%>/resources/img/BWFile.jpg">  <small> 자료관리 > 자료등록</small> </h1>
	        <hr>
	        
	    <!-- 도서 등록시 필요한 도서 등록 폼 추가 -->    
        <form class="form-horizontal" name="signup" id="signup" enctype="multipart/form-data" >        
	        <div class="form-group">
	          <label class="control-label col-sm-3">도서명 <span class="text-danger">*</span></label>
	          <div class="col-md-8 col-sm-9">
	          	<div class="input-group">
		              <span class="input-group-addon"><i class=""></i></span>
		              <input type="text" class="form-control" name="title" id="title" placeholder="도서명을 적어주세요" value="">
		        </div>
	            <small> 원서의 경우 영어로 적어주세요.</small> 
	          </div>
	        </div>
        
        	<!-- 도서 등록시 도서 작가 추가 -->
			<div class="form-group">
				<label class="control-label col-sm-3">저자명 <span class="text-danger">*</span></label>
				<div class="col-md-8 col-sm-9">
					<div class="input-group">
						<span class="input-group-addon"><i class=""></i></span>
						<input type="text" class="form-control" name="author" id="author" placeholder="공동저자의 경우 모두 적어주세요..." value="">
					</div>   
					<small> 작가가 2명 이상인 경우 콤마(,)으로 구분해주세요 </small>
				</div>
			</div>
		
			<!-- 도서 등록시 도서 출판사  추가 -->
	        <div class="form-group">
	        	<label class="control-label col-sm-3">출판사 <span class="text-danger">*</span></label>
	          	<div class="col-md-8 col-sm-9">
	            	<span class=""><i class=""></i></span>
	              	<input type="text" class="publisher"  id="publisher" placeholder="조회버튼을 클릭하세요" value="" style="width: 300px;" readonly>
	            	<input type="hidden" class="addr"  id="addr" value="" style="width: 300px;">
	            	<input type="hidden" class="tel"  id="tel" value="" style="width: 300px;">
	            	<input type="hidden" class="pubCode_fk"  id="reg_num" value="" style="width: 300px;">
	            	<!-- 출판사 등록을 위한 정보들을 담아오는 히든 타입 인풋 -->
	            <button type="button" id="searchPublisher" name="searchPublisher">조회</button> 
	          	</div>
	        </div>
	        
	        <!-- 도서 등록시 ISBN 추가 -->
	        <div class="form-group">
	          	<label class="control-label col-sm-3">ISBN <span class="text-danger">*</span></label>
	          	<div class="col-md-8 col-sm-9">
	            	<div class="input-group">
			        	<span class="input-group-addon"><i class=""></i></span>
			            <input type="text" class="form-control" name="ISBN " id="ISBN " placeholder="발급받은 ISBN을 적어주세요" value="">
	            	</div>  
	          	</div>
	        </div>
        
        	<!-- 도서 등록시 도서 언어 추가 -->
	        <div class="form-group">
	        	<label class="control-label col-sm-3">  언어  <span class="text-danger">*</span></label>
					<div class="col-md-8 col-sm-9">
					    <select id="language" name="language" class="custom-select" style="width: 200px;">
						    <option selected>언어</option>
						    <option value="KR">한국어</option>
						    <option value="EN">영어</option>
						    <option value="JP">일본어</option>
						    <option value="CH">중국어</option>
						    <option value="FR">프랑스어</option>
						    
						</select>
					</div>
	        </div>
	        
	        
	        <!-- 도서 등록시 도서 국가분류 추가 -->
	        <div class="form-group">
	          	<label class="control-label col-sm-3">국가분류 <span class="text-danger">*</span></label>
	          
	          	<div class="col-md-8 col-sm-9">
		            <label> <input name="nation" type="radio" value="Korea" checked> 국내 </label>
		            <label> <input name="nation" type="radio" value="abroad" > 해외 </label>
	          	</div>
	        </div>
	        
	        <!-- 도서 등록시 도서 종류 추가 -->
	        <div class="form-group">
	        	<label class="control-label col-sm-3">  분야  <span class="text-danger">*</span></label>
					<div class="col-md-8 col-sm-9">
					    <select id="category" name="category" class="custom-select" style="width: 200px;">
						    <option selected>종류</option>
						    <option value="E01">수필</option>
						    <option value="E02">에세이</option>
						    <option value="P01">시</option>
						    <option value="D01">사전</option>
						    <option value="F01">동화</option>
						    <option value="F02">소설</option>
						    <option value="M01">잡지</option>
						    <option value="C01">만화</option>
						    <option value="S01">참고서</option>
						</select>
					</div>
	        </div>
        
        	<!-- 도서 등록시 도서 주제 추가 -->
	        <div class="form-group">
	        	<label class="control-label col-sm-3">  주제   <span class="text-danger">*</span></label>
	          	<div class="col-md-8 col-sm-9">
	            	<select id="field" name="field" class="custom-select" style="width: 200px;">
						<option selected>주제</option>
					    <option value="000">총류</option>
					    <option value="100">철학</option>
					    <option value="200">종교</option>
					    <option value="300">사회과학</option>
					    <option value="400">자연과학</option>
					    <option value="500">기술과학</option>
					    <option value="600">예술</option>
					    <option value="700">언어</option>
					    <option value="800">문학</option>
					    <option value="900">역사</option>
					</select>
					
	          	</div>
	          	
					<div class="col-md-8 col-sm-9" id="fieldDisplay">
					
		            	
		            	
						</select>
					
	          		</div>
					
			
	        </div>
        
        	<!-- 도서 등록시 도서 장르 추가 -->
	        <div class="form-group">
	        	<label class="control-label col-sm-3"> 장르  <span class="text-danger">*</span></label>
	          	<div class="col-md-8 col-sm-9">
	              	<select id="genre" name="genre" class="custom-select" style="width: 200px;">
					    <option selected>장르</option>
					    <option value="UN">미분류</option>
					    <option value="RM">로맨스</option>
					    <option value="TH">스릴러</option>
					    <option value="SC">공포</option>
					    <option value="DE">추리</option>
					    <option value="FN">판타지</option>
					    <option value="SF">공상과학</option>
					    <option value="DR">드라마</option>
					    <option value="CM">코미디</option>
					    <option value="MA">무협</option>
					    <option value="AC">액션</option>
					    
					</select>
	          	</div>
	        </div>
        
        	<!-- 도서 등록시 추천 연령대 추가 -->
	        <div class="form-group">
	        	<label class="control-label col-sm-3">연령대 <span class="text-danger">*</span></label>
	          	<div class="col-md-8 col-sm-9">
	              	<select id="category" name="category" class="custom-select" style="width: 200px;">
					    <option selected>연령대</option>
					    <option value="1">전체</option>
					    <option value="2">아동</option>
					    <option value="3">청소년</option>
					    <option value="4">성인</option>
					</select>
	          	</div>
	        </div>
        
        	<!-- 도서 등록시 도서가격 추가 -->
	        <div class="form-group">
	        	<label class="control-label col-sm-3">가격 <span class="text-danger">*</span></label>
	          	<div class="col-md-8 col-sm-9">
	            	<div class="input-group">
			          	<span class="input-group-addon"><i class=""></i></span>
			          	<input type="text" class="form-control" name="price" id="price" placeholder="도서 가격(원)" value="">
	            	</div>  
	          	</div>
	        </div>
        
        	<!-- 도서 등록시 도서 무게 추가 -->
	        <div class="form-group">
	        	<label class="control-label col-sm-3">무게 <span class="text-danger">*</span></label>
          		<div class="col-md-8 col-sm-9">
		            <div class="input-group">
		              <span class="input-group-addon"><i class=""></i></span>
		              <input type="text" class="form-control" name="weight" id="weight" placeholder="도서무게(g)" value="">
		            </div>  
	          	</div>
	        </div>
        
        	<!-- 도서 등록시 도서 페이지수 추가 -->
	        <div class="form-group">
	        	<label class="control-label col-sm-3">쪽수 <span class="text-danger">*</span></label>
	          	<div class="col-md-8 col-sm-9">
		            <div class="input-group">
			        	<span class="input-group-addon"><i class=""></i></span>
			            <input type="text" class="form-control" name="totalpage" id="totalpage" placeholder="도서총페이지수(쪽)" value="">
		            </div>  
	          	</div>
	        </div>
          	
          	<!-- 도서 등록시 도서 발행일자 추가 -->
	        <div class="form-group">
	        	<label class="control-label col-sm-3">발행일자 <span class="text-danger">*</span></label>
	          	<div class="col-md-8 col-sm-9">
            		<div class="input-group">
	              		<span class="input-group-addon"><i class=""></i></span>
	             		<input type="text" class="form-control" name="pDate" id="pDate" placeholder="YYYY/MM/DD" value="">
	            	</div>  
	          	</div>
	        </div>
        	
        	<!-- 도서 등록시 도서 소개 추가 -->
	        <div class="form-group">
	          	<label class="control-label col-sm-3">도서 소개 <span class="text-danger">*</span></label>
	          	<div class="col-md-8 col-sm-9">
	            	<div class="input-group">
	              		<span class="input-group-addon"><i class=""></i></span>
	              		<input type="text" class="form-control" name="intro" id="intro" placeholder="도서소개" value="" style="height: 200px;">
	            	</div>  
	          	</div>
	        </div>
        
      		<!-- 도서 등록시 도서관명 추가 -->
	       	<div class="form-group">
	       		<label class="control-label col-sm-3">도서관명 <span class="text-danger">*</span></label>
	          	<div class="col-md-8 col-sm-9">
	              	<select class="custom-select" name="libCode" id="libCode" style="width: 200px;">
					    <option selected="">도서관명</option>
					    <option value="1">서울 도서관</option>
					    <option value="2">김포 도서관</option>
					    <option value="3">광주 도서관</option>
					    <option value="4">부산 도서관</option>
					</select>
	          	</div>
	        </div>
        	
        	<!-- 도서 등록시 이미지 파일 추가 -->
			<div class="form-group">
				<label class="control-label col-sm-3">도서 이미지 <span class="text-danger">*</span> <br> </label>
				<div class="col-md-5 col-sm-8">
					<input type="file" name="image" id="image" class="upload" aria-describedby="file_upload">
				</div>
			</div>
			
        	</form>
        	
        	
        	<div class="form-group">
	          	<div class="col-xs-offset-3 col-md-8 col-sm-9"><span class="text-muted"><span class="label label-danger">Note:</span><span class=""> 모든 항목이 채워져야 등록이 가능합니다.</span> </div>
	        </div>
        
        	<div class="form-group">
	          	<div class="col-xs-offset-3 col-xs-10">
	            	<button type="button" id="Submit" class="btn btn-primary">등록</button>  
	          	</div>
	        </div>
         
      	
   	 	</div>
	</div>
	
</div>