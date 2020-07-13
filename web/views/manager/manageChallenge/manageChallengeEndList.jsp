<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	#main {
		position: absolute;
		top: 150px;
		left: 300px;
	}
	.back {
		background: darkgray;
		font-weight: bold;
		padding: 10px;
	}
	#tables{
		border-top: 2px solid black;
		width: 1000px;
		border-bottom: 1px solid gray;
	}
	#trs {
		border-bottom: 1px solid gray;
		width: 1000px;
	}
		#title{
		font-size: 25px;
		font-weight: bold;
	}
	/*여기부터 게시판 아래 스타일*/
	        section {
            position: absolute;
            right: -175px;
            }
        section > article {
            margin-top: 30px;
            margin-left: 30px;
            margin: 30px;
            display: inline-block;
            width: 1180px;
        }
        #tableArea table {
            text-align: center;
            width: 1100px;
            border-collapse: collapse;
        }
        #tableArea table tr {
            width: 1000px;
            height: 20px;
        }
        #tableArea table th {
            font-size: 13px;
            height: 40px;
            border-bottom: 3px double gray;
            color: black;
            font-weight: normal;
            font-weight: bold;
        }
        #tableArea table td {
            font-family:"Noto Sans KR Regular ";
            font-size: 14px;
            height: 35px;
            border-bottom: 2px solid gray;
        }
        #tableArea table td a {
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
            left: 868px;
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
        .btn {
            border-style: none;
            width: 90px;
            height: 25px;
            color: white;
            font-weight: bold;
        }
        #infoBtn {
            background: blue;
        }
        #ohMoneyBtn {
            background: #1F0076;
        }
        #excelBtn {
            background: #0D6932;
            margin-right: 15px;
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
            top: 15%;
            width: 635px;
            height: 550px;
            background: #fff;
            margin: 0 auto;
            border-radius: 8px;
            background: #fff;
            border: 1px solid #ccc
        }

        .login_box .close {
            /* position: absolute;
            right: 6px;
            top: 6px; */
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
        
                #box2{
        	border: 1px solid orangered;
        	width: 70px;
        	color: white;
        	background: orangered;
        	font-weight: bold;
        	
        	position: absolute;
        	left: 200px;
        	top: 5px;
        	
        	cursor: pointer;
        }
