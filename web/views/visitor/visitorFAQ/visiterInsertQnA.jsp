<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    

 
   

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
        @charset "UTF-8";

     

        /*contents area*/
        .wrap {
            clear: both;
            position: relative;
            width: 100%;
        }

       

       

        /* SCROLLBAR Chrome Safari*/
        #brand_list_print::-webkit-scrollbar {
            width: 7px;
        }

        #brand_list_print::-webkit-scrollbar-track {
            background: #fff;
        }

        #brand_list_print::-webkit-scrollbar-thumb {
            height: 50px;
            width: 50px;
        }

       
        /*cs*/
        .cs_area {
            border-top: 1px solid #ddd;
            padding-top: 15px;
        }

        .cs_contents {
            border: 1px solid #ddd;
            padding: 10px 10px 0 10px;
            font-size: 12px;
            line-height: 20px;
            margin: 15px 0 0 0;
        }

        .cs_time {
            line-height: 35px;
            text-align: center;
            border: 1px solid #ddd;
            background: #f3f3f3;
            font-size: 12px;
            margin-top: -1px;
        }

        .cs_numb {
            font-size: 20px;
            margin-bottom: 10px;
        }

        .cs_info {
            color: #b2b2b2;
            padding: 5px 0 10px 0;
        }

        .cs_info.first {
            border-bottom: 1px solid #ddd;
        }

        .cs_info .link_type {
            color: #000;
        }

        .cs_contents .txt_num_cs {
            color: #666;
        }

        .box_cs_left {
            line-height: 21px;
            margin: 15px;
        }

        .txt_tel_left {
            font: 24px 'Musinsa';
            margin-bottom: 15px;
        }

        .txt_tel_left .fa.fa-phone {
            margin-top: 5px;
        }

        .txt_csinfo_left {
            font-weight: bold;
            color: #000;
        }

        .box_info_left {
            margin-top: 10px;
            padding-top: 10px;
            border-top: 1px solid #ddd;
        }

        .box_info_left a {
            color: #000;
            font-weight: bold;
            text-decoration: underline;
        }

        .box_bottom_left {
            margin: 15px;
        }

        .box_bottom_left:after {
            clear: both;
            display: block;
            content: "";
        }

        .box_bottom_left li a {
            width: 62px;
        }

        

        /*right*/
        .right_area {
            position: absolute;
            left: 0px;
            top: 100px;
            right: 0;
            min-width: 1289px;
            border-left: 1px solid #ddd;
        }

        
    </style>


    <style>
        .container-cs-counsel {
            position: absolute;
            left: 400px;
            top: 200px;
            right: 0;
            min-width: 1289px;
            border-left: 1px solid #ddd;
        }
    </style>


