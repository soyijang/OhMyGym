<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import = "java.util.*" import="com.omg.jsp.ohmoney.model.vo.ReFundOhMoney"%>
<% ArrayList<ReFundOhMoney> list = (ArrayList<ReFundOhMoney>) request.getAttribute("refundList");%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
        html {
            width: 1440px;
            margin: 0;
        }
        * {
            margin: 0;
            padding: 0;
            font-family: "Noto Sans KR Medium";
            text-decoration: none;
        }
        body {
            width: 1440px;
            background-color: lightgray;
            margin-right: 0;
            overflow-x: hidden;
        }
        header {
            width: 1440px;
            height: 63px;
            margin-right: 0;
        }
        #top_background {
            position: absolute;
            left: 0;
            top : 0;
            display: inline;
            z-index: -100;
        }
        #logo {
            position: absolute;
            top: 13px;
            left: 13px;
        }
        header div{
            position: relative;
            /* left: 1000px; */
            font-size: 13px;
            color: white;
            top: 22px;
        }
        header div a {
            font: bold 13px "Noto Sans KR Thin";
            color: white;
        }
        nav {
            position: absolute;
            display: inline-block; 
            top: 63px;
            font-size: 15px;
        }
        #nav_background {
            position: absolute;
            z-index: -100;
            top: 0;
            height: 100%;
            width: 200px;
        }
        nav ul {
            background-color: 000532;
            position: relative;
            font-weight: bold;
            color: white;
            /* left: 30px;*/
            top: 3px;
            list-style: none;
            width: 160px;
            padding-left: 25px;
        }
        nav li {
            color: black;
            font-weight: normal;
            margin: 8px;
        }
        nav a {
            color: white;
            font-size: 13px;
        }
        .menuGroup {
            display: inline-block;
            width: 200px;
            position: absolute;  
        }
        details {
            cursor: pointer;
        }
        summary {
            outline: none;
        }
        section {
            position: absolute;
            display:inline-block;
            width: 1240px;
            height: 100%;
            left: 200px;
        }
        section > article {
            margin-top: 30px;
            margin-left: 30px;
            margin: 30px;
            display: inline-block;
            width: 1180px;
        }
        table {
            text-align: center;
            width: 1100px;
            border-collapse: collapse;
        }
        tr {
            width: 1000px;
            height: 20px;
        }
        th {
            font-size: 13px;
            height: 40px;
            border-bottom: 3px double gray;
            background: #000532;
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
        #menuTitleArea {
            display: inline;
        }
        #tableArea {
            height: 450px;
        }
        #searchArea {
            display: inline-block;
            width: 400px;
            position: absolute;
            top: 60px;
            left: 812px;
            margin: 0;
        }
        #searchBtn {
            width: 50px;
            margin-left: 5px;
        }
        #alignmentArea {
            margin: 0;
            display: inline-block;
            position: absolute;
            left: 1007px;
            top: 100px;
        }
        #pagingArea {
            display: inline-block;
            margin: 0;
            text-align: center;
            
        }
        #pageButtonTemp {
            background: white;
            display: inline-block;
            width: 300px;
            height: 20px;
        }
        #infoBtn {
            border-style: none;
            background: orangered;
            width: 80px;
            color: white;
            height:25px;
            cursor: pointer;
        }

        .checkReturn_wrap {
            display: none;
            position: fixed;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            z-index: 10000
        }

        .dark_bg {
            position: absolute;
            width: 100%;
            height: 100%;
            background: #000;
            filter: alpha(opacity=60);
            opacity: .6;
            -moz-opacity: .6
        }

        .checkReturn_box {
            position: relative;
            top: 25%;
            width: 435px;
            height: 250px;
            background: #fff;
            margin: 0 auto;
            border-radius: 8px;
            background: #fff;
            border: 1px solid #ccc
        }

        .checkReturn_box .close {
            position: absolute;
            right: 6px;
            top: 6px;
            width: 16px;
            height: 16px;
            cursor: pointer
        }
        
        table#ReturnTable tr td{
        	border-bottom: none;
        }
