<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html lang="ko">
<head>
    <meta charset="UTF-8">
    
   <link rel="stylesheet" type="text/css"
	href="/omg/resources/css/daumcommon.css">
	<link rel="stylesheet" type="text/css"
	href="/omg/resources/css/fmypageContainer.css">
    <style>
    * {
        font-family: "Noto Sans KR";
    }
    #titleArea div {
        border: 2px double gray; 
        display: inline-block; 
        width: 1070px; 
        height: 40px;
        margin-left: 40px;
        margin-top: 30px;
        font-size: 14px;
    }
    #trainerDate div {
        display: inline-block; 
        width: 1000px; 
        height: 150px;
        margin-left: 50px;
        margin-top: 30px;
        text-align: center;
    
    }

   .pie-chart1 {
 	 display:inline-block;
	  width: 150px;
 	 height: 150px;
 	 background: conic-gradient(#ff3800 0% 25%, #515151 25% 56%, #000080 56% 100%);
 	 border-radius: 50%;
	}
	#followNum {
		margin-left: 300px;
		margin-top:30px;
		width: 500px;
		height: 300px;
		text-align: center;
		border: 1px solid lightgray;
		
	}
	table td {
		padding-left: 30px;
		padding-bottom: 10px;
	}
	
	.grid line {
    stroke: lightgrey;
    stroke-opacity: 0.7;
	}
	.lineChart {
    fill: none;
    stroke: steelblue;
    stroke-width: 1.5px;
	}
	.lineChart:hover {
    stroke: black;
	stroke-width: 3px;
	}
	.toolTip {
    position: absolute;
    border: 1px solid;
    border-radius: 4px 4px 4px 4px;
    background: rgba(0, 0, 0, 0.8);
    color : white;
    padding: 5px;
    text-align: center;
    font-size: 12px;
    min-width: 30px;
	}
	

    </style>
    
</head>
<body>
<%@ include file="../../common/trainerNav.jsp"%>
    
    <aside style="float: left; margin: 30px;">
        <!--OH마이피티 메뉴-->
        <%@ include file="trainerOhMyPtAside.jsp" %>
        <!--OH마이피티 메뉴 종료-->
    </aside>

    <section>
        <!--나의 경력 관리 타이틀-->
        <article id="titleArea">
            <div>
                <h1 style="margin-top: 6px;">&nbsp;&nbsp;&nbsp;나의 경력</h1>
            </div>
        </article>
        <!--나의 경력 관리 타이틀 종료-->

		<!-- 오마이짐 정식 트레이너 회원 일차  -->
		<article id="trainerDate">
			<div>
				<h4>오마이짐 정식 트레이너 회원 일차</h4><br>
				<input type="date"><label>&nbsp;&nbsp;&nbsp;~&nbsp;&nbsp;&nbsp;</label>
				<input type="date"><br><br>
				<h3><mark style="background: white; color: #ff3900;">54</mark>일</h3>
			
			</div>
		
		</article>
		
		<!-- 오마이짐 정식 트레이너 회원 일차  종료-->
		
		<!-- 관리 회원 이력 -->
		<article>
		<div id="list">
		<div class="left-container"
			style="width: 550px; margin-left:40px; margin-top: 30px; text-align: center;">
				<h4 style="text-align: left; padding: 13px;">관리 회원 이력</h4>
				<table>
					<tr>
						<td rowspan="6"><div class="pie-chart pie-chart1"></div></td>
						<td>전체 매칭 회원수</td>
						<td>진행중 회원수</td>
					
					</tr>		
					<tr>
						<td>30명</td>
						<td><mark style="background: white; color: navy;">19명</mark></td>
					
					</tr>
					<tr>
						<td>진행완료 회원수</td>
						<td>매칭취소 회원수</td>
					
					</tr>	
					<tr>
						<td>10명</td>
						<td>1명</td>
					</tr>
					<tr>
						<td colspan="2">매칭후 관리 성공율</td>
					</tr>	
						<tr>
						<td colspan="2"><mark style="background: white; color: #ff3800">33%</mark></td>
					</tr>	
				
				</table>
		</div>
		<div class="left-container"
			style="width: 550px; text-align: center; margin-top: 30px; margin-left: 20px; padding: 0;">
			<svg width="500" height="320"></svg>
		</div>
		</div>
		
	</article>
		<!-- 매칭 신청 회원 건수 종료 -->
		<div>
			<img
				style="margin-left:720px; margin-top:70px; width: 180px; height: 60px;"
				src="../../resources/img/Group 158career.png">
		</div>

      </section>
    <br><br><br><br>
   
    
    <script>
    $(window).ready(function(){
        var i=1;
        var func1 = setInterval(function(){
            if(i<26){
                color1(i);
                i++;
            } else if(i<70){
                color2(i);
                i++;
            } else if(i<101){
                color3(i);
                i++;
            } else {
                clearInterval(func1);
            }
        },10);
    });



    function color1(i){
        $(".pie-chart1").css({
            "background":"conic-gradient(#8b22ff 0% "+i+"%, #ffffff "+i+"% 100%)"
            });
        
    }
    function color2(i){
        $(".pie-chart1").css({
            "background":"conic-gradient(#8b22ff 0% 25%, #ffc33b 25% "+i+"%, #ffffff "+i+"% 100%)"
            });
         
    }
    function color3(i){
        $(".pie-chart1").css({
            "background":"conic-gradient(#8b22ff 0% 25%, #ffc33b 25% 70%, #21f3d6 70% "+i+"%, #ffffff "+i+"% 100%)"
            });
         
    }
    </script>
    <script src="https://d3js.org/d3.v4.min.js"></script>
