<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html> 
<head>
    <link rel="stylesheet" type="text/css" href="/omg/resources/css/daumcommon.css">
   <!--  <link rel="stylesheet" type="text/css" href="/omg/resources/css/fmypageContainer.css"> -->
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.left-container .title {
	    font-size: 16px;
	    font-weight: bold;
	    padding-bottom: 12px;
	    border-bottom: solid 2.5px #141414;
	}

	.left-container {
		float:left;
	    width: 200px;
	    padding: 30px 30px 35px 30px;
	    border: solid 1px #dadada;
	    box-sizing: border-box;
	    margin-left: 11%;
	}
	
	.left-container .class_category_list li {
    padding: 14px 0 14px;
    border-bottom: solid 1px #ececec;
    border-collapse: collapse;
    list-style: none;
    cursor: pointer;
    color: #3b3b3b;
}
</style>
</head>
<body>
 <div class="left-container"><div class="class_category_container">
            <div class="title">OH!마이피티</div>
            <ul class="class_category_list">
                <li class="navi-item"><a href="<%= request.getContextPath() %>/selectApplyList.pt">매칭신청 목록</a></li>
                <li class="navi-item"><a  href="<%= request.getContextPath() %>/selectCurriculumList.cu">커리큘럼 관리</a></li>
                <li class="navi-item">그룹소통방</li>
            </ul>
	        </div>
	    </div> 
</body>
</html>
