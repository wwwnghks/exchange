package com.javamuk.domain;

public class QnA_Reply {
	private int qa_re_idx;
	private int qa_re_p_num;
	private int qa_re_s_num;
	private int qa_re_level;
	private String qa_re_contents;
	private String qa_re_regdate;
	private String qa_re_writer;
	private int qa_idx;
	private int man_idx;
	private int mem_idx;
	private String man_name;
	private String mem_name;
	private String writer_name;

	public QnA_Reply() {

	}

	public QnA_Reply(int qa_re_idx, int qa_re_p_num, int qa_re_s_num, int qa_re_level, String qa_re_contents,
			String qa_re_regdate, String qa_re_writer, int qa_idx, int man_idx, int mem_idx, String man_name,
			String mem_name, String writer_name) {
		super();
		this.qa_re_idx = qa_re_idx;
		this.qa_re_p_num = qa_re_p_num;
		this.qa_re_s_num = qa_re_s_num;
		this.qa_re_level = qa_re_level;
		this.qa_re_contents = qa_re_contents;
		this.qa_re_regdate = qa_re_regdate;
		this.qa_re_writer = qa_re_writer;
		this.qa_idx = qa_idx;
		this.man_idx = man_idx;
		this.mem_idx = mem_idx;
		this.man_name = man_name;
		this.mem_name = mem_name;
		this.writer_name = writer_name;
	}

	
	public String getWriter_name() {
		return writer_name;
	}

	public void setWriter_name(String writer_name) {
		this.writer_name = writer_name;
	}

	public String getQa_re_writer() {
		return qa_re_writer;
	}

	public void setQa_re_writer(String qa_re_writer) {
		this.qa_re_writer = qa_re_writer;
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

	public String getMan_name() {
		return man_name;
	}

	public void setMan_name(String man_name) {
		this.man_name = man_name;
	}

	public int getMem_idx() {
		return mem_idx;
	}

	public void setMem_idx(int mem_idx) {
		this.mem_idx = mem_idx;
	}

	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	@Override
	public String toString() {
		return "QnA_Reply [qa_re_idx=" + qa_re_idx + ", qa_re_p_num=" + qa_re_p_num + ", qa_re_s_num=" + qa_re_s_num
				+ ", qa_re_level=" + qa_re_level + ", qa_re_contents=" + qa_re_contents + ", qa_re_regdate="
				+ qa_re_regdate + ", qa_re_writer=" + qa_re_writer + ", qa_idx=" + qa_idx + ", man_idx=" + man_idx
				+ ", mem_idx=" + mem_idx + ", man_name=" + man_name + ", mem_name=" + mem_name + ", writer_name="
				+ writer_name + "]";
	}

	

}
