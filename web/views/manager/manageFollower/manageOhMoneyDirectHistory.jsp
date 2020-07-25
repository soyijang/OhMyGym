<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.*" import="com.omg.jsp.ohmoney.model.vo.OhMoney, com.omg.jsp.common.*" %>
<% ArrayList<OhMoney> list = (ArrayList<OhMoney>) request.getAttribute("directMoneyList");
	PageInfo pi = (PageInfo) request.getAttribute("pi");
	
	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오마이짐 관리자 페이지</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style>
    
    
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
            width: 1180px;
        }

        table{
        	text-align: center;
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
        
        #ohMoneyBtn {
        	width: 130px; 
        	height: 40px; 
        	border-radius: 16px;
        	border: none;
        	font-weight: bold;
        	color: white;
        	background: navy;
        	cursor: pointer;
        }
        
        #ohMoneyBtn:focus{
        	outline: none;
        }
        
         #ohMoneyBtn:hover{
         	background : rgb(88, 88, 230);
         
         }
         
         
          .direct_wrap {
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

        .direct_box {
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

        .direct_box .close {
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
        
        #researchBtn{
            width: 130px;
            height: 30px;
            font-weight: bold;
        }
        
        #amountArea {	
            margin-top: 30px;
            text-align: center;
        }
        
        .serach_wrap {
            display: none;
            position: fixed;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            z-index: 10000
        }
        
         .search_box {
            position: relative;
            top: 25%;
            width: 435px;
            height: 210px;
            background: #fff;
            margin: 0 auto;
            border-radius: 8px;
            background: #fff;
            border: 1px solid #ccc
            transition: all ease 0.25s 0s;
        }

        .search_box .close {
            /* position: absolute;
            right: 6px;
            top: 6px; */
            cursor: pointer
        }
        
        #serachInput{
        	padding: 5px;
        	font-size: 1.1em; 
        	border-radius: 10px;
        	margin-left: 115px;
        	width: 200px;
        }
        
        #serachInput:focus{
        	outline: none;
        }
    </style>
