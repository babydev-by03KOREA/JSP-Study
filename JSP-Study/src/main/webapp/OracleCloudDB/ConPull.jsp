<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="dbms.OCConnect" import="dbms.ConPull"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터베이스 커넥션 풀</title>
</head>
<body>
	<h2><b>본 페이지는 SQL TEST를 위한 개발자 전용 페이지입니다.</b></h2><br/>
	<%
		ConPull cp = new ConPull();
		cp.closed();
	%>
</body>
</html>