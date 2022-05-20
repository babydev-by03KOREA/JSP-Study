package com.map;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoginPro")
public class LoginPro extends HttpServlet {
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String UID = request.getParameter("UID");
		String PWD = request.getParameter("PWD");
		
		out.print("UserID " + UID);
		out.print("UserPW " + PWD);
		
		Cookie[] cookies = request.getCookies();
		// 사용자로부터 쿠키를 가져옴
		Cookie cookie = null;
		
		/* 
	 		for(a : b)
	 		b에서 차례대로 꺼내서 꺼낼값이 더이상 없을때까지 a에다가 집어넣음
		 */
		for(Cookie c : cookies) {
			System.out.println("Cookie정보 : " + c.getName() + c.getValue());
			
			if(c.getName().equals("UserID")) {
				cookie = c;
			}
		}
		
		if(cookie == null) {
			System.out.println("쿠키값이 없어요ㅠ");
			cookie = new Cookie("UserID", UID);
		}
		
		response.addCookie(cookie);
		cookie.setMaxAge(60*60);
		
		response.sendRedirect("Cookie/LoginPro.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
