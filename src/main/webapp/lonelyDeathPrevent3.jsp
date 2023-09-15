<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1" >  <!-- 반응형 웹에서 사용하는 meta tag -->
<link rel="stylesheet" href="css/style_sub.css">
<link rel="stylesheet" href="css/style_sub2.css">
<!-- <link rel="stylesheet" href="css/style.css"> -->
<!-- <link rel="stylesheet" href="css/style_log.css"> -->
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/nogodoksa_footer.css">
<link rel="stylesheet" href="css/nogodoksa_header.css">
<title>고독사예방국민운동</title>
</head>
<style>

</style>
<body>
    <% 
        String userID = null;
    	if (session.getAttribute("userID") != null){
            userID = (String) session.getAttribute("userID");
    	}
	%>
	<header><jsp:include page="nogodoksaHeader.jsp"></jsp:include></header>
	 <div class="wrap">
        <!-- top메뉴 -->
        <div class="main_top">
            
            <!-- header메뉴 -->

            <!-- banner -->
            <div class="banner">
                <h1 class="banner_tit">고독사 예방법</h1>
                <div class="sub_menu_w">
                    <a href="/NoGodoksa/main.jsp"><div class="home_btn">
                        <img src="/NoGodoksa/images/icon-home@3x.png">
                    </div></a>
                    <div class="sub_tit"><a href="/NoGodoksa/lonelyDeathPrevent3.jsp">시행규칙</a></div>
                    <ul class="s_menu">
                        <li><a href="/NoGodoksa/lonelyDeathPrevent.jsp">고독사 예방법</a></li>
                        <li><a href="/NoGodoksa/lonelyDeathPrevent2.jsp">시행령</a></li>
                        <li class="active"><a href="/NoGodoksa/lonelyDeathPrevent3.jsp">시행규칙</a></li>
                        <li><a href="/NoGodoksa/lonelyDeathPrevent4.jsp">자치단체별 조례</a></li>
                    </ul>
                    <a href="#"><div class="down_btn">
                        <img src="../../images/icon_down@3x.png">
                    </div></a>
                </div>
            </div>            
        </div>
        <!-- container메뉴 -->
        <div class="container">
            <div class="con_text_w">
                <p class="con_tit">고독사 예방 및 관리에 관한 법률 시행규칙</p>
            </div>
            <div class="con_wrap">
                <p class="con_s_tit">고독사 예방 및 관리에 관한 법률 시행규칙</p>
                <p class="con_text_01"><a href="https://www.law.go.kr/LSW/lsSc.do?section=&menuId=1&subMenuId=15&tabMenuId=81&eventGubun=060101&query=%EA%B3%A0%EB%8F%85%EC%82%AC" target="_brank">
                    <span>출처 : 국가법령정보센터</span>
                </a></p>
                <p class="con_text_02">          
                    <b>제1조(목적)</b> 이 규칙은 「고독사 예방 및 관리에 관한 법률」 및 같은 법 시행령에서 위임된 사항과 그 시행에 필요한 사항을 규정함을 목적으로 한다.
                    <br><br>
                    <b>제2조(전문 조사ㆍ연구 기관의 지정 신청 등)</b> ① 「고독사 예방 및 관리에 관한 법률」(이하 “법”이라 한다) 제12조제1항에 따른 전문 조사ㆍ연구 기관(이하 “전문조사연구기관”이라 한다)으로 지정받으려는 자는 별지 제1호서식의 전문 조사ㆍ연구 기관 지정 신청서에 다음 각 호의 서류를 첨부하여 보건복지부장관에게 제출해야 한다. <br>
                    1. 고독사 통계의 수집ㆍ분석 및 관리 계획서 <br>              
                    2. 고독사 예방을 위한 조사ㆍ연구의 수행 계획서 <br>           
                    3. 고독사 통계의 수집ㆍ분석 및 관리에 필요한 인력, 시설 및 장비의 보유 현황  <br>             
                    4. 고독사 예방을 위한 조사ㆍ연구에 필요한 인력, 시설 및 장비의 보유 현황  <br>             
                    5. 고독사에 관한 조사ㆍ연구의 수행 실적(실적이 있는 경우만 해당한다)  <br>             
                    ② 제1항에 따라 신청서를 제출받은 보건복지부장관은 「전자정부법」 제36조제1항에 따른 행정정보의 공동이용을 통하여 법인 등기사항증명서(법인인 경우만 해당한다) 또는 사업자등록증을 확인해야 한다. 다만, 신청인이 사업자등록증의 확인에 동의하지 않는 경우에는 그 사본을 직접 제출하도록 해야 한다. <br>            
                    ③ 제1항에 따라 신청서를 제출받은 보건복지부장관은 지정 여부를 결정하여 그 결과를 신청인에게 통보해야 한다. 이 경우 전문조사연구기관으로 지정했을 때에는 신청인에게 별지 제2호서식의 전문 조사ㆍ연구 기관 지정서를 발급해야 한다.
                    <br><br>
                    <b>제3조(고독사위험자에 대한 조치)</b> 법 제13조제2항에 따른 조치에는 다음 각 호의 사항이 포함되어야 한다. <br>
                    1. 법 제3조제2항에 따른 고독사위험자(이하 “고독사위험자”라 한다)에게 필요한 복지서비스의 발굴 및 제공 <br>              
                    2. 고독사위험자에 대한 심리 상담ㆍ치료 <br>              
                    3. 그 밖에 고독사위험자의 조기 발견, 상담 및 치료를 위하여 필요한 조치
                    <br><br>
                    <b>제4조(고독사 예방 실무협의회의 구성ㆍ운영)</b> ① 「고독사 예방 및 관리에 관한 법률 시행령」(이하 “영”이라 한다) 제7조제7항에 따른 실무협의회(이하 “실무협의회”라 한다)는 위원장 1명을 포함하여 20명 이내의 위원으로 구성한다. <br>
                    ② 실무협의회 위원장은 보건복지부의 고위공무원단에 속하는 공무원 중에서 보건복지부장관이 지명하는 사람이 되며, 실무협의회 위원은 다음 각 호의 사람이 된다. <br>              
                    1. 영 제7조제2항제1호의 위원이 소속되어 있는 중앙행정기관의 4급 이상 공무원 중에서 해당 중앙행정기관의 장이 지명하는 사람 <br>               
                    2. 고독사에 관한 학식과 경험이 풍부한 사람 중에서 실무협의회 위원장이 성별을 고려하여 위촉하는 사람  <br>         
                    ③ 제2항제2호에 따라 위촉된 위원의 임기는 2년으로 하며, 한 차례만 연임할 수 있다. <br>
                    ④ 제1항부터 제3항까지에서 규정한 사항 외에 실무협의회의 구성 및 운영에 필요한 사항은 실무협의회의 의결을 거쳐 실무협의회 위원장이 정한다.
                    <br><br>
                    <b>제5조(고독사 예방을 위한 상담ㆍ교육)</b> ① 법 제16조제1항에 따른 고독사 예방을 위한 상담ㆍ교육은 개별 면담, 집합교육 또는 인터넷 강의 등의 방법으로 실시한다. <br>
                    ② 제1항에 따른 상담ㆍ교육에는 다음 각 호의 내용이 포함되어야 한다. <br>              
                    1. 고독사의 원인과 예방방법 <br>              
                    2. 고독사위험자에 대한 상담방법 <br>              
                    3. 고독사위험자와 관련된 응급상황 발생 시 대처방법 <br>              
                    4. 그 밖에 보건복지부장관이 고독사 예방을 위한 상담ㆍ교육에 포함될 필요가 있다고 인정하는 사항 <br>              
                    ③ 보건복지부장관은 관계 중앙행정기관의 장 및 특별시장ㆍ광역시장ㆍ특별자치시장ㆍ도지사ㆍ특별자치도지사에게 법 제16조제2항에 따른 상담ㆍ교육에 필요한 프로그램(이하 “상담교육프로그램”이라 한다)의 개발ㆍ보급에 필요한 사항을 지원할 수 있다. <br>              
                    ④ 보건복지부장관은 상담교육프로그램의 개발ㆍ보급을 장려하기 위하여 우수한 프로그램을 선정하여 홍보할 수 있다.
                </p>
                <p class="con_text_02">                    
                    <b>부칙 <보건복지부령 제272호, 2021. 4. 1.></b><br>
                    이 규칙은 2021년 4월 1일부터 시행한다.
                </p>                  
                <div class="con_link_img2">
                    <div class="img_tit_btn"><a href="https://www.law.go.kr/법령/고독사예방및관리에관한법률시행규칙" target="_brank">
                        시행규칙 보러가기 +
                    </a></div>
                </div>
            </div>
        </div>
	
	<script>
            $(function () {
                includeLayout();
            });
    </script>
	

	</div>
	<footer><jsp:include page="nogodoksaFooter.jsp"></jsp:include></footer>


	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>