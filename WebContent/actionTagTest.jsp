<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<%  //forward는 주소가 안바뀌기 때문에 actionTagTest.jsp인 상태에서 화면만 바뀜
	//객체 제어권을 넘겨줘서 바뀐 창에서도 객체들을 사용할 수 있음
	String userID = request.getParameter("userID");
	String userPwd = request.getParameter("userPwd");
	String loginCheck = request.getParameter("loginCheck");
	
	if(loginCheck.equals("user")){
%>
		<jsp:forward page="userMain.jsp">
			<jsp:param value='<%=URLEncoder.encode("전고객", "UTF-8") %>' name="userName"/>
		</jsp:forward>
<%	}else{ %>
		<jsp:forward page="managerMain.jsp">
			<jsp:param value='<%=URLEncoder.encode("성관리", "UTF-8") %>' name="userName"/>
		</jsp:forward>
<%	} %>