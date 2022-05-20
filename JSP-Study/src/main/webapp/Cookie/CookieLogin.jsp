<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 해주세요!</title>
<style>
	form {
		display: flex;
		justify-content: center;
		align-items: center;
		text-align: center;
	}
	h2 {
		text-align: center;
	}
</style>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		System.out.println("Cookies : " + cookies);
		
		if(cookies != null){
			for(Cookie c : cookies){
				if(c.getName().equals("UserID")){
					response.sendRedirect("LoginPro.jsp");
				}
			}
		}
	%>
	<h2><b>로그인하고 할인받으세요!</b></h2><br/>
	<form action="LoginPro" method="post">
		<table>
			<tr>
				<td>ID </td>
				<td><input type="text" name="UID" /></td>
			</tr>
			<tr>
				<td>PW </td>
				<td><input type="password" name="PWD" /></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="로그인"/>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>