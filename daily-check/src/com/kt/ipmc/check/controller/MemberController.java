package com.kt.ipmc.check.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		
		MemberVO member = new MemberVO();
		member.setUserId(id);
		member.setUserPassword(passwd);
		
		if (action.equals("checkUser")) {
			//System.out.println("MemberController.execute - result : "+service.checkUser(member));
			if (service.checkLogin(member).equals("EXIST_NOK") || service.checkLogin(member).equals("MATCH_NOK")) {
				request.setAttribute("result", "NOK");
				HttpUtil.forward(request, response, "/index.jsp");
			} else if (service.checkLogin(member).equals("MATCH_OK")) {
				request.setAttribute("result", "OK");
				HttpUtil.forward(request, response, "/check/status.jsp");
			}
		}
		
	}
}
