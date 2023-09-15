<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="lonelyDeathBBS.LonelyDeathBBSDAO" %>
<%@ page import="lonelyDeathBBS.LonelyDeathBBSDTO" %>
<%@ page import="java.util.ArrayList"%>
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

            <!-- banner -->
            <div class="banner">
                <h1 class="banner_tit">고독사 예방활동</h1>
                <div class="sub_menu_w">
                    <a href="/NoGodoksa/main.jsp"><div class="home_btn">
                        <img src="/NoGodoksa/images/icon-home@3x.png">
                    </div></a>
                    <div class="sub_tit"><a href="sub3_1.html">고독사 예방교육</a></div>
                    <ul class="s_menu">
                        <li class="active"><a href="sub3_1.html">고독사 예방교육</a></li>
                        <li><a href="sub3_2.html">토론회 및 행사</a></li>
                        <li><a href="sub3_4.html">연구자료</a></li>
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
                <p class="con_tit">고독사 예방교육 일지</p>
            </div>
            <%
                    LonelyDeathBBSDAO lonelyDeathBBSDAO = new LonelyDeathBBSDAO();
					
					//게시판DB에 있는 글 개수를 확인
					int cnt = lonelyDeathBBSDAO.getNextNum();
					
					//한 페이지에 출력될 글 수
					int pageSize = 25;
					
					//현 페이지 정보 설정
					String pageNum = request.getParameter("pageNum");
					if(pageNum == null){
						pageNum = "1";
					}
					
					//첫행번호를 계산
					int currentPage = Integer.parseInt(pageNum);
					int startRow = (currentPage-1)*pageSize + 1;
			
                    ArrayList<LonelyDeathBBSDTO> list = lonelyDeathBBSDAO.getList(startRow, pageSize);
                    
                    for(int i = 0; i < list.size(); i++) //  http://kid6403.cafe24.com/image/rip_3.jpg 이미지파일 실제 보여지는 주소
                    {
                    	
                %>
            <div class="list_content">
                <div class="box_list"><a href="lonelyDeathPreventActionView.jsp?lonelyDeathBBSID=<%= list.get(i).getLonelyDeathBBSID() %>&lonelyDeathBBSDate=<%= list.get(i).getLonelyDeathBBSDate() %>" target="_blank">
                    <img class="box_list_img" src="/NoGodoksa/upload/<%= list.get(i).getFileRealName() %>">
                    <div class="box_list_text">
                        <h2><%= list.get(i).getLonelyDeathBBSTitle() %></h2>
						<p><%= list.get(i).getLonelyDeathBBSContent() %></p>
                    </div>
                </a></div>
                <% } %>
