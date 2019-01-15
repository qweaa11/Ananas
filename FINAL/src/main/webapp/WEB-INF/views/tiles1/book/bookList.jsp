<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    

<style>
ul.sideinfo {
	list-style: none;
	font-size: 8pt;
	font-family:'NanumGothic';
}
table{
	text-align: center;
}
th{ font-size:16pt;
	text-align:center;}

div.sideHeader {
	background-color: #d9d9d9;
	padding-left:5px;
	padding:3px;
	height:26px;
	font-family:'NanumGothicBold'
}

.sideText{ color:black;
			cursor:pointer;}
.sideText:hover {
	text-decoration: underline;
}

.multiselect:hover{
	color:navy;
}
.BookInfo:hover{
	cursor:pointer;
	text-weight:bold;
	color:#ffaa00;
}


input[type="checkbox"].sideli{
	width:11pt;
	height:11pt;           
}
#btnFindBook{padding: .2em .4em;
	font-size:13pt;
    background-color: #0d55a2;
    color: #fff;
    border-radius: 3px;
    text-decoration: none;
    border: none;}

#section1{
	max-height: 1400px;
}  
	           
div.search input[type=text] {
  padding: 10px;
  font-size: 13px;
  border: 1px solid grey;
  width: 180px;
  background: #f1f1f1;
}

div.search button {
  width: 30px;
  padding: 10px;
  background: #2196F3;
  color: white;
  font-size: 13px;
  border: 1px solid grey;          
  border-left: none;
  cursor: pointer;
}

div.search button:hover {
  background: #0b7dda;
}


</style>

<script>
	$(document).ready(function(){
		         
		
		$(".sort").change(function(){
			
			$("#sort").val($(this).val());
			
			goBook();
			
		});
		
		if(${sort != null && sort !=""}){
			$(".sort").val("${sort}");
		}
			
		
	});
	
	function findBookbyLibrary(libcode){
		
		
		$("#library").val(libcode);
		$("#language").val("");
		$("#category").val("");
		$("#field").val("");
		$("#sort").val($(".sort").val());
		goBook();
		
	}
	
	function findBookbyLanguage(lcode){
		$("#library").val("");
		$("#category").val("");
		$("#field").val("");
		$("#sort").val($(".sort").val());
		$("#language").val(lcode);
		goBook();
		
	}
	
	function findBookbyCategory(ccode){
		$("#library").val("");
		$("#language").val("");
		$("#field").val("");
		$("#sort").val($(".sort").val());
		$("#category").val(ccode);
		
		goBook();
		
	}
	
	function findBookbyField(fcode){
		$("#library").val("");
		$("#language").val("");
		$("#category").val("");
		$("#sort").val($(".sort").val());
		$("#field").val(fcode);
		goBook();
		
	}
	
	// 사이드바로 검색한 조건에 해당하는 책의 목록을 가져오는 메소드
	//가져올때 일련번호는 맨뒤의 각 권별 상세 번호는 가져오지 않는다.
	function findBookListBysidebar(){
		var library = "";
			$(".library").each(function(i){
				if($(this).prop("checked") == true){
					library += $(this).val()+",";
				}
			});
			library = library.substring(0, library.length-1);
			
		var language = "";
		$(".language").each(function(i){
			if($(this).prop("checked") == true){
				language += $(this).val()+",";
			}
		});
		language = language.substring(0, language.length-1);
		
		var category = "";
		$(".category").each(function(i){
			if($(this).prop("checked") == true){
				category += $(this).val()+",";
			}
		});
		category = category.substring(0, category.length-1);
		
		var field = "";
		$(".field").each(function(i){
			if($(this).prop("checked") == true){
				field += $(this).val()+",";
			}
		});
		field = field.substring(0, field.length-1);
		
		console.log("library ==>"+library);
		console.log("language ==>"+language);
		console.log("category ==>"+category);
		console.log("field ==>"+field);
		
		$("#library").val(library);
		$("#language").val(language);
		$("#category").val(category);
		$("#field").val(field);
		$("#sort").val($(".sort").val());
		
		goBook();
		
		
		
	}
	
	function goBook(){
		
		var data_form = $("#sidebarFrm").serialize();
		
		$.ajax({
			
			url:"findBookBySidebar.ana",
			type:"GET",
			data:data_from,
			dataType:"JSON",
			success: function(json){
				
				var resultHtml = "";
				
				if(json.length <= 0){
					html+="<tr>"+
						"<td colspan='7'><h3  align='center'>조건에 맞는 상품이 없습니다</h3></td>"+
						"</tr>";
				}else{
					$.each(json,function(bookIndex,book){
						
						resultHTML = "<tr class='BookInfo' onClick='goBookDetail(\""+book.bookid+"\")'>"+
						"<td>"+book.bookid+"</td>"+
							"<td>"+book.title+"</td>"+
							"<td>"+book.field+"-"+book.janre+"</td>"+
							"<td>"+book.ISBN+"</td>"+
							"<td>"+book.author+"</td>"+       
							"<td>"+book.pubname+"</td>"+
							"<td>"+book.regDate+"</td>"+
						"</tr>";
							
						});
				}
				
		
				$("#displayBookList").empty().html(resultHTML);
				
			
				
			},error:function(request,status,error){
			    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			   }


		});
	}
	
