package com.kt.ipmc.check.service;

import java.util.ArrayList;

import com.kt.ipmc.check.dao.ChkHistDAO;
import com.kt.ipmc.check.dao.ChkSvFsDAO;
import com.kt.ipmc.check.domain.ChkHistVO;
import com.kt.ipmc.check.domain.ChkSvFsVO;

public class ChkHistService {

	private static ChkHistService service = new ChkHistService();
	private ChkHistService() {}
	public static ChkHistService getInstance() {
		return service;
	}
	
	public ChkHistDAO chkHistDao = ChkHistDAO.getInstance();
	public ChkSvFsDAO chkSvFsDao = ChkSvFsDAO.getInstance();
	
	public int insertChkHist(ChkHistVO chkHist) {
		int result = 0; 
		
		int curSeq = chkHistDao.insertChkHist(chkHist);
		
		for ( ChkSvFsVO chkSvFs : chkHist.getChkSvFsList()) {
			chkSvFs.setChkHistNo(curSeq);
			chkSvFsDao.insertChkSvFs(chkSvFs);
		}
		
		return result;
	}
	
	public int countTodayChkHist() {
		return chkHistDao.countTodayChkHist();
	}
	
	public ArrayList<ChkHistVO> selectChkHist() {
		return chkHistDao.selectChkHist();
	}
}
