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
            <header role="header" data-include="../../include/header_sub.html"></header>

            <!-- banner -->
            <div class="banner">
                <h1 class="banner_tit">고독사 예방법</h1>
                <div class="sub_menu_w">
                    <a href="/NoGodoksa/main.jsp"><div class="home_btn">
                        <img src="/NoGodoksa/images/icon-home@3x.png">
                    </div></a>
                    <div class="sub_tit"><a href="/NoGodoksa/lonelyDeathPrevent2.jsp">시행령</a></div>
                    <ul class="s_menu">
                        <li><a href="/NoGodoksa/lonelyDeathPrevent.jsp">고독사 예방법</a></li>
                        <li class="active"><a href="/NoGodoksa/lonelyDeathPrevent2.jsp">시행령</a></li>
                        <li><a href="/NoGodoksa/lonelyDeathPrevent3.jsp">시행규칙</a></li>
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
                <p class="con_tit">고독사 예방 및 관리에 관한 법률 시행령</p>
            </div>
            <div class="con_wrap">
                <p class="con_s_tit">고독사 예방 및 관리에 관한 법률 시행령</p>
                <p class="con_text_01"><a href="https://www.law.go.kr/LSW/lsSc.do?section=&menuId=1&subMenuId=15&tabMenuId=81&eventGubun=060101&query=%EA%B3%A0%EB%8F%85%EC%82%AC" target="_brank">
                    출처 : 국가법령정보센터
                </a></p>
                <p class="con_text_02">          
                    <b>제1조(목적)</b> 이 영은 「고독사 예방 및 관리에 관한 법률」에서 위임된 사항과 그 시행에 필요한 사항을 규정함을 목적으로 한다.
                    <br><br>
                    <b>제2조(연도별 시행계획의 수립)</b> ① 보건복지부장관은 「고독사 예방 및 관리에 관한 법률」(이하 “법”이라 한다) 제7조제1항에 따른 연도별 고독사 예방 시행계획(이하 “시행계획”이라 한다)의 수립에 필요한 지침을 마련하여 매년 10월 31일까지 관계 중앙행정기관의 장 및 특별시장ㆍ광역시장ㆍ특별자치시장ㆍ도지사ㆍ특별자치도지사(이하 “시ㆍ도지사”라 한다)에게 통보해야 한다.<br>
                    ② 관계 중앙행정기관의 장 및 시ㆍ도지사는 제1항의 지침에 따라 다음 연도의 시행계획을 수립하여 법 제7조제2항에 따라 매년 12월 31일까지 보건복지부장관에게 제출해야 한다. <br>              
                    ③ 관계 중앙행정기관의 장 및 시ㆍ도지사는 제2항에 따라 제출한 시행계획을 변경한 경우 보건복지부장관에게 지체 없이 그 내용을 알려야 한다.
                    <br><br>                 
                    <b>제3조(전년도 추진실적의 평가)</b> ① 관계 중앙행정기관의 장 및 시ㆍ도지사는 법 제7조제2항에 따라 매년 2월 말일까지 전년도의 시행계획에 따른 추진실적을 보건복지부장관에게 제출해야 한다. <br>
                    ② 보건복지부장관은 제1항에 따라 제출받은 추진실적을 평가하고, 그 결과를 매년 6월 30일까지 관계 중앙행정기관의 장 및 시ㆍ도지사에게 통보해야 한다. <br>              
                    ③ 관계 중앙행정기관의 장 및 시ㆍ도지사는 정당한 사유가 없으면 제2항에 따라 통보받은 평가결과를 다음 연도의 시행계획을 수립할 때 반영해야 한다.
                    <br><br>                   
                    <b>제4조(고독사 실태조사의 실시 등)</b> ① 법 제10조제1항에 따른 고독사 실태조사(이하 “실태조사”라 한다)에는 다음 각 호의 사항이 포함되어야 한다. <br>
                    1. 조사 대상자의 성별, 나이, 학력, 혼인 및 취업 상태 등 일반적 특성에 관한 사항 <br>              
                    2. 조사 대상자의 주거ㆍ생활 여건, 건강 상태, 사회적 관계 등 고독사 위험요인에 관한 사항 <br>              
                    3. 고독사에 대한 일반 국민의 인식 <br>              
                    4. 그 밖에 보건복지부장관이 고독사의 원인과 실태를 파악하기 위하여 필요하다고 인정하는 사항 <br>              
                    ② 보건복지부장관은 법 제10조제1항에 따라 실태조사의 결과를 공표할 때에는 보건복지부의 인터넷 홈페이지 등에 게재하는 방법으로 한다. <br>              
                    ③ 보건복지부장관은 고독사 급증 등의 사유로 추가적인 조사가 필요한 경우에는 임시조사를 실시하여 실태조사를 보완할 수 있다. <br>              
                    ④ 보건복지부장관은 실태조사 및 제3항에 따른 임시조사를 국공립 병원, 국공립 연구기관, 대학 등 고독사에 관한 전문성을 갖춘 기관 또는 단체에 의뢰하여 실시할 수 있다.
                    <br><br>                    
                    <b>제5조(고독사 통계의 작성)</b> ① 보건복지부장관은 법 제10조제2항에 따라 제4조제1항 각 호의 사항 및 고독사 예방정책의 수립ㆍ시행에 필요한 기초자료로 활용하기 위하여 필요한 사항에 대하여 고독사 통계(이하 “고독사통계”라 한다)를 작성해야 한다. <br>
                    ② 고독사통계는 다음 각 호의 방법으로 작성한다. <br>              
                    1. 「통계법」 제3조제7호에 따른 행정자료의 수집 및 활용 <br>              
                    2. 설문조사 <br>              
                    3. 그 밖에 보건복지부장관이 고독사통계 작성을 위하여 필요하다고 인정하는 방법
                    <br><br>                   
                    <b>제6조(전문 조사ㆍ연구 기관의 지정)</b> 법 제12조제1항에서 “대통령령으로 정하는 인력 및 시설 등을 갖춘 법인 또는 단체”란 보건복지부장관이 고독사통계의 수집ㆍ분석 및 관리와 고독사 예방을 위한 조사ㆍ연구를 수행하기 위하여 필요한 조직, 인력, 전문성 및 보안시스템을 갖추었다고 인정하는 법인 또는 단체를 말한다.
                    <br><br>                    
                    <b>제7조(고독사 예방 협의회의 구성ㆍ기능)</b> ① 법 제14조제1항에 따른 고독사 예방 협의회(이하 “고독사예방협의회”라 한다)는 위원장 1명을 포함하여 20명 이내의 위원으로 구성한다. <br>
                    ② 고독사예방협의회 위원장(이하 “위원장”이라 한다)은 보건복지부장관이 되며, 고독사예방협의회 위원은 다음 각 호의 사람이 된다. <br>              
                    1. 교육부장관, 행정안전부장관, 문화체육관광부장관, 고용노동부장관, 여성가족부장관, 경찰청장 및 소방청장 <br>              
                    2. 시ㆍ도지사 <br>
                    3. 고독사에 관한 학식과 경험이 풍부한 사람 중에서 성별을 고려하여 위원장이 위촉하는 사람  <br>         
                    ③ 제2항제3호에 따라 위촉된 위원(이하 “위촉위원”이라 한다)의 임기는 2년으로 하며, 한 차례만 연임할 수 있다.<br>             
                    ④ 위원장은 위촉위원이 다음 각 호의 어느 하나에 해당하는 경우에는 해당 위원을 해촉(解觸)할 수 있다.<br>            
                    1. 심신장애로 직무를 수행할 수 없게 된 경우 <br>     
                    2. 직무와 관련된 비위사실이 있는 경우  <br>     
                    3. 직무태만, 품위손상이나 그 밖의 사유로 위원으로 적합하지 않다고 인정되는 경우<br>           
                    4. 위원 스스로 직무를 수행하기 어렵다는 의사를 밝히는 경우 <br>         
                    ⑤ 위원장은 고독사예방협의회의 업무를 총괄하며, 위원장이 부득이한 사유로 직무를 수행할 수 없는 경우에는 보건복지부 소속 공무원 중 위원장이 지명한 사람이 그 직무를 대행한다.<br>              
                    ⑥ 고독사예방협의회는 다음 각 호의 사항을 협의ㆍ조정한다.<br>               
                    1. 고독사 예방정책의 중장기 정책목표와 추진방향 <br>           
                    2. 고독사 예방정책에 대한 관계 중앙행정기관 간 협조ㆍ조정에 관한 사항 <br>              
                    3. 법 제6조제1항에 따른 고독사 예방 기본계획의 수립에 관한 사항<br>               
                    4. 법 제7조제2항에 따른 추진실적의 평가에 관한 사항<br>               
                    5. 그 밖에 보건복지부장관이 고독사 예방을 위하여 협의ㆍ조정이 필요하다고 인정하는 사항<br>               
                    ⑦ 고독사예방협의회의 업무를 효율적으로 수행하기 위하여 필요한 경우에는 고독사예방협의회에 보건복지부령으로 정하는 바에 따라 실무협의회를 둘 수 있다.
                    <br><br>                    
                    <b>제8조(고독사 예방을 위한 상담ㆍ교육 기관)</b> 법 제16조제1항제3호에서 “대통령령으로 정하는 기관이나 단체”란 다음 각 호의 기관이나 단체를 말한다. <br>
                    1. 상시근로자가 30명 이상인 사업장<br>               
                    2. 「공공기관의 운영에 관한 법률」 제4조제1항에 따른 공공기관<br>             
                    3. 「의료법」 제3조제2항제3호에 따른 병원급 의료기관 <br>           
                    4. 「지방공기업법」 제49조제1항 및 제76조제1항에 따라 설립된 지방공사 및 지방공단 <br>            
                    5. 「초ㆍ중등교육법」 제2조에 따른 학교 및 「고등교육법」 제2조에 따른 학교 <br>              
                    6. 그 밖에 보건복지부장관, 관계 중앙행정기관의 장, 시ㆍ도지사 또는 시장ㆍ군수ㆍ구청장(자치구의 구청장을 말한다)이 고독사 예방을 위한 상담ㆍ교육이 필요하다고 인정하는 기관이나 단체
                </p>
                <p class="con_text_02">                    
                    <b>부칙 <대통령령 제31579호, 2021. 3. 30.></b><br>
                    이 영은 2021년 4월 1일부터 시행한다.
                </p>                  
                <div class="con_link_img2">
                    <div class="img_tit_btn"><a href="https://www.law.go.kr/법령/고독사예방및관리에관한법률시행령" target="_brank">
                        시행령 보러가기 +
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