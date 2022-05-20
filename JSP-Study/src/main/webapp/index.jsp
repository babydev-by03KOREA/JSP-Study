<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장객체</title>
</head>
<body>
	<%!
		String adminIDbyConf;
		String adminPWbyConf;
		String adminIDbyApp;
		String adminPWbyApp;
		String imgDir;
		String server;
	%>
	<%
		/* adminIDbyConf = config.getInitParameter("rootID"); 
		// config method: JSP페이지에 대한 설정정보를 저장합니다.
		adminPWbyConf = config.getInitParameter("rootPW");
		// getInitParameter(): web.xml의 초기화 매개변수를 가져옵니다. */
		
		adminIDbyApp = application.getInitParameter("adminID");
		adminPWbyApp = application.getInitParameter("adminPW");
		imgDir = application.getInitParameter("imgDir");
		server = application.getInitParameter("WindowOracleServer");
		
	%>
	<form>
		<table>
<%-- 			<tr>
				<td>현재 서블릿 명시 adminID by Config : </td>
				<td><%= adminIDbyConf %></td>
			</tr>
			<tr>
				<td>현재 서블릿 명시 adminPW by Config : </td>
				<td><%= adminPWbyConf %></td>
			</tr> --%>
			<tr>
				<td>현재 서블릿 명시 adminID : </td>
				<td><%= adminIDbyApp %></td>
			</tr>
			<tr>
				<td>현재 서블릿 명시 adminPW : </td>
				<td><%= adminPWbyApp %></td>
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