<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.omg.jsp.trainerApplyGrade.model.vo.*, java.util.*"%>
<% ArrayList<Apply> list = (ArrayList<Apply>) request.getAttribute("applylist"); %>	
	
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/omg/resources/css/fmypageContainer.css">
<link rel="stylesheet" type="text/css" href="/omg/resources/css/tjob.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style type="text/css">
 		
 		article table {
            text-align: center;
            border-collapse: collapse;
        }
        
     	article  tr {
            height: 20px;
        }
        
        article th {
            font-size: 13px;
            height: 40px;
            border-bottom: 3px double gray;
            
            color: black;
            font-weight: bold;
        }
        
        article td {
            font-family:"Noto Sans KR Regular ";
            font-size: 14px;
            height: 35px;
            border-bottom: 2px solid gray;
        }
        
        article td > a {
            color: black;
            text-decoration: underline;
            font-size: 14px;
        }
</style>

</head>

<body>

	<section style="height: 1200px;">
		<div class="mypage-contents">
			<%@ include file="trainerMypageAside.jsp"%>
			
			<div class="right-container">
				<div class="info-container">
				
					<!-- 헤드라인 -->
					<div class="head_article">
						<h3 class="info-header">자격정보/수상내역</h3>
					</div>

					<!-- step이미지 표시 -->
					<div class="step" id="rcvStep">
						<table class="list02">
							<tr>
								<td><a href="<%=request.getContextPath()%>/select.ti"><img src="/omg/resources/button/job/1_n.png" alt=""></a></td>
								<td><a href="<%=request.getContextPath()%>/select.career.ti"><img src="/omg/resources/button/job/2_n.png" alt=""></a></td>
								<td><a href="<%=request.getContextPath()%>/select.prize.ti"><img src="/omg/resources/button/job/3_n.png" alt=""></a></td>
								<td><a href="<%=request.getContextPath()%>/select.apply.gd"><img src="/omg/resources/button/job/4_y.png" alt=""></a></td>
							</tr>

							<tr>
								<td><span><a href="<%=request.getContextPath()%>/select.ti">학력정보</a></span></td>
								<td><span><a href="<%=request.getContextPath()%>/select.career.ti">경력정보</a></span></td>
								<td><span><a href="<%=request.getContextPath()%>/select.prize.ti">자격정보</a></span></td>
								<td><span><a href="<%=request.getContextPath()%>/select.apply.gd">인증신청결과</a></span></td>
							</tr>
						</table>
					</div>
					
					 <!--테이블 표시 영역-->
        <article id="tableArea" style="margin-top: 60px;">
        	
        	<h1 style="font-size: large; font-weight: bolder;">결과조회</h1><hr>
        	<p>※ 정식트레이너 신청 전 반드시 학력정보,경력정보,자격정보를 입력 완료 후 저장해주세요.
        	<br>※ 정식트레이너 인증은 3일~7일 정도 소요되며, 승인여부는 아래에서 확인가능합니다.</p>
        	<hr><br>
        		<!-- 신청버튼 -->
				<div style="text-align: center; ;line-height:30px; height: 30px; width: 150px; background-color: orangered; float:right; align:right" >
					<a style="color: white; font-weight: bold;" href="<%=request.getContextPath()%>/insert.apply.gd">정식트레이너승인신청</a>
				</div>
					
				<div align="center">
				
				<!-- 결과조회 -->
                <table>
                    <tr>
                        <th width="20px;">No</th>
                        <th width="20px;">신청코드</th>
                        <th width="100px;">신청 아이디</th>
                        <th width="100px;">신청일자</th>
                        <th width="100px;">담당자 아이디</th>
                        <th width="100px;">처리일자 </th>
                        <th width="130px;">승인거절사유 </th>
                        <th width="60px;">요청상태</th>
                    </tr>
                    
	                <% int listnum = list.size(); %>
	                <% for(Apply apply : list) { %>
					<tr>
						<td><%= listnum %></td>
						<td><%= apply.getApplyManageCode() %></td>
						<td><%= apply.getTrainerId() %></td>
						<td><%= apply.getApplyDate() %></td>
						<td><%= apply.getManagerId() %></td>
						<td><%= apply.getReplyDate() %></td>
						<td><%= apply.getRejectReason() %></td>
						<td><%= apply.getApplyStatus() %></td>
					</tr>
					<% listnum -= 1;} %>

                </table>
            </div>
        </article>
        <!--테이블 표시 영역 종료-->
					
				</div>		
			</div>
		</div>
	</section>
	
	<footer id="foot">
		<%@ include file="../../common/footer.jsp"%>
	</footer>
		

</body>

</html>