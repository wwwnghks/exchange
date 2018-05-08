package com.javamuk.domain;


public class QnA {
	private int qa_idx; // 게시글 번호
	private String qa_title; // 게시글 제목
	private String qa_contents; // 게시글 내용
	private String qa_regdate; // 게시글 작성일자 util.Date
	private int qa_viewcnt; // 게시글 조회수
	private int mem_idx;
	private String mem_name;
	
	
	
	public QnA() {
		super();
	}
	
	public QnA(int qa_idx, String qa_title, String qa_contents, String qa_regdate, int qa_viewcnt, int mem_idx,
			String mem_name) {
		super();
		this.qa_idx = qa_idx;
		this.qa_title = qa_title;
		this.qa_contents = qa_contents;
		this.qa_regdate = qa_regdate;
		this.qa_viewcnt = qa_viewcnt;
		this.mem_idx = mem_idx;
		this.mem_name = mem_name;
	}

	// Getter/Setter
	public int getQa_idx() {
		return qa_idx;
	}
	public void setQa_idx(int qa_idx) {
		this.qa_idx = qa_idx;
	}
	public String getQa_title() {
		return qa_title;
	}
	public void setQa_title(String qa_title) {
		this.qa_title = qa_title;
	}
	public String getQa_contents() {
		return qa_contents;
	}
	public void setQa_contents(String qa_contents) {
		this.qa_contents = qa_contents;
	}
	public String getQa_regdate() {
		return qa_regdate;
	}
	public void setQa_regdate(String qa_regdate) {
		this.qa_regdate = qa_regdate;
	}
	public int getQa_viewcnt() {
		return qa_viewcnt;
	}
	public void setQa_viewcnt(int qa_viewcnt) {
		this.qa_viewcnt = qa_viewcnt;
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
		return "QnA [qa_idx=" + qa_idx + ", qa_title=" + qa_title + ", qa_contents=" + qa_contents + ", qa_regdate="
				+ qa_regdate + ", qa_viewcnt=" + qa_viewcnt + ", mem_idx=" + mem_idx + ", mem_name=" + mem_name + "]";
	}
	
	

}