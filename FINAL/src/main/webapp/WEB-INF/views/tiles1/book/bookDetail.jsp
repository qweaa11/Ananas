<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Bootstrap Core JavaScript -->
<script src="resources/js/bootstrap.min.js"></script>

<!-- jQuery -->
<script src="resources/js/jquery.js"></script>
<!-- Custom CSS -->



<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<!-- Navigation -->

<style>
th, td {
	padding: 5px;
	text-align: center;
}

.table-striped td, .table-striped th {
	border: 1px solid #ddd;
	border-collapse: collapse;
}
</style>
<script type="text/javascript">
	$(document).ready(function() {

		$("#totalck").click(function() {

			$("input[type='checkbox']").prop('checked', this.checked);

		});

	});
</script>

<!-- Page Content -->
<div class="container-fluid" style="padding-left: 110px;">


	<div class="row">

		<div class="col-lg-offset-3 col-lg-9" style="margin-bottom: 15px;">
			<span style="font-weight: bold; font-size: 22pt;">도서관리 ></span> <span
				style="font-weight: bold; font-size: 20pt;">도서목록 ></span> <span
				style="font-weight: bold; font-size: 18pt;">도서상세</span>
		</div>
		<!-- Blog Post Content Column -->
		<div class="col-lg-4" style="padding: 5px;">

			<div class="col-lg-12 ">
				<div class="col-lg-4">
					<!-- Preview Image -->
					<img class="img-responsive"
						src="https://image.aladin.co.kr/product/17237/69/cover/k912534091_1.jpg"
						alt="">
				</div>
				<div class="col-lg-offset-1 col-lg-7">
					<table class="table" style="background-color: #f5f5f5">
						<tr>
							<th>도서명</th>
							<td>ㅋㅋㅋㅋ</td>
						</tr>
						<tr>
							<th>저자/역자</th>
							<td>김국하</td>
						</tr>
						<tr>
							<th>출판사</th>
							<td>ㅋㅋㅋㅋ</td>
						</tr>
						<tr>
							<th>자료 유형</th>
							<td>소설, 시 같은거</td>
						</tr>
						<tr>
							<th>장르</th>
							<td>종류 / 분야 / 장르 적기</td>
						</tr>
					</table>
				</div>
			</div>

			<!-- Post Content -->
			<div class="col-lg-12" style="margin-top: 20px;">
				<h2>책소개</h2>
				<span class="lead">Lorem ipsum dolor sit amet, consectetur
					adipisicing elit. Ducimus, vero, obcaecati, aut, error quam
					sapiente nemo saepe quibusdam sit excepturi nam quia corporis
					eligendi eos magni recusandae laborum minus inventore?</span>
			</div>
		</div>

		<!-- Blog Sidebar Widgets Column -->
		<div class="col-lg-7 col-sm-7" style="margin-left: 10px;">
			<ul class="nav nav-tabs">
				<li><a data-toggle="tab" href="#Allbook">도서 현황</a></li>
				<li><a data-toggle="tab" href="#reservation">예약 현황</a></li>
			</ul>
			<div class="tab-content">
				<div id="Allbook" class="tab-pane fade in active">
					
					<table class="table table-striped bookstatus"
						style="border: 1px solid #ddd;" id="section1">
						<thead>
							<tr>
								<th><input type="checkbox" style="float: left;"
									id="totalck" value="total" /><label for="totalck">도서번호</label></th>
								<th>ISBN</th>
								<th>가격</th>
								<th>무게</th>
								<th>쪽수</th>
								<th>발행일자</th>
								<th>등록일자</th>
								<th>위치</th>
								<th>상태</th>

							</tr>
						</thead>
						<tbody id="displayBookList">
							<tr class="BookInfo">
								<td><input type="checkbox" style="float: left;" />도서번호1</td>
								<td>145281502</td>
								
								<td>30000</td>
								<td>2.1kg</td>

								<td>350page</td>
								<td>2018/09/09</td>
								<td>2018/11/12</td>
								<td>지도</td>
								<td>대여 중</td>
							</tr>
							<tr class="BookInfo">
								<td><input type="checkbox" style="float: left;" />도서번호1</td>
								<td>145281502</td>
								<td>30000</td>
								<td>2.1kg</td>

								<td>350page</td>
								<td>2018/09/09</td>
								<td>2018/11/12</td>
								<td>지도</td>
								<td>분실</td>
							</tr>
							<tr class="BookInfo">
								<td><input type="checkbox" style="float: left;" />도서번호1</td>
								<td>145281502</td>
								<td>30000</td>
								<td>2.1kg</td>

								<td>350page</td>
								<td>2018/09/09</td>
								<td>2018/11/12</td>
								<td>지도</td>
								<td>대여가능</td>
							</tr>
							<tr class="BookInfo">
								<td><input type="checkbox" style="float: left;" />도서번호1</td>
								<td>145753502</td>
								<td>30000</td>
								<td>2.1kg</td>

								<td>350page</td>
								<td>2018/12/09</td>
								<td>2019/01/12</td>
								<td>지도</td>
								<td>예약중</td>
							</tr>
							<tr class="BookInfo">
								<td><input type="checkbox" style="float: left;" />도서번호1</td>
								<td>145753502</td>
								<td>30000</td>
								<td>2.1kg</td>

								<td>350page</td>
								<td>2018/12/09</td>
								<td>2019/01/12</td>
								<td>지도</td>
								<td>대여가능</td>
							</tr>
							<tr class="BookInfo">
								<td><input type="checkbox" style="float: left;" />도서번호1</td>
								<td>145753502</td>
								<td>30000</td>
								<td>2.1kg</td>

								<td>350page</td>
								<td>2018/12/09</td>
								<td>2019/01/12</td>
								<td>지도</td>
								<td>대여 중</td>
							</tr>
							<tr class="BookInfo">
								<td><input type="checkbox" style="float: left;" />도서번호1</td>
								<td>145753502</td>
								<td>30000</td>
								<td>2.1kg</td>

								<td>350page</td>
								<td>2018/12/09</td>
								<td>2019/01/12</td>
								<td>지도</td>
								<td>예약 중</td>
							</tr>
							<tr class="BookInfo">
								<td><input type="checkbox" style="float: left;" />도서번호1</td>
								<td>145753502</td>
								<td>30000</td>
								<td>2.1kg</td>

								<td>350page</td>
								<td>2018/12/09</td>
								<td>2019/01/12</td>
								<td>지도</td>
								<td>대여가능</td>
							</tr>

						</tbody>
					</table>
				</div>
				<div id="reservation" class="tab-pane fade">
					<div
						style="font-size: 15pt; padding-left: 6px; margin-bottom: 5px; margin-top: 30px;">예약
						현황&nbsp;</div>
					<table class="table table-striped bookstatus"
						style="border: 1px solid #ddd;" id="section1">
						<thead>
							<tr>
								<th><input type="checkbox" style="float: left;"
									id="totalck" value="total" /><label for="totalck">도서번호</label></th>
								<th>ISBN</th>
								<th>예약회원</th>
								<th>이름</th>
								<th>연락처</th>
								<th>발행일자</th>
								<th>등록일자</th>
								<th>위치</th>
								<th>상태</th>

							</tr>
						</thead>
						<tbody id="displayBookList">
							<tr class="BookInfo">
								<td><input type="checkbox" style="float: left;" />도서번호1</td>
								<td>145281502</td>
								<td>30000</td>
								<td>2.1kg</td>

								<td>350page</td>
								<td>2018/09/09</td>
								<td>2018/11/12</td>
								<td>지도</td>
								<td>대여 중</td>
							</tr>
							<tr class="BookInfo">
								<td><input type="checkbox" style="float: left;" />도서번호1</td>
								<td>145281502</td>
								<td>30000</td>
								<td>2.1kg</td>

								<td>350page</td>
								<td>2018/09/09</td>
								<td>2018/11/12</td>
								<td>지도</td>
								<td>분실</td>
							</tr>
							<tr class="BookInfo">
								<td><input type="checkbox" style="float: left;" />도서번호1</td>
								<td>145281502</td>
								<td>30000</td>
								<td>2.1kg</td>

								<td>350page</td>
								<td>2018/09/09</td>
								<td>2018/11/12</td>
								<td>지도</td>
								<td>대여가능</td>
							</tr>
							<tr class="BookInfo">
								<td><input type="checkbox" style="float: left;" />도서번호1</td>
								<td>145753502</td>
								<td>30000</td>
								<td>2.1kg</td>

								<td>350page</td>
								<td>2018/12/09</td>
								<td>2019/01/12</td>
								<td>지도</td>
								<td>예약중</td>
							</tr>
							<tr class="BookInfo">
								<td><input type="checkbox" style="float: left;" />도서번호1</td>
								<td>145753502</td>
								<td>30000</td>
								<td>2.1kg</td>

								<td>350page</td>
								<td>2018/12/09</td>
								<td>2019/01/12</td>
								<td>지도</td>
								<td>대여가능</td>
							</tr>
							<tr class="BookInfo">
								<td><input type="checkbox" style="float: left;" />도서번호1</td>
								<td>145753502</td>
								<td>30000</td>
								<td>2.1kg</td>

								<td>350page</td>
								<td>2018/12/09</td>
								<td>2019/01/12</td>
								<td>지도</td>
								<td>대여 중</td>
							</tr>
							<tr class="BookInfo">
								<td><input type="checkbox" style="float: left;" />도서번호1</td>
								<td>145753502</td>
								<td>30000</td>
								<td>2.1kg</td>

								<td>350page</td>
								<td>2018/12/09</td>
								<td>2019/01/12</td>
								<td>지도</td>
								<td>예약 중</td>
							</tr>
							<tr class="BookInfo">
								<td><input type="checkbox" style="float: left;" />도서번호1</td>
								<td>145753502</td>
								<td>30000</td>
								<td>2.1kg</td>

								<td>350page</td>
								<td>2018/12/09</td>
								<td>2019/01/12</td>
								<td>지도</td>
								<td>대여가능</td>
							</tr>

						</tbody>
					</table>
				</div>
			</div>
		</div>




	</div>
	<!-- /.row -->




</div>
<!-- /.container -->


