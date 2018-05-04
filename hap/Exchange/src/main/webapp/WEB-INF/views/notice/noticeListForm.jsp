<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- === BEGIN HEADER === -->
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Title -->
<title>Habitat - A Professional Bootstrap Template</title>
<%@include file="../include/style.jsp"%>
</head>
<body>
	<div id="body-bg">
		<%@include file="../include/header.jsp"%>
		<!-- === BEGIN CONTENT === -->
		<div id="content">
			<div class="container background-white">
				<div class="row margin-vert-30">
					<div class="col-md-12">
						<h2>공지사항</h2>
						<br> 저희 영이집에 오신 고객 여러분들을 진심으로 환영합니다.
						</p>
						자세한 문의 사항이나 건의사항은 Q&A, 고객센터로 문의 주시면 친절하게 답변해 드리겠습니다 .
						<hr class="margin-vert-40">
						<div id="wrap">
						<div class="col-md-10"></div>
							<div id="topForm">
								<c:if
									test="${session_manager.man_id !=null && session_manager.man_id=='admin'}">
									<input type="button" value="글쓰기"
										onclick="location='noticeCreate'">
								</c:if>
							</div>

							<!-- 공지사항 목록 부분. -->
							<br>
							<div class="col-md-1"></div>
							<div id="notice" style="display: inline;">
								<table id="nList" border="2" style="width: 810px" >
									<tr align="center">
										<td width="40">번호</td>
										<td width="200">제목</td>
										<td width="80">작성자</td>
										<td width="120">작성일</td>
									</tr>
									<c:forEach var="notice" items="${noticeList}">

										<tr align="center">
											<td>${notice.not_idx}<input type="hidden" name="not_idx"
												value="${notice.not_idx}"></td>
											<td><a href="noticeRead?not_idx=${notice.not_idx }">${notice.not_title}</a></td>
											<!-- &firstRow=${firstRow} -->
											<td><c:if
													test="${session_manager.man_id !=null && session_manager.man_id=='admin'}">
														${session_manager.man_name}
													</c:if> <c:if
													test="${session_manager.man_id ==null && session_manager.man_id!='admin'}">
														관리자
													</c:if></td>
											<%-- <td><a href="#"> ${session_manager.man_name} </a></td> --%>
											<td><fmt:formatDate value="${notice.not_regdate}"
													pattern="yyyy.MM.dd" /></td>
										</tr>
									</c:forEach>
								</table>
							</div>

							<!-- 페이지 넘버 부분 -->
							<%-- <br>
									<div id="pageForm">
								<c:if test="${firstRow != 1}">
									<a href='noticeList?requestPage=${firstRow-1}'>[ 이전 ]</a>
								</c:if>

								<c:forEach var="requestPage" begin="${firstRow}" end="${endRow}">
									<c:if test="${requestPage == 1}"> ${requestPage}&nbsp;
           						 </c:if>
									<c:if test="${requestPage != 1}">
										<a href='noticeList?requestPage=${requestPage}'>${requestPage}&nbsp;</a>
									</c:if>
								</c:forEach>

								<c:if test="${endRow != totalPageCount }">
									<a href='noticeList?requestPage=${endRow+1 }'>[다음]</a>
								</c:if>
							</div> --%>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- === END CONTENT === -->
		<!-- === BEGIN FOOTER === -->
		<%@include file="../include/footer.jsp"%>
		<%@include file="../include/jsFile.jsp"%>
	</div>
</body>
</html>
<!-- === END FOOTER === -->