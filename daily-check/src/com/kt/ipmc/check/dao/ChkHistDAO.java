package com.kt.ipmc.check.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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
}
