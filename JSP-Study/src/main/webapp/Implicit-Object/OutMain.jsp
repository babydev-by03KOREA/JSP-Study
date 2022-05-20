<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Option - out</title>
</head>
<body>
	<%
		out.println("버퍼가 잡아먹었어요!"); // 버퍼에 저장
		out.clearBuffer(); // 버퍼를 비움 (위에 내용 사라짐)
		out.println("<h2><b>out 내장객체<b></h2>");
		
		// 버퍼 크기확인
		out.println("출력 버퍼의 크기 : " + out.getBufferSize() + "<br/>");
		/* 현재 페이지에 할당된 버퍼의 크기를 가져옴 -> 크기를 따로 지정하지 않으면
			8KB가 할당됨. */
		out.println("남은 버퍼의 크기 : " + out.getRemaining() + "<br/>");
		
		out.flush(); // 즉시출력(강제로 플러시)
		out.println("flush 후 버퍼의 크기 : " + out.getRemaining() + "<br/>");
		
		out.println(1);
		out.println(false);
		out.println('가');
		out.print("<br/>br을 써주지 않으면 위와같이 출력돼요!");
	%>
</body>
</html>