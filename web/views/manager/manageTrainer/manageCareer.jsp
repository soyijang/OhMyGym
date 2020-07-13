<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오마이짐 관리자 페이지</title>
    <style>
       
        table {
            text-align: center;
            width: 1200px;
            border-collapse: collapse;
        }
        tr {
            width: 1000px;
            height: 20px;
        }
        th {
            font-size: 13px;
            height: 40px;
            border-bottom: 3px double gray;
            background: #000532;
            color: white;
            font-weight: normal;
        }
        td {
            font-family:"Noto Sans KR Regular ";
            font-size: 14px;
            height: 35px;
            border-bottom: 2px solid gray;
        }

        #tableArea {
            height: 450px;
            margin-left: 220px;
            margin-top: 70px;
        }
        #infoBtn1 {
            border-style: none;
            background: orangered;
            width: 80px;
            color: white;
            height:25px;
            cursor: pointer;
        }
        #infoBtn2 {
            border-style: none;
            background: #000532;
            width: 80px;
            color: white;
            height:25px;
            cursor: pointer;
        }

    </style>
</head>
<body>
  
     <%@ include file="../../common/managerNav.jsp"%>

        <!--테이블 표시 영역-->

        <article id="tableArea">
            <div align="center">
                <table>
                    <tr>
                        <th width="30px;">No</th>
                        <th width="100px;">아이디</th>
                        <th width="50px">회원명</th>
                        <th width="70px;">이메일</th>
                        <th width="80px;">연락처</th>
                        <th width="100px;">가입일</th>
                        <th width="60px;">상세정보</th>
                        <th width="80px;">수강관리</th>
                        <th width="100px">처리여부</th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>hlm1225</td>
                        <td>김진우</td>
                        <td>king123@gmail.com</td>
                        <td>010-1234-1235</td>
                        <td><input type="date"></td>
                        <td><button class="btn" id="infoBtn1" onclick="">상제정보</button></td>
                        <td><button class="btn" id="infoBtn2" onclick="">수강관리</button></td>
                        <td>
                        	<select>
   
              			    	<option>처리전</option>
               					 <option>처리 완료</option>

        				    </select>
                        </td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>hlm1225</td>
                        <td>김진우</td>
                        <td>king123@gmail.com</td>
                        <td>010-1234-1235</td>
                        <td><input type="date"></td>
                        <td><button class="btn" id="infoBtn1" onclick="">상제정보</button></td>
                        <td><button class="btn" id="infoBtn2" onclick="">수강관리</button></td>
                        <td>
                        	<select>
   
              			    	<option>처리전</option>
               					 <option>처리 완료</option>

        				    </select>
                        </td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>hlm1225</td>
                        <td>김진우</td>
                        <td>king123@gmail.com</td>
                        <td>010-1234-1235</td>
                        <td><input type="date"></td>
                        <td><button class="btn" id="infoBtn1" onclick="">상제정보</button></td>
                        <td><button class="btn" id="infoBtn2" onclick="">수강관리</button></td>
                        <td>
                        	<select>
   
              			    	<option>처리전</option>
               					 <option>처리 완료</option>

        				    </select>
                        </td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>hlm1225</td>
                        <td>김진우</td>
                        <td>king123@gmail.com</td>
                        <td>010-1234-1235</td>
                        <td><input type="date"></td>
                        <td><button class="btn" id="infoBtn1" onclick="">상제정보</button></td>
                        <td><button class="btn" id="infoBtn2" onclick="">수강관리</button></td>
                        <td>
                        	<select>
   
              			    	<option>처리전</option>
               					 <option>처리 완료</option>

        				    </select>
                        </td>
                    </tr>
                    
                    
                </table>
            </div>
        </article>
        <!--테이블 표시 영역 종료-->

</body>
</html>