<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<style type="text/css">
	.detail table, th, td {border: 1px solid lightgrey;}
	.detail th {background-color: #f2f2f2}
	
	.btn3d {
    position:relative;
    top: -6px;
    border:0;
     transition: all 40ms linear;
     margin-top:10px;
     margin-bottom:10px;
     margin-left:2px;
     margin-right:2px;
	}
	.btn3d:active:focus,
	.btn3d:focus:hover,
	.btn3d:focus {
	    -moz-outline-style:none;
	         outline:medium none;
	}
	.btn3d:active, .btn3d.active {
	    top:2px;
	}
	.btn3d.btn-white {
	    color: #666666;
	    box-shadow:0 0 0 1px #ebebeb inset, 0 0 0 2px rgba(255,255,255,0.10) inset, 0 8px 0 0 #f5f5f5, 0 8px 8px 1px rgba(0,0,0,.2);
	    background-color:#fff;
	}
	.btn3d.btn-white:active, .btn3d.btn-white.active {
	    color: #666666;
	    box-shadow:0 0 0 1px #ebebeb inset, 0 0 0 1px rgba(255,255,255,0.15) inset, 0 1px 3px 1px rgba(0,0,0,.1);
	    background-color:#fff;
	}
	.btn3d.btn-danger {
	    box-shadow:0 0 0 1px #b93802 inset, 0 0 0 2px rgba(255,255,255,0.15) inset, 0 8px 0 0 #AA0000, 0 8px 8px 1px rgba(0,0,0,0.5);
	    background-color:#D73814;
	}
	.btn3d.btn-danger:active, .btn3d.btn-danger.active {
	    box-shadow:0 0 0 1px #b93802 inset, 0 0 0 1px rgba(255,255,255,0.15) inset, 0 1px 3px 1px rgba(0,0,0,0.3);
	    background-color: #D73814;
	}
	
	
	.table-responsive {height:180px;}
</style>


<script type="text/javascript">
$.fn.pageMe = function(opts){
    var $this = this,
        defaults = {
            perPage: 7,
            showPrevNext: false,
            hidePageNumbers: false
        },
        settings = $.extend(defaults, opts);
    
    var listElement = $this;
    var perPage = settings.perPage; 
    var children = listElement.children();
    var pager = $('.pager');
    
    if (typeof settings.childSelector!="undefined") {
        children = listElement.find(settings.childSelector);
    }
    
    if (typeof settings.pagerSelector!="undefined") {
        pager = $(settings.pagerSelector);
    }
    
    var numItems = children.size();
    var numPages = Math.ceil(numItems/perPage);

    pager.data("curr",0);
    
    if (settings.showPrevNext){
        $('<li><a href="#" class="prev_link">«</a></li>').appendTo(pager);
    }
    
    var curr = 0;
    while(numPages > curr && (settings.hidePageNumbers==false)){
        $('<li><a href="#" class="page_link">'+(curr+1)+'</a></li>').appendTo(pager);
        curr++;
    }
    
    if (settings.showPrevNext){
        $('<li><a href="#" class="next_link">»</a></li>').appendTo(pager);
    }
    
    pager.find('.page_link:first').addClass('active');
    pager.find('.prev_link').hide();
    if (numPages<=1) {
        pager.find('.next_link').hide();
    }
      pager.children().eq(1).addClass("active");
    
    children.hide();
    children.slice(0, perPage).show();
    
    pager.find('li .page_link').click(function(){
        var clickedPage = $(this).html().valueOf()-1;
        goTo(clickedPage,perPage);
        return false;
    });
    pager.find('li .prev_link').click(function(){
        previous();
        return false;
    });
    pager.find('li .next_link').click(function(){
        next();
        return false;
    });
    
    function previous(){
        var goToPage = parseInt(pager.data("curr")) - 1;
        goTo(goToPage);
    }
     
    function next(){
        goToPage = parseInt(pager.data("curr")) + 1;
        goTo(goToPage);
    }
    
    function goTo(page){
        var startAt = page * perPage,
            endOn = startAt + perPage;
        
        children.css('display','none').slice(startAt, endOn).show();
        
        if (page>=1) {
            pager.find('.prev_link').show();
        }
        else {
            pager.find('.prev_link').hide();
        }
        
        if (page<(numPages-1)) {
            pager.find('.next_link').show();
        }
        else {
            pager.find('.next_link').hide();
        }
        
        pager.data("curr",page);
      	pager.children().removeClass("active");
        pager.children().eq(page+1).addClass("active");
    
    }
};

$(document).ready(function(){
    
  $('#myTable').pageMe({pagerSelector:'#myPager',showPrevNext:true,hidePageNumbers:false,perPage:4});
    
});

</script>


<div class="container">
	<h1>회원 기본정보</h1>
	<table class="table detail">
	    <tbody>
	        <tr>
	          <th>회원번호</th>
	            <td>12345</td>
	          <th>회원명</th>
	          	<td>박민규</td>
	        </tr>
	        <tr>
	          <th>ID</th>
	            <td>pmk7257</td>
	          <th>E-mail</th>
	          	<td>pmk7257@naver.com</td>
	        </tr>
	        <tr>
	          <th>주민번호</th>
	            <td>910704-1xxxxxx</td>
	          <th>나이</th>
	            <td>18살(전체,아동,청소년,성인)</td>
	        </tr>
	      	<tr>
	          <th>연락처</th>
	          	<td>010-3432-2323</td>
	          <th>주소</th>
	            <td>서울시 광진구 중곡동 30-14 1층</td>
	        </tr>
	        <tr>
	          <th>성별</th>
	          	<td>남자</td>	          
	          <th>회원상태</th>
	            <td>휴면 or 탈퇴</td>
	        </tr>
	        <tr>
	          <th>가입일자</th>
	          	<td>2018-01-01</td>
	          <th>로그인 기록</th>
	          	<td>마지막 로그인(2018-10-10 23:00:00) 로그아웃(2018-10-10 23:10:50)</td>	          
	        </tr>
	    </tbody>
	</table>
</div>

<div class="container">	        
	<button type="button" class="btn3d btn btn-white btn-lg"><span class="glyphicon glyphicon-tag"></span> 휴면(ON)</button>
	<button type="button" class="btn3d btn btn-white btn-lg"><span class="glyphicon glyphicon-tag"></span> 휴면(OFF)</button>        
	<button type="button" class="btn btn-danger btn-lg btn3d"><span class="glyphicon glyphicon-remove"></span> 탈퇴</button>       	
</div>

<br/>
<br/>
<br/>
<div class="container">
	<h1>회원 대여정보</h1>
	<table class="table detail">
	    <tbody>
	        <tr>
	          <th>총 대여권수</th>
	            <td>100권</td>
	          <th>총 반납권수</th>
	          	<td>100권</td>
	          <th>총 미반납권수</th>
	          	<td>0권</td>
	          <th>총 분실권수</th>
	          	<td>0권</td>
	        </tr>	        
	        <tr>
	          <th>총 연체일</th>
	            <td>80일</td>
	          <th>총 연체료</th>
	          	<td>10,000원</td>
	          <th>연체료 납액</th>
	          	<td>7,000원</td>
	          <th>연체료 미납액</th>
	          	<td>3,000</td>
	        </tr>
	        <tr>
	          <th>현재 상태</th>
	            <td>대여,연체,분실</td>
	          <th>현재 대여권수</th>
	          	<td>4권</td>	          
	        </tr>
	    </tbody>
	</table>
</div>


<br/>
<br/>
<br/>
<div class="container">
	<h1>도서 대여정보</h1>
	<div class="col-sm-12 pull-center well">
		<form class="form-inline" action="#" method="POST">				
			<select class="form-control">
				<option>도서명</option>
				<option>저자</option>
				<option>출판사</option>
				<option>도서번호</option>
			</select>
	                  
			<div class="input-group custom-search-form">
				<input type="text" class="form-control" placeholder="Search..." />
					<span class="input-group-btn">
						<button class="btn btn-default" type="button">
							<i>search</i>
						</button>
					</span>
			</div>				
		</form>
	</div>
</div>


<div class="container">
 <div class="table-responsive">
   <table class="table table-hover">
     <thead>
       <tr>
         <th>번호</th>
         <th>대여일</th>
         <th>반납일</th>
         <th>반납연장일</th>
         <th>연체일</th>
         <th>도서번호</th>
         <th>도서명</th>
         <th>저자</th>
         <th>출판사</th>
         <th>구분</th>
         <th>상태</th>
         <th>연체료</th>
       </tr>
     </thead>
     <tbody id="myTable">
       <tr>
         <td>1</td>
         <td>Table cell</td>
         <td>Table cell</td>
         <td>Table cell</td>
         <td>Table cell</td>
         <td>Table cell</td>
         <td>Table cell</td>
       </tr>
       <tr>
         <td>2</td>
         <td>Table cell</td>
         <td>Table cell</td>
         <td>Table cell</td>
         <td>Table cell</td>
         <td>Table cell</td>
         <td>Table cell</td>
       </tr>
       <tr>
         <td>3</td>
         <td>Table cell</td>
         <td>Table cell</td>
         <td>Table cell</td>
         <td>Table cell</td>
         <td>Table cell</td>
         <td>Table cell</td>
       </tr>
       <tr>
         <td>4</td>
         <td>Table cell</td>
         <td>Table cell</td>
         <td>Table cell</td>
         <td>Table cell</td>
         <td>Table cell</td>
         <td>Table cell</td>
       </tr>
       <tr class="success">
         <td>5</td>
         <td>Table cell</td>
         <td>Table cell</td>
         <td>Table cell</td>
         <td>Table cell</td>
         <td>Table cell</td>
         <td>Table cell</td>
       </tr>
       <tr>
         <td>6</td>
         <td>Table cell</td>
         <td>Table cell</td>
         <td>Table cell</td>
         <td>Table cell</td>
         <td>Table cell</td>
         <td>Table cell</td>
       </tr>
       <tr>
         <td>7</td>
         <td>Table cell</td>
         <td>Table cell</td>
         <td>Table cell</td>
         <td>Table cell</td>
         <td>Table cell</td>
         <td>Table cell</td>
       </tr>
        <tr>
         <td>8</td>
         <td>Table cell</td>
         <td>Table cell</td>
         <td>Table cell</td>
         <td>Table cell</td>
         <td>Table cell</td>
         <td>Table cell</td>
       </tr>
       <tr>
         <td>9</td>
         <td>Table cell</td>
         <td>Table cell</td>
         <td>Table cell</td>
         <td>Table cell</td>
         <td>Table cell</td>
         <td>Table cell</td>
       </tr>
       <tr>
         <td>10</td>
         <td>Table cell</td>
         <td>Table cell</td>
         <td>Table cell</td>
         <td>Table cell</td>
         <td>Table cell</td>
         <td>Table cell</td>
       </tr>
     </tbody>
   </table>   
 </div>
 <div class="col-md-12 text-center">
 <ul class="pagination pagination-lg pager" id="myPager"></ul>
 </div>
</div>



