<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    import="java.util.*, com.omg.jsp.trainerCeritificate.model.vo.*, com.omg.jsp.trainerCareer.model.vo.*, com.omg.jsp.trainerCeritificate.model.vo.*
	, com.omg.jsp.trainerEducation.model.vo.*, com.omg.jsp.trainerReview.model.vo.*, com.omg.jsp.member.model.vo.*" %>
<% 
	HashMap<String, Object> hmap = (HashMap<String, Object>) request.getAttribute("information"); 
	ArrayList<String> trainerInfo = (ArrayList<String>) hmap.get("trainerInfo");
	ArrayList<TrainerCeritificate> ceritificateList = (ArrayList<TrainerCeritificate>) hmap.get("ceritificate");
	ArrayList<TrainerEducation> educationList = (ArrayList<TrainerEducation>) hmap.get("education");
	ArrayList<TrainerCareer> tcrList = (ArrayList<TrainerCareer>) hmap.get("career");
	ArrayList<TrainerReview> trList = (ArrayList<TrainerReview>) hmap.get("review");
	ArrayList<TrainerInfo> tiList = (ArrayList<TrainerInfo>) hmap.get("info");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <title>오마이짐 관리자 페이지</title>
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
            top: 0;
            display: inline;
            z-index: -100;
        }

        #logo {
            position: absolute;
            top: 13px;
            left: 13px;
        }

        header div {
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

        section {
            position: absolute;
            display: inline-block;
            width: 1240px;
            height: 100%;
            left: 200px;
        }

        section>article {
            margin-top: 30px;
            margin-left: 30px;
            margin: 30px;
            display: inline-block;
            width: 1180px;
        }

        #menuTitleArea {
            /* display: inline; */
        }

        #searchArea {
            display: inline-block;
            width: 400px;
            position: absolute;
            top: 60px;
            left: 860px;
            margin: 0;
        }

        #searchBtn {
            width: 50px;
            margin-left: 5px;
        }

        #alignmentArea {
            margin: 0;
            margin-top: 10;
            display: inline-block;
            position: relative;
            left: 958px;
            top: 25px;

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
            width: 70px;
            color: white;
            height: 25px;
            cursor: pointer;
        }

        #riverBtn {
            border-style: none;
            background: navy;
            width: 70px;
            color: white;
            height: 25px;
            cursor: pointer;
        }

        #manyPeople {
            margin-left: 30;
        }
        
        table {
        	margin-bottom: 150px;
        }
    </style>

    <style type="text/css">
        .tg {
            
            border-collapse: collapse;
            border-spacing: 0;
        }

        .tg td {
            border-color: black;
            border-style: solid;
            border-width: 1px;
            font-family: "Noto Sans KR Medium";
            font-size: 15px;
            overflow: hidden;
            padding: 10px 5px;
            word-break: normal;
        }

        .tg th {
            border-color: black;
            border-style: solid;
            border-width: 1px;
            font-family: "Noto Sans KR Medium";
            font-size: 15px;
            font-weight: normal;
            overflow: hidden;
            padding: 10px 5px;
            word-break: normal;
        }

        .tg .tg-cly1 {
            text-align: center;
            vertical-align: middle
        }

        .tg .tg-0pky {
            border-color: inherit;
            text-align: center;
            vertical-align: top
        }

        .tg .tg-0lax {
            text-align: center;
            vertical-align: top;
            height: 30px;
        }
    </style>
   
