<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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

	$(document).ready(function(){
		
		// 출판사 조회 버튼을 누룰때 새창으로 출판사 조회하기
		$("#searchPublisher").click(function(){
			
			var url="findPublisher.ana";
			window.open(url, "publisher", "left=500px, top=100px, width=1100px, height=600px");
			
		});
		
		
	});  // end of $(document).ready(function(){});-------------------------------------------------------------------

</script>



<div class="container border" style="height: 50%; width: 80%; align-content: center;">

</div>
<div class="container border" style="">
	<div class="row border">
    <div class="col-md-8">
      <section>      
        <h1 class="entry-title"><span>자료 등록</span> <img src="<%= ctxPath%>/resources/img/BWFile.jpg">  <small> 자료관리 > 자료등록</small> </h1>
        <hr>
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
        <div class="form-group">
          <label class="control-label col-sm-3">출판사 <span class="text-danger">*</span></label>
          <div class="col-md-8 col-sm-9">
            <div class="input-group">
              <span class="input-group-addon"><i class=""></i></span>
              <input type="text" class="form-control"  id="publisher" placeholder="API에 올라가있는 출판사만 조회됩니다." value="">
            </div>  
            <button type="button" id="searchPublisher" name="publisher">조회</button> 
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">ISBN <span class="text-danger">*</span></label>
          <div class="col-md-8 col-sm-9">
            <div class="input-group">
              <span class="input-group-addon"><i class=""></i></span>
              <input type="text" class="form-control" name="ISBN " id="ISBN " placeholder="발급받은 ISBN을 적어주세요" value="">
            </div>  
          </div>
        </div>
        
        
        <div class="form-group">
          <label class="control-label col-sm-3">언어 <span class="text-danger">*</span></label>
          <div class="col-md-8 col-sm-9">
            <div class="input-group">
              <span class="input-group-addon"><i class=""></i></span>
              <input type="text" class="form-control" name="language" id="language" placeholder="출판된 언어를 알려주세요" value="">
            </div>  
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">국가분류 <span class="text-danger">*</span></label>
          
          <div class="col-md-8 col-sm-9">
            <label>
            <input name="nation" type="radio" value="Korea" checked>
            	국내 </label>
               
            <label>
            <input name="nation" type="radio" value="abroad" >
            	해외 </label>
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">  종류  <span class="text-danger">*</span></label>
          <div class="col-md-8 col-sm-9">
              	<select class="custom-select" style="max-width: 120px;">
				    <option selected="">종류</option>
				    <option value="1">미분류</option>
				    <option value="2">잡지,만화</option>
				    <option value="3">여행,취미,건강</option>
				    <option value="4">예술</option>
				    <option value="5">외국서적</option>
				    <option value="6">외국어</option>
				    <option value="7">유아,아동</option>
				    <option value="8">중,고 학습</option>
				    <option value="9">경제,경영,자기계발</option>
				    <option value="10">정치,사회,수험서</option>
				    <option value="11">과학,기술,공학</option>
				    <option value="12">컴퓨터,멀티미디어,책공방</option>
				    <option value="13">소설,시,에세이</option>
				    <option value="14">인문,역사,문화</option>
				    <option value="15">종교</option>
				</select>
          </div>
        </div>
        
        <div class="form-group">
          <label class="control-label col-sm-3">  주제   <span class="text-danger">*</span></label>
          <div class="col-md-8 col-sm-9">
              	<select class="custom-select" style="max-width: 120px;">
				    <option selected="">주제</option>
				    <option value="1">미분류</option>
				    <option value="2">총류</option>
				    <option value="3">철학</option>
				    <option value="4">종교</option>
				    <option value="5">자연</option>
				    <option value="6">사회과학</option>
				    <option value="7">자연과학</option>
				    <option value="8">기술과학</option>
				    <option value="9">예술</option>
				    <option value="10">언어</option>
				    <option value="11">문학</option>
				    <option value="12">역사</option>
				     
				</select>
          </div>
        </div>
        
        <div class="form-group">
          <label class="control-label col-sm-3"> 장르  <span class="text-danger">*</span></label>
          <div class="col-md-8 col-sm-9">
              	<select class="custom-select" style="max-width: 120px;">
				    <option selected="">장르</option>
				    <option value="1">미분류</option>
				    <option value="2">SF,과학</option>
				    <option value="3">공포,호러</option>
				    <option value="4">추리,미스터리</option>
				    <option value="5">판타지</option>
				    <option value="6">로맨스</option>
				    <option value="7">무협</option>
				    <option value="8">액션,스릴러</option>
				</select>
          </div>
        </div>
        
        <div class="form-group">
          <label class="control-label col-sm-3">연령대 <span class="text-danger">*</span></label>
          <div class="col-md-8 col-sm-9">
              	<select class="custom-select" style="max-width: 120px;">
				    <option selected="">연령대</option>
				    <option value="1">전체</option>
				    <option value="2">아동</option>
				    <option value="3">청소년</option>
				    <option value="4">성인</option>
				</select>
          </div>
        </div>
        
        <div class="form-group">
          <label class="control-label col-sm-3">가격 <span class="text-danger">*</span></label>
          <div class="col-md-8 col-sm-9">
            <div class="input-group">
              <span class="input-group-addon"><i class=""></i></span>
              <input type="text" class="form-control" name="price" id="price" placeholder="도서 가격(원)" value="">
            </div>  
          </div>
        </div>
        
        <div class="form-group">
          <label class="control-label col-sm-3">무게 <span class="text-danger">*</span></label>
          <div class="col-md-8 col-sm-9">
            <div class="input-group">
              <span class="input-group-addon"><i class=""></i></span>
              <input type="text" class="form-control" name="weight" id="weight" placeholder="도서무게(g)" value="">
            </div>  
          </div>
        </div>
        
        <div class="form-group">
          <label class="control-label col-sm-3">쪽수 <span class="text-danger">*</span></label>
          <div class="col-md-8 col-sm-9">
            <div class="input-group">
              <span class="input-group-addon"><i class=""></i></span>
              <input type="text" class="form-control" name="totalpage" id="totalpage" placeholder="도서총페이지수(쪽)" value="">
            </div>  
          </div>
        </div>
          
        <div class="form-group">
          <label class="control-label col-sm-3">발행일자 <span class="text-danger">*</span></label>
          <div class="col-md-8 col-sm-9">
            <div class="input-group">
              <span class="input-group-addon"><i class=""></i></span>
              <input type="text" class="form-control" name="pDate" id="pDate" placeholder="YYYY/MM/DD" value="">
            </div>  
          </div>
        </div>
        
        <div class="form-group">
          <label class="control-label col-sm-3">도서 소개 <span class="text-danger">*</span></label>
          <div class="col-md-8 col-sm-9">
            <div class="input-group">
              <span class="input-group-addon"><i class=""></i></span>
              <input type="text" class="form-control" name="intro" id="intro" placeholder="도서소개" value="" style="height: 200px;">
            </div>  
          </div>
        </div>
        
        <div class="form-group">
          <label class="control-label col-sm-3">도서관명 <span class="text-danger">*</span></label>
          <div class="col-md-8 col-sm-9">
            <div class="input-group">
              <span class="input-group-addon"><i class=""></i></span>
              <input type="text" class="form-control" name="libCode" id="libCode" placeholder="소유 도서관명" value="">
            </div>  
          </div>
        </div>
       
        
        <div class="form-group">
          <label class="control-label col-sm-3">도서 이미지 <span class="text-danger">*</span> <br> </label>
          <div class="col-md-5 col-sm-8">
            <div class="input-group"> <span class="input-group-addon" id="file_upload"></span>
              <input type="file" name=""image"" id="image" class="form-control upload" placeholder="" aria-describedby="file_upload">
            </div>
          </div>
        </div>
        
        
        
        
        
        <div class="form-group">
          <div class="col-xs-offset-3 col-md-8 col-sm-9"><span class="text-muted"><span class="label label-danger">Note:</span><span class=""> 모든 항목이 채워져야 등록이 가능합니다.</span> </div>
        </div>
        <div class="form-group">
          <div class="col-xs-offset-3 col-xs-10">
            <input name="Submit" type="submit" value="등록" class="btn btn-primary">
          </div>
        </div>
      </form>
    </div>
</div>
	
</div>