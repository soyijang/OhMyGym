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
        #event { 
            text-align: center;
            margin-top: 60px;
        }
        #date {
        margin: 20px;
        }
        #eventDetail {
        width: 800px;
		height:	880px;
		background: url('../../../resources/img/Frame 21eventImage.png') no-repeat;
		background-size: cover;
		color: white;
		margin-left: auto;
		margin-right: auto;
		margin-top: 50px;
        }
        #enjoy {
     	text-align: center;
		margin-top: 50px;
        }
       
        </style>
</head>
<body>
    <%@ include file="../../common/followerNav.jsp" %>
    <br>
    <div>
        <div id="event"><a href=""><img src="../../../resources/img/Group 61event-ing.png"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
            <a href=""><img src="../../../resources/img/Frame 3event-end.png"></a>
        
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
	
	<div id="eventDetail">
	
	</div>
	
	<div id="enjoy">
	<img src="../../../resources/img/Group 348enjoy.png" style="width: 150px; height: 60px; margin: 20px;">	
	</div>


	<br><br><br>
	
	<%@ include file="../../common/footer.jsp" %>
	
	

    

</body>
</html>