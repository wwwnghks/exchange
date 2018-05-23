package com.javamuk.domain;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Member {

	private int mem_idx;
	private String mem_id;
	private String mem_pw;
	private String mem_name;
	private Date mem_birth;
	private String mem_nickname;
	private String mem_phone;
	private String mem_email;
	private String address_post;	
	private String address_01;	
	private String address_02;	
	private String mem_address;
	private String mem_photo;
	private String mem_birth1;
	private String mem_birth2;
	private String mem_birth3;
	private MultipartFile photofile;
	private float mem_score;
	private int mem_scorecnt;

	public Member() {
		super();
	}

	
	

	public Member(int mem_idx, String mem_id, String mem_pw, String mem_name, Date mem_birth, String mem_nickname,
			String mem_phone, String mem_email, String address_post, String address_01, String address_02,
			String mem_address, String mem_photo, String mem_birth1, String mem_birth2, String mem_birth3,
			MultipartFile photofile, float mem_score, int mem_scorecnt) {
		super();
		this.mem_idx = mem_idx;
		this.mem_id = mem_id;
		this.mem_pw = mem_pw;
		this.mem_name = mem_name;
		this.mem_birth = mem_birth;
		this.mem_nickname = mem_nickname;
		this.mem_phone = mem_phone;
		this.mem_email = mem_email;
		this.address_post = address_post;
		this.address_01 = address_01;
		this.address_02 = address_02;
		this.mem_address = mem_address;
		this.mem_photo = mem_photo;
		this.mem_birth1 = mem_birth1;
		this.mem_birth2 = mem_birth2;
		this.mem_birth3 = mem_birth3;
		this.photofile = photofile;
		this.mem_score = mem_score;
		this.mem_scorecnt = mem_scorecnt;
	}




	@Override
	public String toString() {
		return "Member [mem_idx=" + mem_idx + ", mem_id=" + mem_id + ", mem_pw=" + mem_pw + ", mem_name=" + mem_name
				+ ", mem_birth=" + mem_birth + ", mem_nickname=" + mem_nickname + ", mem_phone=" + mem_phone
				+ ", mem_email=" + mem_email + ", address_post=" + address_post + ", address_01=" + address_01
				+ ", address_02=" + address_02 + ", mem_address=" + mem_address + ", mem_photo=" + mem_photo
				+ ", mem_birth1=" + mem_birth1 + ", mem_birth2=" + mem_birth2 + ", mem_birth3=" + mem_birth3
				+ ", photofile=" + photofile + ", mem_score=" + mem_score + ", mem_scorecnt=" + mem_scorecnt + "]";
	}




	public int getMem_scorecnt() {
		return mem_scorecnt;
	}




	public void setMem_scorecnt(int mem_scorecnt) {
		this.mem_scorecnt = mem_scorecnt;
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


	public MultipartFile getPhotofile() {
		return photofile;
	}

	public void setPhotofile(MultipartFile photofile) {
		this.photofile = photofile;
	}

	public int getMem_idx() {
		return mem_idx;
	}

	public void setMem_idx(int mem_idx) {
		this.mem_idx = mem_idx;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getMem_pw() {
		return mem_pw;
	}

	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}

	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public Date getMem_birth() {
		return mem_birth;
	}

	public void setMem_birth(Date mem_birth) {
		this.mem_birth = mem_birth;
	}

	public String getMem_nickname() {
		return mem_nickname;
	}

	public void setMem_nickname(String mem_nickname) {
		this.mem_nickname = mem_nickname;
	}

	public String getMem_phone() {
		return mem_phone;
	}

	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}

	public String getMem_email() {
		return mem_email;
	}

	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}

	public String getMem_address() {
		return mem_address;
	}

	public void setMem_address(String mem_address) {
		this.mem_address = mem_address;
	}

	public String getMem_photo() {
		return mem_photo;
	}

	public void setMem_photo(String mem_photo) {
		this.mem_photo = mem_photo;
	}

	public float getMem_score() {
		return mem_score;
	}

	public void setMem_score(float mem_score) {
		this.mem_score = mem_score;
	}

	public String getMem_birth1() {
		return mem_birth1;
	}

	public void setMem_birth1(String mem_birth1) {
		this.mem_birth1 = mem_birth1;
	}

	public String getMem_birth2() {
		return mem_birth2;
	}

	public void setMem_birth2(String mem_birth2) {
		this.mem_birth2 = mem_birth2;
	}

	public String getMem_birth3() {
		return mem_birth3;
	}

	public void setMem_birth3(String mem_birth3) {
		this.mem_birth3 = mem_birth3;
	}

}
