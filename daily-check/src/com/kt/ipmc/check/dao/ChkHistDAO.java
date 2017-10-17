package com.kt.ipmc.check.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.kt.ipmc.check.common.DBConnManager;
import com.kt.ipmc.check.domain.ChkHistVO;

public class ChkHistDAO {

	private static ChkHistDAO dao = new ChkHistDAO();
	private ChkHistDAO() {}
	public static ChkHistDAO getInstance() {
		return dao;
	}
	
	public DBConnManager manager = DBConnManager.getInstance();
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public int insertChkHist(ChkHistVO chkHist) {
		int result = 0;
		
		try {
			conn = manager.getConnection();
			pstmt = conn.prepareStatement("insert into tb_chk_hist(chk_user_id, chk_service_id, chk_comment, chk_date) values(?, ?, ?, ?) returning chk_hist_no");
			pstmt.setString(1, chkHist.getChkUserId());
			pstmt.setString(2, chkHist.getChkServiceId());
			pstmt.setString(3, chkHist.getChkComment());
			pstmt.setTimestamp(4, chkHist.getChkDate());
			
			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = rs.getInt(1);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			manager.close(conn, pstmt, rs);
		}
		
		return result;
	}
	
	public int countTodayChkHist() {
		int result = 0;
		
		try {
			conn = manager.getConnection();
			pstmt = conn.prepareStatement("select count(*) cnt from tb_chk_hist where date_trunc('day', chk_date) = current_date");
			
			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = rs.getInt(1);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			manager.close(conn, pstmt, rs);
		}
		
		return result;
	}
	
	public ArrayList<ChkHistVO> selectChkHist() {
		System.out.println("ChkHistDAO.selectHist - Start");
		ArrayList<ChkHistVO> list = new ArrayList<ChkHistVO>();
		ChkHistVO chkHist = null;
		
		try {
			conn = manager.getConnection();
			pstmt = conn.prepareStatement("select chk_hist_no, chk_user_id, chk_service_id, chk_comment, chk_date from tb_chk_hist");
			
			rs = pstmt.executeQuery();
			while (rs.next()) {
				chkHist = new ChkHistVO();
				chkHist.setChkHistNo(rs.getInt("CHK_HIST_NO"));
				chkHist.setChkUserId(rs.getString("CHK_USER_ID"));
				chkHist.setChkServiceId(rs.getString("CHK_SERVICE_ID"));
				chkHist.setChkComment(rs.getString("CHK_COMMENT"));
				chkHist.setChkDate(rs.getTimestamp("CHK_DATE"));
				
				list.add(chkHist);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			manager.close(conn, pstmt, rs);
		}
		
		return list;
	}
}
