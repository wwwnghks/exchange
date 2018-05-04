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
					<h2>받은쪽지함</h2>
					<div id="wrap">
						<div id="topForm">
							<!-- 목록 위 부분-->
							<br>
							<%-- <div id="topForm">
									<c:if
										test="${session_member.man_id !=null && session_member.man_id=='admin'}">
										<input type="button" value="글쓰기"
											onclick="location='noticeCreate'">
									</c:if>
								</div> --%>

							<!-- 공지사항 목록 부분 -->
							<br>
							<div id="message">
								<input type="hidden" name="mem_idx"
									value="${session_member.mem_idx}">
								<table id="mList" width="700" border="3" bordercolor="lightgray">
									<tr align="center">
										<td width="40">번호</td>
										<td width="200">제목</td>
										<td width="120">보낸날짜</td>
										<td width="80">보낸사람</td>
									</tr>
									<c:forEach var="message" items="${gMessageList}">
										<tr align="center">
											<td>${message.msg_idx}<input type="hidden"
												name="msg_idx" value="${message.msg_idx}"></td>
											<%-- <td><a href="BoardDetailAction.bo?num=${notice.not_idx}&pageNum=${pageNum}">
													${notice.board_subject} </a></td> --%>
											<td><a href="gMessageRead?msg_idx=${message.msg_idx}&mem_nickname=${message.mem_nickname}">${message.msg_title}</a></td>
											<!-- <td>{message.msg_title}</td> -->
											<%-- <td>
												<c:if test="${session_member.man_id !=null && session_member.man_id=='admin'}">
														<a href="#"> ${session_member.man_name} </a>
													</c:if> <c:if
														test="${session_member.man_id ==null && session_member.man_id!='admin'}">
														<a href="#"> 관리자 </a>
													</c:if></td> --%>
											<%-- <td><a href="#"> ${session_manager.man_name} </a></td> --%>
											<td><fmt:formatDate value="${message.msg_regdate}"
													pattern="yyyy.MM.dd" /></td>
											<td>${message.mem_nickname}</td>
										</tr>
									</c:forEach>
								</table>
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