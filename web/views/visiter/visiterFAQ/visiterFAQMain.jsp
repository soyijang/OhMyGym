<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

  
  <title>OH MY GYM</title>
  
  
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

    .faq_container .right-container .faq_list_container .faq_wrapper .faq_pagination {
      text-align: center
    }

    .faq_container .right-container .faq_list_container .faq_wrapper .faq_pagination .page_wrapper {
      padding-top: 20px;
      margin: auto
    }

    .faq_container .right-container .faq_list_container .faq_wrapper .faq_pagination .page_wrapper .page_item {
      display: inline-block;
      font-size: 15px;
      padding: 0 10px;
      color: #4f4f4f;
      list-style: none;
      cursor: pointer
    }

    .faq_container .right-container .faq_list_container .faq_wrapper .faq_pagination .page_wrapper .page_item.active {
      color: #ff6f61;
      border: solid 0.5px #dadada;
      width: 29px;
      height: 29px;
      line-height: 29px;
      padding: 0;
      cursor: default
    }

    .faq_container .right-container .faq_list_container .faq_question_list .question_item {
      padding: 20px 0 16px;
      font-size: 14px;
      font-weight: bold;
      color: #000;
      border-bottom: solid 1px #dadada;
      border-collapse: collapse;
      list-style: none;
      cursor: pointer;
      background-image: url(/site_media/new_images/m-pay-confirmed-ic-arrow@2x.png);
      background-repeat: no-repeat;
      background-size: 15px;
      background-position: center right 15px
    }

    .faq_container .right-container .faq_list_container .faq_question_list .question_item.on {
      background-image: url(/site_media/new_images/m-pay-confirmed-ic-arrow-open@2x.png)
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

    .inbound_btn_container .title.on {
      background-image: url(/site_media/new_images/m-pay-confirmed-ic-arrow-open@2x.png)
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

    ::-webkit-input-placeholder {
      color: #c4c4c4
    }

    ::-moz-placeholder {
      color: #c4c4c4
    }

    :-ms-input-placeholder {
      color: #c4c4c4
    }

    input:-moz-placeholder {
      color: #c4c4c4
    }
  </style>
 


</head>
<body>
<!--  <div class="container_top">
    <ul class="header_top_menu" id="header_top">
      <li id="webIntro">로그인</li>
      <li id="webClasses">회원가입</li>
      </li>
    </ul>
  </div><br>-->
  <%@ include file="../../common/followerNav.jsp" %>
  <div class="content" id="app">

    <header id="header" style="margin-bottom: 70px;">
      <div class="header_inner">
        <div class="header-wrapper">
        </div>
      </div>
      <div class="header_inner bottom fixed-header">
        <div class="header-wrapper">

        </div>
      </div>
    </header>
    <div class="wrapper">
      <div class="faq_container">
        <div class="member_header">
          <div class="title">고객센터</div>
          <div class="sub_title"><span class="content">고객센터</span>
            <img class="right_arrow" src="img/right_arrow.png" alt="right_arrow_button">
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
              <div class="email_btn">1:1 문의</div>
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
                <li class="question_item ">
                  <div class="question">Q. 결제수단을 변경하고 싶어요.</div>
                </li>
                <li class="question_item ">
                  <div class="question">Q. 환불접수를 완료했어요. 앞으로 어떻게 진행되나요?</div>
                </li>
                <li class="question_item ">
                  <div class="question">Q. 트레이너 피드백은 어떤 방법으로 받게 되나요?</div>
                </li>
                <li class="question_item ">
                  <div class="question">Q. 추천인제도가 무엇인가요?</div>
                </li>
                <li class="question_item ">
                  <div class="question">Q. 현금영수증/수강증이 필요해요.</div>
                </li>
                <li class="question_item ">
                  <div class="question">Q. 수강중에 그만둬야 할 사정이 생기면 어떡하죠?</div>
                </li>
              </ul>
              <div class="faq_pagination">
                <ul class="page_wrapper">
                  <li class="page_item page_item active">1</li>
                  <li class="page_item page_item ">2</li>
                  <li class="page_item page_item ">3</li>
                  <li class="page_item page_item ">4</li>
                  <li class="page_item page_item ">5</li>
                  <li class="page_item page_item ">6</li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
     <%@ include file="../../common/footer.jsp" %>
  </div>
  


 
</body>
</html>