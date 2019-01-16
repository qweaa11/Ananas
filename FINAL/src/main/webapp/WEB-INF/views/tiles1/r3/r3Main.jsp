<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<link rel="stylesheet" type="text/css" href="resources/css/r3.css">

<script type="text/javascript">

	$(document).ready(function(e){
		
		// 회원 검색 카테고리
	    $('.search-member').find('a').click(function(e) {
			e.preventDefault();
			var param = $(this).attr("href").replace("#","");
			var concept = $(this).text();
			$('.search-member span#search_concept').text(concept);
			$('.input-member #membercategory').val(param);
		});
	    
		// 책 검색 카테고리
	    $('.search-book').find('a').click(function(e) {
			e.preventDefault();
			var param = $(this).attr("href").replace("#","");
			var concept = $(this).text();
			$('.search-book span#search_concept').text(concept);
			$('.input-book #bookcategory').val(param);
		});
	    
	    // 회원 목록 스타일 부여
	    $(document).on("mouseover", ".hover", function () {
	    	$(this).addClass("hoverStyle");
		});
	    
	    $(document).on("mouseout", ".hover", function () {
	    	$(this).removeClass("hoverStyle");
		});
	    
	    // 엔터 쳤을 시 회원 검색
	    $("#search_member").keydown(function(event) {
			if(event.keyCode == 13) {
				searchMember();
			}
		});
	    
	    $(document).on("click", ".hover", function () {
	    	
	    	var memberid = $(this).find(".memberid").text();
	    	
	    	var data_form = {"memberid":memberid}
	    	
	    	$.ajax({
				
				url:"r3findOneMember.ana",
				type:"GET",
				data:data_form,
				dataType:"json",
				success:function(json) {
					
					$("#memberid").text(json.MEMBERID);
					$("#name").text(json.NAME);
					$("#ages").text(json.AGES);
					$("#addr1").text(json.ADDR1);
					$("#addr2").text(json.ADDR2);
					$("#phone").text(json.PHONE);
					
				},
				error: function(request, status, error){
					alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
				}
				
			});
	    	
		});
	    
	});
	
	
	
	function searchMember() {
		
		var cateogry = $("#membercategory").val();
		var searchWord = $("#search_member").val();
		
		var data_form = {"searchWord":searchWord, "cateogry":cateogry}
		
		$.ajax({
			
			url:"r3searchMember.ana",
			type:"GET",
			data:data_form,
			dataType:"json",
			success:function(json) {
				
				var html = "";
				
				if(json.length > 0){
					
					$.each(json, function (entryIndex, entry) {
					 	 
						html += "<li class=\"list-group-item hover\">\n" + 
								"	<div class=\"row\">\n" + 
								"		<div class=\"col-xs-6 memberid text-left\" style=\" \">" + entry.MEMBERID + "</div>\n" + 
								"		<div class=\"col-xs-6\" style=\"\">" + entry.NAME + "</div>\n" + 
								"	</div>\n" + 
								"</li>";
						
					});// end of $.each()---------------------------
					
				}
				else {
					html += "<li class=\"list-group-item\">\n" + 
					"	<div class=\"row\">\n" + 
					"		<div class=\"col-xs-12 memberid text-left\" style=\"text-align: center;\">검색 결과가 없습니다.</div>\n" + 
					"	</div>\n" + 
					"</li>";
				}
				
				
				$(".memberList").html(html);
				
				
			},
			error: function(request, status, error){
				alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
			}
			
		});
		
	}
	
	function searchBook() {
		
		var cateogry = $("#bookcategory").val();
		var searchWord = $("#search_book").val();
		
	}

</script>
    
