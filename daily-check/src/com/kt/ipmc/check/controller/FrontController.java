package com.kt.ipmc.check.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FrontController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	String charset = null;
	HashMap<String, Controller> list = null;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		charset = config.getInitParameter("charset");
		list = new HashMap<String, Controller>();
		list.put("/home.do", new HomeController());
		list.put("/first.do", new FirstController());
		list.put("/member.do", new MemberController());
		list.put("/check.do", new CheckController());
	}
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding(charset);
		String url = request.getRequestURI();
		String contextPath = request.getContextPath();
		String path = url.substring(contextPath.length());
		Controller subController = list.get(path);
		
		if (subController != null) {
			subController.execute(request, response);
		} else {
			response.sendRedirect(request.getContextPath());
		}
	}
}