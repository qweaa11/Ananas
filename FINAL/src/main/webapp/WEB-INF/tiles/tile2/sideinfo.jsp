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


</style>
<script>

	$(document).ready(function(){
		         
		
		
	});
	
</script>
	<h3 style="font-weight:bold; font-family: serif;">조회 조건</h3>
	<div style="float: left; border: 1px solid gray; margin-left: 8px;">
		<div style="width:200px;">
			<div>
				<h4>도서관</h4>
			</div>
			<ul class="sideinfo">
				<li><input type="checkbox" id="library1" class="library sideli"/><span class="sideText">종로</span></li>
				
				<li><input type="checkbox" id="library2" class="library sideli"/><span class="sideText">마포</span></li>
				
				<li><input type="checkbox" id="library3" class="library sideli"/><span class="sideText">구리</span></li>
				
				<li><input type="checkbox" id="library4" class="library sideli"/><span class="sideText">화정</span></li>
				
				<li><input type="checkbox" id="library5" class="library sideli"/><span class="sideText">수유</span></li>
			</ul>
			
		</div>
		<div>
			<div>
				<h4>언어</h4>
			</div>
				<ul class="sideinfo">
				<li><input type="checkbox" id="language1" class="language sideli"/><span class="sideText">종로</span></li>
				
				<li><input type="checkbox" id="language2" class="language sideli"/><span class="sideText">마포</span></li>
				
				<li><input type="checkbox" id="language3" class="language sideli"/><span class="sideText">구리</span></li>
				
				<li><input type="checkbox" id="language4" class="language sideli"/><span class="sideText">화정</span></li>
				
				<li><input type="checkbox" id="language5" class="language sideli"/><span class="sideText">수유</span></li>
			</ul>
		</div>
		<div>
			<div>
				<h4>종류</h4>
			</div>
				<ul class="sideinfo">
				<li><input type="checkbox" id="category1" class="category"/><span class="sideText">종로</span></li>
				
				<li><input type="checkbox" id="category2" class="category"/><span class="sideText">마포</span></li>
				
				<li><input type="checkbox" id="category3" class="category"/><span class="sideText">구리</span></li>
				
				<li><input type="checkbox" id="category4" class="category"/><span class="sideText">화정</span></li>
				
				<li><input type="checkbox" id="category5" class="category"/><span class="sideText">수유</span></li>
			</ul>
		</div>
		<div>
			<div>
				<h4>분야</h4>
			</div>
				<ul class="sideinfo">
				<li><input type="checkbox" id="field1" class="field"/><span class="sideText">종로</span></li>
				
				<li><input type="checkbox" id="field2" class="field"/><span class="sideText">마포</span></li>
				
				<li><input type="checkbox" id="field3" class="field"/><span class="sideText">구리</span></li>
				
				<li><input type="checkbox" id="field4" class="field"/><span class="sideText">화정</span></li>
				
				<li><input type="checkbox" id="field5" class="field"/><span class="sideText">수유</span></li>
			</ul>
		</div>

	</div>
