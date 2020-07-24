<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.omg.jsp.trainerSalary.model.vo.*, java.util.*"%>
	<% ArrayList<Salary> list = (ArrayList<Salary>) request.getAttribute("salarylist"); %>	
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

    table {
            text-align: center;
            border-collapse: collapse;
        }
        tr {
            height: 20px;
        }
        th {
            font-size: 13px;
            height: 40px;
            border-bottom: 3px double gray;
            background: lightgray;
            color: white;
            font-weight: normal;
        }
        td {
            font-family:"Noto Sans KR Regular ";
            font-size: 14px;
            height: 35px;
            border-bottom: 2px solid gray;
        }
        td > a {
            color: black;
            text-decoration: underline;
            font-size: 14px;
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
						<button class="searchDetail" onclick="searchDetail()"><img src="/omg/resources/button/searchmore.png">고급검색</button>
						<button class="searchDetail" onclick=""><img src="/omg/resources/button/excel.png">다운로드</button>
						<button class="searchDetail" onclick="prompt('이의신청 사유를 입력하세요.');"><img src="/omg/resources/button/exclamation.png">이의신청</button>
						
						<br>
					</div>
					<div class="jlist-container">
						 <table>
                    <tr>
                        <th width="30px;">선택</th>
                        <th width="30px;">No</th>
                        <th width="60px;">트레이너ID</th>
                        <th width="60px;">회당 수업료</th>
                        <th width="30px;">지급월</th>
                        <th width="50px;">수업횟수</th>
                        <th width="60px;">총 금액</th>
                        <th width="60px;">세액(3.3%)</th>
                        <th width="60px;">최종금액</th>
                        <th width="40px">지급여부</th>
                        <th width="50px">정산내역서</th>
                    </tr>
                    
                    <% int listnum = list.size(); %>
	                <% for(int i=0; i<list.size(); i++){ %>
                    
                    <form name="selectSalaryTrainer" id="selectSalaryTrainer" action="<%=request.getContextPath()%>/select.trainer.salary.gd" method = "post">
				 	<tr>
				 	
				 	<%
				 	double totalFee = list.get(i).getLevelFee() * list.get(i).getTrainingTimes();
				 	double tax = list.get(i).getLevelFee() * list.get(i).getTrainingTimes() * 33/1000 ;
				 	double finalFee = totalFee - tax ;
				 	%>
				 	
                        <td><input type="checkbox"></td>
                        <td><%= listnum %></td>
                        <td><%= list.get(i).getTrainerId() %></td>
                        <td><%= list.get(i).getLevelFee() %>원</td>
                        <td><%= list.get(i).getSalaryMonth() %>월</td>
                        <td><%= list.get(i).getTrainingTimes() %>회</td>
                        <td><%= totalFee %>원</td>
                        <td><%= tax %>원</td>
                        <td><%= finalFee %>원</td>
                        <td><%= list.get(i).getPayYN() %></td>
	                    <td><div onclick="">다운로드</div><!-- 정산내역서 엑셀로 다운 -->
	                    </td>
                    </tr>
                    
                    <input type="hidden" name="salaryManageCode" value="<%= list.get(i).getSalaryManageCode() %>">
                    
                    </form>
                    <% listnum -= 1;} %>
                    
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
							<img src="/omg/resources/button/searchmore.png"><a style="color: white;">고급
								검색</a><br>
							<hr><br>
							<p>시작일자 검색 (기간 내 시작 수강생)</p>
							<input class="input-date-half" type="date"> ~ <input
								class="input-date-half" type="date"><br>
							<p>종료일자 검색 (기간 내 종료 수강생)</p>
							<input class="input-date-half" type="date"> ~ <input
								class="input-date-half" type="date"><br>
							<p>금액 검색 </p>
							<input type="number" class="input-date-half" placeholder="숫자 입력">
							원 이상<br>
							<p>진행여부로 검색</p>
							<div style="width: 100%; height: 42px;">
								<button class="check-status-btn" active="false" value="active"><img src="/omg/resources/button/search_pting.png"></button>
								<button class="check-status-btn" active="false" value="soon"><img src="/omg/resources/button/search_ptfinish.png"></button>
							</div>
						</div>
						<div class="option-tiny-popup-top" align="right">
							<hr><br>
							<div class="off">
								<button onclick="searchDetail();"><img src="/omg/resources/button/close.png"></button>
								<button><img src="/omg/resources/button/search_cancle.png"></button>
								<button><img src="/omg/resources/button/search_se.png"></button>
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