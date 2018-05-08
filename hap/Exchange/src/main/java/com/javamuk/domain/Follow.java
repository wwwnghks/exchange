package com.javamuk.domain;

import java.util.Date;

public class Follow {
	private int num;
	private int follow_idx;
	private int follower_mem;
	private int following_mem;
	private Date fol_regdate;
	private String mem_nickname;

	public Follow() {
		super();
	}

	public Follow(int num, int follow_idx, int follower_mem, int following_mem, Date fol_regdate, String mem_nickname) {
		super();
		this.num = num;
		this.follow_idx = follow_idx;
		this.follower_mem = follower_mem;
		this.following_mem = following_mem;
		this.fol_regdate = fol_regdate;
		this.mem_nickname = mem_nickname;
	}

	@Override
	public String toString() {
		return "Follow [num=" + num + ", follow_idx=" + follow_idx + ", follower_mem=" + follower_mem
				+ ", following_mem=" + following_mem + ", fol_regdate=" + fol_regdate + ", mem_nickname=" + mem_nickname
				+ "]";
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getMem_nickname() {
		return mem_nickname;
	}

	public void setMem_nickname(String mem_nickname) {
		this.mem_nickname = mem_nickname;
	}

	public int getFollow_idx() {
		return follow_idx;
	}

	public void setFollow_idx(int follow_idx) {
		this.follow_idx = follow_idx;
	}

	public int getFollower_mem() {
		return follower_mem;
	}

	public void setFollower_mem(int follower_mem) {
		this.follower_mem = follower_mem;
	}

	public int getFollowing_mem() {
		return following_mem;
	}

	public void setFollowing_mem(int following_mem) {
		this.following_mem = following_mem;
	}

	public Date getFol_regdate() {
		return fol_regdate;
	}

	public void setFol_regdate(Date fol_regdate) {
		this.fol_regdate = fol_regdate;
	}

}