</style>
<body>
	<%@ include file="../../common/managerNav.jsp" %>
	<div id="main">
		<div id="title">챌린지 목록관리</div>
		<div id="box2" onclick="">인증확인</div>
			<table id="tables">
				<tr id="trs">
					<td class="back">진행현황</td>
					<td>종료</td>
					<td class="back">한도금액</td>
					<td>50,000</td>
				</tr>
				<tr id="trs">
					<td class="back">제목</td>
					<td>내 몸에 수분을 충전하자!</td>
					<td class="back">모집인원</td>
					<td>500명</td>
				</tr>
				<tr id="trs">
					<td class="back">모집기간</td>
					<td>2020-06-15 ~ 2020-06-30</td>
					<td class="back">진행기간</td>
					<td>2020-07-01 ~ 2020-07-07</td>
				</tr>
			</table>
			   <section>
        <!--정렬영역 종료-->

        <!--테이블 표시 영역-->
        <article id="tableArea">
            <div align="center">
                <table>
                    <tr>
                        <th width="70px;">No</th>
                        <th width="100px">아이디</th>
                        <th width="100px;">닉네임</th>
                        <th width="100px;">회원명</th>
                        <th width="200px;">이메일</th>
                        <th width="130px;">연락처</th>
                        <th width="70px;">참가금액</th>
                        <th width="100px;">목표달성률</th>
                        <th width="80px;">환금액</th>
                        <th width="120px;">회원상세정보</th>
                    </tr>
                    <tr>
                        <td>363</td>
                        <td>html224</td>
                        <td>갓진오</td>
                        <td>김진오</td>
                        <td>html224@naver.com</td>
                        <td>010-5001-5128</td>
                        <td>10,000</td>
                        <td>42%</td>
                        <td>0</td>
                        <td><button class="btn" id="infoBtn" onclick="">환급</button></a></td>
                    </tr>
                </table>
            </div>
        </article>
        <!--테이블 표시 영역 종료-->

        <!--수기지급 팝업 영역-->
        <article id="omoneyDirectPaymentArea">
            <div class="login_wrap" style="display: none;">
                <div class="dark_bg" onclick="jQuery('.login_wrap').fadeOut('slow')"></div>
                <div class="login_box">
                    <div style="width: 100%; height: 30px; background: orangered; border-radius: 8px;">
                        <div style="color: white; font-weight: bold; font-family: 'Noto Sans KR'; margin-left: 270px; padding-top: 5px;">오머니 충전</div>
                        <div align="center" style="margin-top: 40px;">
                            <table width="600px" height="140px" style="border-top: 2px solid; border-bottom: 2px solid; border-collapse:collapse;">
                                <tr style="text-align: left;">
                                    <td width="200px" style="background: #F5F5F5;">&nbsp;현재 보유 OH머니</td>
                                    <td width="200px" style="background: #EAEAEA;">&nbsp;충전 할 OH머니</td>
                                    <td width="200px" style="background: #F5F5F5;">&nbsp;지급 후 OH머니</td>
                                </tr>
                                <tr style="text-align: right; font-size: 25px; font-weight: bold;">
                                    <td style="background: #F5F5F5;">원&nbsp;</td>
                                    <td style="background: #EAEAEA;">원&nbsp;</td>
                                    <td style="background: #F5F5F5;">원&nbsp;</td>
                                </tr>
                            </table>
                            <br>
                            <p style="text-align: left; margin-left: 20px; font-weight: bold; font-size: 17px;">수기지급사유</p>
                            <table width="600px"style="border-top: 2px solid; margin-top: 5px;">
                                <tr height="40px">
                                    <td><input type="radio" id="systemError" name="reason"><label for="systemError"> 시스템 에러&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                                    <td><input type="radio" id="event" name="reason"><label for="event">이벤트진행&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                                    <td><input type="radio" id="other" name="reason">&nbsp;<input type="text" for="other"></td>
                                </tr>
                            </table>
                            <br>
                            <p style="text-align: left; margin-left: 20px; font-weight: bold; font-size: 17px;">충전 금액 선택</p>
                            <table width="600px" style="border-top: 2px solid; margin-top: 5px; padding-left: 40px;">
                                <tr height="40px" align="left">
                                    <td><input type="radio" id="1000" name="amount"><label for="1000">  1000원</label></td>
                                    <td><input type="radio" id="3000" name="amount"><label for="3000">  3000원</label></td>
                                    <td><input type="radio" id="5000" name="amount"><label for="5000">  5000원</label></td>
                                    <td><input type="radio" id="10000" name="amount"><label for="10000"> 10000원</label></td>
                                </tr>
                                <tr height="40px" align="left">
                                    <td><input type="radio" id="50000" name="amount"><label for="50000"> 50000원</label></td>
                                    <td colspan="3"><input type="radio" id="otherMoney" name="amount">&nbsp;<input type="text" for="ohMoneyBtn"> 원</td>
                                </tr>
                            </table>
                        </div>
                        <div id="amountArea">
                            <button class="close amountBtn" onclick="jQuery('.login_wrap').fadeOut('slow')" src="img_icon/closeIcon.png">취소</button>
                            <button class="amountBtn" type="submit" style="margin-left: 10px; border-style: none; background: orangered;">확인</button>
                        </div>
                    </div>
                    <div class="login_content">
                    </div>
                </div>
            </div>
        </article>
        <!--수기지급 팝업 영역 종료-->

        <!--버튼 처리 영역(임시)-->
        <!--버튼 처리 영역(임시) 종료-->
    </section>
    </div>
</body>
</html>