package com.javamuk.domain;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Product {
	private int pro_idx;
	private String pro_name;
	private String pro_contents;
	private MultipartFile photofile01;
	private MultipartFile photofile02;
	private MultipartFile photofile03;
	private String pro_photo_01;
	private String pro_photo_02;
	private String pro_photo_03;
	private Date pro_regdate;
	private String pro_location;
	private String pro_hash;
	private int pro_cnt;
	private int mem_idx;
	private int bra_idx;
	
	

	public Product() {
		super();
	}

	public Product(int pro_idx, String pro_name, String pro_contents, MultipartFile photofile01,
			MultipartFile photofile02, MultipartFile photofile03, String pro_photo_01, String pro_photo_02,
			String pro_photo_03, Date pro_regdate, String pro_location, String pro_hash, int pro_cnt, int mem_idx,
			int bra_idx) {
		super();
		this.pro_idx = pro_idx;
		this.pro_name = pro_name;
		this.pro_contents = pro_contents;
		this.photofile01 = photofile01;
		this.photofile02 = photofile02;
		this.photofile03 = photofile03;
		this.pro_photo_01 = pro_photo_01;
		this.pro_photo_02 = pro_photo_02;
		this.pro_photo_03 = pro_photo_03;
		this.pro_regdate = pro_regdate;
		this.pro_location = pro_location;
		this.pro_hash = pro_hash;
		this.pro_cnt = pro_cnt;
		this.mem_idx = mem_idx;
		this.bra_idx = bra_idx;
	}

	@Override
	public String toString() {
		return "Product [pro_idx=" + pro_idx + ", pro_name=" + pro_name + ", pro_contents=" + pro_contents
				+ ", photofile01=" + photofile01 + ", photofile02=" + photofile02 + ", photofile03=" + photofile03
				+ ", pro_photo_01=" + pro_photo_01 + ", pro_photo_02=" + pro_photo_02 + ", pro_photo_03=" + pro_photo_03
				+ ", pro_regdate=" + pro_regdate + ", pro_location=" + pro_location + ", pro_hash=" + pro_hash
				+ ", pro_cnt=" + pro_cnt + ", mem_idx=" + mem_idx + ", bra_idx=" + bra_idx + "]";
	}

	public MultipartFile getPhotofile01() {
		return photofile01;
	}

	public void setPhotofile01(MultipartFile photofile01) {
		this.photofile01 = photofile01;
	}

	public MultipartFile getPhotofile02() {
		return photofile02;
	}

	public void setPhotofile02(MultipartFile photofile02) {
		this.photofile02 = photofile02;
	}

	public MultipartFile getPhotofile03() {
		return photofile03;
	}

	public void setPhotofile03(MultipartFile photofile03) {
		this.photofile03 = photofile03;
	}

	public int getPro_idx() {
		return pro_idx;
	}

	public void setPro_idx(int pro_idx) {
		this.pro_idx = pro_idx;
	}

	public String getPro_name() {
		return pro_name;
	}

	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}

	public String getPro_contents() {
		return pro_contents;
	}

	public void setPro_contents(String pro_contents) {
		this.pro_contents = pro_contents;
	}

	public String getPro_photo_01() {
		return pro_photo_01;
	}

	public void setPro_photo_01(String pro_photo_01) {
		this.pro_photo_01 = pro_photo_01;
	}

	public String getPro_photo_02() {
		return pro_photo_02;
	}

	public void setPro_photo_02(String pro_photo_02) {
		this.pro_photo_02 = pro_photo_02;
	}

	public String getPro_photo_03() {
		return pro_photo_03;
	}

	public void setPro_photo_03(String pro_photo_03) {
		this.pro_photo_03 = pro_photo_03;
	}

	public Date getPro_regdate() {
		return pro_regdate;
	}

	public void setPro_regdate(Date pro_regdate) {
		this.pro_regdate = pro_regdate;
	}

	public String getPro_location() {
		return pro_location;
	}

	public void setPro_location(String pro_location) {
		this.pro_location = pro_location;
	}

	public String getPro_hash() {
		return pro_hash;
	}

	public void setPro_hash(String pro_hash) {
		this.pro_hash = pro_hash;
	}

	public int getPro_cnt() {
		return pro_cnt;
	}

	public void setPro_cnt(int pro_cnt) {
		this.pro_cnt = pro_cnt;
	}

	public int getMem_idx() {
		return mem_idx;
	}

	public void setMem_idx(int mem_idx) {
		this.mem_idx = mem_idx;
	}

	public int getBra_idx() {
		return bra_idx;
	}

	public void setBra_idx(int bra_idx) {
		this.bra_idx = bra_idx;
	}

}