<!--                 <div class="box_list"><a href="https://www.keeperskorea.com/bbs/board.php?bo_table=soc3&wr_id=2&page=4" target="_blank">
                    <img class="box_list_img" src="/NoGodoksa/images/sub3/sub3_1/img_02.png">
                    <div class="box_list_text">
                        <h2>2010년 06월 21일 동국대학교대학원 생사의례학과<br>
                            [고독사 예방교육] 요시다타이치 초청 고독사예방 특강</h2>
                        <p>
                            주로 환자나 노인 등 혼자 사는 사람이 누구에게도 발견되지 않고, 자신의 주거지 내에서 생활 중의 돌발적인 질병 등에 의해 사망하는 것...
                        </p>
                    </div>
                </a></div>
                <div class="box_list"><a href="https://www.keeperskorea.com/bbs/board.php?bo_table=soc3&wr_id=3&page=4" target="_blank">
                    <img class="box_list_img" src="/NoGodoksa/images/sub3/sub3_1/img_23.png">
                    <div class="box_list_text">
                        <h2>2011년 05월 17일 부산중구종합사회복지관 <br>
                            [고독사 예방교육] 일본 고독사 전문가 초청 특강</h2>
                        <p>
                            고독사를 그저 무연고사의 일종으로 바라보는 시각으로는 이 문제를 해결할 수 없습니다. 고독사는 지금보다 훨씬 빠르게 늘어갈 것이고, 앞으로 심각한 사회 문제를 일으킬 것입니다.
                        </p>
                    </div>
                </a></div>
                <div class="box_list"><a href="https://www.keeperskorea.com/bbs/board.php?bo_table=soc3&wr_id=4&page=4" target="_blank">
                    <img class="box_list_img" src="/NoGodoksa/images/sub3/sub3_1/img_22.png">
                    <div class="box_list_text">
                        <h2>2011년 05월 18일 동부산대학교 장례행정복지과<br>
                            [고독사 예방교육] 고립사, 그리고 장례와 유품정리</h2>
                        <p>
                           일본 고독사 전문가 초청 특강. 고립사 그리고 장례와 유품정리라는 주제로 동부산대학교 장례행정복지과 학생들에게 특강을 실시하였습니다. 향후 고독사는 한국 사회에 사회적 이슈가 될 것입니다.  
                        </p>
                    </div>
                </a></div>
                <div class="box_list"><a href="https://www.keeperskorea.com/bbs/board.php?bo_table=soc3&wr_id=5&page=4" target="_blank">
                    <img class="box_list_img" src="/NoGodoksa/images/sub3/sub3_1/img_03.png">
                    <div class="box_list_text">
                        <h2>2014년 09월11일 거창군 통합체육회<br>
                            [고독사 예방교육] '유품정리인은 보았다!' 저자가 본 고독사예방법</h2>
                        <p>
                            제1기 장수체육대학 졸업생들은 어르신 체육의 필요성과 상해예방법, 치매예방과 관리, 웰 다잉(well dying) 고독사 예방 등 6개의 실기과목을 이수했다.
                        </p>
                    </div>
                </a></div>
                <div class="box_list"><a href="https://www.keeperskorea.com/bbs/board.php?bo_table=soc3&wr_id=6&page=4" target="_blank">
                    <img class="box_list_img" src="/NoGodoksa/images/sub3/sub3_1/img_04.png">                    
                    <div class="box_list_text">
                        <h2>2019년 07월 02일 (관악구 삼성동 주민센터 및 대학동주민센터) <br>
                            [고독사 예방교육] 고독사 예방 교육 강의</h2>
                        <p>
                            강의 주제 : 고독사 위험징후와 대응방법<br>서울시의 2019년 고독사 예방 주민관계망 형성사업 추진 계획에 따라 고독사 강연을 실시했습니다...
                        </p>
                    </div>
                </a></div>
                <div class="box_list"><a href="https://keeperskorea.com/bbs/board.php?bo_table=soc3&wr_id=10&page=4" target="_blank">
                    <img class="box_list_img" src="/NoGodoksa/images/sub3/sub3_1/img_05.png">
                    <div class="box_list_text">
                        <h2> 2019년 11월 15일 (선의관악종합사회복지관)<br>
                            [고독사 예방교육] 주민과 함께하는 고독사 예방교육 </h2>
                        <p>
                           고독사 예방 사업의 일환으로 11월 15일 15시~17시 30분 선의관악종합사회복지관에서 주민과 함께 하는 고독사 예방 교육을 실시했습니다. 이번 교육에서는 고독사 발생시 집주인과 이웃주민의 손해와 이를 예방하기 위한 역할별 대처법에 대한 내용으로 교육이 진행되었습니다...
                        </p>
                    </div>
                </a></div>
                <div class="box_list"><a href="https://www.keeperskorea.com/bbs/board.php?bo_table=soc3&wr_id=12&page=4" target="_blank">
                    <img class="box_list_img" src="/NoGodoksa/images/sub3/sub3_1/img_06.png">
                    <div class="box_list_text">
                        <h2>2020년 06월 19일 광주광역시 서구청<br>
                            [고독사 예방교육] 고독사예방관 양성기초과정</h2>
                        <p>
                            행정안전부의 공모사업에 선정된 광주 서구청은 전국에서 처음으로 고독사예방관을 양성, 배치하여 고독사 예방사업을 통합 관리한다고 합니다.
                        </p>
                    </div>
                </a></div>
                <div class="box_list"><a href="https://keeperskorea.com/bbs/board.php?bo_table=soc3&wr_id=14&page=4" target="_blank">
                    <img class="box_list_img" src="/NoGodoksa/images/sub3/sub3_1/img_07.png">
                    <div class="box_list_text">
                        <h2> 2020년 9월 24일 (중랑구청 관상복합센터) <br>
                            [고독사 예방교육] 고독사 예방 주민관계망 형성사업 강의 </h2>
                        <p>
                           서울 중랑구 고독사 예방 주민관계망 형성 사업 1차 워크숍을 다녀왔습니다. 교육을 통해 많은 실무자들의 애로를 해소할 수 있는 현장 사례를 중심으로 실천적 지침이 될 수 있는 교육에 집중했습니다...
                        </p>
                    </div>
                </a></div>
                <div class="box_list"><a href="https://keeperskorea.com/bbs/board.php?bo_table=soc3&wr_id=15&page=4" target="_blank">
                    <img class="box_list_img" src="/NoGodoksa/images/sub3/sub3_1/img_08.png">
                    <div class="box_list_text">
                        <h2> 2020년 10월 21일 (대구 학산종합사회복지관)<br>
                            [고독사 예방교육] 대구 고독사예방 활동</h2>
                        <p>
                           2020 고독사 에방 사업 '집 라인(Line) 플러스' Line helper 발대식 및 고독사 예방교육이 진행됐습니다. 고독사는 할 수 있는 모든 수단을 동원해 에방해야 합니다. 여러분의 활동을 응원합니다...
                        </p>
                    </div>
                </a></div>
                <div class="box_list"><a href="https://keeperskorea.com/bbs/board.php?bo_table=soc3&wr_id=18&page=4" target="_blank">
                    <img class="box_list_img" src="/NoGodoksa/images/sub3/sub3_1/img_10.png">
                    <div class="box_list_text">
                        <h2> 2020년 12월 01일 (마포구 중앙도서관) <br>
                            [고독사 예방교육] 지방자치단체 고독사예방강의</h2>
                        <p>
                           최근 신종 코로나바이러스 감염증(코로나19) 이후 단체 행동의 제한과 개인 실내활동이 늘어 지속적으로 고독사가 늘어나고 있는 추세입니다. 이번 교육은 '고독사 없는 마포 만들기' 고독사 인식개선 및 예방을 위한 교육의 일환으로 '코로나 시대 현장에서 발견되는 유형별 고독사 대처법'이라는 주제로 실시되었습니다...
                        </p>
                    </div>
                </a></div>
                <div class="box_list"><a href="https://keeperskorea.com/bbs/board.php?bo_table=soc3&wr_id=20&page=4" target="_blank">
                    <img class="box_list_img" src="/NoGodoksa/images/sub3/sub3_1/img_11.png">
                    <div class="box_list_text">
                        <h2> 2021년 03월 31일 (대구 달서구학산종합사회복지관)<br>
                            [고독사 예방교육] Line helper 발대식 및 고독사 예방교육</h2>
                        <p>
                            고독사 예방사업 '집 라인(Line) 네트워크'의 2기 Line helper 봉사단 발대식에 다녀왔습니다. 작년에 활동했던 1기 Line helper 봉사단과 올해 새롭게 활동을 시작하는 2기 Line helper봉사단이 함께 모여 자리를 빛냈습니다...
                        </p>
                    </div>
                </a></div>
                <div class="box_list"><a href="https://blog.naver.com/keeperskorea/222367139463" target="_blank">
                    <img class="box_list_img" src="/NoGodoksa/images/sub3/sub3_1/img_13.png">
                    <div class="box_list_text">
                        <h2> 2021년 05월 25일 (대구 남구종합사회복지관)<br>
                            [고독사 예방교육] 고독사예방사업 '싱글즈 네트워크'</h2>
                        <p>
                           고독사예방사업 '싱글즈 네트워크' 주민발굴단을 활용한 대구 남구 원룸밀집지역 중장년 고립가구 고독사 예방을 위한 지원 및 대응체계 구축사업 - '싱글즈 네트워크' 목적 : 사회적 고립된 중장년 1인 가구를 발굴하여 이우과 기관 네트워크를 통한 지원 및 대응체계 구축 ...
                        </p>
                    </div>
                </a></div>
                <div class="box_list"><a href="https://blog.naver.com/keeperskorea/222371963019" target="_blank">
                    <img class="box_list_img" src="/NoGodoksa/images/sub3/sub3_1/img_14.png">
                    <div class="box_list_text">
                        <h2>2021년 05월 26일 (종로구 창신2동) <br>
                            [고독사 예방교육] 이웃살피미 워크숍 고독사 예방 강연 </h2>
                        <p>
                           동장님께서 교육장 맨 앞자리 앉으셔서 강의 시간 내내 집중해서 들으셨습니다. 창신동은 오래된 동네로 고독서 위험이 있지만, 동장님과 직원분들 그리고 지역주민들의 관심으로 고독사를 반드시 없애겠다는 결연한 의지를 다졌습니다...                       
                        </p>
                    </div>
                </a></div>
                <div class="box_list"><a href="https://blog.naver.com/keeperskorea/222377597342" target="_blank">
                    <img class="box_list_img" src="/NoGodoksa/images/sub3/sub3_1/img_15.png">
                    <div class="box_list_text">
                        <h2>2021년 05월 31일 (상계종합사회복지관) <br>
                            [고독사 예방교육] 이웃살피미 고독사예방강연 </h2>
                        <p>
                            강의제목 : 현장 사례를 통한 유형별 고독사 예방법고독사 예방 강연 이번에는 4호선 종착역인 당고개역에 위치한 상계종합사회복지관입니다. 강연은 코로나 방역을 철저히 준수해 실시했습니다...
                        </p>
                    </div>
                </a></div> -->
                <br>
                <br>
                <br>
                <div class="con_link_img2">
                <% if(cnt != 0){
					//페이징 처리
					//전체 페이지수 계산
					int pageCount = cnt / pageSize + (cnt%pageSize==0?0:1);
					
					//한 페이지에 보여줄 페이지 블럭
					int pageBlock = 5;
					
					//한 페이지에 보여줄 페이지 블럭 시작번호 계산
					int startPage = ((currentPage-1)/pageBlock)*pageBlock+1;
					
					//한 페이지에 보여줄 페이지 블럭 끝 번호 계산
					int endPage = startPage + pageBlock-1;
					if(endPage > pageCount){
						endPage = pageCount;
					}
					
				%>
				<% if(startPage>pageBlock) {%>
					<a href="lonelyDeathPreventAction.jsp?pageNum=<%=startPage-pageBlock%>">이전</a>
				<% } %>
				<% for(int i=startPage; i<=endPage; i++){ %>
					<a href="lonelyDeathPreventAction.jsp?pageNum=<%=i%>" class="pageingNumber"><%=i %></a>
				<% } %>
				<% if(endPage<pageCount) { %>
					<a href="lonelyDeathPreventAction.jsp?pageNum=<%=startPage+pageBlock%>">다음</a>
				<% } %>
				<% } %>
<!--                     <div class="img_tit_btn"><a href="https://movetoheaven.com/bbs/board.php?bo_table=no_godok" target="_brank">
                        고독사예방 교육일지 더보기 +
                    </a></div> -->
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