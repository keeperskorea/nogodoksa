<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<style>
* {
	margin: 0;
	padding: 0;
}
.admin_hd {
	position: fixed;
    top: 0;
    left: 0;
    right: 0;
    display: flex;
    width: 100%;
    height: 50px;
    background: white;
    border-bottom: 1px solid #ddd;
}

header{
 	/* border-bottom: 1px solid #ddd; */
 	width: 100%;
 }
 header > div {
 	width: 100%;
 	min-width: 1000px;
 	height: 80px;
 	margin: 0 auto;
 }
 header .title {
 	float: left;
 	height: 60px;
 	margin-top: 5px;
 	padding-left: 1rem;
 }
 
 header .gnb {
 	float: right;
 	padding-right: 1rem;
 }
 header .gnb li{
 	display: inline-block;
 	margin-top: 14px;
 	margin-left: 30px;
 	font-size: 17px;
 }
  header .gnb li:first-child{
  	margin-left: 0;
  }

</style>
<body>
	<div class="admin_hd">
		<header>
			<div>
				<h1 class="title"><a href="adminMemberList.jsp">관리자 페이지</a></h1>
				<ul class="gnb">
					<li><a href="../main.jsp">홈으로</a></li>
					<li><a href="adminMemberList.jsp">회원관리</a></li>
					<li><a href="adminLonelyDeathBBS.jsp">고독사 글 확인</a></li>
				</ul>
			</div>
		</header>
	</div>


</body>
</html>