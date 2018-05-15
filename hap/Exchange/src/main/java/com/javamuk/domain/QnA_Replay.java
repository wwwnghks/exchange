package com.javamuk.domain;

public class QnA_Replay {
	private int qa_re_idx;
	private int qa_re_p_num;
	private int qa_re_s_num;
	private int qa_re_level;
	private String qa_re_title;
	private String qa_re_contents;
	private String qa_re_regdate;
	private int qa_idx;
	private int man_idx;

	public QnA_Replay() {
		super();
	}

	public QnA_Replay(int qa_re_idx, int qa_re_p_num, int qa_re_s_num, int qa_re_level, String qa_re_title,
			String qa_re_contents, String qa_re_regdate, int qa_idx, int man_idx) {
		super();
		this.qa_re_idx = qa_re_idx;
		this.qa_re_p_num = qa_re_p_num;
		this.qa_re_s_num = qa_re_s_num;
		this.qa_re_level = qa_re_level;
		this.qa_re_title = qa_re_title;
		this.qa_re_contents = qa_re_contents;
		this.qa_re_regdate = qa_re_regdate;
		this.qa_idx = qa_idx;
		this.man_idx = man_idx;
	}

	public int getQa_re_idx() {
		return qa_re_idx;
	}

	public void setQa_re_idx(int qa_re_idx) {
		this.qa_re_idx = qa_re_idx;
	}

	public int getQa_re_p_num() {
		return qa_re_p_num;
	}

	public void setQa_re_p_num(int qa_re_p_num) {
		this.qa_re_p_num = qa_re_p_num;
	}

	public int getQa_re_s_num() {
		return qa_re_s_num;
	}

	public void setQa_re_s_num(int qa_re_s_num) {
		this.qa_re_s_num = qa_re_s_num;
	}

	public int getQa_re_level() {
		return qa_re_level;
	}

	public void setQa_re_level(int qa_re_level) {
		this.qa_re_level = qa_re_level;
	}

	public String getQa_re_title() {
		return qa_re_title;
	}

	public void setQa_re_title(String qa_re_title) {
		this.qa_re_title = qa_re_title;
	}

	public String getQa_re_contents() {
		return qa_re_contents;
	}

	public void setQa_re_contents(String qa_re_contents) {
		this.qa_re_contents = qa_re_contents;
	}

	public String getQa_re_regdate() {
		return qa_re_regdate;
	}

	public void setQa_re_regdate(String qa_re_regdate) {
		this.qa_re_regdate = qa_re_regdate;
	}

	public int getQa_idx() {
		return qa_idx;
	}

	public void setQa_idx(int qa_idx) {
		this.qa_idx = qa_idx;
	}

	public int getMan_idx() {
		return man_idx;
	}

	public void setMan_idx(int man_idx) {
		this.man_idx = man_idx;
	}

	@Override
	public String toString() {
		return "QnA_Replay [qa_re_idx=" + qa_re_idx + ", qa_re_p_num=" + qa_re_p_num + ", qa_re_s_num=" + qa_re_s_num
				+ ", qa_re_level=" + qa_re_level + ", qa_re_title=" + qa_re_title + ", qa_re_contents=" + qa_re_contents
				+ ", qa_re_regdate=" + qa_re_regdate + ", qa_idx=" + qa_idx + ", man_idx=" + man_idx + "]";
	}

}