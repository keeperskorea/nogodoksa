<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1" >  <!-- 반응형 웹에서 사용하는 meta tag -->
<link rel="stylesheet" href="../css/style_sub.css">
<link rel="stylesheet" href="../css/style_sub2.css">
<link rel="stylesheet" href="../css/nogodoksa_footer.css">
<title>관리자페이지</title>
</head>
<body>
    <% 
    String userID = null;
    if (session.getAttribute("userID") != null){
        userID = (String) session.getAttribute("userID");
    }
    %>
    
    <header><jsp:include page="adminHeader.jsp"></jsp:include></header>

	<section id="admin_write">
    <div class= "admin_write_inner">
    	<div class= "admin_write_head">
    		<form method="post" action="writeAction.jsp" enctype="multipart/form-data">
    			<table class= "admin_write_table" style= "text-align: center; boarder: 1px solid #dddddd">
	    	    	<thead>
		    	    	<tr>
		    	    		<th colspan= "2" style= "background-color: #eeeeee; text-align: center; font-size: 1.5rem">고독사 게시글 작성 페이지</th>
		    	    	</tr>
	    	    	</thead>
			    	<tbody>
			    		<tr>
			    			<td>제목</td>
			    			<td><input type="text" class="admin_write_table_title" placeholder=""  name="lonelyDeathBBSTitle" maxlength="30" ></td>
			    		</tr>
			    		<tr>
			    			<td>내용</td>
			    			<td><textarea name="lonelyDeathBBSContent" style="resize: none; width: 100%; height: 10rem;"></textarea></td>
			    		</tr>
			    	</tbody>
    	    	</table>
    	    	첨부사진 : <input type="file" name="file"><br>
    	    	<!-- 위패사진 : <input type="file" name="file2"><br> -->
    	    	<input type="submit" class="admin_write_table_button" value="작성하기">
    		</form>
    	    </div>
    </div>
	</section>
    
    <footer><jsp:include page="../nogodoksaFooter.jsp"></jsp:include></footer>

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
</body>
</html>