package com.javamuk.domain;

public class First_Category {
	
	private int fir_idx;
	private String fir_name;
	
	public First_Category() {
		super();
	}
	
	public First_Category(int fir_idx, String fir_name) {
		super();
		this.fir_idx = fir_idx;
		this.fir_name = fir_name;
	}
	
	
	@Override
	public String toString() {
		return "First_category [fir_idx=" + fir_idx + ", fir_name=" + fir_name + "]";
	}
	public int getFir_idx() {
		return fir_idx;
	}
	public void setFir_idx(int fir_idx) {
		this.fir_idx = fir_idx;
	}
	public String getFir_name() {
		return fir_name;
	}
	public void setFir_name(String fir_name) {
		this.fir_name = fir_name;
	}
	
	
}
