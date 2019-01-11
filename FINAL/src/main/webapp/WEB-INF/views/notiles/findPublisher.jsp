<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<style>
	table, th, td, input, textarea {border: solid gray 1px;}
   
   #table {border-collapse: collapse;
          width: 1000px;
          }
   #table th, #table td{padding: 5px;}
   #table th{width: 120px; background-color: #DDDDDD;}
   #table td{width: 860px;}
   .long {width: 470px;}
   .short {width: 120px;}       
</style>    

<script>
	
	//재귀함수 호출시 링크 인덱스의 처음 값을 설정하기 위한 변수
	var count = 0;
	
	var resultHTML = "";
	

	
	$(document).ready(function(){
		
		
		
		// 검색 버튼을 눌렀을때.
		$("#searchPublisher").click(function(){
			$("#publisherDisplay").empty();
			count = 0;
			
			var searchWord = $("#searchWord").val();	// 검색어를 searchWord변수에 넣는다.
			console.log("검색어: "+searchWord);
			
			searchPublisher(1, 1000, searchWord );
			
		});
		
		
		showPublisher(1, 1000);
		// 페이지가 열리면 공공 DB에 있는 출판사 정보를 전부 긁어 온다.
		
		
	}); // end of $(document).ready(function(){});---------------------------------
	
	
	
	function searchPublisher(startNo, endNo, searchWord)
	{	// 담아온 publisher를 부모페이지에 넘기는 함수
		
		console.log("startNo: "+ startNo);
		console.log("검색어확인용: "+searchWord);
		
		
		
		$.ajax({
			url:"http://openapi.sdm.go.kr:8088/73664e51596462613931546f536775/json/SeodaemunPublisherPrintBiz/"+startNo+"/"+endNo,
		// 	data:form_data,
			type:"GET",
			dataType:"JSON",
			success:function(json){
			    
				console.log("검색어확인용2: "+searchWord);
				
				$.each(json, function(entryIndex, entry){
					
					
					
					if(searchWord == "" || searchWord == null)
					{// 검색어가 없을시 
						
						resultHTML = "<tr>" +
										  "<td colspan=\"5\" style='text-align: center;'>"+"검색어를 입력하세요"+"</td>"+
									  "</tr>"  ;
					}
					else
					{// 검색어가 있을시 
						console.log("검색어확인용3: "+searchWord);
						
						var str_json = JSON.stringify(entry.row);
						
					
						console.log("typeof str_json : "+ typeof str_json);
						
						console.log("str_json : "+ str_json);
						/* for(var i=0; i < str_json.length;i++){
							<!--console.log(str_json[i].COMPANY); -->
						} */
							if(str_json.COMPANY.indexOf(str_json.COMPANY, searchWord) != -1)
							{
								console.log("확인용~~~~~~~~~~~~~~~: ");			  
								resultHTML += "<tr>" +
												  "<td>"+cnt+"</td>"+
												  "<td><a onClick='sendBack(\""+entry.COMPANY+"\");'>"+entry.COMPANY+"</a></td>"+
												  				  // sendBack()함수에 출판사 이름을 담아 넘김
												  "<td>"+entry.ADDR+"</td>"+
												  "<td>"+entry.TEL+"</td>"+
												  "<td style='text-align: center;'>"+entry.BIZ_GUBUN+"</td>"+
											  "</tr>" ;
											  
								console.log("resultHTML: "+ resultHTML);			  
											  
							}
							else{
								console.log("확인용###############: ");	
							}
						
						
						
					} 
					
					
					
				});
				
				
				$("#publisherDisplay").append(resultHTML); 
				
				console.log("json.SeodaemunPublisherPrintBiz.row.length : "+ json.SeodaemunPublisherPrintBiz.row.length);
				
				
				count++;
			 	console.log("count"+count);
				if( json.SeodaemunPublisherPrintBiz.row.length % 1000 == 0){
					showPublisher(1000*count+1, 1000*count+1000);
				}
				
				
			},// end of sucess---------------------------------------------------------
			error: function(request, status, error){
				alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error );
			}// end of error---------------------------------------------------------
			
			
			
		});// end of $.ajax()---------------------------------------------------------
		
		
		
		
	}// end of function searchPublisher(startNo, endNo, searchWord)-----------------------------------------------
	
	
	
	function sendBack(publisher)
	{	// 담아온 publisher를 부모페이지에 넘기는 함수
		$(opener.document).find("#publisher").val(publisher);
		// 부모페이지에서 id값이 publisher인 것을 찾아 publisher값을 넘긴다.
		self.close();
		// 넘긴후에 창 닫는 메소드
	}// end of function sendBack(publisher)-----------------------------------------------
	
	
	var cnt = 0;
	
	function showPublisher(startNo, endNo)
	{
		
		$.ajax({
			url:"http://openapi.sdm.go.kr:8088/73664e51596462613931546f536775/json/SeodaemunPublisherPrintBiz/"+startNo+"/"+endNo,
		// 	data:form_data,
			type:"GET",
			dataType:"JSON",
			success:function(json){
				var resultHTML = "";
				
				
				
				$.each(json.SeodaemunPublisherPrintBiz.row, function(entryIndex, entry){
					cnt++;
					
					
					
					
					resultHTML += "<tr>" +
									  "<td>"+cnt+"</td>"+
									  "<td><a onClick='sendBack(\""+entry.COMPANY+"\");'>"+entry.COMPANY+"</a></td>"+
									  				  // sendBack()함수에 출판사 이름을 담아 넘김
									  "<td>"+entry.ADDR+"</td>"+
									  "<td>"+entry.TEL+"</td>"+
									  "<td style='text-align: center;'>"+entry.BIZ_GUBUN+"</td>"+
								  "</tr>" ;
					
						  
				});
				
				
				$("#publisherDisplay").append(resultHTML); 
				
				
				console.log("json.SeodaemunPublisherPrintBiz.row.length : "+ json.SeodaemunPublisherPrintBiz.row.length);
				
				
			 	count++;
			 	console.log("count"+count);
				if(json.SeodaemunPublisherPrintBiz.row.length % 1000 == 0){
					showPublisher(1000*count+1, 1000*count+1000);
				}
				
				
			},// end of sucess---------------------------------------------------------
			error: function(request, status, error){
				alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error );
			}// end of error---------------------------------------------------------
			
			
		});// end of $.ajax()---------------------------------------------------------
		
	}// end of function searchPublisher(startNo, endNo)---------------------------------------------------------
	
	
	
	
	
	
</script>

<body>

	<div id="search">
		<input type="text" id="searchWord" name="searchWord" placeholder="출판사 이름을 적어주세요" style="width: 300px;"/>
		<button id="searchPublisher">검색</button>
	</div>

	<div>
		<table id="table">
			<thead>
				<tr>
					<th style="width: 5%; text-align: center;">No</th>
					<th style="width: 20%; text-align: center;">출판사명</th>
					<th style="width: 45%; text-align: center;">출판사 주소</th>
					<th style="width: 20%; text-align: center;">전화번호</th>
					<th style="width: 10%; text-align: center;">영업상태</th>
				</tr>
			</thead>
			<tbody id="publisherDisplay"></tbody>
		</table>
	
	</div>

</body>
</html>