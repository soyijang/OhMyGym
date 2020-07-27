<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.titles{
   text-align: center;
   color: orangered;
   font-size: 30px;
   font-weight: bold;
   border-bottom: 5px solid orangered;
   margin: 50px;
}
.titles-a{
   color: black;
   font-size: 11px;
}
.mainBox{
   border: 1px solid silver;
   margin: 50px;
   display: table;
   width: 1400px;
   margin-left: 77px;
}
.subtopBox{
   padding: 35px;
}
#imgs{
   float: right;
}
.circle{
   width: 50px;
   height: 50px;
   border-radius: 50%;
   background: blue;
   color: white;
   font-weight: bold;
   font-size: 10px;
   text-align: center;
   position: relative;
   top:40px;
   
}
.healthTitle{
   margin-left: 180px;
   font-size: 33px;
   font-weight: bold;
   text-decoration: underline;
}
.viewLine{
   float: right;
}
.view{
   color: silver;
   font-size: 15px;
   float: right;
   margin-left: 7px;
}
#left{
   margin-left: 15px;
}
#blackFont{
   color: black;
   font-weight: bold;
}
.subBottomBox{
   border-top:  3px solid silver;
   width: 1350px;
   margin: 30px;
}
.imgT{
   margin: 15px;
   margin-left: 20px;
}
.imgWH{
   width: 450px;
   height: 360px;
}
#btn{
   float: right;
   margin-right: 250px;
   border: 0px;
   background: white;
   font-size: 20px;
   font-weight: bold;
   cursor: pointer;
}
</style>
<body>
       <%@ include file="../../common/followerNav.jsp" %>



      <div class="titles">
      <div class="titles-a">관심분야 or 전문분야</div>
         HOTOPIC
      </div>
      <div class="mainBox">
         <div class="subtopBox">
            <div style="float: left;">건강정보알리미</div>
          
            <div class="circle">알림이</div>
            <div class="healthTitle">기름진 음식이라구요?</div>
            <br>
            <div class="viewLine">
               <div class="view" id="left">2020.06.19</div>
               <div class="view" id="blackFont">10,597</div>
               <div class="view">조회수</div>
            </div>
         </div>
         <div class="subBottomBox">
        
         <p>저탄수화물 고지방(저탄고지) 다이어트, LCHF 다이어트 또는 키토제닉(Ketogenic) 다이어트는 식이요법의 일종
으로, 단순히 지방을 많이 먹는 것이 아니라 열량의 총 섭취량은 유지하면서 섭취 비중 가운데 탄수화물(당질)이 들어
간 음식을 줄이고 지방이 들어간 음식을 늘려, 체내 인슐린 저항성을 낮추는 것을 목표로 한다. 실제로는 케톤식이라
고 비슷한 방식이 있다. 주로 뇌전증 환자의 식이 요법으로, 고의로 케톤산을 만들어 뇌전증을 예방하는 방법으로써 부작용으로 성장 부전이 온다. 
예를 들어 고깃집에 갈 경우 쌀밥은 먹지 말고 채소를 먹고, 고기와 고기의 비계를 위주로 먹으라는 것. LCHF에서 제시하는 조건을 맞추려면 탄수화물처럼 보이는 것은 의식적으로 기피해야 한다. 게다가 탄수화물이 포도당으로 저장되는 과정에서 인슐린이 분비되는 과정을 막기 위해 우리가 흔히 생각하는 밥, 빵 뿐 아니라 설탕 등 당분이 많이 들어간 과일, 뿌리채소 등도 제한 섭취하게 된다. 다시 말해, 식탁에서 밥, 빵, 면, 과일, 설탕, 뿌리채소는 모두 배제하라는 것이다. 
즉,  신선한 잎채소와 신선한 육류만 섭취하며, 부족한 영양분은 버터나 치즈, 다른 채소들로 부가적 개념으로만 채우면 된다.
물론 그렇다고 탄수화물을 전혀 섭취하지 말라는 것이 아니며, 만약 탄수화물 섭취량을 강박적으로 줄이면 질병을 야기할 수 있다. 이 식이요법의 핵심은 현대의 과도한 탄수화물의 섭취량을 상당하게 줄이는 데에 있다. 지방은 탄수화물 감소에 따른 열량 부족을 대체하는 수단인 것이다. 참고로 탄수화물의 절대량만 줄이면 그만큼 당뇨약의 복용량도 줄일 수 있기 때문에, 아예 소식을 하거나, 백미를 현미로 바꿔주는 것만으로도 비슷한 효과를 누릴 수 있다
         </div>
      </div>
      <button id="btn">목록으로</button>
      <br><br>
       <footer>
    	<%@ include file="../../common/footer.jsp" %>
    </footer>
</body>
</html>