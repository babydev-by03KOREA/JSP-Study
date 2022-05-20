<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error</title>
</head>
<body>
	<%
	// 개발 연습시에는 에러코드를 자주 확인해줘야하므로 xml에서 Error을 지워주세요
	// 저는 500 에러만 지울예정입니다.
		int status = response.getStatus();
		if (status == 404) {
			out.println("<h2>404 Not Found</h2>");
			out.println("<br/><h4>Check Your URL Path</h4>");
		} else if (status == 405) {
			out.println("<h2>405 Method Not Allowed</h2>");
			out.println("<br/><h4>Check You're Method</h4>");
		} /* else if (status == 500) {
			out.println("500 Internal Server Error");
			out.println("<br/> Server Error");
		} */
	%>
</body>
</html>