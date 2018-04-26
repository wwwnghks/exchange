package com.javamuk.domain;

import java.util.Date;

public class Product_Reply {
	private int pro_re_idx;
	private int pro_re_p_num;
	private int pro_re_s_num;
	private int pro_re_level;
	private String pro_re_contents;
	private Date pro_re_regdate;
	private int pro_idx;
	private int mem_idx;
	private int cnt;
	
	
	
	public Product_Reply() {
		super();
	}


	










	@Override
	public String toString() {
		return "Product_Reply [pro_re_idx=" + pro_re_idx + ", pro_re_p_num=" + pro_re_p_num + ", pro_re_s_num="
				+ pro_re_s_num + ", pro_re_level=" + pro_re_level + ", pro_re_contents=" + pro_re_contents
				+ ", pro_re_regdate=" + pro_re_regdate + ", pro_idx=" + pro_idx + ", mem_idx=" + mem_idx + ", cnt="
				+ cnt + "]";
	}













	public Product_Reply(int pro_re_idx, int pro_re_p_num, int pro_re_s_num, int pro_re_level, String pro_re_contents,
			Date pro_re_regdate, int pro_idx, int mem_idx, int cnt) {
		super();
		this.pro_re_idx = pro_re_idx;
		this.pro_re_p_num = pro_re_p_num;
		this.pro_re_s_num = pro_re_s_num;
		this.pro_re_level = pro_re_level;
		this.pro_re_contents = pro_re_contents;
		this.pro_re_regdate = pro_re_regdate;
		this.pro_idx = pro_idx;
		this.mem_idx = mem_idx;
		this.cnt = cnt;
	}













	public int getCnt() {
		return cnt;
	}













	public void setCnt(int cnt) {
		this.cnt = cnt;
	}













	public int getPro_re_idx() {
		return pro_re_idx;
	}


	public void setPro_re_idx(int pro_re_idx) {
		this.pro_re_idx = pro_re_idx;
	}


	public int getPro_re_p_num() {
		return pro_re_p_num;
	}


	public void setPro_re_p_num(int pro_re_p_num) {
		this.pro_re_p_num = pro_re_p_num;
	}


	public int getPro_re_s_num() {
		return pro_re_s_num;
	}


	public void setPro_re_s_num(int pro_re_s_num) {
		this.pro_re_s_num = pro_re_s_num;
	}


	public int getPro_re_level() {
		return pro_re_level;
	}


	public void setPro_re_level(int pro_re_level) {
		this.pro_re_level = pro_re_level;
	}


	public String getPro_re_contents() {
		return pro_re_contents;
	}


	public void setPro_re_contents(String pro_re_contents) {
		this.pro_re_contents = pro_re_contents;
	}


	public Date getPro_re_regdate() {
		return pro_re_regdate;
	}


	public void setPro_re_regdate(Date pro_re_regdate) {
		this.pro_re_regdate = pro_re_regdate;
	}


	public int getPro_idx() {
		return pro_idx;
	}


	public void setPro_idx(int pro_idx) {
		this.pro_idx = pro_idx;
	}


	public int getMem_idx() {
		return mem_idx;
	}


	public void setMem_idx(int mem_idx) {
		this.mem_idx = mem_idx;
	}
	
	
	
	
}
