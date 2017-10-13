package com.kt.ipmc.check.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kt.ipmc.check.service.MemberService;

public class LoginFilter implements Filter {

	@Override
	public void init(FilterConfig config) throws ServletException {
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;
		
		HttpSession session = req.getSession();
		
		String path = req.getServletPath();
		System.out.println("LoginFilter.doFilter - path : " + path);
		
		if (path.equals("/first.do") || path.equals("/member.do")) {
			chain.doFilter(request, response);
		} else if (session.isNew() || session.getAttribute("userid") == null) {
			System.out.println("LoginFilter.doFilter - redirect : /");
			res.sendRedirect(req.getContextPath()+"/");
		} else {
			chain.doFilter(request, response);
		}
	}
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}
}