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
	private String address_post;	
	private String address_01;	
	private String address_02;	
	private String pro_location;
	private String pro_hash;
	private int pro_cnt;
	private int mem_idx;
	private int bra_idx;
	private String bra_name;
	private String sec_name;
	private String fir_name;
	private int sec_idx;
	private int fir_idx;
	
	

	public Product() {
		super();
	}

	

	



	public Product(int pro_idx, String pro_name, String pro_contents, MultipartFile photofile01,
			MultipartFile photofile02, MultipartFile photofile03, String pro_photo_01, String pro_photo_02,
			String pro_photo_03, Date pro_regdate, String address_post, String address_01, String address_02,
			String pro_location, String pro_hash, int pro_cnt, int mem_idx, int bra_idx, String bra_name,
			String sec_name, String fir_name, int sec_idx, int fir_idx) {
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
		this.address_post = address_post;
		this.address_01 = address_01;
		this.address_02 = address_02;
		this.pro_location = pro_location;
		this.pro_hash = pro_hash;
		this.pro_cnt = pro_cnt;
		this.mem_idx = mem_idx;
		this.bra_idx = bra_idx;
		this.bra_name = bra_name;
		this.sec_name = sec_name;
		this.fir_name = fir_name;
		this.sec_idx = sec_idx;
		this.fir_idx = fir_idx;
	}







	@Override
	public String toString() {
		return "Product [pro_idx=" + pro_idx + ", pro_name=" + pro_name + ", pro_contents=" + pro_contents
				+ ", photofile01=" + photofile01 + ", photofile02=" + photofile02 + ", photofile03=" + photofile03
				+ ", pro_photo_01=" + pro_photo_01 + ", pro_photo_02=" + pro_photo_02 + ", pro_photo_03=" + pro_photo_03
				+ ", pro_regdate=" + pro_regdate + ", address_post=" + address_post + ", address_01=" + address_01
				+ ", address_02=" + address_02 + ", pro_location=" + pro_location + ", pro_hash=" + pro_hash
				+ ", pro_cnt=" + pro_cnt + ", mem_idx=" + mem_idx + ", bra_idx=" + bra_idx + ", bra_name=" + bra_name
				+ ", sec_name=" + sec_name + ", fir_name=" + fir_name + ", sec_idx=" + sec_idx + ", fir_idx=" + fir_idx
				+ "]";
	}







	public String getAddress_post() {
		return address_post;
	}







	public void setAddress_post(String address_post) {
		this.address_post = address_post;
	}







	public String getAddress_01() {
		return address_01;
	}







	public void setAddress_01(String address_01) {
		this.address_01 = address_01;
	}







	public String getAddress_02() {
		return address_02;
	}







	public void setAddress_02(String address_02) {
		this.address_02 = address_02;
	}







	public String getBra_name() {
		return bra_name;
	}



	public void setBra_name(String bra_name) {
		this.bra_name = bra_name;
	}



	public String getSec_name() {
		return sec_name;
	}



	public void setSec_name(String sec_name) {
		this.sec_name = sec_name;
	}



	public String getFir_name() {
		return fir_name;
	}



	public void setFir_name(String fir_name) {
		this.fir_name = fir_name;
	}



	public int getSec_idx() {
		return sec_idx;
	}



	public void setSec_idx(int sec_idx) {
		this.sec_idx = sec_idx;
	}



	public int getFir_idx() {
		return fir_idx;
	}



	public void setFir_idx(int fir_idx) {
		this.fir_idx = fir_idx;
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
