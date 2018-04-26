package com.javamuk.domain;

public class Second_Category {
	
	private int sec_idx;
	private String sec_name;
	private int fir_idx;
	
	public Second_Category() {
		super();
	}
	public Second_Category(int sec_idx, String sec_name, int fir_idx) {
		super();
		this.sec_idx = sec_idx;
		this.sec_name = sec_name;
		this.fir_idx = fir_idx;
	}
	@Override
	public String toString() {
		return "Second_category [sec_idx=" + sec_idx + ", sec_name=" + sec_name + ", fir_idx=" + fir_idx + "]";
	}
	public int getSec_idx() {
		return sec_idx;
	}
	public void setSec_idx(int sec_idx) {
		this.sec_idx = sec_idx;
	}
	public String getSec_name() {
		return sec_name;
	}
	public void setSec_name(String sec_name) {
		this.sec_name = sec_name;
	}
	public int getFir_idx() {
		return fir_idx;
	}
	public void setFir_idx(int fir_idx) {
		this.fir_idx = fir_idx;
	}
	
	
}
