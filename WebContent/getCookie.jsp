<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>클라이언트로부터 얻어온 Cookie</h3>
	<%	//유효기간을 설정하지 않은 쿠키는 브라우저를 내리면 사라짐
		Cookie[] cookies = request.getCookies();
		
		for(Cookie c : cookies){
			out.println(c.getName() + ": " + c.getValue() + "<br>");
		}
	%>
</body>
</html>