<script>
 
    var series = ["2017", "2018"];
 
    var dataset = [ 
        {'1':17, '2':27, '3':37, '4':27, '5':17, '6':7,  '7':9, '8':19, '9':29, '10':19, '11':9, '12':0},
        {'1': 9, '2':19, '3':29, '4':39, '5':29, '6':19, '7':9, '8':7, '9':17, '10':27, '11':17, '12':7}];
 
    var keys = d3.keys(dataset[0]);
    var data = [];
 
    dataset.forEach(function(d, i) {
    data[i] = keys.map(function(key) { return {x: key, y: d[key]}; })
    });
 
    var margin = {left: 20, top: 10, right: 10, bottom: 20};
    var svg = d3.select("svg");
    var width  = parseInt(svg.style("width"), 10) - margin.left - margin.right;
    var height = parseInt(svg.style("height"), 10)- margin.top  - margin.bottom;
    var svgG = svg.append("g")
        .attr("transform", "translate(" + margin.left + "," + margin.top + ")");
    var xScale = d3.scalePoint()//scaleBand() scaleOrdinal
        .domain(keys)
        .rangeRound([0, width]);
    var yScale = d3.scaleLinear()
        .domain([0, d3.max(dataset, function(d) { return d3.max(keys, function(key) { return d[key];});})])
        .nice()
        .range([height, 0]);
    var colors = d3.scaleOrdinal(d3.schemeCategory10);
 
    svgG.append("g")
        .attr("class", "grid")
        .attr("transform", "translate(0," + height + ")")
        .call(d3.axisBottom(xScale)
            .tickSize(-height)
        );
 
    svgG.append("g")
        .attr("class", "grid")
        .call(d3.axisLeft(yScale)
            .ticks(5)
            .tickSize(-width)
           );
 
    var line = d3.line()
        //.curve(d3.curveBasis)
        .x(function(d) { return xScale(d.x); })
        .y(function(d) { return yScale(d.y); });
    var lineG = svgG.append("g")
        .selectAll("g")
        .data(data)
           .enter().append("g");
 
    lineG.append("path")
        .attr("class", "lineChart")
        .style("stroke", function(d, i) { return colors( series[i]); })
        .attr("d", function(d, i) {return line(d); });
 
    lineG.selectAll("dot")
        .data(function(d) {return d })
        .enter().append("circle")
            .attr("r", 3)
            .attr("cx", function(d) { return xScale(d.x) })
            .attr("cy", function(d) { return yScale(d.y);})
            .on("mouseover", function() { tooltip.style("display", null); })
            .on("mouseout",  function() { tooltip.style("display", "none"); })
            .on("mousemove", function(d) {
                tooltip.style("left", (d3.event.pageX+10)+"px");
                tooltip.style("top",  (d3.event.pageY-10)+"px");
                tooltip.html("month. " + d.x + "<br/>" + "data value : " + d.y);
            });

    var tooltip = d3.select("body")
        .append("div")
        .attr("class", "toolTip")
        .style("display", "none");
 
    var legend = svgG.append("g")
        .attr("text-anchor", "end")
        .selectAll("g")
        .data(series)
        .enter().append("g")
        .attr("transform", function(d, i) { return "translate(0," + i * 20 + ")"; });
 
    legend.append("rect")
          .attr("x", width - 20)
          .attr("width", 19)
          .attr("height", 19)
          .attr("fill", colors);
 
      legend.append("text")
          .attr("x", width - 30)
          .attr("y", 9.5)
          .attr("dy", "0.32em")
          .text(function(d) { return d; });

</script>
    
    
    <!--footer start-->
    <%@ include file="../../common/footer.jsp"%>
    <!--footer end-->
    
</body>
</html>