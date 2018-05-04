package com.javamuk.domain;

import java.util.List;

public class Paging {
	// 리스트 페이지에 표현할 글 항목들
	private List<Notice> noticeList;
	// 현재 페이지( 요청페이지 )
	private int requestPage;
	// 넘버링 처리위한 변수(전체 페이지 수)
	private int totalPageCount;
	// 게시물의 시작 번호
	private int startRow;
	// 게시물의 끝 번호
	private int endRow;

	public Paging() {
	}

	public Paging(List<Notice> noticeList, int requestPage, int totalPageCount, int startRow, int endRow) {
		super();
		this.noticeList = noticeList;
		this.requestPage = requestPage;
		this.totalPageCount = totalPageCount;
		this.startRow = startRow;
		this.endRow = endRow;
	}

	public List<Notice> getNoticeList() {
		return noticeList;
	}

	public void setNoticeList(List<Notice> noticeList) {
		this.noticeList = noticeList;
	}

	public int getRequestPage() {
		return requestPage;
	}

	public void setRequestPage(int requestPage) {
		this.requestPage = requestPage;
	}

	public int getTotalPageCount() {
		return totalPageCount;
	}

	public void setTotalPageCount(int totalPageCount) {
		this.totalPageCount = totalPageCount;
	}

	public int getStartRow() {
		return startRow;
	}

	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}

	public int getEndRow() {
		return endRow;
	}

	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}

}
