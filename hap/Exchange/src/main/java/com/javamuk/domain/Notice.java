package com.javamuk.domain;

import java.util.Date;

public class Notice {

	private int not_idx;
	private String not_title;
	private String not_contents;
	private Date not_regdate;
	private int not_viewcnt;
	private int man_idx;
	private String man_name;

	public Notice() {
	}

	public Notice(int not_idx, String not_title, String not_contents, Date not_regdate, int not_viewcnt, int man_idx,
			String man_name) {
		super();
		this.not_idx = not_idx;
		this.not_title = not_title;
		this.not_contents = not_contents;
		this.not_regdate = not_regdate;
		this.not_viewcnt = not_viewcnt;
		this.man_idx = man_idx;
		this.man_name = man_name;
	}

	public int getNot_idx() {
		return not_idx;
	}

	public void setNot_idx(int not_idx) {
		this.not_idx = not_idx;
	}

	public String getNot_title() {
		return not_title;
	}

	public void setNot_title(String not_title) {
		this.not_title = not_title;
	}

	public String getNot_contents() {
		return not_contents;
	}

	public void setNot_contents(String not_contents) {
		this.not_contents = not_contents;
	}

	public Date getNot_regdate() {
		return not_regdate;
	}

	public void setNot_regdate(Date not_regdate) {
		this.not_regdate = not_regdate;
	}

	public int getMan_idx() {
		return man_idx;
	}

	public void setMan_idx(int man_idx) {
		this.man_idx = man_idx;
	}

	public int getNot_viewcnt() {
		return not_viewcnt;
	}

	public void setNot_viewcnt(int not_viewcnt) {
		this.not_viewcnt = not_viewcnt;
	}

	public String getMan_name() {
		return man_name;
	}

	public void setMan_name(String man_name) {
		this.man_name = man_name;
	}

	@Override
	public String toString() {
		return "Notice2 [not_idx=" + not_idx + ", not_title=" + not_title + ", not_contents=" + not_contents
				+ ", not_regdate=" + not_regdate + ", not_viewcnt=" + not_viewcnt + ", man_idx=" + man_idx
				+ ", man_name=" + man_name + "]";
	}

}
