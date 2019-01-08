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
		
		
		
		
	});  // end of $(document).ready(function(){});-------------------------------------------------------------------

</script>



<div class="container" style="height: 50%;">

	<form name="regiFrm" enctype="multipart/form-data">
		<div class="border">
			<h2> <a style="color: red; font-weight: bold;; font-family: serif; ">자료등록</a> &nbsp;&nbsp;&nbsp;	<img src="<%= ctxPath%>/resources/img/BWFile.jpg"> <a style="color: black;; font-style: normal; font-family: serif; font-size: small;">자료관리>자료등록</a> </h2>
		</div>
		<div style="border: solid 1px black; background-color: #f9ecf2; margin: 2px; padding: 5px;">
			<input type="radio" value="단행본"/>단행본&nbsp;&nbsp;
			<input type="radio" value="단행본"/>연간물&nbsp;&nbsp;
			<input type="radio" value="단행본"/>비도서&nbsp;&nbsp;
		</div>
		<div class="border">
			<h2><img src="<%= ctxPath%>/resources/img/BWFile.jpg"> <a style="color: black;; font-style: normal; font-family: serif; font-size: small;">서지정보</a> </h2>
		</div>
		<div style="border: solid 1px black; background-color: #f9ecf2; margin: 2px; padding: 1px;">
			*** 입력항목이 2개 이상인 경우에는 세미콜론(;)으로 구분하세요.
		</div>
		
		
		
		
		<div>			
			<div>
				<label for="title" class="" > 종류 </label> <input type="text" name="title" id="title" placeholder="도서명" required/>
			</div>
		</div>
		
		<div>			
			<div>
				<label for="title" class="" > 장르 </label> <input type="text" name="title" id="title" placeholder="도서명" required/>
			</div>
		</div>
		
		<div>			
			<div>
				<label for="title" class="" > 분야 </label> <input type="text" name="title" id="title" placeholder="도서명" required/>
			</div>
		</div>
		
		
		
		<div>			
			<div>
				<label for="title" class="" > 책소개 </label> <input type="text" name="title" id="title" placeholder="도서명" required/>
			</div>
		</div>
		
		<div>			
			<div>
				<label for="title" class="" > 가격 </label> <input type="text" name="title" id="title" placeholder="도서명" required/>
			</div>
		</div>
		
		
		<div>			
			<div>
				<label for="title" class="" > 크기 </label> <input type="text" name="title" id="title" placeholder="도서명" required/>
			</div>
		</div>
		
		<div>			
			<div>
				<label for="title" class="" > 무게 </label> <input type="text" name="title" id="title" placeholder="도서명" required/>
			</div>
		</div>
		
		<div>			
			<div>
				<label for="title" class="" > 쪽수 </label> <input type="text" name="title" id="title" placeholder="도서명" required/>
			</div>
		</div>
		
		<div>			
			<div>
				<label for="title" class="" > 발행일자 </label> <input type="text" name="title" id="title" placeholder="도서명" required/>
			</div>
		</div>
		
		<div>			
			<div>
				<label for="title" class="" > 도서관 </label> <input type="text" name="title" id="title" placeholder="도서명" required/>
			</div>
		</div>
		
		<div>			
			<div>
				<label for="title" class="" > 보관위치 </label> <input type="text" name="title" id="title" placeholder="도서명" required/>
			</div>
		</div>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	</form>




</div>
<div class="container">
	<div class="row">
    <div class="col-md-8">
      <section>      
        <h1 class="entry-title"><span>자료등록</span> </h1>
        <hr>
            <form class="form-horizontal" name="signup" id="signup" enctype="multipart/form-data" >        
        <div class="form-group">
          <label class="control-label col-sm-3">도서명 <span class="text-danger">*</span></label>
          <div class="col-md-8 col-sm-9">
              <div class="input-group">
              <span class="input-group-addon"><i class=""></i></span>
              <input type="text" class="form-control" name="title" id="title" placeholder="도서명을 적어주세요" value="">
            </div>
            <small> 원서의 경우 영어로 적어주세요.</small> </div>
        </div>
        
        <div class="form-group">
          <label class="control-label col-sm-3">저자명 <span class="text-danger">*</span></label>
          <div class="col-md-8 col-sm-9">
            <div class="input-group">
              <span class="input-group-addon"><i class=""></i></span>
              <input type="text" class="form-control" name="author" id="author" placeholder="공동저자의 경우 모두 적어주세요..." value="">
           </div>   
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">출판사 <span class="text-danger">*</span></label>
          <div class="col-md-8 col-sm-9">
            <div class="input-group">
              <span class="input-group-addon"><i class=""></i></span>
              <input type="text" class="form-control" name="publisher" id="publisher" placeholder="API에 올라가있는 출판사만 조회됩니다." value="">
            </div>  
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">국가분류 <span class="text-danger">*</span></label>
          
          <div class="col-md-8 col-sm-9">
            <label>
            <input name="gender" type="radio" value="Male" checked>
            	국내 </label>
               
            <label>
            <input name="gender" type="radio" value="Female" >
            	해외 </label>
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
          <label class="control-label col-sm-3">출판사 <span class="text-danger">*</span></label>
          <div class="col-md-8 col-sm-9">
            <div class="input-group">
              <span class="input-group-addon"><i class=""></i></span>
              <input type="text" class="form-control" name="publisher" id="publisher" placeholder="API에 올라가있는 출판사만 조회됩니다." value="">
            </div>  
          </div>
        </div>
        
        <div class="form-group">
          <label class="control-label col-sm-3">종류 / 장르 / 분야 <span class="text-danger">*</span></label>
          <div class="col-md-8 col-sm-9">
            <div class="">
            
              	<select class="custom-select" style="max-width: 120px;">
				    <option selected="">장르</option>
				    <option value="1">SF</option>
				    <option value="2">로맨스</option>
				    <option value="3">액션</option>
				</select>
            </div>
            
          </div>
        </div>
        
        
        <div class="form-group">
          <label class="control-label col-sm-3">도서 소개</label>
          <div class="col-md-5 col-sm-8">
            <input type="text" class="form-control" name="contactnum2" id="contactnum2" placeholder="도서소개" value="">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">도서 이미지 <br>
          <small>(optional)</small></label>
          <div class="col-md-5 col-sm-8">
            <div class="input-group"> <span class="input-group-addon" id="file_upload"><i class="glyphicon glyphicon-upload"></i></span>
              <input type="file" name="file_nm" id="file_nm" class="form-control upload" placeholder="" aria-describedby="file_upload">
            </div>
          </div>
        </div>
        
        <div class="form-group">
          <div class="col-xs-offset-3 col-md-8 col-sm-9"><span class="text-muted"><span class="label label-danger">Note:-</span> By clicking Sign Up, you agree to our <a href="#">Terms</a> and that you have read our <a href="#">Policy</a>, including our <a href="#">Cookie Use</a>.</span> </div>
        </div>
        <div class="form-group">
          <div class="col-xs-offset-3 col-xs-10">
            <input name="Submit" type="submit" value="Sign Up" class="btn btn-primary">
          </div>
        </div>
      </form>
    </div>
</div>
</div>