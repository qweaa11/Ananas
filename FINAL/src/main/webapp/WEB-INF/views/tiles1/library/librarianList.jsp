<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사서 목록</title>
</head>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<style type="text/css">

.well {
    min-height: 20px;
    padding: 0px;
    margin-bottom: 20px;
    background-color: #D9D9D9;
    border: 1px solid #D9D9D9;
    border-radius: 0px;
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
	border: 6px solid #D9D9D9;
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
		
		console.log("1234");
		
		var searchWord = $("#searchWord").val();
		var sort = $("#sort").val();
		librarianList(sort, searchWord);
	});
	
	function librarianList(sort, searchWord) {
		
		console.log("1234");
		
		var form_data = {"searchWord":searchWord,
						 "sort":sort}
		
		$.ajax({
			url:"librarianListEnd.ana",
			data:form_data,
			type:GET,
			dataType:"JSON",
			success:function(json){
				
				var result = ""
				
				$.each(json, function(entryIndex, entry) {
					
					result += "<div class='col-lg-12'>"+
		                    	"<span class='glyphicon glyphicon-credit-card'></span>"+
		                    		"<span class='glyphicon glyphicon-trash pull-right text-primary'></span>"+
		                	  "</div>"+
		                	  "<div class='col-lg-12 well well-add-card'>"+
		                 	  	"<h4>"+${entry.name}+"</h4>"+
		                	  "</div>"+
		                	  "<div class='col-lg-12'>"+
		                      "<p>"+${entry.libid}+"</p>"+
		                      "<p class='text-muted'>"+${entry.tel}+"</p>"+
		                	  "</div>"+
		                	  "<button type='button' class='btn btn-primary btn-xs btn-update btn-add-card'>Update</button>"+
		                	  "<button type='button' class='btn btn-danger btn-xs btn-update btn-add-card'>Vrify Now</button>"+
		                	  "<span class='glyphicon glyphicon-exclamation-sign text-danger pull-right icon-style'></span>";
							
				}
				
				$("#resultList").html(result);
			},
			error: function(request, status, error){
				alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
			}
		});
		
	}

</script>


<body>
	<div class="container" id="tourpackages-carousel">
      <div class="row">
        <div class="col-lg-12" class="">
        	<h3>등록 사서 카드</h3>
        		<select id="sort" name="sort">
        			<option value="name">사서명</option>
        			<option value="tel">전화번호</option>
        		</select>
        		<input type="text" id="searchWord" name="searchWord" style="width: 30%; margin-left: 30px;" placeholder="검색 할 사서 정보" />

        	<a class="btn icon-btn btn-primary pull-right" style="margin-bottom: 10px;" href="#">
        		<span class="glyphicon btn-glyphicon glyphicon-plus img-circle"></span>새로운 사서 등록
        	</a>
        </div>
        
        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
          <div class="thumbnail">
              <div class="caption" id="resultList">
                
            </div>
          </div>
        </div>
        
        <div class="col-lg-12"><a href="#">삭제 된 사서카드</a></div>
      </div><!-- End row -->
    </div><!-- End container -->
</body>
</html>