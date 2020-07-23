<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.omg.jsp.trainerCeritificate.model.vo.*, com.omg.jsp.trainerCareer.model.vo.*, com.omg.jsp.trainerCeritificate.model.vo.*
	, com.omg.jsp.trainerEducation.model.vo.*, com.omg.jsp.trainerReview.model.vo.*, com.omg.jsp.member.model.vo.*, com.omg.jsp.followerHealth.model.vo.*"%>
<% 
HashMap<String, Object> hmap = (HashMap<String, Object>) request.getAttribute("information"); 
  ArrayList<Member> fList = (ArrayList<Member>) hmap.get("fList");
 ArrayList<HealthInfo> hInfo = (ArrayList<HealthInfo>) hmap.get("hInfo");  
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <script>
   var profileManageCode;

   function profileload(userId){   
        $.ajax({
          url : "/omg/loadProfile.all",
           type : 'post',
           data : {
                   userId : userId
                },
                success : function(data) {
                   profileManageCode = data.fileManageName;
                   console.log(profileManageCode);
                   $("."+userId).attr("src", "<%=request.getContextPath()%>/resources/test/"+profileManageCode); 
                },
                error : function(){
                  profileManageCode = "";
                }
        })
   }      
   profileload();
   
   
   </script>
<title>Insert title here</title>
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
            top: 63px;
            font-size: 15px;
        }
        #nav_background {
            position: absolute;
            z-index: -100;
            top: 0;
            height: 900%;
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

        /*섹션*/

        .customer_content_table{
            border-radius: 5px;
            background: white;
        }

        .customer_content_container{
            padding: 50px;
        }

        .customer_table{
            width: 1000px;
            height: 350px;
            text-align: center;
        }

        table.customer_table  {
            border-top: 3px solid #444444;
            border-bottom: 3px solid #444444;
            border-collapse: collapse;
            text-align: center;
        }
        table.customer_table th{
            font-family: "Noto Sans KR Thin";
            color: white;
            font-weight: bolder;
        }
        table.customer_table td{
            color: black;
        }

        table.customer_table th, td {
            border-bottom: 1px solid #a9a9a9;
            height: 40px;
        }
        table.customer_table th{
            background: #000532;
        }

        table.cash_table{
            border-top: 3px solid #444444;
            border-bottom: 3px solid #444444;
            width: 450px;
        }
        table.cash_table tr td:nth-child(2n){
            color: white;
            background: #000532;
        }
        table.cash_table tr th:nth-child(2n){
            color: white;
            background: #000532;
        }
        table.cash_table td, th{
            border-bottom: 1px solid #a9a9a9;
        }
        
        table.cash_table th{
            font-size: 0.75em;
            text-align: left;
            font-weight:600;
        }

        table.cash_table td{
            font-size: 1.25em;
            text-align: center;
            font-weight: 900;
        }

        table.customer_cash_list  {
            width: 1000px;
            border-top: 3px solid #444444;
            border-bottom: 3px solid #444444;
            border-collapse: collapse;
            text-align: center;
            margin-left: 30px;
            margin-right: 30px;
        }
        table.customer_cash_list th, td {
            border-bottom: 1px solid #444444;
        }
    </style>
