<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1" >  <!-- 반응형 웹에서 사용하는 meta tag -->

<link rel="stylesheet" href="../css/lonelyDeathCheck.css">
<link rel="stylesheet" href="../css/nogodoksa_header.css">
<link rel="stylesheet" href="../css/nogodoksa_footer.css">
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
/*     	if(userID == null){
    		PrintWriter script = response.getWriter();
    		script.println("<script>");
            script.println("alert('로그인후 이용이 가능합니다.')");
            script.println("location.href = 'login.jsp'");    // 이전 페이지로 사용자를 보냄
            script.println("</script>");
    	} */
	%>
	<header><jsp:include page="../nogodoksaHeader.jsp"></jsp:include></header>
	<section id="sec1">
		<div class="lonelyDeathCheckPage_inner">
		
			<form method="post" action="lonelyDeathCheckPageAction.jsp">
				<div class="lonelyDeathCheckPage_title1">
					<h1>CHECK-1</h1>
					<div class="lonelyDeathCheckPage_checkStart">
						<label><input type="checkbox" name="check1" value="1"> 1. 식사는 인스턴트식품 혹은 편의점 도시락을 주로 먹는다.</label>
					</div>
					<div class="lonelyDeathCheckPage_checkStart">
						<label><input type="checkbox" name="check2" value="2"> 2. 책이나 잡지를 바닥에 쌓아놓고 있다.</label>
					</div>
					<div class="lonelyDeathCheckPage_checkStart">
						<label><input type="checkbox" name="check3" value="3"> 3. 이불은 하루 종일 펼쳐진 상태로 놓여있다.</label>
					</div>
					<div class="lonelyDeathCheckPage_checkStart">
						<label><input type="checkbox" name="check4" value="4"> 4. 옆방에 누가 사는지 모른다.</label>
					</div>
					<div class="lonelyDeathCheckPage_checkStart">
						<label><input type="checkbox" name="check5" value="5"> 5. 이성과의 교제가 귀찮고, 꺼려진다.</label>
					</div>
					<div class="lonelyDeathCheckPage_checkStart">
						<label><input type="checkbox" name="check6" value="6"> 6. 1일 5시간이상 집에서 컴퓨터를 하고있다.</label>
					</div>
					<div class="lonelyDeathCheckPage_checkStart">
						<label><input type="checkbox" name="check7" value="7"> 7. "무엇을 하고 싶다","무엇을 갖고 싶다"라는 욕구가 별로 없는 편이다.</label>
					</div>
					<div class="lonelyDeathCheckPage_checkStart">
						<label><input type="checkbox" name="check8" value="8"> 8. 동기회,동창회에서 불러도 참가할 생각이 없다.</label>
					</div>
					<div class="lonelyDeathCheckPage_checkStart">
						<label><input type="checkbox" name="check9" value="9"> 9. 집에서 혼자 마시는 술이 좋다.</label>
					</div>
					<div class="lonelyDeathCheckPage_checkEnd">
					</div>
				</div>
				<div class="lonelyDeathCheckPage_title1">
					<h1>CHECK-2</h1>
					<div class="lonelyDeathCheckPage_checkStart">
						<label><input type="checkbox" name="check10" value="10"> 10. 5년 이상 혼자 생활하고 있다.</label>
					</div>
					<div class="lonelyDeathCheckPage_checkStart">
						<label><input type="checkbox" name="check11" value="11"> 11. 본가에 1년 이상 돌아가지 않았지만 연락오지 않는다.</label>
					</div>
					<div class="lonelyDeathCheckPage_checkStart">
						<label><input type="checkbox" name="check12" value="12"> 12. 가지고 싶은 것이 있어도 돈이 없기때문에 참는다.</label>
					</div>
					<div class="lonelyDeathCheckPage_checkStart">
						<label><input type="checkbox" name="check13" value="13"> 13. 식사는 거의 혼자 먹는다.</label>
					</div>
					<div class="lonelyDeathCheckPage_checkStart">
						<label><input type="checkbox" name="check14" value="14"> 14. 현금서비스나 카드론을 사용하고 있지만, 완전히 변제할 목표가 서 있지 않다.</label>
					</div>
					<div class="lonelyDeathCheckPage_checkStart">
						<label><input type="checkbox" name="check15" value="15"> 15. "재미있는 상태"보다 "고통스럽지 않은상태"쪽이 좋다.</label>
					</div>
					<div class="lonelyDeathCheckPage_checkStart">
						<label><input type="checkbox" name="check16" value="16"> 16. 쉬는 날은 집에 혼자 있는 경우가 많다.</label>
					</div>
					<div class="lonelyDeathCheckPage_checkStart">
						<label><input type="checkbox" name="check17" value="17"> 17. 일을 오래 계속하지 못한다.</label>
					</div>
					<div class="lonelyDeathCheckPage_checkStart">
						<label><input type="checkbox" name="check18" value="18"> 18. 방 모양을 거의 바꾼 적이 없다.</label>
					</div>
					<div class="lonelyDeathCheckPage_checkEnd">
					</div>
				</div>
				<div class="lonelyDeathCheckPage_title1">
					<h1>CHECK-3</h1>
					<div class="lonelyDeathCheckPage_checkStart">
						<label><input type="checkbox" name="check19" value="19"> 19. 남의 눈에 띄는 것이 싫다.</label>
					</div>
					<div class="lonelyDeathCheckPage_checkStart">
						<label><input type="checkbox" name="check20" value="20"> 20. 부인(남편)이 간호해 줄 것이라고 생각한다.</label>
					</div>
					<div class="lonelyDeathCheckPage_checkStart">
						<label><input type="checkbox" name="check21" value="21"> 21. 업무 이외 다른 사람과 함께 있는 것이 귀찮다.</label>
					</div>
					<div class="lonelyDeathCheckPage_checkStart">
						<label><input type="checkbox" name="check22" value="22"> 22. 집에 파손된 전자제품이나 가재도구가 있다.</label>
					</div>
					<div class="lonelyDeathCheckPage_checkStart">
						<label><input type="checkbox" name="check23" value="23"> 23. 싸움을 한 후 화해하지 않고 방치한 채로의 친구가 있다.</label>
					</div>
					<div class="lonelyDeathCheckPage_checkStart">
						<label><input type="checkbox" name="check24" value="24"> 24. 일을 마치고 귀가해도 누구와도 말하지않는 날이 있다.</label>
					</div>
					<div class="lonelyDeathCheckPage_checkStart">
						<label><input type="checkbox" name="check25" value="25"> 25. 가끔 냉장고 안의 식품을 부패시켜버리는 일이 있다.</label>
					</div>
					<div class="lonelyDeathCheckPage_checkStart">
						<label><input type="checkbox" name="check26" value="26"> 26. 어느 쪽입니까? 라고 말하면 아이는 좋아하지 않는다.</label>
					</div>
					<div class="lonelyDeathCheckPage_checkStart">
						<label><input type="checkbox" name="check27" value="27"> 27. 이전에 방 청소를 한 것은 언제인지 기억이 나지 않는다.</label>
					</div>
					<div class="lonelyDeathCheckPage_checkEnd">
					</div>
				</div>
				<div class="lonelyDeathCheckStart2_btn">
					<button class="lonelyDeathCheckStart2_btn_btn1" type="button" onclick="location.href='lonelyDeathCheckListStart2.jsp'">돌아가기</button>
					<input type="submit" class="lonelyDeathCheckStart2_btn_btn2" value="제출하기">
				</div>
			</form>
		</div>
	</section>



	<footer><jsp:include page="../nogodoksaFooter.jsp"></jsp:include></footer>


	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="../js/bootstrap.js"></script>
</body>
</html>