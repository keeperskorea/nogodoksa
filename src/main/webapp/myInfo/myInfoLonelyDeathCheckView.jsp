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
<link rel="stylesheet" href="../css/nogodoksa_footer.css">
<!-- 참조  -->
<link rel="stylesheet" href="../css/style_sub.css">
<link rel="stylesheet" href="../css/nogodoksa_header.css">
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
    String lonelyDeathData = request.getParameter("lonelyDeathData");
    
    System.out.println("체크값 : "+lonelyDeathData);
    
    int resultNum = 0;
    %>

	<header><jsp:include page="../nogodoksaHeader.jsp"></jsp:include></header>

	<section id="sec1_goduk_result">
            <div class="xx_inner">
               <div class="goduk_contents_top_result">
                   <h1>결과항목페이지</h1>
                   <div class="goduk_contents_middle_result">
                     <div class="goduk_contents_middle_result_1">
                        <h1>번호</h1>
                        <h2>체크항목</h2>
                     </div>
                     
                     <%
					LonelyDeathDAO lonelyDeathDAO = new LonelyDeathDAO();
					
					
					//게시판DB에 있는 글 개수를 확인
					int cnt = lonelyDeathDAO.getNextNum();
					
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
			

                    ArrayList<LonelyDeathDTO> list = lonelyDeathDAO.getCheckList(startRow, pageSize, userID, lonelyDeathData);
                    
                    for(int i = 0; i < list.size(); i++) //  http://kid6403.cafe24.com/image/rip_3.jpg 이미지파일 실제 보여지는 주소
                    {
                    	
                %>
                     <% if(list.get(i).getLonelyDeathCheck1() != null) { resultNum = resultNum +1;%>                                          
                     <div class="goduk_contents_middle_result_2">
                        <div class="goduk_contents_middle_result_2_1"><%= resultNum %></div>
                        <div class="goduk_contents_middle_result_2_2">식사는 인스턴트식품 혹은 편의점 도시락을 주로 먹는다.</div>
                     </div>
                     <% } %>
                     
                     <% if(list.get(i).getLonelyDeathCheck2() != null) { resultNum = resultNum +1;%>                     
                     <div class="goduk_contents_middle_result_2">
                        <div class="goduk_contents_middle_result_2_1"><%= resultNum %></div>
                        <div class="goduk_contents_middle_result_2_2">책이나 잡지를 바닥에 쌓아놓고 있다.</div>
                     </div>
                     <% } %>
                     
                     <% if(list.get(i).getLonelyDeathCheck3() != null) { resultNum = resultNum +1;%>                     
                     <div class="goduk_contents_middle_result_2">
                        <div class="goduk_contents_middle_result_2_1"><%= resultNum %></div>
                        <div class="goduk_contents_middle_result_2_2">이불은 하루 종일 펼쳐진 상태로 놓여있다.</div>
                     </div>
                     <% } %>
                     
                     <% if(list.get(i).getLonelyDeathCheck4() != null) { resultNum = resultNum +1;%>                     
                     <div class="goduk_contents_middle_result_2">
                        <div class="goduk_contents_middle_result_2_1"><%= resultNum %></div>
                        <div class="goduk_contents_middle_result_2_2">옆방에 누가 사는지 모른다.</div>
                     </div>
                     <% } %>
                     
                     <% if(list.get(i).getLonelyDeathCheck5() != null) { resultNum = resultNum +1;%>                     
                     <div class="goduk_contents_middle_result_2">
                        <div class="goduk_contents_middle_result_2_1"><%= resultNum %></div>
                        <div class="goduk_contents_middle_result_2_2">이성과의 교제가 귀찮고, 꺼려진다.</div>
                     </div>
                     <% } %>
                     
                     <% if(list.get(i).getLonelyDeathCheck6() != null) { resultNum = resultNum +1;%>                     
                     <div class="goduk_contents_middle_result_2">
                        <div class="goduk_contents_middle_result_2_1"><%= resultNum %></div>
                        <div class="goduk_contents_middle_result_2_2">1일 5시간이상 집에서 컴퓨터를 하고있다.</div>
                     </div>
                     <% } %>
                     
                     <% if(list.get(i).getLonelyDeathCheck7() != null) { resultNum = resultNum +1;%>                     
                     <div class="goduk_contents_middle_result_2">
                        <div class="goduk_contents_middle_result_2_1"><%= resultNum %></div>
                        <div class="goduk_contents_middle_result_2_2">"무엇을 하고 싶다","무엇을 갖고 싶다"라는 욕구가 별로 없는 편이다.</div>
                     </div>
                     <% } %>
                     
                     <% if(list.get(i).getLonelyDeathCheck8() != null) { resultNum = resultNum +1;%>                     
                     <div class="goduk_contents_middle_result_2">
                        <div class="goduk_contents_middle_result_2_1"><%= resultNum %></div>
                        <div class="goduk_contents_middle_result_2_2">동기회,동창회에서 불러도 참가할 생각이 없다.</div>
                     </div>
                     <% } %>
                     
                     <% if(list.get(i).getLonelyDeathCheck9() != null) { resultNum = resultNum +1;%>                     
                     <div class="goduk_contents_middle_result_2">
                        <div class="goduk_contents_middle_result_2_1"><%= resultNum %></div>
                        <div class="goduk_contents_middle_result_2_2">집에서 혼자 마시는 술이 좋다.</div>
                     </div>
                     <% } %>
                     
                     <% if(list.get(i).getLonelyDeathCheck10() != null) { resultNum = resultNum +1;%>                     
                     <div class="goduk_contents_middle_result_2">
                        <div class="goduk_contents_middle_result_2_1"><%= resultNum %></div>
                        <div class="goduk_contents_middle_result_2_2">5년 이상 혼자 생활하고 있다.</div>
                     </div>
                     <% } %>
                     
                     <% if(list.get(i).getLonelyDeathCheck11() != null) { resultNum = resultNum +1;%>                     
                     <div class="goduk_contents_middle_result_2">
                        <div class="goduk_contents_middle_result_2_1"><%= resultNum %></div>
                        <div class="goduk_contents_middle_result_2_2">본가에 1년 이상 돌아가지 않았지만 연락오지 않는다.</div>
                     </div>
                     <% } %>
                     
                     <% if(list.get(i).getLonelyDeathCheck12() != null) { resultNum = resultNum +1;%>                     
                     <div class="goduk_contents_middle_result_2">
                        <div class="goduk_contents_middle_result_2_1"><%= resultNum %></div>
                        <div class="goduk_contents_middle_result_2_2">가지고 싶은 것이 있어도 돈이 없기때문에 참는다.</div>
                     </div>
                     <% } %>
                     
                     <% if(list.get(i).getLonelyDeathCheck13() != null) { resultNum = resultNum +1;%>                     
                     <div class="goduk_contents_middle_result_2">
                        <div class="goduk_contents_middle_result_2_1"><%= resultNum %></div>
                        <div class="goduk_contents_middle_result_2_2">식사는 거의 혼자 먹는다.</div>
                     </div>
                     <% } %>
                     
                     <% if(list.get(i).getLonelyDeathCheck14() != null) { resultNum = resultNum +1;%>                     
                     <div class="goduk_contents_middle_result_2">
                        <div class="goduk_contents_middle_result_2_1"><%= resultNum %></div>
                        <div class="goduk_contents_middle_result_2_2">현금서비스나 카드론을 사용하고 있지만, 완전히 변제할 목표가 서 있지 않다.</div>
                     </div>
                     <% } %>
                     
                     <% if(list.get(i).getLonelyDeathCheck15() != null) { resultNum = resultNum +1;%>                     
                     <div class="goduk_contents_middle_result_2">
                        <div class="goduk_contents_middle_result_2_1"><%= resultNum %></div>
                        <div class="goduk_contents_middle_result_2_2">"재미있는 상태"보다 "고통스럽지 않은상태"쪽이 좋다.</div>
                     </div>
                     <% } %>
                     
                     <% if(list.get(i).getLonelyDeathCheck16() != null) { resultNum = resultNum +1;%>                     
                     <div class="goduk_contents_middle_result_2">
                        <div class="goduk_contents_middle_result_2_1"><%= resultNum %></div>
                        <div class="goduk_contents_middle_result_2_2">쉬는 날은 집에 혼자 있는 경우가 많다.</div>
                     </div>
                     <% } %>
                     
                     <% if(list.get(i).getLonelyDeathCheck17() != null) { resultNum = resultNum +1;%>                     
                     <div class="goduk_contents_middle_result_2">
                        <div class="goduk_contents_middle_result_2_1"><%= resultNum %></div>
                        <div class="goduk_contents_middle_result_2_2">일을 오래 계속하지 못한다.</div>
                     </div>
                     <% } %>
                     
                     <% if(list.get(i).getLonelyDeathCheck18() != null) { resultNum = resultNum +1;%>                     
                     <div class="goduk_contents_middle_result_2">
                        <div class="goduk_contents_middle_result_2_1"><%= resultNum %></div>
                        <div class="goduk_contents_middle_result_2_2">방 모양을 거의 바꾼 적이 없다.</div>
                     </div>
                     <% } %>
                     
                     <% if(list.get(i).getLonelyDeathCheck19() != null) { resultNum = resultNum +1;%>                     
                     <div class="goduk_contents_middle_result_2">
                        <div class="goduk_contents_middle_result_2_1"><%= resultNum %></div>
                        <div class="goduk_contents_middle_result_2_2">남의 눈에 띄는 것이 싫다.</div>
                     </div>
                     <% } %>
                     
                     <% if(list.get(i).getLonelyDeathCheck20() != null) { resultNum = resultNum +1;%>                     
                     <div class="goduk_contents_middle_result_2">
                        <div class="goduk_contents_middle_result_2_1"><%= resultNum %></div>
                        <div class="goduk_contents_middle_result_2_2">부인(남편)이 간호해 줄 것이라고 생각한다.</div>
                     </div>
                     <% } %>
                     
                     <% if(list.get(i).getLonelyDeathCheck21() != null) { resultNum = resultNum +1;%>                     
                     <div class="goduk_contents_middle_result_2">
                        <div class="goduk_contents_middle_result_2_1"><%= resultNum %></div>
                        <div class="goduk_contents_middle_result_2_2">업무 이외 다른 사람과 함께 있는 것이 귀찮다.</div>
                     </div>
                     <% } %>
                     
                     <% if(list.get(i).getLonelyDeathCheck22() != null) { resultNum = resultNum +1;%>                     
                     <div class="goduk_contents_middle_result_2">
                        <div class="goduk_contents_middle_result_2_1"><%= resultNum %></div>
                        <div class="goduk_contents_middle_result_2_2">집에 파손된 전자제품이나 가재도구가 있다.</div>
                     </div>
                     <% } %>
                     
                     <% if(list.get(i).getLonelyDeathCheck23() != null) { resultNum = resultNum +1;%>                     
                     <div class="goduk_contents_middle_result_2">
                        <div class="goduk_contents_middle_result_2_1"><%= resultNum %></div>
                        <div class="goduk_contents_middle_result_2_2">싸움을 한 후 화해하지 않고 방치한 채로의 친구가 있다.</div>
                     </div>
                     <% } %>
                     
                     <% if(list.get(i).getLonelyDeathCheck24() != null) { resultNum = resultNum +1;%>                     
                     <div class="goduk_contents_middle_result_2">
                        <div class="goduk_contents_middle_result_2_1"><%= resultNum %></div>
                        <div class="goduk_contents_middle_result_2_2">일을 마치고 귀가해도 누구와도 말하지않는 날이 있다.</div>
                     </div>
                     <% } %>
                     
                     <% if(list.get(i).getLonelyDeathCheck25() != null) { resultNum = resultNum +1;%>                     
                     <div class="goduk_contents_middle_result_2">
                        <div class="goduk_contents_middle_result_2_1"><%= resultNum %></div>
                        <div class="goduk_contents_middle_result_2_2">가끔 냉장고 안의 식품을 부패시켜버리는 일이 있다.</div>
                     </div>
                     <% } %>
                     
                     <% if(list.get(i).getLonelyDeathCheck26() != null) { resultNum = resultNum +1;%>                     
                     <div class="goduk_contents_middle_result_2">
                        <div class="goduk_contents_middle_result_2_1"><%= resultNum %></div>
                        <div class="goduk_contents_middle_result_2_2">어느 쪽입니까? 라고 말하면 아이는 좋아하지 않는다.</div>
                     </div>
                     <% } %>
                     
                     <% if(list.get(i).getLonelyDeathCheck27() != null) { resultNum = resultNum +1;%>                     
                     <div class="goduk_contents_middle_result_2">
                        <div class="goduk_contents_middle_result_2_1"><%= resultNum %></div>
                        <div class="goduk_contents_middle_result_2_2">이전에 방 청소를 한 것은 언제인지 기억이 나지 않는다.</div>
                     </div>
                     <% } %>
                                     	
			<%
                    }
                %>
                 </div>
				<div class="goduk_contents_middle_result_3">
                    <div class="goduk_contents_middle_result_3_1">총 체크 갯수</div>
                    <div class="goduk_contents_middle_result_3_2"><%= resultNum %>개</div>
                 </div>
               </div>
                 <a href="javascript:window.history.back();"><button class="goduk_contents_result">돌아가기</button></a>
           </div>
    </section>






	<footer><jsp:include page="../nogodoksaFooter.jsp"></jsp:include></footer>

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="../js/bootstrap.js"></script>
</body>
</html>