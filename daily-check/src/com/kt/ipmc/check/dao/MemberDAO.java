package com.kt.ipmc.check.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.kt.ipmc.check.common.DBConnManager;
import com.kt.ipmc.check.domain.MemberVO;

public class MemberDAO {

	private static MemberDAO dao = new MemberDAO();
	private MemberDAO() {}
	public static MemberDAO getInstance() {
		return dao;
	}
	
	public DBConnManager manager = DBConnManager.getInstance();
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	MemberVO member = null;
	
	public MemberVO selectMember(String id) {
		try {
			conn = manager.getConnection();
			pstmt = conn.prepareStatement("select user_id, user_name, user_passwd, group_id from tb_member where user_id = ?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				member = new MemberVO();
				member.setUserId(rs.getString("USER_ID"));
				member.setUserName(rs.getString("USER_NAME"));
				member.setUserPassword(rs.getString("USER_PASSWD"));
				member.setGroupId(rs.getString("GROUP_ID"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			manager.close(conn, pstmt, rs);
		}
		
		return member;
	}
	
	public int countAdminUser() {
		int result = 0;
		
		try {
			conn = manager.getConnection();			               
			pstmt = conn.prepareStatement("select count(*) cnt " + 
					                      "from tb_member t1 inner join tb_member_group t2 on t1.group_id = t2.group_id " + 
					                      "where t2.group_name = 'ADMIN'");
			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			manager.close(conn, pstmt, rs);
		}
		
		return result;
	}
	
	public int insertMember(MemberVO member) {
		int result = 0;
		
		try {
			conn = manager.getConnection();
			pstmt = conn.prepareStatement("insert into tb_member(user_id, user_name, user_passwd, group_id) values(?,?,?,?)");
			pstmt.setString(1, member.getUserId());
			pstmt.setString(2, member.getUserName());
			pstmt.setString(3, member.getUserPassword());
			pstmt.setString(4, member.getGroupId());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			manager.close(conn, pstmt);
		}
		
		return result;
	}
	
	public String getGroupId(String userName) {
		String result = null;
		
		try {
			conn = manager.getConnection();			               
			pstmt = conn.prepareStatement("select group_id from tb_member_group where group_name = ?");
			pstmt.setString(1, userName);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			manager.close(conn, pstmt, rs);
		}
		
		return result;
	}
}