</head>
<body>
	
  <%@ include file="../../common/managerNav.jsp"%>
    <section>
    <script>
      profileload("<%= tiList.get(0).getMemberId() %>")
    </script>
        <!--헤더 영역-->
        <article id="menuTitleArea">
            <p style="font-weight: bold; font-size: 1.5em; padding-top: 30px; padding-left: 30px;">트레이너 조회/수정</p><br>
           
        </article>
        <!--헤더 영역 종료-->

       
        <!--버튼 영역-->
        <article id="button-Area">
            <div style="float: right; margin-right: 100px;">
                <button onclick="location.href='https://app.modusign.co.kr/templates'" style="cursor: pointer; border: none; background-color: navy; color: white; height: 30px; width: 70px">계약서작성</button>
                <button onclick="" style="cursor: pointer; border: none; background-color: navy; color: white; height: 30px; width: 120px">임시비밀번호발급</button>
                <button onclick="" style="cursor: pointer; border: none; background-color: navy; color: white; height: 30px; width: 70px">edit</button>
            </div>
          
        </article>
        <!--버튼영역 종료-->

        <!--테이블 표시 영역-->
        <article id="tableArea">
            <div align="center">
                <table class="tg" style="undefined;table-layout: fixed; width: 1000px; height: 700px;">
                
                    <colgroup>
                    
                        <col style="width: 65px">
                        <col style="width: 65px">
                        <col style="width: 65px">
                        <col style="width: 65px">
                        <col style="width: 85px">
                        <col style="width: 65px">
                        <col style="width: 65px">
                        <col style="width: 85px">
                        <col style="width: 85px">
                    </colgroup>
                    <thead>
                        <tr style="border-top: 4px solid gray;">
                            <th class="tg-0pky" colspan="2" style="background-color: navy; color: white;">프로필</th>
                            <th class="tg-0pky" style="background-color: navy; color: white;">아이디</th>
                            <th class="tg-0pky" colspan="3"><%= tiList.get(0).getMemberId() %></th>
                            <th class="tg-cly1" style="background-color: navy; color: white;">회원상태</th>
                            <% if (tiList.get(0).getTrainerType().equals("승인"))  {
                            %> <th class="tg-0lax" colspan="2">정식트레이너</th> 
                            <%} else { %><th class="tg-0lax" colspan="2">임시트레이너</th>
                            <% } %>
                            
                        </tr>
                    </thead> 
                    <tbody>
                        <tr>
                            <td class="tg-0pky" colspan="2" rowspan="4"><img class="<%= tiList.get(0).getMemberId() %>" style="width: 200px; height: 240px;"></td>
                            <td class="tg-cly1" style="background-color: navy; color: white;">연락처</td>
                            <td class="tg-0lax" colspan="6"><%= tiList.get(0).getPhone() %></td>
                        </tr>
                        
                        <tr>
                            <td class="tg-0lax" style="background-color: navy; color: white;">회원명</td>
                            <td class="tg-0lax" colspan="3"><%= tiList.get(0).getName() %></td>
                            <td class="tg-cly1" style="background-color: navy; color: white;">가입일</td>
                            <td class="tg-0lax" colspan="2"><%= tiList.get(0).getEnrollDate() %></td>
                        </tr>
                        <tr>
                            <td class="tg-0lax" style="background-color: navy; color: white;">이메일</td>
                            <td class="tg-0lax" colspan="6"><%= tiList.get(0).getEmail() %></td>
                        </tr>
                        <tr>
                            <td class="tg-0lax" style="background-color: navy; color: white;">주소</td>
                            <td class="tg-0lax" colspan="6"><%= tiList.get(0).getAddress() %></td>
                        </tr>
                        <tr>
                            <td class="tg-0lax" colspan="9" style="background-color: navy; color: white;">학력</td>
                            <% if(educationList.size() > 0) {
                            	
                             for(int i = 0; i < educationList.size(); i++) { %>
													
														<tr><td class="tg-0lax" colspan="9"><%= educationList.get(i).getEduName() %>
														<button onclick="" style="border: none; background-color: navy; color: white; width: 70px; height: 20px;">확인하기</button></td>
														</tr>
													
												<% } 
											 } else { %>
											 		<tr>
														<td class="tg-0lax" colspan="9">등록된 학력 정보가 없습니다.
													</tr>
											 <% } %>
                            <td class="tg-0lax" style="background-color: navy; color: white;">주요분야</td>
                            <td class="tg-0lax" colspan="2"><%= tiList.get(0).getTrainerMainField() %></td>
                            <td class="tg-cly1" style="background-color: navy; color: white;">계좌정보</td>
                            <td class="tg-0lax" colspan="5"><%= tiList.get(0).getBankName() %> <%= tiList.get(0).getBankAccount() %></td>
                        </tr>
                        <tr>
                            <td class="tg-0lax" colspan="3" style="background-color: navy; color: white;">자격증/워크샵</td>
                            <td class="tg-0lax" colspan="2" style="background-color: navy; color: white;">취득일</td>
                            <td class="tg-0lax" colspan="2" style="background-color: navy; color: white;">발급기관</td>
                            <td class="tg-0lax" colspan="2" style="background-color: navy; color: white;">증빙자료</td>
                        </tr>
                        <% if(ceritificateList.size() > 0) {
												for(int i = 0; i < ceritificateList.size(); i++) { %>
													<tr>
														<td class="tg-0lax" colspan="3"><%= ceritificateList.get(i).getCertiName() %></td>
														<td class="tg-0lax" colspan="2"><%= ceritificateList.get(i).getCertiInstitution() %></td>
														<td class="tg-0lax" colspan="2"><%= ceritificateList.get(i).getCertiDate() %></td>
														<td class="tg-0lax" colspan="2"><button onclick="<%= ceritificateList.get(i).getCertiFileCode() %>" style="border: none; background-color: navy;color: white; width: 70px; height: 20px;">확인하기</button></td>
													</tr>
												<% } 
												} else { %>
													<tr>
														<td colspan="9">등록된 자격증 정보가 없습니다.</td>
													</tr>
												<% } %>
                        
                        <tr>
                            <td class="tg-0lax" colspan="3" style="background-color: navy; color: white;">기관명</td>
                            <td class="tg-0lax" colspan="2" style="background-color: navy; color: white;">직급</td>
                            <td class="tg-0lax" colspan="4" style="background-color: navy; color: white;">근무기간</td>
                           
                        </tr>
                        <% if(tcrList.size() > 0) {
												for(int i = 0; i < tcrList.size(); i++) { %>
													<tr>
														<td class="tg-0lax" colspan="3"><%= tcrList.get(i).getCompName() %></td>
														<td class="tg-0lax" colspan="2"><%= tcrList.get(i).getCareerLevel() %></td>
														<td class="tg-0lax" colspan="4"><%= tcrList.get(i).getEnterDate() %> ~ <%= tcrList.get(i).getResignDate() %></td>
													</tr>
												<% } 
											} else {%>
													<tr>
														<td colspan="9">등록된 경력 정보가 없습니다.</td>
													</tr>
											<% } %>
                        
                        
                        
                    </tbody>
                </table>
            </div>
        </article>
        <!--테이블 표시 영역 종료-->


    </section>
    
    
</body>
</html>