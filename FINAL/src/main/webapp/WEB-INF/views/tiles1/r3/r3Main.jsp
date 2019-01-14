<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<link rel="stylesheet" type="text/css" href="resources/css/r3.css">

<script type="text/javascript">

	$(document).ready(function(e){
	    $('.search-panel .dropdown-menu').find('a').click(function(e) {
			e.preventDefault();
			var param = $(this).attr("href").replace("#","");
			var concept = $(this).text();
			$('.search-panel span#search_concept').text(concept);
			$('.input-group #search_param').val(param);
		});
	    
	    $(".hover").hover(function (e) {
			
	    	$(this).addClass("hoverStyle");
	    	
		}, function (e) {
			$(this).removeClass("hoverStyle");
		})
	    
	});

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
	                        	
	                        	<div class="col-lg-5 col-md-5 col-sm-12 col-xs-12" style="margin-top: 30px; margin-bottom: 30px;">  
	                        		
						            <h2>회원 목록</h2>  
								    <hr>
	                        		
								    <div class="input-group" style="margin-bottom: 30px;">
						                <div class="input-group-btn search-panel">
						                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
						                    	<span id="search_concept">아이디</span> <span class="caret"></span>
						                    </button>
						                    <ul class="dropdown-menu" role="menu">
						                      <li><a href="#memberid">아이디</a></li>
						                      <li><a href="#name">이름</a></li>
						                    </ul>
						                </div>
						                <input type="hidden" name="search_param" value="memberid" id="search_param">      
						                <input type="text" class="form-control" name="x" placeholder="Search term...">
						                <span class="input-group-btn">
						                    <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search"></span></button>
						                </span>
						            </div>
						            
								    
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
								                    
								                    <ul class="list-group list-group-body" style="">
								                        <li class="list-group-item hover">
								                            <div class="row">
								                                <div class="col-xs-6 text-left" style=" ">saram</div>
								                                <div class="col-xs-6" style="">사람</div>
								                            </div>
								                        </li>
								                        <li class="list-group-item hover">
								                            <div class="row">
								                                <div class="col-xs-6 text-left" style=" ">saram</div>
								                                <div class="col-xs-6" style="">사람</div>
								                            </div>
								                        </li>
								                    </ul>
								                    
								                </div>
								            </div>
								        </div>
								    </div>
								    
								    <div class="alert" role="alert">
								    
										<div class="panel panel-primary">
										       
										<div class="panel-heading">
											회원정보 
										</div>
										       
										       
										<div class="panel-body">
											<div class="clearfix"></div>
											<div class="col-lg-4 col-md-4 col-sm-6">
												<div class="input-group form-param">
													<span class="input-group-addon">회원 아이디</span>
													<input id="memberid" name="memberid" 
													class="form-control" type="text" 
													readonly value=""/>
												</div><!-- .input-group -->
											</div><!-- .col-md-3 -->
										          
										</div>
										
										</div>
										
									</div>
								    
						        </div>
						        
						        
						        <div class="col-lg-offset-1 col-lg-5 col-md-offset-1 col-md-5 col-sm-12 col-xs-12" style="margin-top: 30px; margin-bottom: 30px;">  
						        	
						            <h2>도서 목록</h2>  
								    <hr>
								    
								    <div class="input-group" style="margin-bottom: 30px;">
						                <div class="input-group-btn search-panel">
						                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
						                    	<span id="search_concept">아이디</span> <span class="caret"></span>
						                    </button>
						                    <ul class="dropdown-menu" role="menu">
						                      <li><a href="#memberid">아이디</a></li>
						                      <li><a href="#name">이름</a></li>
						                    </ul>
						                </div>
						                <input type="hidden" name="search_param" value="memberid" id="search_param">      
						                <input type="text" class="form-control" name="x" placeholder="Search term...">
						                <span class="input-group-btn">
						                    <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search"></span></button>
						                </span>
						            </div>
						            
								    
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
								    
						        </div>
						        
						        
						        
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