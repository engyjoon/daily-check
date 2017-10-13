package com.kt.ipmc.check.service;

import com.kt.ipmc.check.dao.MemberDAO;
import com.kt.ipmc.check.domain.MemberVO;

public class MemberService {

	private static MemberService service = new MemberService();
	private MemberService() {}
	public static MemberService getInstance() {
		return service;
	}
	
	public MemberDAO dao = MemberDAO.getInstance();
	
	MemberVO member = null;
	
	public String checkLogin(MemberVO loginMember) {
		String result = null;
		
		member = dao.selectMember(loginMember.getUserId());
		
		if (member == null) {
			result = "EXIST_NOK";
		} else if (loginMember.getUserPassword().equals(member.getUserPassword())) {
			result = "MATCH_OK";
		} else {
			result = "MATCH_NOK";
		}
		
		System.out.println("MemberService.checkLogin : " + result);
			
		return result;
	}
	
	public String existAdminUser() {
		String result = null;

		if (dao.countAdminUser() == 0) {
			result = "N";
		} else {
			result = "Y";
		}
		
		System.out.println("MemberService.existAdminUser : " + result);
		
		return result;
	}
	
	public int insertMember(MemberVO member) {
		return dao.insertMember(member);
	}
	
	public String getUserId(String userName) {
		return dao.getGroupId(userName);
	}
}
