<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" import="dbms.OCConnect"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오라클 클라우드 DB 연동Test</title>
</head>
<body>
	<h2><b>본 페이지는 SQL TEST를 위한 개발자 전용 페이지입니다.</b></h2><br/>
	<%
		OCConnect oc = new OCConnect(application);
	%>
	<%
		oc.closed();
	%>
</body>
</html>