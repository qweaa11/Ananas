<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% String ctxPath = request.getContextPath(); %>

<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<style type="text/css">

.well {
    min-height: 20px;
    padding: 0px;
    margin-bottom: 20px;
    background-color: #D9D9D9;
    border: 5px solid #0d0d0d;   
    border-radius: 2px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.05);
    box-shadow: inset 0 1px 1px rgba(0,0,0,.05);
    padding-left: 15px;
    border:0px;
	}

.thumbnail .caption{
    padding: 9px;
    color: #333;
    padding-left: 0px;
    padding-right: 0px;
	}   

.icon-style{
    margin-right:15px;
    font-size:18px;
    margin-top:20px;
	}

p{margin:3px;}

.well-add-card{margin-bottom:10px;}

.btn-add-card{margin-top:20px;}

.thumbnail{
	display: block;
	padding: 4px;
	margin-bottom: 20px;
	line-height: 1.42857143;
	background-color: #fff;
	border: 5px solid #666666;   
	border-radius: 15px;
	-webkit-transition: border .2s ease-in-out;
	-o-transition: border .2s ease-in-out;
	transition: border .2s ease-in-out;
	padding-left: 0px;
	padding-right: 0px;
	}

.btn{border-radius:0px;}
	 
.btn-update {margin-left:15px;}
</style>

<script type="text/javascript">

	$(document).ready(function(){
		
		//console.log("1234");
		
		var searchWord = $("#searchWord").val();
		var sort = $("#sort").val();
		
		librarianList(sort, searchWord);
		
	});
	
	
	function searchList(){
		
		var searchWord = $("#searchWord").val();
		var sort = $("#sort").val();
		
		librarianList(sort, searchWord);
	}
	
	
	function librarianList(sort, searchWord) {
		
		//console.log("으아");
		
		var searchWord = $("#searchWord").val();
		var sort = $("#sort").val();
		
		var form_data = {"searchWord":searchWord,
						 "sort":sort}
		
		$.ajax({
			url:"<%=request.getContextPath()%>/findLibrarianList.ana",
			data:form_data,
			type:"GET",
			dataType:"JSON",
			success:function(json){
				
				var result = "";
				
				//console.log("xxxxxx");

				$.each(json, function(entryIndex, entry){
   
					result += "<div class='col-xs-12 col-sm-4 col-md-4 col-lg-4'>"+
						        "<div class='thumbnail' style='background-color: #ffffff;'>"+
					              "<div class='caption'>"+
					                "<div class='col-lg-12' style='background-color: #ffffff;'>"+
					                    "<span class='glyphicon glyphicon-credit-card'></span>"+
					                    "<span class='glyphicon glyphicon-trash pull-right text-primary'></span>"+
					                "</div>"+
					                "<div class='col-lg-12 well well-add-card'>"+
					                    "<h4> <span style='color: #004080; font-weight: bold;'>사서명 : "+entry.LIBRARIANNAME+"</span></h4>"+
					                "</div>"+
					                "<div class='col-lg-12'>"+
					                    "<p><span style='color: #004080; font-weight: bold;'>휴대폰 : "+ entry.LIBRARIANTEL+"</span></p>"+
					                    "<p class'text-muted'><span style='color: #004080; font-weight: bold;'>아이디 : "+entry.LIBID+"</span></p>"+
					                "</div>"+
					                "<a class='btn btn-primary btn-xs btn-update btn-add-card updateInfo' data-toggle='modal' data-personal='"+entry.LIBRARIANIDX+","+entry.LIBID+","+entry.LIBCODE_FK+","+entry.LIBRARIANNAME+","+entry.LIBRARIANTEL+","+entry.STATUS+","+entry.IMGFILENAME+","+entry.LIBNAME+","+entry.LIBTEL+","+entry.ADDR+"' href='#updateInfo'>Update Info.</a>"+
					                "<a class='btn btn-danger btn-xs btn-update btn-add-card detailInfo' data-toggle='modal' data-personal='"+entry.LIBRARIANIDX+","+entry.LIBID+","+entry.LIBCODE_FK+","+entry.LIBRARIANNAME+","+entry.LIBRARIANTEL+","+entry.STATUS+","+entry.IMGFILENAME+","+entry.LIBNAME+","+entry.LIBTEL+","+entry.ADDR+"' href='#detailInfo'>Detail Info.</a>"+
					                "<span class='glyphicon glyphicon-exclamation-sign text-danger pull-right icon-style'></span>"+
					            "</div>"+
					          "</div>"+
					        "</div>" 
						
				
				});	
			
				$("#resultList").html(result);
				
			},
			error: function(request, status, error){
				alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
			}
		});
		
	}
	
	
	$(document).on("click", ".updateInfo", function () {
		
	     var personalInfo = $(this).data('personal');
	     
	     var infoSpliter = personalInfo.split(',');
	     
	     for(var i in infoSpliter){
	     	$(".modal-body #personalInfo"+i+"").val(infoSpliter[i]);
	     }
	     
	});
	
	
	$(document).on("click", ".detailInfo", function () {
		
	     var personalInfo = $(this).data('personal');

		 var infoSpliter = personalInfo.split(',');
	     
	     for(var i in infoSpliter){
	     	$(".modal-body #personalInfo"+i+"").val(infoSpliter[i]);
	     }
	});

