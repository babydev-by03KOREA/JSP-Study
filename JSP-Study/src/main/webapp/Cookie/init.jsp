<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie And Sessions</title>
</head>
<body>
	<%!
		String adminID;
		String adminPW;
		String imgDir;
		String server;
	%>
	<%
		adminID = config.getInitParameter("adminID");
		// config method: JSP페이지에 대한 설정정보를 저장합니다.
		adminPW = config.getInitParameter("adminPW");
		// getInitParameter(): web.xml의 초기화 매개변수를 가져옵니다.
		
		imgDir = application.getInitParameter("imgDir");
		server = application.getInitParameter("WindowOracleServer");
		
	%>
	<form>
		<table>
			<tr>
				<td>현재 서블릿 명시 adminID : </td>
				<td><%= adminID %></td>
			</tr>
			<tr>
				<td>현재 서블릿 명시 adminPW : </td>
				<td><%= adminPW %></td>
			</tr>
			<tr>
				<td>현재 서블릿 명시 imgDir : </td>
				<td><%= imgDir %></td>
			</tr>
			<tr>
				<td>현재 서블릿 명시 DB Server : </td>
				<td><%= server %></td>
			</tr>
		</table>
	</form>
</body>
</html>