</head>
<body>
   <%@ include file="../../common/managerNav.jsp"%>
    <script>
      profileload("<%= fList.get(0).getMemberId() %>")
    </script> 
	
    <section style="position: absolute; left: 210px">
    
        <div class="customer_content_container">
            <div class="customer_content_main">
                <p style="font-weight: bold; font-size: 1.5em; display:block; float: left;">고객상세정보</p>
                <button style="display:block; width: 105px; height: 35px; font-size: 0.7em; background: orangered; font-weight: bold; color: white; float: right; margin-right: 10px; border: none; border-radius: 5px;">임시비밀번호발급</button>
                <button style="display:block; width: 105px; height: 35px; font-size: 0.7em; background: #000532; font-weight: bold; color: white; float: right; margin-right: 10px;  border: none; border-radius: 5px;">Edit</button>
                <button style="display: block; float: right; width: 105px; height: 35px; font-size: 0.7em; background: #000532; font-weight: bold; color: white; float: right; margin-right: 10px;  border: none; border-radius: 5px;"">목록</button>
                <br><br>
                <div class="customer_content_table" style="padding: 15px; clear: both;">
                    <table border="1" class="customer_table" style="margin-left: 30px; margin-right: 30px; margin-bottom: 30px;">
                        <tbody>
                            <tr>
                                <th>프로필</th>
                                <th>아이디</th>
                                <td><input type="text" value="<%= fList.get(0).getMemberId() %>" style="outline: none; border: none; background: none;" readonly></td>
                                <th>회원상태</th>
                                <td><input type="text" value="<%= fList.get(0).getMemberStatus() %>"  style="outline: none;  border: none;  background: none;" readonly></td>
                            </tr>
                            <tr>
                                <td colspan="1" rowspan="4">
                                    <img class="<%= fList.get(0).getMemberId() %>" width="160px" height="180px" src="">
                                </td>
                                <th>생년월일</th>
                                <td><input type="text" value="<%= fList.get(0).getMemberAge() %>" style="outline: none; border: none; background: none;" readonly></td>
                                <th>등록여부</th>
                                <td><input type="text" value="<%= fList.get(0).getRequestType() %>"  style="outline: none;  border: none;  background: none;" readonly></td>
                            </tr>   
                            <tr>
                                <th>회원명</th>
                                <td><input type="text" value="<%= fList.get(0).getName() %>" style="outline: none; border: none; background: none;" readonly></td>
                                <th>가입일</th>
                                <td><input type="text" value="<%= fList.get(0).getEnrollDate() %>"  style="outline: none;  border: none;  background: none;" readonly></td>
                            </tr>
                            <tr>
                                <th>이메일</th>
                                <td><input type="text" value="<%= fList.get(0).getEmail() %>" style="outline: none; border: none; background: none;" readonly></td>
                                <th>연락처</th>
                                <td><input type="text" value="<%= fList.get(0).getPhone() %>"  style="outline: none;  border: none;  background: none;" readonly></td>
                            </tr>
                            <tr>
                                <th>주소</th>
                                <td colspan="3"><input type="text" value="<%= fList.get(0).getAddress() %>" style="width: 100%; outline: none; border: none; background: none;" readonly></td>
                            </tr>
                            <tr>
                                <th>건강정보</th>
                                <td colspan="4">
                               <% for(int i = 0; i < hInfo.size(); i++) { %>
													
														<%= hInfo.get(i).getHealthInfoCode() %> : <%= hInfo.get(i).getHealthData() %>
													
												<% } %> 
								</td>
                                
                            </tr>
                            
                        </tbody>
                    </table>

                    <div class="login_wrap" style="display: none;">
                        <div class="dark_bg" onclick="jQuery('.login_wrap').fadeOut('slow')"></div>
                        <div class="login_box">
                            <div style="width: 100%; height: 30px; background: orangered; border-radius: 8px;">
                                <div style="color: white; font-weight: bold; font-family: 'Noto Sans KR'; margin-left: 270px; padding-top: 5px;">오머니 충전</div>
                                <img class="close" onclick="jQuery('.login_wrap').fadeOut('slow')" src="img_icon/closeIcon.png" width="20px" height="20px">
                            </div>
                            <div class="login_content">
                            </div>
                        </div>
                    </div>
                    
                    <div class="customer_ohMoney_content" style="text-align: center; margin: auto;">
                        <table  class="cash_table"  style="margin-left: 325px;"> 
                            <tbody>
                                <tr>
                                    <th>
                                      	현재 보유 오머니
                                    </th>
                                    <th>
                                       	환급 불가 오머니
                                    </th>
                                    <th>
                                       	환급 가능 오머니
                                    </th>
                                </tr>
                                <tr>
                                    <td>50,000원
                                    </td>
                                    <td>40,000원
                                    </td>
                                    <td>10,000원
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <br>
                    <div>
                        <p style="font-size: 1.25em; font-weight:600; margin-left: 30px; margin-bottom: 10px;">오머니 내역</p>
                        <table class="customer_cash_list">
                            <thead>
                                <tr>
                                    <th>
                                        NO.
                                    </th>
                                    <th>
                                        	일시
                                    </th>
                                    <th>
                                        	구분
                                    </th>
                                    <th> 
                                        	내역
                                    </th>
                                    <th>
                                        	금액
                                    </th>
                                    <th>
                                        	잔액
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <!--리스트구분넘버-->1
                                    </td>
                                    <td>
                                        <!--오머니 변동일시-->2020.07.03
                                    </td>
                                    <td>
                                        <!--오머니 변동구분-->충전
                                    </td>
                                    <td>
                                        <!--오머니 변동세부내역-->카드결제로 인한 오머니 충전
                                    </td>
                                    <td>
                                        <!--오머니 변동액-->10000
                                    </td>
                                    <td>
                                        <!--남은 오머니-->15000
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>