</style>
</head>
<body>
	<script>
        function returnBtn(num){

            var id = document.getElementById("followerID"+num).innerText;
            var money = $("#followerReturn"+num).text();

            jQuery('.checkReturn_wrap').fadeIn('slow');

            var returnid = document.getElementById("returnId");
            var returnmoney = document.getElementById("returnmoney");
            var followerNum = document.getElementById("followerNum");
            var fileIn = document.getElementById("returnReceipt");

            returnid.value = id;
            returnmoney.value = money;
            followerNum.innerText = num;
            fileIn.value = "";

        }

    </script>
	<div class="checkReturn_wrap" style="display: none;">
		<div class="dark_bg"
			onclick="jQuery('.checkReturn_wrap').fadeOut('slow')"></div>
		<div class="checkReturn_box">
			<div
				style="width: 100%; height: 30px; background: #000532; border-radius: 8px;">
				<div
					style="color: white; font-weight: bold; font-family: 'Noto Sans KR'; margin-left: 180px; padding-top: 5px;">오머니환급</div>
				<img class="close"
					onclick="jQuery('.checkReturn_wrap').fadeOut('slow')"
					src="/omg/resources/img_icon/closeIcon2.png"" width="20px" height="20px">
			</div>
			<div class="checkReturn_content" style="text-align: center; font-size: 0.9em;">
			    <a id="followerNum" style="visibility: hidden;"></a>
				<table id="ReturnTable" style="width: 400px; border: none; margin-left: 60px;">
					<tbody>
						<tr>
							<td style="width: 100px;">
								팔로워 ID
							</td>
							<td>
							<input type="text" style="border:none; font-size: 1.2em; font-weight: bold; color: navy;" id="returnId" name="returnId" value="" readonly>
							</td>
						</tr>
						
						<tr>
							<td>
							환급액 
							</td>
							<td>
							<input type="text" style="border:none; font-size: 1.2em; font-weight: bold; color: orangered;" id="returnmoney" name="returnmoney" value="" readonly>
							</td>
						</tr>
						
						<tr>
							<td>
							영수증 업로드
							</td>
							<td>
							<input type="file" id="returnReceipt" name="returnReceipt">
							</td>
						</tr>	
					</tbody>
				</table>
				<a style="text-decoration: none; font-size: 0.7em; font-weight: bold; color: red;">*환급페이지에서 환급하신 다음 영수증을 캡쳐해서 업로드 하세요</a><br><br>
				<button style="width:90px; height: 30px; border: none; cursor: pointer; font-weight: bold; color: white; background: navy" onclick="window.open('https://admin.iamport.kr/users/login')">환급페이지</button>
				<button style="width:90px; height: 30px; border: none; cursor: pointer; font-weight: bold; color: white; background: orangered" onclick="checkRecepit($('#followerNum').text());">환급승인하기</button>
			</div>
		</div>
	</div>
	<script>
        function checkRecepit(num){
        	//환급페이지를 업데이트하는 ajax 구현
            var fileIn = document.getElementById("returnReceipt").value;

            var okText = document.getElementById("returnOk" + num);

            console.log(okText.innerText);
            if(fileIn != ""){
                jQuery('.checkReturn_wrap').fadeOut('slow');
                if(okText.innerText == '대기'){
                    okText.innerText = '확인대기';
                    $("#returnOk"+num).css("color","navy");
                }
            } else{
                alert("환급후 완료 영수증을 반드시 올려주세요!");
            }
        }
    </script>
	<%@ include file="../../common/managerNav.jsp"%>
	<section>
		<!--헤더 영역-->
		<article id="menuTitleArea">
			<p
				style="font-weight: bold; font-size: 1.5em; padding-top: 30px; padding-left: 30px;">OH머니
				환급내역</p>
		</article>
		<!--헤더 영역 종료-->

		<!--검색 영역-->
		<article id="searchArea">
			<select name="search" id="searchSelect">
				<option value="followerID">팔로워ID</option>
				<option value="date">날짜</option>
				<option value="money">금액</option>
				<option value="managerID">관리자ID</option>
			</select> <input type="search" width="50"><input type="submit"
				value="검색" id="searchBtn">
		</article>
		<!--검색 영역 종료-->

		<!--정렬 설정 영역-->
		<article id="alignmentArea">
			<select name="alignment" id="alignment">
				<option value="trainingDate">No 순</option>
				<option value="matchingNumDesc">ID 순</option>
				<option value="matchingNumAsc">금액 순</option>
				<option value="enrollDateDesc">날짜 순</option>
			</select> <select name="viewRow" id="viewRow">
				<option value="10">10개씩 보기</option>
				<option value="20">20개씩 보기</option>
				<option value="30">30개씩 보기</option>
				<option value="40">40개씩 보기</option>
				<option value="50">50개씩 보기</option>
			</select>
		</article>
		<!--정렬영역 종료-->

		<!--테이블 표시 영역-->

		<article id="tableArea">
			<div align="center" style="padding-top: 25px; padding-bottom: 25px; width: 100%; background: white; border-radius: 8px;">
				<table>
					<tr>
						<th width="100px">No</th>
						<th width="180px">회원ID</th>
						<th width="130px">회원명</th>
						<th width="150px">관리자ID</th>
						<th width="200px">환급액</th>
						<th width="200px">날짜</th>
						<th width="110px">상태</th>
						<th width="100px">환급하기</th>
					</tr>
					<% int listnum = list.size(); %>
                    <% for(int i = 0; i < list.size(); i++) {%>
	                    <tr>
	                        <td><%=listnum%></td>
	                        <td id="followerID<%=listnum%>"><%=list.get(i).getMemberId()%></td>
	                        <td><%=list.get(i).getMemberName()%></td>
	                        <td><%=list.get(i).getManagerId()%></td>
	                        <td id="followerReturn<%=listnum%>"><%=list.get(i).getMoney()%></td>
	                        <td><%=list.get(i).getRefundDate()%></td>
	                        <td id="returnOk<%=listnum%>" style="color: black; font-weight: bold;"><%=list.get(i).getRefundState() %></td>
	                        <td><button class="btn" id="infoBtn" onclick="returnBtn(<%=listnum%>)">상세정보</button></td>
	                    </tr>
                    <% listnum = listnum - 1; } %>
				</table>
			</div>
		</article>
		<!--테이블 표시 영역 종료-->
	</section>

</body>
</html>