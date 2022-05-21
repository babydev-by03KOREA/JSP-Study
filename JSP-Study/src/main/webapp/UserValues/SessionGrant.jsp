<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Grant</title>
</head>
<body>
	<%
		// 초 단위로 설정가능
		session.setMaxInactiveInterval(1000);
	%>
</body>
</html>