package com.kt.ipmc.check.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kt.ipmc.check.common.HttpUtil;
import com.kt.ipmc.check.domain.MemberVO;
import com.kt.ipmc.check.service.MemberService;

public class MemberController implements Controller {
	
	MemberService service = MemberService.getInstance();

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		String id = request.getParameter("id");
		String passwd = request.getParameter("pw");
		String name = request.getParameter("name");
		
		MemberVO member = new MemberVO();
		member.setUserId(id);
		member.setUserPassword(passwd);
		member.setUserName(name);
		
		HttpSession session = null;
		
		if (action.equals("addAdmin")) {
			if (service.existAdminUser().equals("N")) {
				member.setGroupId(service.getUserId("ADMIN"));
				service.insertMember(member);
			} 
			response.sendRedirect(request.getContextPath());
		} else if (action.equals("login")) {
			//System.out.println("MemberController.execute - result : "+service.checkUser(member));
			if (service.checkLogin(member).equals("EXIST_NOK") || service.checkLogin(member).equals("MATCH_NOK")) {
				response.sendRedirect(request.getContextPath());
			} else if (service.checkLogin(member).equals("MATCH_OK")) {
				session = request.getSession();
				session.setAttribute("userid", member.getUserId());
				session.setAttribute("serviceid", "1");
				response.sendRedirect("check.do");
			}
		} else if (action.equals("logout")) {
			session = request.getSession();
			if (session != null) {
				session.invalidate();
				response.sendRedirect(request.getContextPath());
			}
		}
		
	}
}
