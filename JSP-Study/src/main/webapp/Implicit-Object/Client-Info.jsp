<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Client-info(내장객체)</title>
</head>
<body>
	<%-- Client-Info.jsp & Client-login.jsp --%>
	<%
		request.setCharacterEncoding("UTF-8");
		String UID = request.getParameter("UID");
		String PWD = request.getParameter("PWD");
	%>
	<%
		if (UID.equalsIgnoreCase("hyeongju1122") && PWD.equalsIgnoreCase("22017048")){
			response.sendRedirect("LoginComplete.jsp");
		}else{
			request.getRequestDispatcher("Client-login.jsp?loginErr=1").forward(request, response);
		}
	%>
</body>
</html>