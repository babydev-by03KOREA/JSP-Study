<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>web.xml 값 불러오기 - application</title>
</head>
<body>
	<h2><b>web.xml에 설정한 내용 읽어오기</b></h2><br/>
	<table>
		<tr>
			<td>초기화 매개변수 : </td>
			<td><%= application.getInitParameter("INIT_PARAM") %></td>
			<%-- web.xml에서 설정한 초기화 매개변수 읽어오기 --%>
		</tr>
	</table>
	<h2><strong>서버의 물리적 경로 얻어오기</strong></h2><br/>
	<table>
		<tr>
			<td>application 내장 객체 : </td>
			<td><%= application.getRealPath("/Implicit-Object") %></td>
			<%-- 현재 작성중인 폴더의 물리적 경로를 찾아서 출력 --%>
		</tr>
	</table>
	<h2><strong>선언부에서 application 내장 객체 사용하기!</strong></h2><br/>
	<%!
		public String useImplicitObject() {
			return this.getServletContext().getRealPath("/Inplicit-Object");
		}
	// 매개변수로 값 받아오기
		public String useImplicitObject(ServletContext app) {
			return getServletContext().getRealPath("/Inplicit-Object");
		}
	%>
	<table>
		<tr>
			<td>this 객체 사용 : </td>
			<td><%=useImplicitObject() %></td>
		</tr>
		<tr>
			<td>내장 객체를 인수로 전달 : </td>
			<%-- 괄호안에 리턴값이 들어가야만해요!
				매개변수 작성 필요 --%>
			<td><%=useImplicitObject(application) %></td>
		</tr>
	</table>
</body>
</html>