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
                <h1 class="banner_tit">문제제기</h1>
                <div class="sub_menu_w">
                    <a href="/NoGodoksa/main.jsp"><div class="home_btn">
                        <img src="/NoGodoksa/images/icon-home@3x.png">
                    </div></a>
                    <div class="sub_tit"><a href="/NoGodoksa/question2.jsp">고독사발생일지(보도)</a></div>
                    <ul class="s_menu">
                        <li><a href="/NoGodoksa/question.jsp">고독사의 경고</a></li>
                        <li class="active"><a href="/NoGodoksa/question2.jsp">고독사발생일지(보도)</a></li>
                        <li><a href="/NoGodoksa/question3.jsp">고독사발생ING</a></li>                        
                        <li><a href="/NoGodoksa/question4.jsp">국내 언론 첫 소개</a></li>
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
                <p class="con_tit">언론에 보도된 발생일지</p>
                <div class="con_box2">
                    <div class="list_box" id="active"><a href="http://www.nocutnews.co.kr/news/599337" target="_brank">
                        <span>2009년05월25일발견</span> [노컷뉴스/충북인뉴스 2009.06.18보도]<br>
                        숨진지 6개월 만에 발견 "이럴 수가"
                    </a></div>
                    <div class="list_box" id="active"><a href="https://www.chosun.com/site/data/html_dir/2009/10/04/2009100400746.html" target="_brank">
                        <span>2009년10월04일발견</span> [조선일보 2009.10.05보도]<br>
                          팔순 할머니의 '고독死'… 두 달만에 발견
                    </a></div> 
                    <div class="list_box" id="active"><a href="http://www.ejanews.co.kr/news/articleView.html?idxno=16809" target="_brank">
                        <span>2011년01월29일발견</span> [한국경제 2011.02.08보도]<br>
                        '격정소나타' 최고은, 32세 젊은 나이로 일기 마감
                    </a></div> 
                    <div class="list_box" id="active"><a href="https://news.sbs.co.kr/news/endPage.do?news_id=N1001073660&plink=SEARCH&cooper=SBSNEWSSEARCH" target="_brank">
                        <span>2012년01월23일발견</span> [SBS뉴스 2012.01.25보도]<br>
                        '나홀로 설' …80대 노인 자택서 안타까운 죽음
                    </a></div>        
                     <div class="list_box" id="active"><a href="https://news.sbs.co.kr/news/endPage.do?news_id=N1001533317&plink=SEARCH&cooper=SBSNEWSSEARCH" target="_brank">
                        <span>2012년12월14일발견</span> [SBS뉴스 2012.12.14보도]<br>
                        '70년대 女 배구스타' 고독사…집에서 20일 만에 발견
                    </a></div>        
                    <div class="list_box" id="active"><a href="https://news.sbs.co.kr/news/endPage.do?news_id=N1001547179&plink=SEARCH&cooper=SBSNEWSSEARCH" target="_brank">
                        <span>2012년12월24일발견</span> [SBS뉴스 2012.12.24보도]<br>
                        컨테이너에 살던 40대 숨진 지 1주일 만에 발견
                    </a></div>   
                    <div class="list_box" id="active"><a href="https://www.chosun.com/site/data/html_dir/2013/01/09/2013010902318.html" target="_brank">
                        <span>2013년01월08일발견</span> [조선일보 2013.01.09보도]<br>
                        50대 남자 '고독사' 숨진지 20일 넘어서 발견
                    </a></div>        
                    <div class="list_box" id="active"><a href="https://news.sbs.co.kr/news/endPage.do?news_id=N1001576764&plink=SEARCH&cooper=SBSNEWSSEARCH" target="_brank">
                        <span>2013년01월10일발견</span> [SBS뉴스 2013.01.11보도]<br>
                        부산서 30대 여성 고독사 8개월 만에 발견
                    </a></div>        
                    <div class="list_box" id="active"><a href="https://www.donga.com/news/article/all/20130226/53310083/1" target="_brank">
                        <span>2013년02월26일발견</span> [동아일보 2013.02.26보도]<br>
                        고양 고시텔서 이틀새 50대 남성 2명 잇따라 고독사
                    </a></div>        
                    <div class="list_box" id="active"><a href="https://www.donga.com/news/article/all/20131010/58120131/1" target="_brank">
                        <span>2013년05월29일발견</span> [동아일보 2013.10.10보도]<br>
                        맥도날드 할머니 지난 7월 사망…‘무연고 변사자’ 처리  
                    </a></div>        
                    <div class="list_box" id="active"><a href="https://news.kbs.co.kr/news/view.do?ref=A&ncd=2732175" target="_brank">
                        <span>2013년09월30일발견</span> [KBS뉴스 2013.10.01보도]<br>
                        부산 초읍동 5년간 방치된 60대 할머니 고독사        
                    </a></div>        
                    <div class="list_box" id="active"><a href="https://www.hani.co.kr/arti/society/area/605962.html" target="_brank">
                        <span>2013년10월04일발견</span> [한겨레 2013.10.06보도]<br>
                        이번엔 50대 남성 다섯달 전 ‘고독사’
                    </a></div>        
                    <div class="list_box" ><a href="https://www.donga.com/news/article/all/20131104/58677001/1" target="_brank">
                        <span>2013년11월04일발견</span> [동아일보 2013.11.05보도]<br>
                        폐기처리장서 발견된 훼손된 시신 알고보니…
                    </a></div>        
                    <div class="list_box" ><a href="https://www.hani.co.kr/arti/society/society_general/622312.html" target="_brank">
                        <span>2014년01월31일발견</span> [한겨레 2014.02.02보도]<br>
                        설날 홀로 쓰러져간 쪽방 할아버지
                    </a></div>        
                    <div class="list_box" ><a href="https://news.kbs.co.kr/news/view.do?ncd=2804158" target="_brank">
                        <span>2014년02월07일발견</span> [KBS뉴스 2014.02.07보도]<br>
                        설 명절에 고독사 50대 뒤늦게 발견
                    </a></div>        
                    <div class="list_box" ><a href="https://news.sbs.co.kr/news/endPage.do?news_id=N1002226807&plink=SEARCH&cooper=SBSNEWSSEARCH" target="_brank">
                        <span>2014년02월09일발견</span> [SBS뉴스 2014.02.10보도]<br>
                        부산서 30대 고독사…2개월 만에 발견
                    </a></div>        
                    <div class="list_box" ><a href="https://news.sbs.co.kr/news/endPage.do?news_id=N1002266141&plink=SEARCH&cooper=SBSNEWSSEARCH" target="_brank">
                        <span>2014년02월24일발견</span> [SBS뉴스 2014.02.25보도]<br>
                        '컵라면·술병만'…50대 장애 영세민 영양실조 고독사
                    </a></div>                                  
                    <div class="list_box" ><a href="https://www.ytn.co.kr/_ln/0103_201403042247323192" target="_brank">
                        <span>2014년03월01일발견</span> [YTN 2014.03.04보도]<br>
                        '화장비용 100만 원 남기고'...고독사
                    </a></div>  
                    <div class="list_box" ><a href="https://www.ytn.co.kr/_ln/0103_201502102301172632" target="_brank">
                        <span>2015년02월10일발견</span> [YTN 2015.02.10보도]<br>
                        '자녀 5명에 통장 잔액 27원', 70대 노인 고독사
                    </a></div>          
                    <div class="list_box" ><a href="https://news.sbs.co.kr/news/endPage.do?news_id=N1002957461&plink=SEARCH&cooper=SBSNEWSSEARCH" target="_brank">
                        <span>2015년04월30일발견</span> [SBS뉴스 2015.05.01보도]<br>
                        치매엄마·알코올 중독 아들, 숨진 지 한달 만에 발견
                    </a></div>      
                    <div class="list_box" ><a href="https://www.hani.co.kr/arti/culture/music/697034.html" target="_brank">
                        <span>2015년06월19일발견</span> [한겨레 2015.06.22보도]<br>
                        한평 반 고시원서 소주병 몇개 남기고 떠난 연극배우
                    </a></div>        
                    <div class="list_box" ><a href="https://www.hani.co.kr/arti/society/area/698266.html" target="_brank">
                        <span>2015년06월26일발견</span> [한겨레 2015.06.30보도]<br>
                        어느 메달리스트의 고독사…족쇄가 된 금메달
                    </a></div>        
                    <div class="list_box" ><a href="https://news.kbs.co.kr/news/view.do?ncd=3154577" target="_brank">
                        <span>2015년09월25일발견</span> [KBS뉴스 2015.09.25보도]<br>
                        추석 앞두고 80대 노인 고독사…한달 전 숨진 듯
                    </a></div>  
                    <div class="list_box" ><a href="https://www.chosun.com/site/data/html_dir/2015/10/21/2015102101377.html" target="_brank">
                        <span>2015년10월19일발견</span> [조선일보 2015.10.21보도]<br>
                        20억대 청담동 아파트에서 70대男 고독사
                    </a></div>       
                    <div class="list_box" ><a href="https://www.chosun.com/site/data/html_dir/2016/01/04/2016010402291.html" target="_brank">
                        <span>2016년01월03일발견</span> [조선일보 2016.01.04보도]<br>
                        숨진 지 넉 달 만에…부산서 일용직 40대 원룸서 고독사
                    </a></div>        
                    <div class="list_box" ><a href="https://imnews.imbc.com/news/2016/society/article/3853904_31332.html" target="_brank">
                        <span>2016년01월04일발견</span> [MBC뉴스 2016.01.06보도]<br>
                        서울 송파서 간암 말기 50대 고독사
                    </a></div>        
                    <div class="list_box" ><a href="https://www.ytn.co.kr/_ln/0115_201601121932336911" target="_brank">
                        <span>2016년01월12일발견</span> [YTN 2016.01.12보도]<br>
                        대전서 중년 남성 2명 숨진 채 발견...고독사 추정
                    </a></div>        
                    <div class="list_box" ><a href="https://news.sbs.co.kr/news/endPage.do?news_id=N1003411362&plink=SEARCH&cooper=SBSNEWSSEARCH" target="_brank">
                        <span>2016년02월11일발견</span> [SBS뉴스 2016.02.12보도]<br>
                        명절이 더 외로웠을 그들…부산서 고독사 잇따라
                    </a></div>        
                    <div class="list_box" ><a href="https://news.kbs.co.kr/news/view.do?ncd=3402341" target="_brank">
                        <span>2016년12월28일발견</span> [KBS뉴스 2016.12.29보도]<br>
                        50대 남성 ‘고독사’…복권 수백 장 발견
                    </a></div>         
                    <div class="list_box" ><a href="https://www.ytn.co.kr/_ln/0103_201705142246343904" target="_brank">
                        <span>2017년05월11일발견</span> [YTN 2017.05.14보도]<br>
                        80대 노인 고독사...숨진 지 일주일 만에 발견
                    </a></div>        
                    <div class="list_box" ><a href="https://news.sbs.co.kr/news/endPage.do?news_id=N1004203959&plink=SEARCH&cooper=SBSNEWSSEARCH" target="_brank">
                        <span>2017년05월19일발견</span> [SBS뉴스 2017.05.19보도]<br>
                        '알코올중독' 50대 여성 고독사…엿새 만에 발견
                    </a></div>        
                    <div class="list_box" ><a href="https://www.khan.co.kr/national/incident/article/201706271051011" target="_brank">
                        <span>2017년06월26일발견</span> [경향신문 2017.06.27보도]<br>
                        부산서 또 나홀로 사망···기초수급자 숨진 지 4개월만에
                    </a></div>        
                    <div class="list_box" ><a href="https://www.khan.co.kr/national/incident/article/201707050945001" target="_brank">
                        <span>2017년07월04일발견</span> [경향신문 2017.07.05보도]<br>
                        부산서 잇따른 나홀로 사망···실직 40대 남성 숨진 지 3주만에 발견
                    </a></div>        
                    <div class="list_box" ><a href="https://www.khan.co.kr/national/incident/article/201707090815001" target="_brank">
                        <span>2017년07월08일발견</span> [경향신문 2017.07.09보도]<br>
                        부산서 또 나홀로 사망···80대 노인 수도검침원이 발견
                    </a></div>        
                    <div class="list_box" ><a href="https://www.khan.co.kr/national/incident/article/201707140922001" target="_brank">
                        <span>2017년07월13일발견</span> [경향신문 2017.07.14보도] <br>
                        부산서 또 고독사···숨진 지 6일 만에 발견
                    </a></div>        
                    <div class="list_box" ><a href="https://www.khan.co.kr/national/national-general/article/201707210838001" target="_brank">
                        <span>2017년07월20일발견</span> [경향신문 2017.07.21보도]<br>
                        ‘홀로 살던 50대 남성의 고독사’ …부산서 두달새 9번째
                    </a></div>        
                    <div class="list_box" ><a href="https://www.khan.co.kr/national/incident/article/201707251015001" target="_brank">
                        <span>2017년07월24일발견</span> [경향신문 2017.07.25보도]<br>
                        부산서 또 고독사···80대 노인 숨진 지 한달만에 발견
                    </a></div>        
                    <div class="list_box" ><a href="https://www.khan.co.kr/national/incident/article/201708181002001" target="_brank">
                        <span>2017년08월17일발견</span> [경향신문 2017.08.18보도]<br>
                        40대 남성 고독사 9개월 만에 발견
                    </a></div>        
                    <div class="list_box" ><a href="https://www.yna.co.kr/view/AKR20170824153700051" target="_brank">
                        <span>2017년08월24일발견</span> [연합뉴스 2017.08.24보도]<br>
                        부산서 또 고독사…월세방 혼자 살던 50대 숨진채 발견
                    </a></div>        
                    <div class="list_box" ><a href="https://www.khan.co.kr/national/incident/article/201709050937001" target="_brank">
                        <span>2017년09월04일발견</span> [경향신문 2017.09.05보도]<br>
                        홀로 사는 70대 기초수급자 숨진 지 2주 만에 발견
                    </a></div>        
                    <div class="list_box" ><a href="https://www.joongang.co.kr/article/21906849" target="_brank">
                        <span>2017년09월05일발견</span> [중앙일보 2017.09.05보도]<br>
                        부산 고독사 왜 잦나…70대 기초수급자 또 고독사
                    </a></div>        
                    <div class="list_box" ><a href="https://news.sbs.co.kr/news/endPage.do?news_id=N1004396473&plink=SEARCH&cooper=SBSNEWSSEARCH" target="_brank">
                        <span>2017년09월10일발견</span> [SBS뉴스 2017.09.15보도]<br>
                        간병방문 서비스 기다리다 '고독사'한 50대 기초수급자
                    </a></div>        
                    <div class="list_box" ><a href="https://www.joongang.co.kr/article/21999901" target="_brank">
                        <span>2017년10월11일발견</span> [중앙일보 2017.10.11보도]<br>
                        여관서 혼자 살던 여성 숨진 지 보름 만에 발견
                    </a></div> 
                    <div class="list_box" ><a href="https://imnews.imbc.com/news/2017/society/article/4439632_31192.html" target="_brank">
                        <span>2017년10월18일발견</span> [MBC뉴스 2017.10.19보도]<br>
                        광주서 70대 기초수급자 '고독사'…2개월 만에 발견
                    </a></div>        
                    <div class="list_box" ><a href="https://news.sbs.co.kr/news/endPage.do?news_id=N1004483615&plink=SEARCH&cooper=SBSNEWSSEARCH" target="_brank">
                        <span>2017년11월12일발견</span> [SBS뉴스 2017.11.14보도]<br>
                        두 달 뒤 발견된 주검…유언도 못 남기는 노인 고독사
                    </a></div>        
                    <div class="list_box" ><a href="https://www.chosun.com/site/data/html_dir/2017/11/28/2017112801514.html" target="_brank">
                        <span>2017년11월27일발견</span> [조선일보 2017.11.28보도]<br>
                        '전원일기 노마 엄마' 배우 강남 오피스텔 서 숨진 채 발견…2주 전 고독사 추정
                    </a></div>        
                    <div class="list_box" ><a href="https://www.khan.co.kr/national/incident/article/201712060918001" target="_brank">
                        <span>2017년12월05일발견</span> [경향신문 2017.12.06보도]<br>
                        부산서 50대 남성 고독사···일주일 만에 발견
                    </a></div>        
                    <div class="list_box" ><a href="https://www.joongang.co.kr/article/22253875" target="_brank">
                        <span>2017년12월21일발견</span> [중앙일보 2018.01.03보도]<br>
                        노르웨이에 입양 된 40대 남자가 한국에서 고독사한 사연은?
                    </a></div>        
                    <div class="list_box" ><a href="https://www.khan.co.kr/national/incident/article/201801150810001" target="_brank">
                        <span>2018년01월14일발견</span> [경향신문 2018.01.15보도] <br>
                        부산서 60대 남성 고독사 추정···“일주일 전 연락 끊겨”
                    </a></div>        
                    <div class="list_box" ><a href="https://www.yna.co.kr/view/AKR20180123023300051" target="_brank">
                        <span>2018년01월22일발견</span> [연합뉴스 2018.01.23보도] <br>
                        부산서 50대 고독사 추정 변사 잇따라
                    </a></div>        
                    <div class="list_box" ><a href="http://www.kookje.co.kr/news2011/asp/newsbody.asp?code=0300&key=20180206.99099002093" target="_brank">
                        <span>2018년02월05일발견</span> [국제신문 2018.02.06보도] <br>
                        숨진 지 한달 만에…맹추위 속 부산서 고독사 잇따라
                    </a></div>        
                    <div class="list_box" ><a href="https://www.yna.co.kr/view/AKR20180214017700051" target="_brank">
                        <span>2018년02월13일발견</span> [연합뉴스 2018.02.14보도] <br>
                        부산서 50대 여성 고독사…한 달 만에 발견 추정
                    </a></div>        
                    <div class="list_box" ><a href="https://www.seoul.co.kr/news/newsView.php?id=20180221500012&wlog_tag3=naver" target="_brank">
                        <span>2018년02월21일발견</span> [KBS뉴스 2015.12.17보도]<br>
                        80대 할머니 A씨가 청주시 복대동 자신의 집에서 숨진 지 6개월 만에 발견
                    </a></div>        
                    <div class="list_box" ><a href="https://www.yna.co.kr/view/AKR20180508172200053" target="_brank">
                        <span>2018년05월08일발견</span> [연합뉴스 2018.05.08보도]<br>
                        구미 원룸 20대 부자 고독사…사회복지안전망 또 '구멍 뚫렸다'
                    </a></div>        
                    <div class="list_box" ><a href="https://www.yna.co.kr/view/AKR20180508082300060" target="_brank">
                        <span>2018년05월08일발견</span> [연합뉴스 2018.05.08보도]<br>
                        70대 노인 빌라 욕실서 고독사…위층 주민이 신고
                    </a></div>        
                    <div class="list_box" ><a href="https://www.yna.co.kr/view/AKR20180525001500053" target="_brank">
                        <span>2018년05월25일발견</span> [연합뉴스 2018.05.25보도] <br>
                        아파트서 홀로 살던 70대 할머니 숨진 지 수일 만에 발견
                    </a></div>        
                    <div class="list_box" ><a href="http://www.segye.com/newsView/20180619000287" target="_brank">
                        <span>2018년06월19일발견</span> [세계일보 2018.06.19보도] <br>
                        부산서 50대 남성 백골상태로 발견, 고독사 추정
                    </a></div>        
                    <div class="list_box" ><a href="https://news.kbs.co.kr/news/view.do?ncd=3666731&ref=A" target="_brank">
                        <span>2018년06월19일발견</span> [KBS 2018.06.19보도] <br>
                        쪽방촌·기초수급자 잇단 고독사…관심 사각지대 여전
                    </a></div> 
                    <div class="list_box" ><a href="http://www.segye.com/newsView/20180620001348" target="_brank">
                        <span>2018년06월20일발견</span> [세계일보 2018.06.20보도] <br>
                        광주서 50대女 고독사, 숨진 지 7개월만에 발견 돼
                    </a></div>        
                    <div class="list_box" ><a href="http://news.kmib.co.kr/article/view.asp?arcid=0012531671&code=61121211&cp=nv" target="_brank">
                        <span>2018년07월18일발견</span> [국민일보2018.07.18보도] <br>
                        ‘청년고독사’…20대 남성 숨진지 4개월 만에 백골로 발견
                    </a></div>        
                    <div class="list_box" ><a href="https://www.hankookilbo.com/News/Read/201808081519086018" target="_brank">
                        <span>2018년08월08일발견</span> [한국일보 2018.08.08보도] <br>
                        박원순 시장 옥탑방 인근서 40대 남성 고독사… “외로운 죽음 대책 마련하겠다" 
                    </a></div>        
                    <div class="list_box" ><a href="https://www.yna.co.kr/view/AKR20180809130300065" target="_brank">
                        <span>2018년08월09일발견</span> [연합뉴스 2018.08.09보도] <br>
                        지병 앓던 70대 홀몸노인 고독사…수일만에 발견                                                                                                    
                    </a></div>  
                </div>
                <div class="list_more_btn">더보기 +</div>
            </div>
        </div>
	<footer><jsp:include page="nogodoksaFooter.jsp"></jsp:include></footer>


	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>