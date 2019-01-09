<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String CtxPath = request.getContextPath(); %>



<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%= CtxPath %>/css/style.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script type="text/javascript">
	
	$(document).ready(function(){
	    
		var method = "${method}";
	//	console.log("method : " + method);
	
	    if(method == "GET") {
			$("#div_findResult").hide();
	    }
	    else if(method == "POST") {
	    	$("#name").val("${name}");
	    	$("#mobile").val("${mobile}");
	    	$("#div_findResult").show();
	    }
	    
	    
		$("#btnFind").click(function(){
			var frm = document.idFindFrm;
			frm.action = "<%= CtxPath%>/idFind.do";
			frm.method = "POST";
			frm.submit();
		});
		
	});
	
</script>



<aside id="colorlib-hero" class="breadcrumbs">
   <div class="flexslider">
      <ul class="slides">
         <li style="background-image: url(<%=CtxPath %>/store/images/idfindMain1.jpg);">
            <!--  <div class="overlay"></div>  -->
            <div class="container-fluid">
               <div class="row">
                  <div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
                     <div class="slider-text-inner text-center">
                        <h1>Find ID</h1>
                        <h2 class="bread"><span><a href="<%= CtxPath %>/index.do">Home</a></span> <span><a href="<%= CtxPath %>/join.do">Login</a></span></h2>
                     </div>
                  </div>
               </div>
            </div>
         </li>
        </ul> 
     </div>
</aside>
      
<div class="container">      
   <div class="col-md-12">
   	<div>
	    <form name="idFindFrm" method="post" class="colorlib-form">    
	       <div class="form-group" style="margin-top: 3%;">
	         <div class="col-md-4" style="margin-top: 3%;"></div> <%-- 이부분은 칸 조정할려고 넣어놨어요ㅠㅠ --%>
	       	 <div class="col-md-1" style="margin-top: 3%;">
	             <label for="name">성명</label>
	          </div>
	          <div class="col-md-3">
	             <input type="text" name="name" id="name" class="form-control" placeholder="Name">
	          </div>
	       </div>
	       <div class="form-group" style="margin-bottom: 3%;">
		       <div class="col-md-4" style="margin-top: 3%;"></div> <%-- 이부분은 칸 조정할려고 넣어놨어요ㅠㅠ --%>
		       <div class="col-md-1" style="margin-top: 3%;">
		           <label for="mobile">휴대전화</label>
		       </div>
		       <div class="col-md-3">
		           <input type="text" name="mobile" id="mobile" class="form-control" placeholder="-없이 입력하세요!!">
		       </div>
	       </div>
	       <div class="form-group">
			       <%--	김보현 회원님의 아이디는 bobo입니다~~--%> 
		   </div>
		    <div class="row" style="margin-bottom: 2%">
	          <div id="div_findResult" class="col-md-12" style="margin-top: 1%; margin-left: 43%;" >
	          	ID : <span style="font-size: 9pt;">${userid}</span></button>
	          </div>
	       </div>  		               
	       <div class="row" style="margin-bottom: 2%">
	          <div class="col-md-12" style="margin-top: 1%; margin-left: 43%;" >
	          	<button type="button" id="btnFind" class="btn"><span style="font-size: 9pt;">아이디 찾기</span></button>
	          </div>
	       </div>
	       
	       
	    </form>
     </div>
   </div>
</div>

<div class="gototop js-top">
   <a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
</div>