</head>
<body>
 <%@ include file="../../common/followerNav.jsp"%>
    <section>


    <!-- wrap -->
    <div class="wrap">


        <div class="left_area">



        </div>
       
        
    </div>
    <!--// 왼쪽 메뉴 영역 -->
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
          
        </div>
      </div>
    <!-- 오른쪽 콘텐츠 영역 -->
    <div class="right_area container-cs-counsel">
        <!-- 컨텐츠 영역 -->
        <!-- 상단 로케이션 -->
        <div class="pagenation">
            <div class="nav_sub"><a href="/">OH MY GYM</a><span class="icon_entity">&gt;</span><a
                    href="/app/cs">고객센터</a><span class="icon_entity">&gt;</span><span>1:1 Q&amp;A</span></div>
        </div>
        <!-- //상단 로케이션 -->
        <!-- 타이틀 -->
        <div class="right_contents">
            <h2 class="title-page">1:1 문의</h2>
        </div>
        <!-- //타이틀 -->
        <!-- CS Center 탭버튼 -->
        <div class="cs_center_tap">
            <ul>
                <li class="hover_effect_none">
                    <span class="title">Tel. 010-9974-8184</span>
                    <span>평일 9:00~18:00(점심 12:00~13:00)</span>
                </li>
                <li class="active">
                    <a href="/app/cs/counsel">
                        <span class="title">1:1 Q&amp;A</span>
                        <span>질문 전 FAQ(자주 묻는 질문)을 먼저 확인해 주세요.</span>
                    </a>
                </li>
                <li class="">
                    <a href="/app/cs/faq">
                        <span class="title">FAQ</span>
                        <span>자주 묻는 질문</span>
                    </a>
                </li>
            </ul>
        </div>
        <!-- //CS Center 탭버튼 -->
        <form name="f1" id="f1" method="post" action="/app/cs/counsel_save">
            <input type="hidden" name="qna_board_no" value="">
            <input type="hidden" name="cmd" value="add">
            <!--			<input type="hidden" name="pay_type" value="" />-->
            <!--			<input type="hidden" name="d_pay_state" value="" />-->
            <input type="hidden" name="opener" value="N">
            <!--			<input type="hidden" name="ord_opt_no" value="" />-->
            <input type="hidden" name="faq_view_yn" value="N">
            <input type="hidden" name="image_yn" value="N">
            <input type="hidden" name="period">
           
            <!-- 고객센터 콘텐츠 -->
            <div class="right_contents">
                <h3 class="title_cs font-mss">1:1 Q&amp;A</h3>


                <div class="section_form">
                    <!-- [D] 주문확인 -->
                    <div class="harf_area">
                        <header class="n-section-title">
                            <h2 class="tit">문의 작성</h2>
                        </header>
                        <table class="n-table table-row">
                            <tbody>
                                <tr>
                                    <th scope="row">문의유형</th>
                                    <td>
                                        <div class="bg-select">
                                            <select name="qa_kind" style="width: 150px; height: 40px;">
                                                <option value="">문의유형 선택</option>
                                                <option value="8">업로드 문의</option>
                                                <option value="9">팔로워 관련</option>
                                                <option value="10">기능 관련</option>
                                                <option value="11">프로필</option>
                                                <option value="20">정산 문의</option>
                                                <option value="12">신고</option>
                                                <option value="13">기타 문의</option>

                                            </select>
                                        </div>
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th scope="row">작성자</th>
                                    <td>
                                        <p style="color: black;">홍길동</p>
                                    </td>
                                </tr>
                                <tr class="n-same-row">
                                    <th scope="row">휴대전화</th>
                                    <td>
                                        <p style="color: black;">010-0000-0000</p>
                                    </td>
                                </tr>
                                <tr class="n-same-row">
                                    <th scope="row">이메일</th>
                                    <td>
                                        <p style="color: black;">hong123@kh.or.kr</p>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">제목</th>
                                    <td>
                                        <input type="text" class="n-input" name="subject" value=""
                                            placeholder="제목을 입력해주세요." style="height: 30px; width: 200px;">
                                    </td>
                                </tr>
                                <tr class="n-same-row">
                                    <th scope="row">문의내용</th>
                                    <td>
                                        <textarea name="qa_msg" cols="100" rows="100" class="n-input"
                                            placeholder="내용을 입력해주세요." style="resize: none;" rows="10"></textarea>
                                    </td>
                                </tr>
                                <tr class="n-same-row">
                                    <th scope="row">사진</th>
                                    <td class="file-upload">
                                        <ul class="file_show" id="file_show">
                                        </ul>
                                        <button type="button" class="btn-file" onclick="$('#Filedata').click();" style="height: 40px; width: 100px; background-color: white; color: orangered; border:1px solid orangered;">파일
                                            선택</button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <!-- //[D] 주문확인 -->
                    
                </div>
                <!-- 버튼 -->
                <div class="n-btn-group" style="float: right; margin-right: 400;">
                    <button onclick="" style="color: orangered; background-color: white; border: 1px solid orangered; width: 100px; height: 40px;">저장</button>
                    <button onclick="" style="color: white; background-color: orangered; border: none; width: 100px; height: 40px;">취소</button>
                </div>
                <!-- //버튼 -->
            </div>
            <!-- //고객센터 콘텐츠 -->
            <!--// 컨텐츠 영역 -->
        </form>

        <form id="upload_form" name="upload_form" method="post" action="/xf/lib/fileupload.php" target="hf"
            enctype="multipart/form-data">
            <input type="hidden" name="TYPE" value="CS">
            <input type="hidden" name="MODE" value="m">
            <input type="hidden" name="DIR" value="/data/cs/">
            <input type="hidden" name="GOODS_NO" value="">
            <input type="hidden" name="GOODS_SUB" value="">
            <input type="hidden" name="LIMIT" value="2560">
            <input type="hidden" name="files" value="">
            <input type="file" name="Filedata[]" id="Filedata" class="input_file w100" onchange="uploadImage();"
                style="display: none !important;">
        </form>
        <iframe name="hf" src="about:blank" style="display: none; width: 100%; height: 300px;"></iframe>
    </section>
        <%@ include file="../../common/footer.jsp" %>
        
       


    </div>
    <!--// 오른쪽 콘텐츠 영역 -->
    

    
    </div>
    


</body>
</html>