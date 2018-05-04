/*package com.javamuk.product.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javamuk.domain.Notice;
import com.javamuk.domain.Paging;
import com.javamuk.product.persistence.NoticeCountDAO;
import com.javamuk.product.persistence.NoticeListDAO;

@Service
public class NoticePageService {
	@Inject
	private NoticeCountDAO dao1;
	
	@Inject
	private NoticeListDAO dao2;

	// 리스트 페이지에 게시글을 노출 할 개수
	public static final int COUNT_PER_PAGE = 10;

	public Paging noticePaging(int requestPage) {

		//Paging paging = null;

		if (requestPage < 1) {
			requestPage = 1;
		}

			// 전체 게시물의 개수, 현재 요청 페이지에서 보여줄 게시물의 리스트(List<?>)
			// 전체 게시물의 개수
			int totalNoticeCount = 0;
			totalNoticeCount = dao1.noticeCount();

			// 게시물의 게수가 0 일 때, 게시물이 없을 때
			if (totalNoticeCount == 0) {
				// 비어있는 List로 반환
				return new Paging();
			}

			// 전체 페이지 개수
			int totalPageCount = 0;
			totalPageCount = totalNoticeCount / COUNT_PER_PAGE;
			
			if(totalNoticeCount % COUNT_PER_PAGE > 0) {
				totalPageCount++;
			}
			
			if (totalPageCount < requestPage) {
				requestPage = totalPageCount;
			}
			
			// 시작 번호
			int firstRow = (requestPage - 1) * COUNT_PER_PAGE + 1; // 11~
			// 끝 번호
			int endRow = firstRow + COUNT_PER_PAGE - 1; // ~ 20

			// 26 ,
			// 1 | 2 | 3
			// 1~10, 11~20, 21~30
			// 1~10, 11~20, 21~26
			if (endRow > totalPageCount) {
				endRow = totalPageCount;
			}
			
			if (firstRow > 1) {
			    System.out.print("<a href=\"?page=1\">처음</a>");
			}

			if (requestPage > 1) {
			    System.out.println("<a href=\"?page=" + (requestPage - 1)  + "\">이전</a>");
			}

			for (int iCount = firstRow; iCount <= endRow; iCount++) {

			    if (iCount == requestPage) {
			        System.out.print(" <b>" + iCount + "</b>");
			    } 
			    else {
			        System.out.print(" " + iCount + " ");
			    }
			}

			if (requestPage < totalPageCount) {    
			    System.out.println("<a href=\"?page=" + (requestPage + 1)  + "\">다음</a>");
			}

			if (endRow < totalPageCount) {

			    System.out.print("<a href=\"?page=" + totalPageCount + "\">끝</a>");
			}
			

			 //List<Notice> noticeList = null;

			 List<Notice> noticeList = dao2.listNotice(firstRow);

			 Paging paging = new Paging(noticeList, requestPage, totalPageCount, firstRow, endRow);

			return paging;

	}

}
*/