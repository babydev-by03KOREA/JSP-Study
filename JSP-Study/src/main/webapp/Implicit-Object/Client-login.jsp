<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>간단한 세션 로그인처리</title>
</head>
<body>
	<h2><b>1. 로그인 구현</b></h2><br/>
	<%
		String loginErr = request.getParameter("loginErr");
		if (loginErr != null) out.println("You're Login Request was Denied");
	%>
	<form action="Client-Info.jsp" method="post">
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="UID"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="PWD"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="로그인"/>
				</td>
			</tr>
		</table>
	</form>
	<br/>
	<h2><strong>2. 응답 헤더 설정(HTTP)</strong></h2>
	<form action="Response-Header.jsp" method="post">
		<table>
			<tr>
				<td>날짜 입력</td>
				<td><input type="date" name="add_date"></td>
			</tr>
			<tr>
				<td>개인식별번호</td>
				<td><input type="text" name="add_int"></td>
			</tr>
			<tr>
				<td>성함</td>
				<td><input type="text" name="add_str"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="응답 헤더 설정 및 출력">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>