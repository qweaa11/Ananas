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



<div class="container border" style="height: 50%; width: 80%; align-content: center;">


		





</div>
<div class="container border" style="">
	<div class="row border">
    <div class="col-md-8">
      <section>      
        <h1 class="entry-title"><span>자료등록</span> <img src="<%= ctxPath%>/resources/img/BWFile.jpg">  <small> 자료관리 > 자료등록</small> </h1>
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
           <small> 작가가 2명 이상인 경우 콤마(,)으로 구분해주세요 </small>
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
            <input name="nation" type="radio" value="Korea" checked>
            	국내 </label>
               
            <label>
            <input name="nation" type="radio" value="abroad" >
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
          <label class="control-label col-sm-3">종류 <span class="text-danger">*</span></label>
          <div class="col-md-8 col-sm-9">
              	<select class="custom-select" style="max-width: 120px;">
				    <option selected="">종류</option>
				    <option value="1">소설</option>
				    <option value="2">시</option>
				    <option value="3">에세이</option>
				    <option value="4">만화</option>
				    <option value="5">잡지</option>
				    <option value="6">논문</option>
				</select>
          </div>
        </div>
        
        <div class="form-group">
          <label class="control-label col-sm-3">분야 <span class="text-danger">*</span></label>
          <div class="col-md-8 col-sm-9">
              	<select class="custom-select" style="max-width: 120px;">
				    <option selected="">분야</option>
				    <option value="1">과학</option>
				    <option value="2">사회</option>
				    <option value="3">자연</option>
				    <option value="4">인문</option>
				</select>
          </div>
        </div>
        
        <div class="form-group">
          <label class="control-label col-sm-3">장르 <span class="text-danger">*</span></label>
          <div class="col-md-8 col-sm-9">
              	<select class="custom-select" style="max-width: 120px;">
				    <option selected="">장르</option>
				    <option value="1">SF</option>
				    <option value="2">무협</option>
				    <option value="3">로맨스</option>
				    <option value="4">역사</option>
				</select>
          </div>
        </div>
        
          <div class="form-group">
          <label class="control-label col-sm-3">가격 <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-8">
            <input type="text" class="form-control" name="price" id="price" placeholder="도서 가격" value="">
          </div>
        </div>
          <div class="form-group">
          <label class="control-label col-sm-3">크기 <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-8">
            <input type="text" class="form-control" name="size" id="size" placeholder="도서크기" value="">
          </div>
        </div>
          <div class="form-group">
          <label class="control-label col-sm-3">무게 <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-8">
            <input type="text" class="form-control" name="weight" id="weight" placeholder="도서소개" value="">
          </div>
        </div>
          <div class="form-group">
          <label class="control-label col-sm-3">쪽수 <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-8">
            <input type="text" class="form-control" name="totalpage" id="totalpage" placeholder="도서소개" value="">
          </div>
        </div>
        
         <div class="form-group">
          <label class="control-label col-sm-3">발행일자 <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-8">
            <input type="text" class="form-control" name="pDate" id="pDate" placeholder="도서소개" value="">
          </div>
        </div>
        
        <div class="form-group">
          <label class="control-label col-sm-3">도서 소개 <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-8">
            <input type="text" class="form-control" name="intro" id="intro" placeholder="도서소개" value="">
          </div>
        </div>
        
         <div class="form-group">
          <label class="control-label col-sm-3">도서관명 <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-8">
            <input type="text" class="form-control" name="libCode" id="libCode" placeholder="도서소개" value="">
          </div>
        </div>
        
        <div class="form-group">
          <label class="control-label col-sm-3">도서 이미지 <span class="text-danger">*</span> <br> </label>
          <div class="col-md-5 col-sm-8">
            <div class="input-group"> <span class="input-group-addon" id="file_upload"><i class="glyphicon glyphicon-upload"></i></span>
              <input type="file" name=""image"" id="image" class="form-control upload" placeholder="" aria-describedby="file_upload">
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