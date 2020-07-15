<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.omg.jsp.member.model.vo.*"%>

<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    * {
        font-family: "Noto Sans KR";
    }
    #asideArea {
        /* border: 1px solid gray; */
        width: 300px;
        height: 500px;
        margin-left: 20px;
        margin-top: 30px;
    }
    #profilePhoto {
        border: 2px solid gray;
        width: 150px;
        height: 150px;
        border-radius: 50% 50% 50% 50%;
        margin-top: 80px;
        background-repeat: no-repeat;
        background-image: url('../../resources/challengeImg/image 56.png'); 
        background-position: center; 
        background-size: cover;
    }
    #danceIcon {
        width: 60%;
        height: 60%;
    }
    #titleArea div {
        border: 2px double gray; 
        display: inline-block; 
        width: 1000px; 
        height: 40px;
        margin-left: 40px;
        font-size: 14px;
    }
    #healthInfoNow {
        margin-top: 20px;
        width: 1000px;
        height: 496px;
        border: 2px solid gray;
        display: inline-block; 
        margin-left: 40px;
        overflow-y: scroll;
    }
    #bodyInfo {
        /* border: 2px double gray; */
        margin-top: 20px;
        /* margin-left: 10px; */
        width: 80%;
        text-align: center;
    }
    #bodyInfo tr {
        height: 40px;
    }
    .msg {
        display: inline-block;
        width: 200px;
        height: 30px;
        background: orangered;
        color: white;
        border-top-left-radius: 5% 20%;
        border-top-right-radius: 5% 20%;
        border-bottom-left-radius: 5% 20%;
        border-bottom-right-radius: 5% 20%;
        text-align: center;
        vertical-align: middle;
        font-weight: bold;
    }
    th {
        font-size: 0.9em;
    }
    #inputInfoBtn {
        display: inline-block;
        width: 200px;
        height: 30px;
        background: #000080;
        color: white;
        border-top-left-radius: 5% 20%;
        border-top-right-radius: 5% 20%;
        border-bottom-left-radius: 5% 20%;
        border-bottom-right-radius: 5% 20%;
        text-align: center;
        vertical-align: middle;
        font-weight: bold;
        cursor: pointer;
    }
    .login_wrap {
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

        .login_box {
            position: relative;
            top: 25%;
            width: 635px;
            height: 330px;
            background: #fff;
            margin: 0 auto;
            border-radius: 8px;
            background: #fff;
            border: 1px solid #ccc
        }

        .login_box .close {
            cursor: pointer
        }
        .amountBtn {
            width: 130px;
            height: 30px;
            font-weight: bold;
        }
        #amountArea {
            margin-top: 30px;
            text-align: center;
        }
        #healthInfoNowTable, #modifyHealthInfo {
        	border-collapse:collapse;
        	margin-top: 20px;
        }
        #healthInfoNowTable tr, #modifyHealthInfo tr {
        	height: 40px;
        	text-align: center;
        }
        #healthInfoNowTable th, #modifyHealthInfo th {
        	width: 100px;
        }
        #healthInfoNowTable {
        	position:relative;
        }
        #healthInfoNowTable td, #modifyHealthInfo td {
        	text-align: left;
        	padding-left: 10px;
        }
        #modifyHealthInfo input {
        	width:300px;
        	border: 1px solid gray;
        }
        #modifyHealthInfo input[type="reset"], #modifyHealthInfo input[type="submit"] {
        	text-align: center;
        	border: none;
        	font-family: "Noto Sans KR";
        	height: 2em;
        	cursor: pointer;
        }
        #modifyHealthInfo input[type="submit"] {
        	background: orangered;
        	color: white;
        }
        #healthInfoNowTable button {
        	border: none;
        	font-family: "Noto Sans KR";
        	height: 2em;
        	background: orangered;
        	color: white;
        	width: 200px;
        	font-weight: 500;
        }
         #modifyHealthInfo {
        	display: none;
        }
