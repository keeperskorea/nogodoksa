<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>

<%@ page import="lonelyDeath.LonelyDeathDAO" %>
<%@ page import="lonelyDeath.LonelyDeathDTO" %>

<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1">

<!-- 참조  -->
<link rel="stylesheet" href="../css/style_sub.css">
<link rel="stylesheet" href="../css/nogodoksa_header.css">
<link rel="stylesheet" href="../css/nogodoksa_footer.css">
<title>Endless Park</title>
<style>
	body {
	} 
</style>
</head>
<body>
	<% 
    String userID = null;
    if (session.getAttribute("userID") != null){
        userID = (String) session.getAttribute("userID");
    }
    %>

	<header><jsp:include page="../nogodoksaHeader.jsp"></jsp:include></header>
	<section id="sec1_goduk_info">
		<div class="goduk_myInfo_inner">
			<div class="goduck_myInfo_main">
				<h1>내 정보 페이지</h1>
				<div class="goduck_myInfo_main_info">
					<div class="goduck_myInfo_main_info_1">
						<h1>이전 기록 보기</h1>
					</div>
					                
	                <div class="goduck_myInfo_main_info_2">
	                    <div class="goduck_myInfo_main_info_2_0">
	                	   <div class="goduck_myInfo_main_info_2_1">번호</div>
	                	   <div class="goduck_myInfo_main_info_99_99">날짜</div>
	                	</div>
	                	<div class="goduck_myInfo_main_info_2_0">
	                	   <div class="goduck_myInfo_main_info_2_1">체크개수</div>
	                	   <div class="goduck_myInfo_main_info_99_99">체크 항목 상세 보기</div>
	                	</div>
	                </div>
			<%
					LonelyDeathDAO lonelyDeathDAO = new LonelyDeathDAO();
					
					
					//게시판DB에 있는 글 개수를 확인
					int cnt = lonelyDeathDAO.getNextNum();
					
					//한 페이지에 출력될 글 수
					int pageSize = 15;
					
					//현 페이지 정보 설정
					String pageNum = request.getParameter("pageNum");
					if(pageNum == null){
						pageNum = "1";
					}
					
					//첫행번호를 계산
					int currentPage = Integer.parseInt(pageNum);
					int startRow = (currentPage-1)*pageSize + 1;
			

                    ArrayList<LonelyDeathDTO> list = lonelyDeathDAO.getList(startRow, pageSize, userID);
                    
                    for(int i = 0; i < list.size(); i++) //  http://kid6403.cafe24.com/image/rip_3.jpg 이미지파일 실제 보여지는 주소
                    {
                    	
                %>
					<div class="goduck_myInfo_main_info_2">
	                	<div class="goduck_myInfo_main_info_2_1"><%= i+1 %></div>
	                	<div class="goduck_myInfo_main_info_2_2"><%= list.get(i).getLonelyDeathDate().substring(0, 11) + list.get(i).getLonelyDeathDate().substring(11, 13) + "시" + list.get(i).getLonelyDeathDate().substring(14, 16) + "분" %></div>
	                	<div class="goduck_myInfo_main_info_2_1"><%= list.get(i).getLonelyDeathCount() %></div>
	                	<div class="goduck_myInfo_main_info_2_2"><a href="myInfoLonelyDeathCheckView.jsp?userID=<%= userID %>&lonelyDeathData=<%= list.get(i).getLonelyDeathDate() %>">이전 기록 다시 보기</a></div>
	                </div>
                

			<%
                    }
                %>


	<hr>
		</div>
<%-- 	<div class="next_btn">
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
		<a href="myInfo.jsp?pageNum=<%=startPage-pageBlock%>">이전</a>
	<% } %>
	<% for(int i=startPage; i<=endPage; i++){ %>
		<a href="myInfo.jsp?pageNum=<%=i%>" class="pageingNumber"><%=i %></a>
	<% } %>
	<% if(endPage<pageCount) { %>
		<a href="myInfo.jsp?pageNum=<%=startPage+pageBlock%>">다음</a>
	<% } %>
	<% } %>
	</div> --%>
			</div>
			<a href="https://nogodoksa.com/index.html"><button class="goduk_contents_result">돌아가기</button></a>
		</div>
	</section>
	<hr>
	<hr>
	<hr>


	<footer><jsp:include page="../nogodoksaFooter.jsp"></jsp:include></footer>

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="../js/bootstrap.js"></script>
</body>
</html>