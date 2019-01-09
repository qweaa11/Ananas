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

	$(document).ready(function(){
		
		// 검색 버튼을 눌렀을때.
		$("#searchPublisher").click(function(){
			
			searchPublisher(currentShowPageNo, SearchWord);
			
		});
		
		searchPublisher("1", "");
		
	}); // end of $(document).ready(function(){});---------------------------------
	
	function sendBack(publisher)
	{	// 담아온 publisher를 부모페이지에 넘기는 함수
		$(opener.document).find("#publisher").val(publisher);
		// 부모페이지에서 id값이 publisher인 것을 찾아 publisher값을 넘긴다.
		self.close();
		// 넘긴후에 창 닫는 메소드
	}
	
	function searchPublisher(currentShowPageNo, SearchWord)
	{
		var form_data = {"currentShowPageNo":currentShowPageNo,
						 "COMPANY":publisher}		
		
		$.ajax({
			url:"http://openapi.sdm.go.kr:8088/73664e51596462613931546f536775/json/SeodaemunPublisherPrintBiz/1/1000",
		// 	data:form_data,
			type:"GET",
			dataType:"JSON",
			success:function(json){
				var resultHTML = "";
				console.log(json.SeodaemunPublisherPrintBiz.row.length);
				
				$.each(json.SeodaemunPublisherPrintBiz.row, function(entryIndex, entry){
					resultHTML += "<tr>" +
									  "<td><a onClick='sendBack(\""+entry.COMPANY+"\");'>"+entry.COMPANY+"</a></td>"+
									  				  // sendBack()함수에 출판사 이름을 담아 넘김
									  "<td>"+entry.ADDR+"</td>"+
									  "<td>"+entry.TEL+"</td>"+
									  "<td style='text-align: center;'>"+entry.BIZ_GUBUN+"</td>"+
								  "</tr>" ;	
				});
				
				$("#publisherDisplay").empty().html(resultHTML);
				
				
			},// end of sucess---------------------------------------------------------
			error: function(request, status, error){
				alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error );
			}// end of error---------------------------------------------------------
			
			
		});// end of $.ajax()---------------------------------------------------------
		
	}// end of function searchPublisher(currentShowPageNo, SearchWord)---------------------------------------------------------
	
	
	
	
	
	
</script>

<body>

	<div id="search">
		<input type="text" id="publisher" placeholder="출판사 이름을 적어주세요"/>
		<button id="searchPublisher">검색</button>
	</div>

	<div>
		<table id="table">
			<thead>
				<tr>
					<th style="width: 20%; text-align: center;">출판사명</th>
					<th style="width: 50%; text-align: center;">출판사 주소</th>
					<th style="width: 20%; text-align: center;">전화번호</th>
					<th style="width: 10%; text-align: center;">영업상태</th>
				</tr>
			</thead>
			<tbody id="publisherDisplay"></tbody>
		</table>
	
	</div>

</body>
</html>