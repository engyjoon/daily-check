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
		
		if (action.equals("checkUser")) {
			//System.out.println("MemberController.execute - result : "+service.checkUser(member));
			if (service.checkLogin(member).equals("EXIST_NOK") || service.checkLogin(member).equals("MATCH_NOK")) {
				request.setAttribute("result", "LOGIN_NOK");
				HttpUtil.forward(request, response, "/index.jsp");
			} else if (service.checkLogin(member).equals("MATCH_OK")) {
				HttpSession session = request.getSession();
				session.setAttribute("userid", member.getUserId());
				request.setAttribute("result", "LOGIN_OK");
				response.sendRedirect("check.do");
			}
		} else if (action.equals("addAdmin")) {
			if (request.getMethod().equals("GET")) {
				HttpUtil.forward(request, response, "/add_admin.jsp");
			} else if (request.getMethod().equals("POST")) {
				member.setGroupId(service.getUserId("ADMIN"));
				//System.out.println("MemberController.excute : "+member.getGroupId());
				service.insertMember(member);
				request.setAttribute("result", "ADD_ADMIN_OK");
				HttpUtil.forward(request, response, "/index.jsp");
			}
		}
		
	}
}
