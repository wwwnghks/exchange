package com.javamuk.domain;

public class Manager {
	private int man_idx;
	private String man_id;
	private String man_pw;
	private String man_name;
	private String man_position;

	public Manager() {

	}

	@Override
	public String toString() {
		return "Manager [man_idx=" + man_idx + ", man_id=" + man_id + ", man_pw=" + man_pw + ", man_name=" + man_name
				+ ", man_position=" + man_position + "]";
	}

	public Manager(int man_idx, String man_id, String man_pw, String man_name, String man_position) {
		super();
		this.man_idx = man_idx;
		this.man_id = man_id;
		this.man_pw = man_pw;
		this.man_name = man_name;
		this.man_position = man_position;
	}

	public int getMan_idx() {
		return man_idx;
	}

	public void setMan_idx(int man_idx) {
		this.man_idx = man_idx;
	}

	public String getMan_id() {
		return man_id;
	}

	public void setMan_id(String man_id) {
		this.man_id = man_id;
	}

	public String getMan_pw() {
		return man_pw;
	}

	public void setMan_pw(String man_pw) {
		this.man_pw = man_pw;
	}

	public String getMan_name() {
		return man_name;
	}

	public void setMan_name(String man_name) {
		this.man_name = man_name;
	}

	public String getMan_position() {
		return man_position;
	}

	public void setMan_position(String man_position) {
		this.man_position = man_position;
	}

	public boolean matchPassword(String pw) {
		return man_pw.equals(pw);

	}

}
