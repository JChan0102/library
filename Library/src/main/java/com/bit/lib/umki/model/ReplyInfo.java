package com.bit.lib.umki.model;

public class ReplyInfo {
	private int r_idx;
	private	int idx;
	private String replyText;
	private String replyer;
	private String regdate;
	public int getR_idx() {
		return r_idx;
	}
	public void setR_idx(int r_idx) {
		this.r_idx = r_idx;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getReplyText() {
		return replyText;
	}
	public void setReplyText(String replyText) {
		this.replyText = replyText;
	}
	public String getReplyer() {
		return replyer;
	}
	public void setReplyer(String replyer) {
		this.replyer = replyer;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "ReplyInfo [r_idx=" + r_idx + ", idx=" + idx + ", replyText=" + replyText + ", replyer=" + replyer
				+ ", regdate=" + regdate + "]";
	}

}