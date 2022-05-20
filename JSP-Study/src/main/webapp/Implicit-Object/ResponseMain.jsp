<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장객체 연습</title>
</head>
<body>
	<h2><strong>로그인 실패</strong></h2>
	<%
		String loginErr = request.getParameter("loginErr");
		if (loginErr != null) out.println("You're Login Request was Denied");
	%>
</body>
</html>