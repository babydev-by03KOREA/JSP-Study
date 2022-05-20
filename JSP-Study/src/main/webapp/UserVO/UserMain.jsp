<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="client.UserVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Context</title>
</head>
<body>
	<%
		pageContext.setAttribute("pageInteger",1000);
		pageContext.setAttribute("pageString", "페이지 영역의 문자열");
		pageContext.setAttribute("pageUserVO",new UserVO("박형주", 22017048));
	%>
	<h2><b>페이지의 속성값을 읽어드립니다.</b></h2><br/>
	<%
		int pInteger = (Integer)(pageContext.getAttribute("pageInteger"));
		String pString = pageContext.getAttribute("pageString").toString();
		UserVO pUserVO = (UserVO)(pageContext.getAttribute("pageUserVO"));
	%>
	<form>
		<table>
			<tr>
				<td><%= pInteger %></td>
			</tr>
			<tr>
				<td><%= pString %></td>
			</tr>
			<tr>
				<td><%= pUserVO %></td>
				<td><%= pUserVO.getName() %></td>
				<td><%= pUserVO.getCode() %></td>
			</tr>
		</table>
	</form>
</body>
</html>