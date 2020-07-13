<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="/omg/resources/css/daumcommon.css">
    <link rel="stylesheet" type="text/css" href="/omg/resources/css/fmypageContainer.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  
</style>
</head>
<body>
 <div class="left-container"><div class="class_category_container">
            <div class="title"><a href="fmypage.jsp">🏠  마이페이지</a></div>
            <ul class="class_category_list">
                <li id="taside1" class="navi-item " onclick="on(1);"><a href="fmyInfo.jsp">내 정보</a></li>
                <li id="taside2" class="navi-item " onclick="on(2);"><a href="bookMark.jsp">북마크</a></li>
                <li id="taside3" class="navi-item" onclick="on(3);"><a href="myOHMoney.jsp">결제관리</a></li>
                <li id="taside5" class="navi-item " onclick="on(5);"><a href="fmyStamp.jsp">스템프</a></li>
                <li id="taside6" class="navi-item " onclick="on(6);"><a href="report.jsp">신고</a></li>
                <li id="taside7" class="navi-item " onclick="on(7);"><a href="deleteMember.jsp">회원탈퇴</a></li>
            </ul>
	        </div>
    </div> 
        
	 <script>
	
        function on(num){
        	
        	var num = num;
        	
        	switch (num) {
			case 1: document.getElementById("taside1").className = "navi-item-on"; break;
			case 2: document.getElementById("taside2").className = "navi-item-on"; break;
			case 3: document.getElementById("taside3").className = "navi-item-on"; break;
			case 5: document.getElementById("taside5").className = "navi-item-on"; break;
			case 6: document.getElementById("taside6").className = "navi-item-on"; break;
			case 7: document.getElementById("taside7").className = "navi-item-on"; break;
            }
            
        }

    </script>

</body>
</html>