</script>	
<div class="container-fluid" style="padding-left:200px;">      
<div class="row">
<div class="col-lg-12 col-sm-12 "><span style="font-weight:bold; font-size: 24pt; margin-bottom:15px;">도서관리 > 도서목록</span></div>
		<div class="col-lg-8 col-sm-8">
			<div class="search col-lg-12"
				style="margin-left: 20px; margin-top: 5px; float: left;">
				<select
					style="padding: .2em .4em; font-size: 13pt; background-color: #2196F3; height: 29pt; color: #fff; border-radius: 3px;">
					<option value="name">도서명</option>
					<option value="bookid">도서번호</option>
					<option value="publisher">출판사</option>
				</select> <input type="text" placeholder="Search.." name="search2">
				<button type="submit">
					<i class="fa fa-search"></i>
				</button>
			</div>
			<select style="float: right; height: 15pt;" class="sort">
				<option value="title">등록날짜</option>
				<option value="count">권수</option>
				<option value="bookid">도서명</option>
			</select>

		</div>
		<div class="col-lg-8 col-sm-8">       
	<table class="table table-striped" id="section1">     
		<thead>
			<tr>
				<th>도서번호</th>
				<th>분류</th>
				<th>도서명</th>      
				<th>ISBN</th>
				<th>저자/역자</th>
				<th>출판사</th>
				<th>최초 등록날짜</th>
			</tr>
		</thead>
		<tbody id="displayBookList">
			<tr class="BookInfo">
			<td>도서번호1</td>
				<td>제목1</td>
				<td>제목1</td>
				
				<td>ISBN1</td>
				<td>저자1</td>       
				<td>출판사1</td>
				<td>등록날짜1</td>
			</tr>
			<tr class="BookInfo">
			<td>도서번호1</td>
				<td>제목1</td>
				<td>제목1</td>
			
				<td>ISBN1</td>
				<td>저자1</td>
				<td>출판사1</td>
				<td>등록날짜1</td>
			</tr>
			<tr class="BookInfo">
			<td>도서번호1</td>
				<td>제목1</td>
				<td>도서번호1</td>
				<td>ISBN1</td>
				<td>저자1</td>
				<td>출판사1</td>
				<td>등록날짜1</td>
			</tr>
			<tr class="BookInfo">
			<td>도서번호1</td>
				<td>제목1</td>
				<td>도서번호1</td>
				<td>ISBN1</td>
				<td>저자1</td>
				<td>출판사1</td>
				<td>등록날짜1</td>
			</tr>
			<tr class="BookInfo">
			<td>도서번호1</td>
				<td>제목1</td>
				<td>도서번호1</td>
				<td>ISBN1</td>
				<td>저자1</td>
				<td>출판사1</td>
				<td>등록날짜1</td>
			</tr>
			<tr class="BookInfo">
			<td>도서번호1</td>
				<td>제목1</td>
				<td>도서번호1</td>
				<td>ISBN1</td>
				<td>저자1</td>
				<td>출판사1</td>
				<td>등록날짜1</td>
			</tr>
				<tr class="BookInfo">
				<td>도서번호1</td>
				<td>제목1</td>
				<td>도서번호1</td>
				<td>ISBN1</td>
				<td>저자1</td>
				<td>출판사1</td>
				<td>등록날짜1</td>
			</tr>
			<tr class="BookInfo">
			<td>도서번호1</td>
				<td>제목1</td>
				<td>도서번호1</td>
				<td>ISBN1</td>
				<td>저자1</td>
				<td>출판사1</td>
				<td>등록날짜1</td>
			</tr>
			
		</tbody>
	</table>
