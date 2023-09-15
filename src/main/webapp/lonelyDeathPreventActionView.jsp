<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="lonelyDeathBBS.LonelyDeathBBSDAO" %>
<%@ page import="lonelyDeathBBS.LonelyDeathBBSDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1">
<!-- 반응형 웹에서 사용하는 meta tag -->
<link rel="stylesheet" href="css/bootstrap.css">
<!-- 참조  -->
<link rel="stylesheet" href="css/style_sub.css">
<link rel="stylesheet" href="css/style_sub2.css">
<link rel="stylesheet" href="css/nogodoksa_footer.css">
<link rel="stylesheet" href="css/nogodoksa_header.css">
<title>Endless Park</title>
<style>
	.view_container{
		padding-top: 130px;
		text-align: center;
	}
	.btn{
		margin: 1rem;
	}
</style>
</head>
<body>

	<%
	String userID = null; // 로그인이 된 사람들은 로그인정보를 담을 수 있도록한다
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	int lonelyDeathBBSID = 0;
	String lonelyDeathBBSDate ="";
	if (request.getParameter("lonelyDeathBBSID") != null) {
		lonelyDeathBBSID = Integer.parseInt(request.getParameter("lonelyDeathBBSID"));
	}
	if(request.getParameter("lonelyDeathBBSDate") != null){
		lonelyDeathBBSDate = request.getParameter("lonelyDeathBBSDate");
	}
	if (lonelyDeathBBSID == 0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지 않은 글입니다')");
		script.println("history.back()");
		script.println("</script>");
	}
	LonelyDeathBBSDTO lonelyDeathBBS = new LonelyDeathBBSDAO().getLonelyDeathBBS(lonelyDeathBBSID, lonelyDeathBBSDate);
	
	//System.out.println("제목 : "+lonelyDeathBBS.getLonelyDeathBBSTitle());
	%>
	
	<header><jsp:include page="nogodoksaHeader.jsp"></jsp:include></header>
	
	<div class="view_container">
		제목 : <%= lonelyDeathBBS.getLonelyDeathBBSTitle() %>
	</div>
	<div>
		내용 : <img class="" src="/NoGodoksa/upload/<%= lonelyDeathBBS.getFileRealName() %>">
		<%= lonelyDeathBBS.getLonelyDeathBBSContent() %>
	</div>
	
<%-- 			<%
			if (userID != null && userID.equals("edam")) {
			%>
			<a href="update.jsp?endlessAID=<%=endlessAID%>"
				>수정</a> 
				<a
				onclick="return confirm('정말로 삭제하시겠습니까?')"
				href="deleteAction.jsp?endlessAID=<%=endlessAID%>"
				>삭제</a>

			<%
			}
			%> --%>


	<footer><jsp:include page="nogodoksaFooter.jsp"></jsp:include></footer>

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>