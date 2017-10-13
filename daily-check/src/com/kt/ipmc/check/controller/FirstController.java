package com.kt.ipmc.check.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kt.ipmc.check.common.HttpUtil;
import com.kt.ipmc.check.service.MemberService;

public class FirstController implements Controller {

	MemberService service = MemberService.getInstance();
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		if (service.existAdminUser().equals("Y")) {
			System.out.println("FirstController.execute - redirect : /");
			response.sendRedirect(request.getContextPath());
		} else {
			System.out.println("FirstController.execute - redirect : /first/add_amdin.jsp");
			HttpUtil.forward(request, response, "/first/add_admin.jsp");
		}
	}
}
