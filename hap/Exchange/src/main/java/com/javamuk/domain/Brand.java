package com.javamuk.domain;

public class Brand {
	
	private int bra_idx;
	private String bra_name;
	private int sec_idx;
	
	public Brand() {
		super();
	}
	public Brand(int bra_idx, String bra_name, int sec_idx) {
		super();
		this.bra_idx = bra_idx;
		this.bra_name = bra_name;
		this.sec_idx = sec_idx;
	}
	@Override
	public String toString() {
		return "Brand [bra_idx=" + bra_idx + ", bra_name=" + bra_name + ", sec_idx=" + sec_idx + "]";
	}
	public int getBra_idx() {
		return bra_idx;
	}
	public void setBra_idx(int bra_idx) {
		this.bra_idx = bra_idx;
	}
	public String getBra_name() {
		return bra_name;
	}
	public void setBra_name(String bra_name) {
		this.bra_name = bra_name;
	}
	public int getSec_idx() {
		return sec_idx;
	}
	public void setSec_idx(int sec_idx) {
		this.sec_idx = sec_idx;
	}
	
	
	
}
