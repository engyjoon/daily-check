package com.kt.ipmc.check.domain;

import java.sql.Timestamp;
import java.util.ArrayList;

public class ChkHistVO {

	private int chkHistNo;
	private String chkUserId;
	private String chkServiceId;
	private String chkComment;
	private Timestamp chkDate;
	private ArrayList<ChkSvFsVO> chkSvFsVOList;
	
	public int getChkHistNo() {
		return chkHistNo;
	}
	public void setChkHistNo(int chkHistNo) {
		this.chkHistNo = chkHistNo;
	}
	public String getChkUserId() {
		return chkUserId;
	}
	public void setChkUserId(String chkUserId) {
		this.chkUserId = chkUserId;
	}
	public String getChkServiceId() {
		return chkServiceId;
	}
	public void setChkServiceId(String chkServiceId) {
		this.chkServiceId = chkServiceId;
	}
	public String getChkComment() {
		return chkComment;
	}
	public void setChkComment(String chkComment) {
		this.chkComment = chkComment;
	}
	public Timestamp getChkDate() {
		return chkDate;
	}
	public void setChkDate(Timestamp chkDate) {
		this.chkDate = chkDate;
	}
	public ArrayList<ChkSvFsVO> getChkSvFsVOList() {
		return chkSvFsVOList;
	}
	public void setChkSvFsVOList(ArrayList<ChkSvFsVO> chkSvFsVOList) {
		this.chkSvFsVOList = chkSvFsVOList;
	}
	
}