</script>
     

<body style="background-color: #ffffff;">
	<div class="container" id="tourpackages-carousel">
      <div class="row">
        <div class="col-lg-12" class="">
        	<h3>등록 사서 카드</h3>
        		<select id="sort" name="sort">
        			<option value="a.name">사서명</option>
        			<option value="a.tel">전화번호</option>
        		</select>
        		<input type="text" id="searchWord" name="searchWord" style="width: 30%; margin-left: 30px;" placeholder="검색 할 사서 정보" />
        		<button type="button" onClick="searchList()">검색</button>

        	<a class="btn icon-btn btn-primary pull-right" style="margin-bottom: 10px;" href="adminRegist.ana">
        		<span class="glyphicon btn-glyphicon glyphicon-plus img-circle"></span>새로운 사서 등록
        	</a>
        </div>
       	
         
        <div id="resultList">
        </div>
        
        <br/><div class="col-lg-12"><a href="#">삭제 된 사서카드</a></div>
      </div><!-- End row -->
    </div><!-- End container -->
    
      <!-- Modal -->
  <div class="modal fade" id="detailInfo" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h2 class="modal-title">사서  상세 정보</h2>
        </div>
        <div class="modal-body">
          <input type="text" name="personalInfo0" id="personalInfo0" value=""/>
          <input type="text" name="personalInfo1" id="personalInfo1" value=""/>
          <input type="text" name="personalInfo2" id="personalInfo2" value=""/>
          <input type="text" name="personalInfo3" id="personalInfo3" value=""/>
          <input type="text" name="personalInfo4" id="personalInfo4" value=""/>
          <input type="text" name="personalInfo5" id="personalInfo5" value=""/>
          <input type="text" name="personalInfo5" id="personalInfo6" value=""/>
          <input type="text" name="personalInfo5" id="personalInfo7" value=""/>
          <input type="text" name="personalInfo5" id="personalInfo8" value=""/>
          <input type="text" name="personalInfo5" id="personalInfo9" value=""/>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
  
  
  <div class="modal fade" id="updateInfo" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h2 class="modal-title">사서 정보 수정</h2>
        </div>
        <div class="modal-body">
          <input type="text" name="personalInfo0" id="personalInfo0" value=""/>
          <input type="text" name="personalInfo1" id="personalInfo1" value=""/>
          <input type="text" name="personalInfo2" id="personalInfo2" value=""/>
          <input type="text" name="personalInfo3" id="personalInfo3" value=""/>
          <input type="text" name="personalInfo4" id="personalInfo4" value=""/>
          <input type="text" name="personalInfo5" id="personalInfo5" value=""/>
          <input type="text" name="personalInfo5" id="personalInfo6" value=""/>
          <input type="text" name="personalInfo5" id="personalInfo7" value=""/>
          <input type="text" name="personalInfo5" id="personalInfo8" value=""/>
          <input type="text" name="personalInfo5" id="personalInfo9" value=""/>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>  
  </div>
  
  
  
</body>



</html>