</style>
</head>
<body>
    <nav>
        <%@ include file="../../common/followerNav.jsp"%>
    </nav>
    
    <aside style="display: inline-block; float: left; width: 20%;">
        <%@ include file="followerHealthAside.jsp" %>
    </aside>

	<section>
	
	<!-- 임시 loginUser -->
	<% Member loginUser = new Member(); 
	   loginUser.setMemberId("test1");
	   loginUser.setMemberDivision("F");
	   loginUser.setName("이김박");
	   loginUser.setEmail("aklj@lkad.com");
	   loginUser.setPhone("010-1234-4212");
	   loginUser.setAddress("경기도 용인시 기흥구");
	   loginUser.setEnrollDate("2002-10-20");
	   loginUser.setMemberStatus("Y");
	   loginUser.setEnrollTime("20:20:20");
	   loginUser.setMemberAge("1993-12-25");
	   %>
        
        <article id="titleArea">
            <div>
                <h1 style="margin-top: 8px;">&nbsp;&nbsp;&nbsp;내 상태 기록</h1>
            </div>
        </article>
        <article id="healthInfoNowArea">
        	<!-- 현재 건강정보 출력 -->
            <div id="healthInfoNow" align="center">
	            <table style="width:90%;" id="healthInfoNowTable">
	              	<tr>
	              		<th colspan="4" style="height: 50px;"><h3>현재 건강정보</h3></th>
	              	</tr>
	              	<tr>
	              		<th>키</th>
	              		<td>test cm</td>
	              		<th>몸무게</th>
	              		<td>test kg</td>
	              	</tr>
	              	<tr>
	              		<th>운동시간</th>
	              		<td>시간  분</td>
	              		<th>수면시간</th>
	              		<td>시간  분</td>
	              	</tr>
	              	<tr>
	              		<th>집중 부위</th>
	              		<td>test</td>
	              		<th>활동 수준</th>
	              		<td>test</td>
	              	</tr>
	              	<tr>
	              		<th>동기부여</th>
	              		<td>test</td>
	              		<th>신체적 어려움</th>
	              		<td>test</td>
	              	</tr>
	              	<tr>
	              		<th>목표</th>
	              		<td colspan="3">test</td>
	              	</tr>
	              	<tr>
	              		<td colspan="4" style="text-align: center;"><button onclick="modifyInfo();">수정하기</button></td>
	              	</tr>
	              </table>
	              
	              <script>
	              	function modifyInfo() {
	              		$("#healthInfoNowTable").hide();
	              		$("#modifyHealthInfo").show();
	              	}
	              </script>
	              
	              <form action="<%= request.getContextPath() %>/Update.hi" method="post">
	              	<input type="hidden" value="<%= loginUser.getMemberId() %>" name="userId">
	              	<table id="modifyHealthInfo" style="width:90%;">
	              	<tr>
	              		<th colspan="4" style="height: 50px;"><h3>건강정보 수정</h3></th>
	              	</tr>
	              	<tr>
	              		<th>키</th>
	              		<td><input type="text" style="width: 100px;" name="height"> cm</td>
	              		<th>몸무게</th>
	              		<td><input type="text" style="width: 100px;" name="weight"> kg</td>
	              	</tr>
	              	<tr>
	              		<th>운동시간</th>
	              		<td>
		              		<input type="text" style="width: 100px;" name="exerciseH"> 시간  
		              		<input type="text" style="width: 100px;" name="exerciseM"> 분
		              	</td>
	              		<th>수면시간</th>
	              		<td>
	              			<input type="text" style="width: 100px;" name="sleepH"> 시간  
	              			<input type="text" style="width: 100px;" name="sleepM"> 분
	              		</td>
	              	</tr>
	              	<tr>
	              		<th>집중 부위</th>
	              		<td><input type="text" placeholder="ex) 팔, 허벅지, 복부 등" name="focus"></td>
	              		<th>활동 수준</th>
	              		<td>
	              			<select style="width: 308px;" name="active">
	              				<option value="veryHard">활동량 매우 많음</option>
	              				<option value="hard">활동량 많음</option>
	              				<option value="normal">보통</option>
	              				<option value="few">활동량 적음</option>
	              				<option value="veryFew">활동량 매우 적음</option>
	              			</select>
	              		</td>
	              	</tr>
	              	<tr>
	              		<th>동기부여</th>
	              		<td><input type="text" placeholder="ex) 다이어트 자극사진을 봤을 때 등" name="motive"></td>
	              		<th>신체적 어려움</th>
	              		<td><input type="text" placeholder="ex) 무릎 통증이 있음, 허리 디스크 등" name="bodyUneasy"></td>
	              	</tr>
	              	<tr>
	              		<th>목표</th>
	              		<td colspan="3"><input type="text" style="width:740px;" placeholder="ex) x월까지 xx키로 감량 등" name="goal"></td>
	              	</tr>
	              	<tr>
	              		<td colspan="4" style="text-align: center;">
	              			<input type="reset" value="취소">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="저장">
	              		</td>
	              	</tr>
	              </table>
	            </form>
	              
            </div>
        </article>
    </section>
    
    <br><br>
    
    <footer style="clear: both;">
        <%@ include file="../../common/footer.jsp"%>
    </footer>
</body>
</html>