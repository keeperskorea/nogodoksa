<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="user.UserDAO"%>
<%@ page import="user.UserDTO"%>
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


	<div style="text-align: center;">회원목록</div>
	<div class="contents">
		<table border="1">
			<thead>
				<tr>
					<th>No.</th>
					<th>회원아이디(이메일)</th>
					<th>회원이름</th>
					<th>생년월일</th>
					<th>휴대폰번호</th>
					<th>고독사체크현황보기</th>
				</tr>
			</thead>
			<tbody>
			<%
					UserDAO userDAO = new UserDAO();
					
					
					//게시판DB에 있는 글 개수를 확인
					int cnt = userDAO.getNextNum();
					
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
			

                    ArrayList<UserDTO> list = userDAO.getList(startRow, pageSize);
                    
                    for(int i = 0; i < list.size(); i++) //  http://kid6403.cafe24.com/image/rip_3.jpg 이미지파일 실제 보여지는 주소
                    {
                    	
                %>
                	<tr>
                		<td><%= list.get(i).getUserNum() %></td>
                		<td><%= list.get(i).getUserID() %></td>
                		<td><%= list.get(i).getUserName() %></td>
                		<td><%= list.get(i).getUserBirth() %></td>
                		<td><%= list.get(i).getUserPhone() %></td>
                		<td><a href="adminMemberLonelyDeathView.jsp?userID2=<%= list.get(i).getUserID() %>">확인하기</a></td>
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
	<nav>

	</nav>

	<footer><jsp:include page="../nogodoksaFooter.jsp"></jsp:include></footer>

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="../js/bootstrap.js"></script>
</body>
</html>