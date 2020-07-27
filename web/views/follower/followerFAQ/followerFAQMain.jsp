<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.omg.jsp.faq.model.vo.*" %>
<%ArrayList<FAQ> list = (ArrayList<FAQ>) request.getAttribute("list"); %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    

 
   

<!-- left-container -->
    <style> 
    .left-container {
      display: inline-block;
      width: 290px;
      padding: 30px 30px 35px 30px;
      border: solid 1px #dadada;
      box-sizing: border-box
    }

    .left-container .class_category_container {
      font-size: 14px;
      color: #000
    }

    .left-container .title {
      font-size: 16px;
      font-weight: bold;
      padding-bottom: 12px;
      border-bottom: solid 2.5px #141414
    }

    .left-container .class_category_list li {
      padding: 14px 0 14px;
      border-bottom: solid 1px #ececec;
      border-collapse: collapse;
      list-style: none;
      cursor: pointer;
      color: #3b3b3b
    }

    .left-container .class_category_list li.on {
      color: #ff6f61
    }

    .left-container .class_category_list li:last-child {
      border-bottom: none;
      padding-bottom: 0
    }
    </style>

    <title>1:1 Q&amp;A | OH MY GYM</title>

   <style>
    .wrapper {
      max-width: 1100px;
      margin: auto
    }

    .content {
      margin: auto;
      background-color: #fff
    }

    .content .member_header {
      padding: 60px 0 70px
    }

    .content .member_header .title {
      display: inline-block;
      font-size: 20px;
      font-weight: bold;
      color: #000
    }

    .content .member_header .sub_title {
      font-size: 14px;
      line-height: 23px;
      font-weight: bold;
      text-align: right;
      float: right
    }

    .content .member_header .sub_title .color {
      color: #ff6f61
    }

    .content .member_header .sub_title .right_arrow {
      height: 11px;
      margin: 0 6px;
      vertical-align: baseline
    }

    .content .right-container {
      display: inline-block;
      float: right;
      width: 740px;
      min-height: 700px
    }

  </style>
  <style>
    .left-container {
      display: inline-block;
      width: 290px;
      padding: 30px 30px 35px 30px;
      border: solid 1px #dadada;
      box-sizing: border-box
    }

    .left-container .class_category_container {
      font-size: 14px;
      color: #000
    }

    .left-container .title {
      font-size: 16px;
      font-weight: bold;
      padding-bottom: 12px;
      border-bottom: solid 2.5px #141414
    }

    .left-container .class_category_list li {
      padding: 14px 0 14px;
      border-bottom: solid 1px #ececec;
      border-collapse: collapse;
      list-style: none;
      cursor: pointer;
      color: #3b3b3b
    }

    .left-container .class_category_list li.on {
      color: #ff6f61
    }

    .left-container .class_category_list li:last-child {
      border-bottom: none;
      padding-bottom: 0
    }
  </style>
  <style>
    .wrapper {
      background-color: #fff
    }

    .faq_container {
      margin: auto;
      width: 1100px
    }

    .faq_container .right-container {
      display: inline-block;
      float: right;
      width: 740px
    }

    .faq_container .right-container .faq_list_container .search_wrapper {
      margin-bottom: 40px
    }

    .faq_container .right-container .faq_list_container .search_wrapper .search_box {
      width: 100%;
      height: 53px;
      border-radius: 2px;
      background-color: #ffffff;
      border: solid 1px #dadada;
      padding: 15px;
      box-sizing: border-box;
      font-size: 15px;
      background-image: url(/site_media/new_images/qna-ic-search@2x.png);
      background-repeat: no-repeat;
      background-size: 26px;
      background-position: center right 15px
    }

    .faq_container .right-container .faq_list_container .search_wrapper .search_icon {
      float: right;
      width: 50px;
      height: 53px;
      margin-top: -53px;
      position: relative;
      cursor: pointer
    }

    .faq_container .right-container .faq_list_container .faq_wrapper {
      width: 100%
    }

    .faq_container .right-container .faq_list_container .faq_wrapper .faq_title {
      font-size: 16px;
      font-weight: bold;
      color: #0d0d0d;
      padding-bottom: 10px;
      border-bottom: solid 2.5px #141414
    }

    .faq_container .right-container .faq_list_container .faq_wrapper .faq_title .color {
      font-weight: bold;
      color: #ff6f61
    }

    .faq_container .right-container .faq_list_container .faq_wrapper .search {
      font-size: 13px;
      font-weight: normal
    }

    

    .faq_container .right-container .faq_list_container .faq_question_list .question_item {
      padding: 20px 0 16px;
      font-size: 14px;
      font-weight: bold;
      color: #000;
      border-bottom: solid 1px #dadada;
      border-collapse: collapse;
      list-style: none;
      background-repeat: no-repeat;
      background-size: 15px;
      background-position: center right 15px;
      
    }


    .faq_container .right-container .faq_list_container .faq_question_list .question_item.no_question {
      background-image: none
    }

    .faq_container .right-container .faq_list_container .faq_question_list .question_item:last-child {
      border-bottom: solid 1px #141414
    }

    .faq_container .right-container .faq_list_container .faq_question_list .answer_wrppaer {
      background-color: #f8f8f8;
      padding: 15px 20px;
      border-bottom: solid 1px #dadada
    }

    .faq_container .right-container .faq_list_container .faq_question_list .answer_wrppaer .answer_content {
      font-size: 13px;
      color: #4f4f4f;
      text-align: left;
      line-height: 1.7;
      letter-spacing: normal
    }

    .inbound_btn_container {
      margin-top: 30px
    }

    .inbound_btn_container .title {
      background-repeat: no-repeat;
      background-size: 15px;
      background-position: top 3px right 5px
    }


    .inbound_btn_container .email_btn {
      margin-top: 20px;
      line-height: 52px;
      height: 52px;
      border-radius: 2px;
      background-color: #ff6f61;
      font-size: 15px;
      font-weight: normal;
      color: #fff;
      text-align: center;
      cursor: pointer
    }

  </style>
 


