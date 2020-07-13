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
    
   
	<div id="listArea">
        
       <img src="../../../resources/img/Group 47winnerr.png" style="margin-left: 300px; margin-top: 20px;">
       <a>홈트를 완벽히 즐기기 위한 나만의 코디를 인증해주세요! 
           <input type="date" style="margin-left: 300px;"></a>
    </div>
    <br>
    <hr style="width: 1000px; color: gray; margin: auto;">
    
    <div style="text-align: center;">
       <br><br><br>

          <pre>soy*****</pre>

       <br><br><br>
<div>
<pre style="text-align: center;">안녕하세요 고객님, 

오늘도 오마이짐을 찾아주셔서 감사합니다.  

5월 ﻿14일(목) ~ 6월 24일(수) 진행된 홈트를 완벽히 즐기기 위한 나만의 코디를 인증해주세요!


당첨자 안내 드립니다. 
* 20명씩 추첨 진행 
* 당첨 고객님께는 오늘 중 개별 문자 안내 드리며, 19일(금) 이벤트 상품이 발송됩니다. 

배송에는 배송사 사정에 따라 최대 3~5 영업일이 소요될 수 있습니다. 








감사합니다.
오마이짐 드림</pre>

    </div>

    </div>
	
	
	<br><br><br>
	
	<%@ include file="../../common/footer.jsp" %>
	
	

    

</body>
</html>