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
		
		
		searchPublisher("1", "")
		
	}); // end of $(document).ready(function(){});---------------------------------
	
	function searchPublisher(currentShowPageNo, SearchWord)
	{
		var form_data = {"currentShowPageNo":currentShowPageNo,
						 "SearchWord":SearchWord}		
		
		$.ajax({
			url:"http://openapi.sdm.go.kr:8088/73664e51596462613931546f536775/json/SeodaemunPublisherPrintBiz/1/1000",
			// data:form_data,
			type:"GET",
			dataType:"JSON",
			success:function(json){
				var resultHTML = "";
				console.log(json.SeodaemunPublisherPrintBiz.row.length);
				$.each(json.SeodaemunPublisherPrintBiz.row, function(entryIndex, entry){
					resultHTML += "<tr>" +
									  "<td>"+entry.COMPANY+"</td>"+
									  "<td>"+entry.ADDR+"</td>"+
									  "<td>"+entry.TEL+"</td>"+
									  "<td style='text-align: center;'>"+entry.BIZ_GUBUN+"</td>"+
								  "</tr>" ;	
				});
				
				$("#publisherDisplay").empty().html(resultHTML);
				
				
			},
			error: function(request, status, error){
				alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error );
			}
			
			
		});
		
	}
	
	
	
	
	
</script>

<body>

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