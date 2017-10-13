package com.kt.ipmc.check.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kt.ipmc.check.common.HttpUtil;

public class HomeController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		if (action.equals("addAdmin")) {
			HttpUtil.forward(request, response, "/add_admin.jsp");
		} else {
			HttpUtil.forward(request, response, "/");
		}
	}
}
