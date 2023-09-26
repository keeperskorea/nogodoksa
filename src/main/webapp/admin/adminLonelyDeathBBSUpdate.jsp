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
<title>게시글</title>
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
    String lonelyDeathBBSID = request.getParameter("lonelyDeathBBSID");
    
    int resultNum = 0;
    %>

	<header><jsp:include page="adminHeader.jsp"></jsp:include></header>


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
			

					ArrayList<LonelyDeathBBSDTO> list = lonelyDeathBBSDAO.getUpdate(startRow, pageSize, lonelyDeathBBSID);
                    
                    for(int i = 0; i < list.size(); i++) //  http://kid6403.cafe24.com/image/rip_3.jpg 이미지파일 실제 보여지는 주소
                    {
                    	
                %>

		<section id="admin_write">
			<div class="admin_write_inner">
				<div class="admin_write_head">
					<form method="post" action="updateAction.jsp"
						enctype="multipart/form-data">
						<input type="hidden" name="lonelyDeathBBSID" value="<%= list.get(i).getLonelyDeathBBSID() %>">
						<table class="admin_write_table"
							style="text-align: center; boarder: 1px solid #dddddd">
							<thead>
								<tr>
									<th colspan="2"
										style="background-color: #eeeeee; text-align: center; font-size: 1.5rem">고독사
										게시글 수정 페이지</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>제목</td>
									<td><input type="text" class="admin_write_table_title"
										placeholder=""
										name="lonelyDeathBBSTitle" value="<%= list.get(i).getLonelyDeathBBSTitle() %>" maxlength="30"></td>
								</tr>
								<tr>
									<td>내용</td>
									<td><textarea name="lonelyDeathBBSContent"
											style="resize: none; width: 100%; height: 10rem;"><%= list.get(i).getLonelyDeathBBSContent() %></textarea></td>
								</tr>
							</tbody>
						</table>
						첨부사진 : <input type="file" name="file"><br>
						<!-- 위패사진 : <input type="file" name="file2"><br> -->
						<input type="submit" class="admin_write_table_button" value="수정하기">
					</form>
				</div>
			</div>
		</section>

		<%
                    }
                %>


	<hr>
	<div class="next_btn">
		<a href="javascript:window.history.back();">돌아가기</a>
	</div>
	<hr>

	<%
	if(userID !=null && userID.equals("kig1103@naver.com")){
		
	%>
	<div></div>
	<%
		}
	%>
	<hr>


	<footer><jsp:include page="../nogodoksaFooter.jsp"></jsp:include></footer>

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="../js/bootstrap.js"></script>
</body>
</html>