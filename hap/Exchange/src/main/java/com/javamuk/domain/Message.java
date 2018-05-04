package com.javamuk.domain;

import java.util.Date;

public class Message {

	private int msg_idx;
	private String msg_title;
	private String msg_contents;
	private Date msg_regdate;
	private int pro_idx;
	private int mem_idx;
	private String mem_id;
	private String mem_nickname;

	public Message() {

	}

	public Message(int msg_idx, String msg_title, String msg_contents, Date msg_regdate, int pro_idx, int mem_idx,
			String mem_id, String mem_nickname) {
		super();
		this.msg_idx = msg_idx;
		this.msg_title = msg_title;
		this.msg_contents = msg_contents;
		this.msg_regdate = msg_regdate;
		this.pro_idx = pro_idx;
		this.mem_idx = mem_idx;
		this.mem_id = mem_id;
		this.mem_nickname = mem_nickname;
	}

	public int getMsg_idx() {
		return msg_idx;
	}

	public void setMsg_idx(int msg_idx) {
		this.msg_idx = msg_idx;
	}

	public String getMsg_title() {
		return msg_title;
	}

	public void setMsg_title(String msg_title) {
		this.msg_title = msg_title;
	}

	public String getMsg_contents() {
		return msg_contents;
	}

	public void setMsg_contents(String msg_contents) {
		this.msg_contents = msg_contents;
	}

	public Date getMsg_regdate() {
		return msg_regdate;
	}

	public void setMsg_regdate(Date msg_regdate) {
		this.msg_regdate = msg_regdate;
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

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getMem_nickname() {
		return mem_nickname;
	}

	public void setMem_nickname(String mem_nickname) {
		this.mem_nickname = mem_nickname;
	}

	@Override
	public String toString() {
		return "Message [msg_idx=" + msg_idx + ", msg_title=" + msg_title + ", msg_contents=" + msg_contents
				+ ", msg_regdate=" + msg_regdate + ", pro_idx=" + pro_idx + ", mem_idx=" + mem_idx + ", mem_id="
				+ mem_id + ", mem_nickname=" + mem_nickname + "]";
	}

}
