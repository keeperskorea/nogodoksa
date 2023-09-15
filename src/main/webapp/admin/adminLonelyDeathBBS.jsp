<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="lonelyDeathBBS.LonelyDeathBBSDAO"%>
<%@ page import="lonelyDeathBBS.LonelyDeathBBSDTO"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1">
<!-- 반응형 웹에서 사용하는 meta tag -->
<link rel="stylesheet" href="../css/bootstrap.css">
<!-- 참조  -->
<link rel="stylesheet" href="../css/style_sub.css">
<link rel="stylesheet" href="../css/style_sub2.css">
<link rel="stylesheet" href="../css/nogodoksa_footer.css">
<title>관리자페이지</title>
<style>
	body {
		padding-top: 80px;
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
	<header><jsp:include page="adminHeader.jsp"></jsp:include></header>

	<div style="text-align: center;"><a href="write.jsp">게시글 작성하기</a></div>
	<div style="text-align: center;">게시글목록</div>
	<div class="contents">
		<table border="1">
			<thead>
				<tr>
					<th>No.</th>
					<th>이미지</th>
					<th>제목</th>
					<th>작성일</th>
					<th>작성자</th>
					<th>글 확인하기</th>
				</tr>
			</thead>
			<tbody>
			<%
					LonelyDeathBBSDAO lonelyDeathBBSDAO = new LonelyDeathBBSDAO();
					
					
					//게시판DB에 있는 글 개수를 확인
					int cnt = lonelyDeathBBSDAO.getNextNum();
					
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
			

                    ArrayList<LonelyDeathBBSDTO> list = lonelyDeathBBSDAO.getList(startRow, pageSize);
                    
                    for(int i = 0; i < list.size(); i++) //  http://kid6403.cafe24.com/image/rip_3.jpg 이미지파일 실제 보여지는 주소
                    {
                    	
                %>
                	<tr>
                		<td><%= list.get(i).getLonelyDeathBBSID() %></td>
                		<td><img src="../upload/<%= list.get(i).getFileRealName() %>" height="130px"></td>
                		<td><%= list.get(i).getLonelyDeathBBSTitle() %></td>
                		<td><%= list.get(i).getLonelyDeathBBSDate() %></td>
                		<td><%= list.get(i).getUserID() %></td>
                		<td><a href="adminLonelyDeathBBSDetailView.jsp?userID2=<%= list.get(i).getUserID() %>&lonelyDeathBBSDate=<%= list.get(i).getLonelyDeathBBSDate() %>">확인하기</a></td>
                	</tr>
			<%
                    }
                %>
		
			</tbody>
		</table>
	</div>

	<div class="next_btn">
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
		<a href="adminMemberList.jsp?pageNum=<%=startPage-pageBlock%>">이전</a>
	<% } %>
	<% for(int i=startPage; i<=endPage; i++){ %>
		<a href="adminMemberList.jsp?pageNum=<%=i%>" class="pageingNumber"><%=i %></a>
	<% } %>
	<% if(endPage<pageCount) { %>
		<a href="adminMemberList.jsp?pageNum=<%=startPage+pageBlock%>">다음</a>
	<% } %>
	<% } %>
	</div>


	<%
	if(userID !=null && userID.equals("kig1103@naver.com")){
		
	%>
	<div>
		<!-- 글쓰기 있던 자리 -->
	</div>
	<%
		}
	%>



	<footer><jsp:include page="../nogodoksaFooter.jsp"></jsp:include></footer>

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="../js/bootstrap.js"></script>
</body>
</html>