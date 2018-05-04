package com.javamuk.domain;

import java.util.Date;

public class Favorite_Product {

	private int fav_pro_idx;
	private int pro_idx;
	private int mem_idx;
	private String mem_nickname;
	private String pro_photo_01;
	private String pro_name;
	private Date pro_regdate;

	public Favorite_Product() {
		super();
	}

	public Favorite_Product(int fav_pro_idx, int pro_idx, int mem_idx, String mem_nickname, String pro_photo_01,
			String pro_name, Date pro_regdate) {
		super();
		this.fav_pro_idx = fav_pro_idx;
		this.pro_idx = pro_idx;
		this.mem_idx = mem_idx;
		this.mem_nickname = mem_nickname;
		this.pro_photo_01 = pro_photo_01;
		this.pro_name = pro_name;
		this.pro_regdate = pro_regdate;
	}

	@Override
	public String toString() {
		return "Favorite_Product [fav_pro_idx=" + fav_pro_idx + ", pro_idx=" + pro_idx + ", mem_idx=" + mem_idx
				+ ", mem_nickname=" + mem_nickname + ", pro_photo_01=" + pro_photo_01 + ", pro_name=" + pro_name
				+ ", pro_regdate=" + pro_regdate + "]";
	}

	public String getPro_name() {
		return pro_name;
	}

	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}

	public String getMem_nickname() {
		return mem_nickname;
	}

	public void setMem_nickname(String mem_nickname) {
		this.mem_nickname = mem_nickname;
	}

	public String getPro_photo_01() {
		return pro_photo_01;
	}

	public void setPro_photo_01(String pro_photo_01) {
		this.pro_photo_01 = pro_photo_01;
	}

	public Date getPro_regdate() {
		return pro_regdate;
	}

	public void setPro_regdate(Date pro_regdate) {
		this.pro_regdate = pro_regdate;
	}

	public int getFav_pro_idx() {
		return fav_pro_idx;
	}

	public void setFav_pro_idx(int fav_pro_idx) {
		this.fav_pro_idx = fav_pro_idx;
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