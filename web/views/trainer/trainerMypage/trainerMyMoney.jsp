<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="/omg/resources/css/fmypageContainer.css">
<link rel="stylesheet" type="text/css"
	href="/omg/resources/css/tjob.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style type="text/css">


.option-tiny-popup {
   
}

</style>
</head>
<body>

	<section style="height: 1500px;">
		<div class="mypage-contents">
			<%@ include file="trainerMypageAside.jsp"%>
			<div class="right-container">
				<div class="info-container">
					<div class="head_article">
						<h3 class="info-header">정산내역조회</h3>
					</div>
					<br>
					<div style="float: right;">
						<button class="searchDetail" onclick="searchDetail()"><img src="../../resources/button/searchmore.png">고급검색</button>
						<button class="searchDetail" onclick=""><img src="../../resources/button/excel.png">다운로드</button>
						<button class="searchDetail" onclick="prompt('이의신청 사유를 입력하세요.');"><img src="../../resources/button/exclamation.png">이의신청</button>
						
						<br>
					</div>
					<div class="jlist-container">
						<table class="jlist-table" id="customer_table">
							<thead class="jlist-table-thead"
								style="background: rgb(204, 204, 204); border-bottom: 1px solid rgb(219, 219, 219);">
								<tr style="height: 50px;">
									<th class="jlist-export-not" scope="col"
										style="width: 2%; color: rgb(0, 0, 0);"></th>
									<th scope="col" style="width: 8%; color: rgb(0, 0, 0);">정산번호</th>
									<th scope="col" style="width: 8%; color: rgb(0, 0, 0);">회원ID</th>
									<th scope="col" style="width: 8%; color: rgb(0, 0, 0);">시작일</th>
									<th scope="col" style="width: 8%; color: rgb(0, 0, 0);">종료일</th>
									<th scope="col" style="width: 8%; color: rgb(0, 0, 0);">총횟수</th>
									<th scope="col" style="width: 8%; color: rgb(0, 0, 0);">정산금액</th>
									<th scope="col" style="width: 10%; color: rgb(0, 0, 0);">지급여부</th>
									<th scope="col" style="width: 8%; color: rgb(0, 0, 0);">담당자</th>
								</tr>
							</thead>
							<tbody class="jlist-table-tbody"
								style="height: 596px; background: rgb(255, 255, 255); height: 50px;"
								align="center">
								<tr valign="middle"
									style="color: rgb(0, 0, 0); border-bottom: 1px solid rgb(221, 221, 221); height: 50px;" >
									<td class="jlist-export-not" style="width: 2%;"><input
										class="jlist-checkbox" type="checkbox"></td>
									<td class="jlist-td-data" style="width: 8%;">1
										</div>
									</td>
									<td class="jlist-td-data" style="width: 8%;">soi0205</td>
									<td class="jlist-td-data" style="width: 8%;">2020.04.08</td>
									<td class="jlist-td-data" style="width: 8%;">2020.07.09</td>
									<td class="jlist-td-data" style="width: 8%;">10</td>
									<td class="jlist-td-data" style="width: 8%;">10</td>
									<td class="jlist-td-data" style="width: 10%;">지급완료</td>
									<td class="jlist-td-data" style="width: 8%;">장소이</td>
								</tr>
							</tbody>
						</table>
					</div>

					<!-- 고급검색 -->
					<div id="option-tiny-popup"
						style="height: 450px; top: 179px; left: 943.2px; display: none; float: right;  -webkit-animation: fadein 0.5s;
						animation: fadein 0.5s;
						position: absolute;
						padding: 10px;
						height: auto;
						width: 350px;
						z-index: 100000;
						box-sizing: border-box;
						background-color: rgba(0, 0, 0, 0.8);
						border-radius: 5px;
						color: white;
						font-size: 9pt;
						font-weight: 300;">
						<div class="option-tiny-popup-body" style="color: white;">
							<img src="../../resources/button/searchmore.png"><a style="color: white;">고급
								검색</a><br>
							<hr><br>
							<p>시작일자 검색 (기간 내 시작 수강생)</p>
							<input class="input-date-half" type="date"> ~ <input
								class="input-date-half" type="date"><br>
							<p>종료일자 검색 (기간 내 종료 수강생)</p>
							<input class="input-date-half" type="date"> ~ <input
								class="input-date-half" type="date"><br>
							<p>횟수 검색 (예 : 10회 세션 이하 수강생)</p>
							<input type="number" class="input-date-half" placeholder="숫자 입력">
							회 세션 이하<br>
							<p>포인트 검색 (예 : 100포인트 이하 수강생)</p>
							<input type="number" class="input-date-half" placeholder="숫자 입력">
							포인트 이하<br>
							<p>진행여부로 검색</p>
							<div style="width: 100%; height: 42px;">
								<button class="check-status-btn" active="false" value="active"><img src="../../resources/button/search_pting.png"></button>
								<button class="check-status-btn" active="false" value="soon"><img src="../../resources/button/search_ptfinish.png"></button>
							</div>
						</div>
						<div class="option-tiny-popup-top" align="right">
							<hr><br>
							<div class="off">
								<button onclick="searchDetail();"><img src="../../resources/button/close.png"></button>
								<button><img src="../../resources/button/search_cancle.png"></button>
								<button><img src="../../resources/button/search_se.png"></button>
							</div>
						</div>
					</div>




				</div>
			</div>
		</div>
	</section>

	<footer id="foot">
		<%@ include file="../../common/footer.jsp"%>
	</footer>
	
	
	<script type="text/javascript">
		function searchDetail() {
			var con = document.getElementById("option-tiny-popup");
			
			if(con.style.display=='none'){
				con.style.display = 'block';
			}else if(con.style.display=='block'){
				con.style.display = 'none';
			}
			
		}
		
	</script>
	
	
	
	

</body>
</html>