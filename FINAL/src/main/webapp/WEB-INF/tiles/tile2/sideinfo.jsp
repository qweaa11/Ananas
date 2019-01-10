<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<style>
ul.sideinfo {
	list-style: none;
	font-size: 10pt;
}

h4 {
	background-color: #d9d9d9;
}

.sideText{ color:black;
			cursor:pointer;}
.sideText:hover {
	text-decoration: underline;
}

.multiselect:hover{
	color:navy;
}
input[type="checkbox"].sideli{
	width:14pt;
	height:14pt;           
}


</style>
<script>

	$(document).ready(function(){
		         
		
		
	});
	
	function findBookListbyLibrary(libcode){
		
	}
	
	function findBookListbyLanguage(lcode){
		
	}
	
	function findBookListbyCategory(ccode){
		
	}
	
	function findBookListbyField(fcode){
		
	}
</script>
	<h3 style="font-weight:bold; font-family: serif; border: 1px solid red; color:#0088cc;">조회 조건</h3>           
	<div style="float: left; border: 1px solid gray; margin-left: 8px;">        
		<div style="width:230px;">
			<div>
				<h4>도서관</h4>
			</div>    
			<ul class="sideinfo">
				<li><input type="checkbox" id="library1" class="library sideli" value="100"/><a onClick="findBookListbyLibrary('도서관코드');"  class="sideText">종로(도서권수)</a></li>
				
				<li><input type="checkbox" id="library2" class="library sideli" value="200"/><a onClick="" class="sideText">마포</a></li>
				
				<li><input type="checkbox" id="library3" class="library sideli" value="300"/><a onClick="" class="sideText">구리</a></li>
				
				<li><input type="checkbox" id="library4" class="library sideli" value="400"/><a onClick="" class="sideText">화정</a></li>
				
				<li><input type="checkbox" id="library5" class="library sideli" value="500"/><a onClick="" class="sideText">수유</a></li>
			</ul>
			
		</div>
		<div>
			<div>
				<h4>언어</h4>
			</div>
				<ul class="sideinfo">
				<li><input type="checkbox" id="language1" class="language sideli" value="A1"/><a onClick="findBookListbyLanguage('언어코드');" class="sideText">한국어(도서권수)</a></li>
				
				<li><input type="checkbox" id="language2" class="language sideli" value="A2"/><a onClick="" class="sideText">일본어</a></li>
				
				<li><input type="checkbox" id="language3" class="language sideli" value="B1"/><a onClick="" class="sideText">영어</a></li>
				
				<li><input type="checkbox" id="language4" class="language sideli" value="B2"/><a onClick="" class="sideText">중국어</a></li>
				
				<li><input type="checkbox" id="language5" class="language sideli" value="C3"/><a onClick="" class="sideText">프랑스어</a></li>
			</ul>
		</div>
		<div>
			<div>
				<h4>종류</h4>
			</div>
				<ul class="sideinfo">
				<li><input type="checkbox" id="category1" class="category sideli" value="A01"/><a onClick="findBookListbyCategory('카테고리코드');" class="sideText">소설(도서권수)</a></li>
				
				<li><input type="checkbox" id="category2" class="category sideli" value="A02"/><a onClick="" class="sideText">수필</a></li>
				<li><input type="checkbox" id="category5" class="category sideli" value="A03"/><a onClick="" class="sideText">에세이</a></li>				
				<li><input type="checkbox" id="category3" class="category sideli" value="A04"/><a onClick="" class="sideText">시</a></li>
				
				<li><input type="checkbox" id="category4" class="category sideli" value="A05"/><a onClick="" class="sideText">사전/논문</a></li>
				
				<li><input type="checkbox" id="category5" class="category sideli" value="A06"/><a onClick="" class="sideText">동화책</a></li>
				<li><input type="checkbox" id="category5" class="category sideli" value="A07"/><a onClick="" class="sideText">잡지</a></li>
				<li><input type="checkbox" id="category5" class="category sideli" value="A08"/><a onClick="" class="sideText">만화책</a></li>
				<li><input type="checkbox" id="category5" class="category sideli" value="A09"/><a onClick="" class="sideText">문제집</a></li>
				
			</ul>
		</div>
		<div>
			<div>
				<h4>분야</h4>
			</div>
				<ul class="sideinfo">
				<li><input type="checkbox" id="field1" class="field sideli" value="000"/><a onClick="findBookListbyField('분야 코드');" class="sideText">총류(사전)</a></li>
				
				<li ><input type="checkbox" id="field2" class="field sideli" value="100"/><a onClick="" class="sideText">철학,심리학(도서권수)</a></li>
				
				<li><input type="checkbox" id="field3" class="field sideli" value="200"/><a onClick="" class="sideText">종교</a></li>
				
				<li><input type="checkbox" id="field4" class="field sideli" value="300"/><a onClick="" class="sideText">사회과학</a></li>
				
				<li><input type="checkbox" id="field5" class="field sideli" value="400"/><a onClick="" class="sideText">자연과학</a></li>
				<li><input type="checkbox" id="field5" class="field sideli" value="500"/><a onClick="" class="sideText">기술과학</a></li>
				<li><input type="checkbox" id="field5" class="field sideli" value="600"/><a onClick="" class="sideText">예술</a></li>
				<li><input type="checkbox" id="field5" class="field sideli" value="700"/><a onClick="" class="sideText">언어</a></li>
				<li><input type="checkbox" id="field5" class="field sideli" value="800"/><a onClick="" class="sideText">문학</a></li>
				<li><input type="checkbox" id="field5" class="field sideli" value="900"/><a onClick="" class="sideText">역사,지리</a></li>
			</ul>
		</div>

	</div>
</div>
</div>
	</div>

<form name="sidebar">
	<input type="hidden" name="library" value=""/>
	<input type="hidden" name="language" value=""/>
	<input type="hidden" name="category" value=""/>
	<input type="hidden" name="field" value=""/>
</form>
