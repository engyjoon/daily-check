package com.kt.ipmc.check.service;

import com.kt.ipmc.check.dao.ChkHistDAO;
import com.kt.ipmc.check.domain.ChkHistVO;

public class ChkHistService {

	private static ChkHistService service = new ChkHistService();
	private ChkHistService() {}
	public static ChkHistService getInstance() {
		return service;
	}
	
	public ChkHistDAO chkHistDao = ChkHistDAO.getInstance();
	
	public int insertChkHist(ChkHistVO chkHist) {
		int result = 0; 
		
		int curSeq = chkHistDao.insertChkHist(chkHist);
		System.out.print("ChkHistService.insertChkHist - curSeq : " + curSeq);
		
		
		
		return result;
	}
}
