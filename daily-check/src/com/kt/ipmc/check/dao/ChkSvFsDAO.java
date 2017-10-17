package com.kt.ipmc.check.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.kt.ipmc.check.common.DBConnManager;
import com.kt.ipmc.check.domain.ChkSvFsVO;

public class ChkSvFsDAO {

	private static ChkSvFsDAO chkSvFs = new ChkSvFsDAO();
	private ChkSvFsDAO() {}
	public static ChkSvFsDAO getInstance() {
		return chkSvFs;
	}
	
	public DBConnManager manager = DBConnManager.getInstance();
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public int insertChkSvFs(ChkSvFsVO chkSvFs) {
		int result = 0;
		
		try {
			conn = manager.getConnection();
			pstmt = conn.prepareStatement("insert into tb_chk_sv_fs(chk_hist_no, system_id, chk_result) values(?, ?, ?)");
			pstmt.setInt(1, chkSvFs.getChkHistNo());
			pstmt.setString(2, chkSvFs.getSystemId());
			pstmt.setString(3, chkSvFs.getChkResult());
			result = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			manager.close(conn, pstmt);
		}
		
		return result;
	}
	
	public ArrayList<ChkSvFsVO> selectChkSvFsList(int chkHistNo) {
		ChkSvFsVO chkSvFs = null;
		ArrayList<ChkSvFsVO> list = new ArrayList<ChkSvFsVO>();
		
		try {
			conn = manager.getConnection();
			pstmt = conn.prepareStatement("select chk_hist_no, system_id, chk_result from tb_chk_sv_fs where chk_hist_no = ?");
			pstmt.setInt(1, chkHistNo);
			
			rs = pstmt.executeQuery();
			while (rs.next()) {
				chkSvFs = new ChkSvFsVO();
				chkSvFs.setChkHistNo(rs.getInt("CHK_HIST_NO"));
				chkSvFs.setSystemId(rs.getString("SYSTEM_ID"));
				chkSvFs.setChkResult(rs.getString("CHK_RESULT"));
				
				list.add(chkSvFs);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			manager.close(conn, pstmt, rs);
		}
		
		return list;
	}
}
