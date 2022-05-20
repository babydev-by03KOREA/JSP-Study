<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키값 배열로 가져오기</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		if(cookies != null){
			for(int i = 0; i < cookies.length; i++){
				// 정수형 i 에 초기값 0을 주고, 배열의 index값을 가져옵니다.
				String CookieName = cookies[i].getName();
				String CookieValue = cookies[i].getValue();
				out.print("쿠키명 : " + CookieName + "<br/>" + "쿠키값 : " + CookieValue + "<br/>");
			}
		}
	%>
</body>
</html>