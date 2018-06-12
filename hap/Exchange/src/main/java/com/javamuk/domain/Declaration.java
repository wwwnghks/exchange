package com.javamuk.domain;

import java.util.Date;

public class Declaration {

	private int dec_msg_idx;
	private String mem_name;
	private String dec_msg_title;
	private String dec_msg_contents;
	private Date dec_msg_regdate;
	private int mem_idx;
	private int man_idx;
	private int pro_idx;
	private int dec_viewCnt;



	public Declaration() {
	}

	public Declaration(int dec_msg_idx, String mem_name, String dec_msg_title, String dec_msg_contents,
			Date dec_msg_regdate, int mem_idx, int man_idx, int pro_idx, int dec_viewCnt) {
		super();
		this.dec_msg_idx = dec_msg_idx;
		this.dec_msg_title = dec_msg_title;
		this.dec_msg_contents = dec_msg_contents;
		this.dec_msg_regdate = dec_msg_regdate;
		this.mem_idx = mem_idx;
		this.man_idx = man_idx;
		this.pro_idx = pro_idx;
		this.dec_viewCnt = dec_viewCnt;
	}

	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public int getDec_msg_idx() {
		return dec_msg_idx;
	}

	public void setDec_msg_idx(int dec_msg_idx) {
		this.dec_msg_idx = dec_msg_idx;
	}

	public String getDec_msg_title() {
		return dec_msg_title;
	}

	public void setDec_msg_title(String dec_msg_title) {
		this.dec_msg_title = dec_msg_title;
	}

	public String getDec_msg_contents() {
		return dec_msg_contents;
	}

	public void setDec_msg_contents(String dec_msg_contents) {
		this.dec_msg_contents = dec_msg_contents;
	}

	public Date getDec_msg_regdate() {
		return dec_msg_regdate;
	}

	public void setDec_msg_regdate(Date dec_msg_regdate) {
		this.dec_msg_regdate = dec_msg_regdate;
	}

	public int getMem_idx() {
		return mem_idx;
	}

	public void setMem_idx(int mem_idx) {
		this.mem_idx = mem_idx;
	}

	public int getMan_idx() {
		return man_idx;
	}

	public void setMan_idx(int man_idx) {
		this.man_idx = man_idx;
	}

	public int getPro_idx() {
		return pro_idx;
	}

	public void setPro_idx(int pro_idx) {
		this.pro_idx = pro_idx;
	}
	
	public int getDec_viewCnt() {
		return dec_viewCnt;
	}

	public void setDec_viewCnt(int dec_viewCnt) {
		this.dec_viewCnt = dec_viewCnt;
	}

	@Override
	public String toString() {
		return "Declaration [dec_msg_idx=" + dec_msg_idx + ", mem_name=" + mem_name + ", dec_msg_title=" + dec_msg_title
				+ ", dec_msg_contents=" + dec_msg_contents + ", dec_msg_regdate=" + dec_msg_regdate + ", mem_idx="
				+ mem_idx + ", man_idx=" + man_idx + ", pro_idx=" + pro_idx + ", dec_viewCnt=" + dec_viewCnt + "]";
	}

}