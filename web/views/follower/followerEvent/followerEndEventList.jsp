<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

 <style>
        * {
            font-family: "Noto Sans KR";
        }
        a {
            color: black;
         }
        #event { 
            text-align: center;
            margin-top: 60px;
        }
        #date {
        margin: 20px;
        }
</style>
</head>
<body>
    <%@ include file="../../common/followerNav.jsp" %>
    <br>
    <div>
        <div id="event"><a href=""><img src="../../../resources/img/Group 61endEvent.png"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
            <a href=""><img src="../../../resources/img/Frame 3ingEvent.png"></a>
        
        </div>
      
    </div>

    
    <table id="date"> 
    	<tr>
    	<th><button style="border-bottom-color: gray; margin: 10px;">기간</button></th>
               <td>
                 <input type="date" name="date" readonly>
               </td>
               <td>&nbsp;&nbsp;~&nbsp;&nbsp;</td>
               <td>
                 <input type="date" name="date" readonly>
               </td>
        </tr>
    </table>
    <div style="text-align: center;"><img src="../../../resources/img/Group 68userEvent.png"></div>
	<br>
	<hr style="width: 1000px; color: gray; margin: auto;">
    
    <img src="../../../resources/img/Group 46winner.png" style="margin-left: 300px; margin-top: 20px;">
	<div id="listArea">
		<h4 style="margin-left: 300px;"><a href="">여름맞이 운동 어떻게 하고 계시나요? 나만의 꿀팁 공유해주세요!</a></h4>
		<tr>
			<td>
				<input type="date" name="date" style="margin-left: 300px" readonly>
			</td>
		</tr>
	</div>
	
	<br>
		<hr style="width: 1000px; color: gray; margin: auto;">
	<img src="../../../resources/img/Group 47winnerr.png" style="margin-left: 300px; margin-top: 20px;">
	<div id="listArea">
		<h4 style="margin-left: 300px;"><a href="">벚꽃놀이를 완벽히 즐기기 위한 나만의 코디를 인증해주세요!</a></h4>
		<tr>
			<td>
				<input type="date" name="date" style="margin-left: 300px" readonly>
			</td>
		</tr>
	</div>
	
	<br>
		<hr style="width: 1000px; color: gray; margin: auto;">
		
		
	<img src="../../../resources/img/Group 47winnerr.png" style="margin-left: 300px; margin-top: 20px;">
	<div id="listArea">
		<h4 style="margin-left: 300px;"><a href="">SNS에 운동 사진을 찍어서 인증해주세요!</a></h4>
		<tr>
			<td>
				<input type="date" name="date" style="margin-left: 300px" readonly>
			</td>
		</tr>
	</div>
	
	<br>
		<hr style="width: 1000px; color: gray; margin: auto;">
	
	<img src="../../../resources/img/Group 47winnerr.png" style="margin-left: 300px; margin-top: 20px;">
	<div id="listArea">
		<h4 style="margin-left: 300px;"><a href="">봄철 운동을 공유해주세요!</a></h4>
		<tr>
			<td>
				<input type="date" name="date" style="margin-left: 300px" readonly>
			</td>
		</tr>
	</div>
	
	<br>
		<hr style="width: 1000px; color: gray; margin: auto;">
				
	
	<br><br><br>
	
	<%@ include file="../../common/footer.jsp" %>
	
	

    

</body>
</html>