</head>
<body>
    <%@ include file="../../common/managerNav.jsp" %>
    <section>
    <div class="serach_wrap" style="display: none;">
                <div class="dark_bg" onclick="jQuery('.serach_wrap').fadeOut('slow')"></div>
                <div class="search_box">
                    <div style="width: 100%; height: 30px; background: orangered; border-radius: 8px;">
                        <div style="color: white; font-weight: bold; font-family: 'Noto Sans KR'; margin-left: 170px; margin-bottom: 15px;">팔로워 검색</div>
                        <div>
                        	<div style="text-align: center; margin-top:25px; margin-bottom: 25px; font-weight: bold">아이디로 팔로워 검색</div>
                        	<input type="text" id="serachInput" name="serachInput" placeholder="아이디를 입력해주세요">
                        </div>
                        <div id="serachResult" style="display:none; text-align: center; margin-top: 15px;">
                        	<div id="resultArea" style="font-weight: bold; font-size: 1.5em; margin-bottom: 10px;"></div>
                        	<div id="resultAreaName"></div>
                        </div>
                        <div id="amountArea">
                        <button id="amountBtn" class="amountBtn" onclick="searching();" type="submit" style="margin-left: 10px; border-style: none; background: orangered;">검색</button>
                            <button class="close amountBtn" onclick="closeBtn();" src="img_icon/closeIcon.png">닫기</button>
                        </div>
                        	<button id='researchBtn' class='researchBtn' onclick='reSearching();' type='submit' style='display:none; color: black; margin-left: 155px; margin-top: 10px; border-style: none; background: lightgray;'>다시검색</button>
                        </div>

                    <div class="login_content">
                    </div>
                </div>
            </div>
    <script>
    	var findUser = false;
    	var haveOhMoneyVal = 0;
    	var haveNoRefundVal = 0;
    	var selectedUserName = 0;
    	var selectedUserId = 0;
    	
    	function reSearching(){
    		findUser = false;
    		searching();
    	}
    	
    	function searching(){
    		
    		if(findUser != true){
	            var inputId = $('#serachInput').val();
	            $('#serachInput').val('');
	            $.ajax({
	            	url : "/omg/searchDirectUser.manager",
	                type : 'post',
	                data : {
	                	inputId : inputId
	                },
	               success : function(data) {
	            	   if(data != null){
	            		   $( '.search_box' ).animate( { height: 320 } );
	       	          	   $('#serachResult').css("display","block");
		            	   $('#resultArea').text(data.userId);
		            	   $('#resultAreaName').text(data.userName);
		                   $('#amountBtn').text('수기지급하기');
		                   $('#researchBtn').css("display","block");
		                   
		                   haveOhMoneyVal =  data.balance;
		                   selectedUserName = data.userName;
		                   selectedUserId = data.userId;
		                   haveNoRefundVal = data.nofundBal;
		                   haveRefundVal = data.refundBal;
		                   
		                   findUser = true;
	            	   }
	 				},
	 				error : function(){
	 		           $('#amountBtn').text('다시검색하기');
	 				}
	            }) 
    		} else{
    			closeBtn();
    			jQuery('.direct_wrap').fadeIn('slow');
    			
    			$('#selectUserName').text(selectedUserName + "사용자 오머니 수기지급");
    			$('#OhMoneyVal').text(haveOhMoneyVal + "원");
    			
				console.log("진행한다");
    		}
    	}
    	
    	function closeBtn(){
    		  findUser = false;
    		  jQuery('.serach_wrap').fadeOut('slow');
    		  $( '.search_box' ).animate( { height: 210 } );
              $('#serachResult').css("display","none");
              $('#serachInput').val('');
              $('#amountBtn').text('검색');
              $('#researchBtn').css("display","none");
    	}
    	
    	
    </script>
    
    
   <article id="omoneyDirectPaymentArea">
            <div class="direct_wrap" style="display: none;">
                <div class="dark_bg" onclick="jQuery('.direct_wrap').fadeOut('slow')"></div>
                <div class="direct_box">
                    <div style="width: 100%; height: 30px; background: orangered; border-radius: 8px;">
                        <div style="color: white; font-weight: bold; font-family: 'Noto Sans KR'; margin-left: 270px; padding-top: 5px;">오머니 수기지급</div>
                        <div align="center" style="margin-top: 40px;">
                        	<div id="selectUserName" style="margin-bottom: 10px; font-weight: bold;"></div>
                            <table width="600px" height="140px" style="border-top: 2px solid; border-bottom: 2px solid; border-collapse:collapse;">
                                <tr style="text-align: left;">
                                    <td width="200px" style="background: #F5F5F5;">&nbsp;현재 보유 OH머니</td>
                                    <td width="200px" style="background: #EAEAEA;">&nbsp;충전 할 OH머니</td>
                                    <td width="200px" style="background: #F5F5F5;">&nbsp;지급 후 OH머니</td>
                                </tr>
                                <tr style="text-align: right; font-size: 25px; font-weight: bold;">
                                    <td id="OhMoneyVal" style="background: #F5F5F5;">원&nbsp;</td>
                                    <td id="DirectVal" style="background: #EAEAEA;">원&nbsp;</td>
                                    <td id="ResultVal" style="background: #F5F5F5;">원&nbsp;</td>
                                </tr>
                            </table>
                            <br>
                            <p style="text-align: left; margin-left: 20px; font-weight: bold; font-size: 17px;">수기지급사유</p>
                            <table width="600px"style="border-top: 2px solid; margin-top: 5px;">
                                <tr height="40px">
                                    <td><input type="radio" id="systemError" name="reason" value="시스템 에러 복구를 위한 수기지급"><label for="systemError"> 시스템 에러&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                                    <td><input type="radio" id="event" name="reason" value="이벤트 진행 결과로 인한 수기지급"><label for="event">이벤트진행&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                                    <td><input type="radio" id="other" name="reason">&nbsp;<input id="otherText" type="text" for="other" onkeyup="otherTextIn();" placeholder="기타 사유"></td>
                                </tr>
                            </table>
                            <br>
                            <p style="text-align: left; margin-left: 20px; font-weight: bold; font-size: 17px;">충전 금액 선택</p>
                            <table width="600px" style="border-top: 2px solid; margin-top: 5px; padding-left: 40px;">
                                <tr height="40px" align="left">
                                    <td><input type="radio" id="1000" name="amount" value="1000" onclick="checkMoney();" ><label for="1000">  1000원</label></td>
                                    <td><input type="radio" id="3000" name="amount" value="3000" onclick="checkMoney();"><label for="3000">  3000원</label></td>
                                    <td><input type="radio" id="5000" name="amount" value="5000" onclick="checkMoney();"><label for="5000">  5000원</label></td>
                                    <td><input type="radio" id="10000" name="amount" value="10000" onclick="checkMoney();"><label for="10000"> 10000원</label></td>
                                </tr>
                                <tr height="40px" align="left">
                                    <td><input type="radio" id="50000" name="amount" value="50000" onclick="checkMoney();"><label for="50000"> 50000원</label></td>
                                    <td colspan="3"><input type="radio" id="otherMoney" name="amount" value="0" onclick="checkMoney();">&nbsp;<input type="text" id="otherMoneyInput" placeholder="0" onkeyup="otherMoneyIn(); checkMoney();" for="ohMoneyBtn"> 원</td>
                                </tr>
                            </table>
                        </div>
                        <div id="amountArea">
                            <button class="close amountBtn" onclick="jQuery('.direct_wrap').fadeOut('slow')" src="img_icon/closeIcon.png">취소</button>
                            <button class="amountBtn" onclick="directing();" type="submit" style="margin-left: 10px; border-style: none; background: orangered;">확인</button>
                        </div>
                    </div>
                    <div class="login_content">
                    </div>
                </div>
            </div>
        </article>
        <!--헤더 영역-->
        <article id="menuTitleArea">
            <p style="font-weight: bold; font-size: 1.5em; padding-top: 30px; padding-left: 30px;">OH머니 수기지급 내역 관리</p>
        </article>
        <!--헤더 영역 종료-->
		<script>
			function otherTextIn(){
				$('#other').val($('#otherText').val());
			}
		
			function otherMoneyIn(){
				$('#otherMoney').val($('#otherMoneyInput').val());
			}
		
			function checkMoney(){
				var checkMoney =  Number($("input[name='amount']:checked").val());
				$("#DirectVal").text(checkMoney + "원");
				$("#ResultVal").text(haveOhMoneyVal + checkMoney + "원");
			}
			
			
			function directing(){
				var selectContent = $("input[name='reason']:checked").val();
				var selectMoney =  $("input[name='amount']:checked").val();
				var managerId = "<%=loginManager.getManagerId()%>";
				var nofundVal = selectMoney;
		   	     $.ajax({
		         	url : "/omg/giveDirectUser.manager",
		             type : 'post',
		             data : {
		            	 UserId : selectedUserId,
		            	 managerId : managerId,
		            	 selectContent : selectContent,
		            	 nofundVal : nofundVal,
		            	 haveOhMoneyVal : haveOhMoneyVal,
		            	 haveNoRefundVal : haveNoRefundVal,
		            	 haveRefundVal : haveRefundVal
		             },
		            success : function(data) {
		            	jQuery('.direct_wrap').fadeOut('slow');
		            	alert("정상처리 되었습니다.");
		            	location.href="<%=request.getContextPath()%>/directList.manager";
					},
					error : function(){
		
					}
		         }) 
			}
		
		</script>
         <!--검색 영역-->
         <article id="searchArea">
            <select name="search" id="searchSelect">
                <option value="followerName">팔로워ID</option>
                <option value="trainerName">날짜</option>
                <option value="matchingNumber">금액</option>
                <option value="trainingRoomNum">관리자ID</option>
                <option value="trainingRoomNum">세부내용</option>
                <option value="trainingRoomNum">환급가능여부</option>
                <option value="trainingRoomNum">결제/취소 수단</option>
            </select>
            <input type="search" width="50"><input type="submit" value="검색" id="searchBtn">
        </article>
        <!--검색 영역 종료-->
		
        <!--정렬 설정 영역-->
        <article id="alignmentArea">
            <select name="alignment" id="alignment">
                <option value="trainingDate">No 순</option>
                <option value="matchingNumDesc">ID 순</option>
                <option value="matchingNumAsc">금액 순</option>
                <option value="enrollDateDesc">날짜 순</option>
            </select>
            <select name="viewRow" id="viewRow">
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
               <div align="left" style="margin-left: 40px; margin-bottom: 15px;"><button class="btn" id="ohMoneyBtn" style="" onclick="jQuery('.serach_wrap').fadeIn('slow');">OH머니 수기지급</button></div>
                <table id="listTable" style="width: 1100px;">
                    <tr>
                        <th width="30px;">No</th>
                        <th width="100px;">팔로워ID</th>
                        <th width="70px;">금액</th>
                        <th width="80px;">날짜</th>
                        <th width="80px;">시간</th>
                        <th width="100px;">관리자ID</th>
                        <th width="170px;">지급사유</th>
                        <th width="60px;">환급가능여부</th>
                        <!-- <th width="80px">상세정보</th> -->
                    </tr>
                    <% int listNum = list.size();%>
                    <% for(int i = 0; i < list.size(); i++){ %>
                    <tr>
                        <td><%=listNum %></td>
                        <td><%=list.get(i).getUserId()%></td>
                        <td><%=list.get(i).getOhmoneyAmount()%></td>
                        <td><%=list.get(i).getOhmoneyDate()%></td>
                        <td><%=list.get(i).getOhmoneyTime()%></td>
                        <td><%=list.get(i).getManagerId()%></td>
                        <td><%=list.get(i).getContent()%></td>
                        <td><%=list.get(i).getIsRefund()%></td>
                        <!-- <td><button class="btn" id="infoBtn" onclick="">상세정보</button></a></td> -->
                    </tr>
                    <%listNum -=1; } %>
                </table>
            </div>
            
            <div class="pagingArea" align="center">
			<button onclick="location.href='<%=request.getContextPath()%>/directList.manager?currentPage=1'"><<</button>
			<% if(currentPage <= 1) {%>
			<button disabled> < </button>
			<%} else { %>
			<button onclick="location.href='<%=request.getContextPath()%>/directList.manager?currentPage=<%=currentPage-1%>'"><</button>
			<%} %>

			<%
				for (int p = startPage; p <= endPage; p++) {
					if (p == currentPage) {
			%>
					<button disabled><%=p %></button>
			<%
				} else {
			%>
					<button onclick="location.href='<%=request.getContextPath()%>/directList.manager?currentPage=<%=p%>'"><%=p %></button>
			<%
				}

				}
			%>
			<%
				if (currentPage >= maxPage) {
			%>
			<button disabled> > </button>
			<%} else { %>
			<button onclick="location.href='<%=request.getContextPath()%>/directList.manager?currentPage=<%=currentPage+1%>'">></button>
			<%} %>
			<button onclick="location.href='<%=request.getContextPath()%>/directList.manager?currentPage=<%=maxPage%>'">>></button>
		</div>
        </article>
        <!--테이블 표시 영역 종료-->

        <!--버튼 처리 영역(임시)-->
        <!--버튼 처리 영역(임시) 종료-->
    </section>
</body>
</html>