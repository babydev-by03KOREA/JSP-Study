package com.map;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Mpg extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String adminID = getServletConfig().getInitParameter("adminID");
		String adminPW = getServletConfig().getInitParameter("adminPW");
		
		PrintWriter out = response.getWriter();
		out.print("<table>");
		out.print("<tr>");
		out.print("<td>");
		out.print("관리자 ID : ");
		out.print("</td>");
		out.print("<td>");
		out.print(adminID);
		out.print("</td>");
		out.print("<tr>");
		out.print("<td>");
		out.print("관리자 PW : ");
		out.print("</td>");
		out.print("<td>");
		out.print(adminPW);
		out.print("</td>");
		out.print("</tr>");
		out.print("</table>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
