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
				<div class="row margin-vert-40">
					<!-- Begin Sidebar Menu -->
					<div class="col-md-2">
						<%@include file="../include/myPageSide.jsp"%>
					</div>
					<h2>팔로윙 목록 </h2>
					<div id="wrap">
						<div id="topForm">
							
							<!-- 공지사항 목록 부분 -->
							<br>
							<div id="message">
								<input type="hidden" name="mem_idx"
									value="${session_member.mem_idx}">
								<c:if test="${!empty following_list }">
								<table border="1" style="width: 600px">
									<tr align="center">
										<th>번호 </th>
										<th>팔로윙</th>
										<th>팔로윙 날짜</th>
									</tr>
									<c:forEach var="list" items="${following_list}">
										<tr>
											<td>${list.num}<input type="hidden"
												name="msg_idx" value="${message.msg_idx}"></td>
											<td><a href="follower?follower_mem=${list.follower_mem }&mem_nickname=${list.mem_nickname }">${list.mem_nickname}</a></td>
											<td><fmt:formatDate value="${list.fol_regdate}"
													pattern="yyyy.MM.dd" /></td>
										</tr>
									</c:forEach>
								</table>
								</c:if>
							</div>

							<!-- 페이지 넘버 부분 -->
							<br>
							<%-- 	<div id="pageForm">
								<c:if test="${startPage != 1}">
									<a href='BoardListAction.bo?page=${startPage-1}'>[ 이전 ]</a>
								</c:if>

								<c:forEach var="pageNum" begin="${startPage}" end="${endPage}">
									<c:if test="${pageNum == spage}"> ${pageNum}&nbsp;
           						 </c:if>
									<c:if test="${pageNum != spage}">
										<a href='BoardListAction.bo?page=${pageNum}'>${pageNum}&nbsp;</a>
									</c:if>
								</c:forEach>

								<c:if test="${endPage != maxPage }">
									<a href='BoardListAction.bo?page=${endPage+1 }'>[다음]</a>
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