<div>
 
	<div class="container" style="width: 100%;">
	    <div class="row" style="padding-left: 70px; padding-right: 50px;"> 
			
	        <div class="col-lg-12"> 
	            <div class="panel with-nav-tabs panel-info"> 
	            
	                <div class="panel-heading"> 
	                        <ul class="nav nav-tabs">
	                            <li class="active"><a href="#tab1info" data-toggle="tab">대여</a></li>
	                            <li><a href="#tab2info" data-toggle="tab">반납</a></li>
	                            <li><a href="#tab3info" data-toggle="tab">예약</a></li>
	                        </ul>
	                </div>
	                
	                <div class="panel-body">
	                    <div class="tab-content">
	                        <div class="tab-pane fade in active" id="tab1info">
	                        	
	                        	
	                        	<!-- 회원 부분 -->
	                        	<div class="col-lg-5 col-md-5 col-sm-12 col-xs-12 border-radius" style="margin-top: 30px; margin-bottom: 30px;">  
	                        		
						            <h2>회원 목록</h2>  
								    <hr>
	                        		
	                        		<!-- 회원 검색 -->
								    <div class="input-group input-member" style="margin-bottom: 30px;">
						                <div class="input-group-btn search-panel search-member">
						                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
						                    	<span id="search_concept">아이디</span> <span class="caret"></span>
						                    </button>
						                    <ul class="dropdown-menu" role="menu">
						                      <li><a href="#memberid">아이디</a></li>
						                      <li><a href="#name">이름</a></li>
						                    </ul>
						                </div>
						                <input type="hidden" name="search_param" value="memberid" id="membercategory"/>      
						                <input type="text" class="form-control" id="search_member" name="x" placeholder="검색어를 입력해주세요."/>
						                <span class="input-group-btn">
						                    <button class="btn btn-default" type="button" onclick="searchMember();"><span class="glyphicon glyphicon-search"></span></button>
						                </span>
						            </div>
						            <!-- /검색 -->
						             
								    <!-- 회원 목록 -->
								    <div class="row">
								        <div class="col-xs-12">
								            <div class="panel panel-default list-group-panel">
								                <div class="panel-body">
								                
								                    <ul class="list-group list-group-header">
								                        <li class="list-group-item list-group-body">
								                            <div class="row">
								                                <div class="col-xs-6 text-left">아이디</div>
								                                <div class="col-xs-6">이름</div>
								                            </div>
								                        </li>
								                    </ul>
								                    <div></div>
								                    <ul class="list-group list-group-body memberList" style="overflow: auto; max-height: 300px;">   
								                        
								                    </ul>
								                    
								                </div>
								            </div>
								        </div>
								    </div>
								    <!-- /회원 목록 -->
								    
								    <!-- 회원정보 표시 -->
								    <div class="alert" role="alert">
								    
										<div class="panel panel-primary">
										       
											<div class="panel-heading">
												회원정보 
											</div>
											       
											       
											<div class="panel-body">
												
												<ul class="list-group list-group-body" style="">
							                        <li class="list-group-item">
							                            <div class="row">
							                                <div class="col-xs-4 text-left">아이디</div>
							                                <div class="col-xs-8" id="memberid" style="">dd</div>
							                            </div>
							                        </li>
							                        <li class="list-group-item">
							                            <div class="row">
							                                <div class="col-xs-4 text-left">이름</div>
							                                <div class="col-xs-8" id="name"></div>
							                            </div>
							                        </li>
							                        <li class="list-group-item">
							                            <div class="row">
							                                <div class="col-xs-4 text-left">연령</div>
							                                <div class="col-xs-8" id="ages"></div>
							                            </div>
							                        </li>
							                        <li class="list-group-item">
							                            <div class="row">
							                                <div class="col-xs-4 text-left">주소</div>
							                                <div class="col-xs-8" id="addr1"></div>
							                            </div>
							                        </li>
							                        <li class="list-group-item">
							                            <div class="row">
							                                <div class="col-xs-4 text-left">상세주소</div>
							                                <div class="col-xs-8" id="addr2"></div>
							                            </div>
							                        </li>
							                        <li class="list-group-item">
							                            <div class="row">
							                                <div class="col-xs-4 text-left">전화번호</div>
							                                <div class="col-xs-8" id="phone"></div>
							                            </div>
							                        </li>
							                    </ul>
											          
											</div>
										
										</div>
										
									</div>
									
									<!-- 회원정보 표시 끝 -->
								    
						        </div>
						        <!-- /회원 부분 -->
						        
						        <!-- 도서 부분 -->
						        <div class="col-lg-offset-1 col-lg-6 col-md-offset-1 col-md-6 col-sm-12 col-xs-12 border-radius" style="margin-top: 30px; margin-bottom: 30px;">
						        	
						            <h2>도서 목록</h2>  
								    <hr>
								    
								    <!-- 도서 검색 -->
								    <div class="input-group input-book" style="margin-bottom: 30px;">
						                <div class="input-group-btn search-panel search-book">
						                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
						                    	<span id="search_concept">일련번호</span> <span class="caret"></span>
						                    </button>
						                    <ul class="dropdown-menu" role="menu">
						                      <li><a href="#bookid">일련번호</a></li>
						                      <li><a href="#title">제목</a></li>
						                    </ul>
						                </div>
						                <input type="hidden" name="search_param" value="bookid" id="bookcategory">      
						                <input type="text" class="form-control" id="search_book" name="x" placeholder="검색어를 입력해주세요.">
						                <span class="input-group-btn">
						                    <button class="btn btn-default" type="button" onclick="searchBook()"><span class="glyphicon glyphicon-search"></span></button>
						                </span>
						            </div>
						            <!-- /도서 검색 -->
						            
								    
								    <!-- 도서 목록 -->
								    <div class="row">
								        <div class="col-xs-12" style="">
								            <div class="panel panel-default list-group-panel">
								                <div class="panel-body">
								                
								                    <ul class="list-group list-group-header">
								                        <li class="list-group-item list-group-body">
								                            <div class="row">
								                                <div class="col-xs-6 text-left">일련번호</div>
								                                <div class="col-xs-6">제목</div> 
								                            </div>
								                        </li>
								                    </ul>
								                    
								                    <ul class="list-group list-group-body" style="">
								                        <li class="list-group-item hover">
								                            <div class="row">
								                                <div class="col-xs-6 text-left" style=" ">chek</div>
								                                <div class="col-xs-6" style="">책</div>
								                            </div>
								                        </li>
								                        <li class="list-group-item hover">
								                            <div class="row">
								                                <div class="col-xs-6 text-left" style=" ">chek</div>
								                                <div class="col-xs-6" style="">책</div>  
								                            </div>
								                        </li>
								                    </ul>
								                    
								                </div>
								            </div>
								        </div>
								    </div>
								    <!-- /도서 목록 -->
								    
								    
								    <h2>대여 작업</h2>  
								    <hr>
								    
								    <div class="row">
								        <div class="col-xs-12" >
								            <div class="panel panel-default list-group-panel">
								                <div class="panel-body">
								                
								                    <ul class="list-group list-group-header">
								                        <li class="list-group-item list-group-body">
								                            <div class="row">
								                                <div class="col-xs-2 text-left">아이디</div>
								                                <div class="col-xs-2">이름</div> 
								                                <div class="col-xs-4">제목</div> 
								                                <div class="col-xs-2">대여기간</div> 
								                                <div class="col-xs-2">반납일자</div> 
								                            </div>
								                        </li>
								                    </ul>
								                    
								                    <ul class="list-group list-group-body" style="">
								                        <li class="list-group-item hover">
								                            <div class="row">
								                                <div class="col-xs-2 text-left">아이디</div>
								                                <div class="col-xs-2">이름</div> 
								                                <div class="col-xs-4">제목</div> 
								                                <div class="col-xs-2">대여기간</div> 
								                                <div class="col-xs-2">반납일자</div> 
								                            </div>
								                        </li>
								                        <li class="list-group-item hover"> 
								                            <div class="row">
								                                <div class="col-xs-2 text-left">아이디</div>
								                                <div class="col-xs-2">이름</div> 
								                                <div class="col-xs-4">제목</div> 
								                                <div class="col-xs-2">대여기간</div> 
								                                <div class="col-xs-2">반납일자</div> 
								                            </div>
								                        </li>
								                    </ul>
								                    
								                </div>
								            </div>
								        </div>
								    </div>
								    <div style="float: right; margin-bottom: 30px;">
								    	<button type="button" class="btn btn-info btn-circle btn-lg"><i class="glyphicon glyphicon-ok"></i></button>
										<button type="button" class="btn btn-warning btn-circle btn-lg"><i class="glyphicon glyphicon-remove"></i></button>
								    </div>
									
								    
						        </div>
						        <!-- /도서 부분 -->
						        
						        
						        
	                        </div>
	                        
	                        <div class="tab-pane fade" id="tab2info">
	                        	호호호호호호호호호호호
	                        </div>
	                         
	                        <div class="tab-pane fade" id="tab3info">
	                        	하하하하하하하하하
	                        </div> 
	                        
	                    </div>
	                </div>
	                
	            </div>
	        </div>
	        
		</div>
	</div>

</div>