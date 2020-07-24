<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.omg.jsp.manager.model.vo.Manager"%>
<% Manager loginManager = (Manager)session.getAttribute("loginManager"); %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>오마이짐 관리자 페이지</title>
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

    </style>
</head> 
<body>
	    <header>
        <img src="/omg/resources/imageManager/top.png" id="top_background">
        <a href="#" id="logo"><img src="/omg/resources/imageManager/logo.png" alt="logo"></a>
        <div style="width: 800px; right: -600px;" align="right">
            <a href="#">개발요청페이지</a> &nbsp;&nbsp;&nbsp;
            <%= loginManager.getManagerName()%>님 환영합니다!
            &nbsp;&nbsp;&nbsp;<a onclick="logout();">로그아웃</a>
        </div>
    </header>
    <nav>
        <div><img src="/omg/resources/imageManager/menuGroup.png" class="menuGroup" ></div>
        <ul><details open><summary>회원관리</summary>
            <li><a href="<%=request.getContextPath()%>/SelectFollowerListServlet">고객조회/수정</a></li><br>
        </details></ul>

        <img src="/omg/resources/imageManager/menuGroup.png" class="menuGroup">
        <ul><details open><summary>트레이너 관리</summary>
            <li><a href="<%=request.getContextPath()%>/SelectTrainerListServlet">트레이너조회/수정</a></li>
            <li><a href="<%=request.getContextPath()%>/select.manager.apply.gd">트레이너 승인요청관리</a></li>
            <li><a href="<%=request.getContextPath()%>/select.salary.all">비용지급관리</a></li><br>
        </details></ul>
        <img src="/omg/resources/imageManager/menuGroup.png" class="menuGroup">
        <ul><details open><summary>트레이닝룸 관리</summary>
            <li><a href="#">트레이닝룸 조회</a></li>
            <li><a href="">트레이닝 진행 이력 관리</a></li><br>
        </details></ul>
        
        <img src="/omg/resources/imageManager/menuGroup.png" class="menuGroup">
        <ul><details open><summary>그룹소통방 관리</summary>
            <li><a onclick="manageGroupList();" style="cursor: pointer;">그룹소통방 조회</a></li><br>
        </details></ul>
        
        <img src="/omg/resources/imageManager/menuGroup.png" class="menuGroup">
        <ul><details open><summary>식단페이지 관리</summary>
            <li><a href="#">회원별 식단 조회</a></li><br>
        </details></ul>
        
        <img src="/omg/resources/imageManager/menuGroup.png" class="menuGroup">
        <ul><details open><summary>건강정보게시판 관리</summary>
            <li><a href="#">게시글작성/조회/수정</a></li><br>
        </details></ul>
        
        <img src="/omg/resources/imageManager/menuGroup.png" class="menuGroup">
        <ul><details open><summary>챌린지 관리</summary>
            <li><a href="#">챌린지 목록 관리</a></li>
            <li><a href="#">챌린지 참여자 관리</a></li><br>
       </details></ul>
        
        <img src="/omg/resources/imageManager/menuGroup.png" class="menuGroup">
        <ul><details open><summary>고객센터</summary>
            <li><a href="<%= request.getContextPath()%>/selectList.no">공지사항</a></li>
            <li><a href="#">이벤트</a></li>
            <li><a href="#">자주묻는질문</a></li>
            <li><a href="#">직접묻는질문</a></li>
            <li><a href="../managerAboutMypage/manageReport.jsp">신고내역관리</a></li>
            <li><a href="../managerAboutMypage/manageStamp.jsp">스탬프관리</a></li><br>
        </details></ul>
        
        <img src="/omg/resources/imageManager/menuGroup.png" class="menuGroup">
        <ul><details open><summary>OH머니 관리</summary>
            <li><a onclick="manageOhMoneyList();" style="cursor: pointer;">전체내역</a></li>
            <li><a onclick="manageRefundList();" style="cursor: pointer;">환급내역</a>
            <li><a onclick="manageDirectList();" style="cursor: pointer;">수기지급</a></li>
            <li><a href="../manager/omoneyDirectPaymentHistory.jsp">수기지급내역관리</a></li>
        </details></ul>
        <img src="/omg/resources/imageManager/menu_bar.png" id="nav_background">
    </nav>
    
    <script type="text/javascript">
		function logout() {
			location.href= "<%=request.getContextPath()%>/logout.mg";
			alert("<%=loginManager.getManagerName()%>관리자님의 로그아웃이 성공적으로 완료되었습니다.");
		}
		
		function manageOhMoneyList(){
			location.href= "<%=request.getContextPath()%>/listOhMoney.manager";
		}
		
		function manageGroupList(){
			location.href= "<%=request.getContextPath()%>/groupList.manager";
		}
		
		function manageRefundList(){
			location.href="<%=request.getContextPath()%>/refundList.manager";
		}
		
		function manageDirectList(){
			location.href="<%=request.getContextPath()%>/directList.manager";
		}
	</script>
</body>
</html>