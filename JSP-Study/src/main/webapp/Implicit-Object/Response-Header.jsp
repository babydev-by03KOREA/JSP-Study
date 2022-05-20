<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Collection" import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ResponseTest</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		SimpleDateFormat s = new SimpleDateFormat("yyyy-mm-dd");
		long add_date = s.parse(request.getParameter("add_date")).getTime();
		int add_int = Integer.parseInt(request.getParameter("add_int"));
		String add_str = request.getParameter("add_str");
		
		response.addDateHeader("MyBirthDay", add_date);
		response.addIntHeader("myNumber", add_int);
		/* ADD계열 메소드 - 새로운 헤더명으로 값을 추가합니다. 
			동일한 헤더명이 존재하지 않는다면 새로 추가합니다. 
			= 덮어쓰지 않음 계속 누적 */
		response.addIntHeader("myNumber", 1004);
		/* 브라우저 가장 마지막 OnlyMynumber에 해당됩니다. */
		response.addHeader("myName", add_str);
		/* SET계열 메소드 - 기존의 헤더 값을 추가합니다. 
			단, 동일한 헤더값이 없으면 새로 추가합니다. 
			= 덮어씀. 값이 바뀜 */
		response.setHeader("myName", "H.J.PARK");
	%>
	
	<h2><strong>Request Header Info.</strong></h2><br/>
	
	<%
		Collection<String> headerNames = response.getHeaderNames();
		for (String hName : headerNames) {
			String hValue = response.getHeader(hName);
	%>
		<%= hName %> : <%= hValue %><br/>
	<%
	}
	%>
	<h2><b>Only MyNumber</b></h2>
	<%
		Collection<String> myNumber = response.getHeaders("myNumber");
		for (String myNum : myNumber ) {
	%>
		myNumber: <%= myNum %><br/>
	<%
		}
	%>
</body>
</html>