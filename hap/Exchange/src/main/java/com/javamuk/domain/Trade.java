package com.javamuk.domain;

import java.util.Date;

public class Trade {

	private int tra_idx;
	private String tra_mystatus;
	private String tra_opstatus;
	private Date tra_regdate;
	private int mypro_idx;
	private int oppro_idx;
	private String mypro_name;
	private String oppro_name;
	private String mypro_photo_01;
	private String oppro_photo_01;

	public Trade() {
		super();
	}

	
	
	public Trade(int tra_idx, String tra_mystatus, String tra_opstatus, Date tra_regdate, int mypro_idx, int oppro_idx,
			String mypro_name, String oppro_name, String mypro_photo_01, String oppro_photo_01) {
		super();
		this.tra_idx = tra_idx;
		this.tra_mystatus = tra_mystatus;
		this.tra_opstatus = tra_opstatus;
		this.tra_regdate = tra_regdate;
		this.mypro_idx = mypro_idx;
		this.oppro_idx = oppro_idx;
		this.mypro_name = mypro_name;
		this.oppro_name = oppro_name;
		this.mypro_photo_01 = mypro_photo_01;
		this.oppro_photo_01 = oppro_photo_01;
	}



	@Override
	public String toString() {
		return "Trade [tra_idx=" + tra_idx + ", tra_mystatus=" + tra_mystatus + ", tra_opstatus=" + tra_opstatus
				+ ", tra_regdate=" + tra_regdate + ", mypro_idx=" + mypro_idx + ", oppro_idx=" + oppro_idx
				+ ", mypro_name=" + mypro_name + ", oppro_name=" + oppro_name + ", mypro_photo_01=" + mypro_photo_01
				+ ", oppro_photo_01=" + oppro_photo_01 + "]";
	}



	public String getTra_mystatus() {
		return tra_mystatus;
	}



	public void setTra_mystatus(String tra_mystatus) {
		this.tra_mystatus = tra_mystatus;
	}



	public String getTra_opstatus() {
		return tra_opstatus;
	}



	public void setTra_opstatus(String tra_opstatus) {
		this.tra_opstatus = tra_opstatus;
	}



	public String getMypro_name() {
		return mypro_name;
	}

	public void setMypro_name(String mypro_name) {
		this.mypro_name = mypro_name;
	}

	public String getOppro_name() {
		return oppro_name;
	}

	public void setOppro_name(String oppro_name) {
		this.oppro_name = oppro_name;
	}

	public String getMypro_photo_01() {
		return mypro_photo_01;
	}

	public void setMypro_photo_01(String mypro_photo_01) {
		this.mypro_photo_01 = mypro_photo_01;
	}

	public String getOppro_photo_01() {
		return oppro_photo_01;
	}

	public void setOppro_photo_01(String oppro_photo_01) {
		this.oppro_photo_01 = oppro_photo_01;
	}

	public int getTra_idx() {
		return tra_idx;
	}

	public void setTra_idx(int tra_idx) {
		this.tra_idx = tra_idx;
	}



	public Date getTra_regdate() {
		return tra_regdate;
	}

	public void setTra_regdate(Date tra_regdate) {
		this.tra_regdate = tra_regdate;
	}

	public int getMypro_idx() {
		return mypro_idx;
	}

	public void setMypro_idx(int mypro_idx) {
		this.mypro_idx = mypro_idx;
	}

	public int getOppro_idx() {
		return oppro_idx;
	}

	public void setOppro_idx(int oppro_idx) {
		this.oppro_idx = oppro_idx;
	}

}