</div>
<div class="col-lg-offset-1 col-lg-3 col-sm-offset-1 col-sm-3">
	<div style="font-weight:bold; font-family: 'NanumGothicBold'; border: 0px solid red; color:#0088cc; font-size: 12pt;">조회 조건 
		<button type="button" id="btnFindBook" style="font-size:10pt;" onClick="findBookListBysidebar();">검색</button>  </div>
	          
	<div style="float: left; border: 1px solid gray;" class="sidebar">        
		<div style="width: 200px;" >
			<div>
				<div class="sideHeader" style="">도서관</div>  
			</div>    
			<ul class="sideinfo">
				<li><input type="checkbox"  class="library sideli" value="100"/><a onClick="findBookListbyLibrary('100');"  class="sideText">종로(도서권수)</a></li>
				
				<li><input type="checkbox" class="library sideli" value="200"/><a onClick="" class="sideText">마포</a></li>
				
				<li><input type="checkbox"  class="library sideli" value="300"/><a onClick="" class="sideText">구리</a></li>
				
				<li><input type="checkbox"  class="library sideli" value="400"/><a onClick="" class="sideText">화정</a></li>
				
				<li><input type="checkbox"  class="library sideli" value="500"/><a onClick="" class="sideText">수유</a></li>
			</ul>
			
		</div>
		<div>
			<div>
				<div class="sideHeader">언어</div>
			</div>
				<ul class="sideinfo">
				<li><input type="checkbox"  class="language sideli" value="A1"/><a onClick="findBookListbyLanguage('언어코드');" class="sideText">한국어(도서권수)</a></li>
				
				<li><input type="checkbox"  class="language sideli" value="A2"/><a onClick="" class="sideText">일본어</a></li>
				
				<li><input type="checkbox"  class="language sideli" value="B1"/><a onClick="" class="sideText">영어</a></li>
				
				<li><input type="checkbox"  class="language sideli" value="B2"/><a onClick="" class="sideText">중국어</a></li>
				
				<li><input type="checkbox"  class="language sideli" value="C3"/><a onClick="" class="sideText">프랑스어</a></li>
			</ul>
		</div>
		<div>
			<div>
				<div class="sideHeader">종류</div>
			</div>
				<ul class="sideinfo">
				<li><input type="checkbox"  class="category sideli" value="A01"/><a onClick="findBookListbyCategory('카테고리코드');" class="sideText">소설(도서권수)</a></li>
				
				<li><input type="checkbox"  class="category sideli" value="A02"/><a onClick="" class="sideText">수필</a></li>
				<li><input type="checkbox"  class="category sideli" value="A03"/><a onClick="" class="sideText">에세이</a></li>				
				<li><input type="checkbox"  class="category sideli" value="A04"/><a onClick="" class="sideText">시</a></li>
				
				<li><input type="checkbox" class="category sideli" value="A05"/><a onClick="" class="sideText">사전/논문</a></li>
				
				<li><input type="checkbox"  class="category sideli" value="A06"/><a onClick="" class="sideText">동화책</a></li>
				<li><input type="checkbox"  class="category sideli" value="A07"/><a onClick="" class="sideText">잡지</a></li>
				<li><input type="checkbox"  class="category sideli" value="A08"/><a onClick="" class="sideText">만화책</a></li>
				<li><input type="checkbox"  class="category sideli" value="A09"/><a onClick="" class="sideText">문제집</a></li>
				
			</ul>
		</div>
		<div>
			<div>
				<div class="sideHeader">분야</div>
			</div>
				<ul class="sideinfo">
				<li><input type="checkbox"  class="field sideli" value="0"/><a onClick="findBookListbyField('분야 코드');" class="sideText">총류(사전)</a></li>
				
				<li><input type="checkbox"  class="field sideli" value="1"/><a onClick="" class="sideText">철학,심리학(도서권수)</a></li>
			
				<li><input type="checkbox"  class="field sideli" value="2"/><a onClick="" class="sideText">종교</a></li>
				
				<li><input type="checkbox"  class="field sideli" value="3"/><a onClick="" class="sideText">사회과학</a></li>
				
				<li><input type="checkbox"  class="field sideli" value="4"/><a onClick="" class="sideText">자연과학</a></li>
				<li><input type="checkbox" class="field sideli" value="5"/><a onClick="" class="sideText">기술과학</a></li>
				<li><input type="checkbox"  class="field sideli" value="6"/><a onClick="" class="sideText">예술</a></li>
				<li><input type="checkbox"  class="field sideli" value="7"/><a onClick="" class="sideText">언어</a></li>
				<li><input type="checkbox" class="field sideli" value="8"/><a onClick="" class="sideText">문학</a></li>
				<li><input type="checkbox"  class="field sideli" value="9"/><a onClick="" class="sideText">역사,지리</a></li>
			</ul>
		</div>

	</div>
</div>
</div>
	</div>

<form name="sidebarFrm" id="sidebarFrm">
	<input type="hidden" name="sort" id="sort" value=""/>
	<input type="hidden" name="library" id="library" value=""/>
	<input type="hidden" name="language" id="language" value=""/>
	<input type="hidden" name="category" id="category" value=""/>
	<input type="hidden" name="field" id="field" value=""/>
</form>