</head>
<body>
  <%@ include file="../../common/followerNav.jsp"%> 
  
  
  <div class="content" id="app">

    
    <div class="wrapper">
      <div class="faq_container">
        <div class="member_header">
          <div class="title">고객센터</div>
          <div class="sub_title"><span class="content">고객센터</span> >
           
            <span class="color">자주묻는 질문</span>
          </div>
        </div>
        <div class="left-container">
          <div class="class_category_container">
            <div class="title">자주 묻는 질문</div>
            <ul class="class_category_list">
              <li class="navi-item on">전체</li>
              <li class="navi-item ">오마이짐이란?</li>
              <li class="navi-item ">수강문의</li>
              <li class="navi-item ">연기/환불</li>
              <li class="navi-item ">결제/캐시</li>
              <li class="navi-item ">회원정보</li>
              <li class="navi-item ">기타</li>
            </ul>
            <div class="inbound_btn_container">
              <div class="title">1:1 문의하기</div>
              <div class="email_btn" onclick="location.href='/omg/views/follower/followerFAQ/followerInsertQnA.jsp'">1:1 문의</div>
            </div>
          </div>
        </div>
        <div class="right-container question_list">
          <div class="faq_list_container">
            <div class="search_wrapper">
              <input class="search_box" placeholder="질문을 검색해보세요" value="">
              <div class="search_icon" data-testid="search-btn">
              </div>
            </div>
            <div class="faq_wrapper">
              <div class="faq_title">전체</div>
              
            
            
              <ul class="faq_question_list">
              <% for(FAQ f : list){ %>
                <li class="question_item ">
                  <div class="question"><%= f.getQuestion() %></div>
                  <br>
                  <div class="answer"><%= f.getAnswer() %></div>
                </li>
                <% } %>
               
                
              </ul>
              
            </div>
          </div>
        </div>
      </div>
    </div>
    
  </div>
  


 <div style="position: absolute; top:1000px;">
        <%@ include file="../../common/footer.jsp" %>
        
       </div>


    </div>
    <!--// 오른쪽 콘텐츠 영역 -->
    

    
    </div>
    


</body>
</html>