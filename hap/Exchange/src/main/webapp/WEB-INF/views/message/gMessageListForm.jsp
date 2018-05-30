<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- === BEGIN HEADER === -->
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<style>
#product_List li {
	float: left;
	list-style: none;
	display: inline;
}

#categoryBox {
	text-align: right;
}
/* #main_div {
 	height: 1000px;
} */
#bspace {
	height: 500px;
	width: 80px;
}
</style>
<!-- Title -->
<title>Habitat - A Professional Bootstrap Template</title>
<%@include file="../include/style.jsp"%>
</head>
<body>
	<div id="body-bg">
		<%@include file="../include/header.jsp"%>
		<!-- === BEGIN CONTENT == -->
		<div id="content">
			<div class="container background-white">
				<div class="row margin-vert-40">
					<!-- Begin Sidebar Menu. -->
					<div class="col-md-2">
						<%@include file="../include/myPageSide.jsp"%>
					</div>
					<div id="bspace" class="col-md-2"></div>
					<div id="main_div">
						<!-- End Sidebar Menu -->
						<h1>받은쪽지함</h1>
						<br>
						<!-- 공지사항 목록 부분 -->
						<input type="hidden" name="mem_idx"
							value="${session_member.mem_idx}">
						<table id="mList" style="width: 700px" class="table">
							<thead>
								<tr>
									<th width="40">번호</th>
									<th width="200">제목</th>
									<th width="120">보낸날짜</th>
									<th width="80">보낸사람</th>
								</tr>
							</thead>
							<c:forEach varStatus="status" var="message" items="${map.list}">
								<tr>
									<td>${(map.count-status.index)-((map.paging.curPage-1)*10)}<input
										type="hidden" name="msg_idx" value="${message.msg_idx}"></td>
									<%-- <td><a href="BoardDetailAction.bo?num=${notice.not_idx}&pageNum=${pageNum}">
                                       ${notice.board_subject} </a></td> --%>
									<td><a
										href="gMessageRead?msg_idx=${message.msg_idx}&mem_nickname=${message.mem_nickname}&curPage=${map.paging.curPage}&searchOption=${map.searchOption}&keyword=${map.keyword}">${message.msg_title}</a></td>
									<!-- <td>{message.msg_title}</td> -->
									<td><fmt:formatDate value="${message.msg_regdate}"
											pattern="yyyy.MM.dd" /></td>
									<td>${message.mem_nickname}</td>
								</tr>
							</c:forEach>
							<tr align="center">
								<td colspan="5">
									<!-- **처음페이지로 이동 : 현재 페이지가 1보다 크면  [처음]하이퍼링크를 화면에 출력--> <c:if
										test="${map.paging.curBlock > 1}">
										<a href="javascript:listnum('1')">[처음]</a>
									</c:if> <!-- **이전페이지 블록으로 이동 : 현재 페이지 블럭이 1보다 크면 [이전]하이퍼링크를 화면에 출력 -->
									<c:if test="${map.paging.curBlock > 1}">
										<a href="javascript:listnum('${map.paging.prevPage}')">[이전]</a>
									</c:if> <!-- **하나의 블럭에서 반복문 수행 시작페이지부터 끝페이지까지 --> <c:forEach var="num"
										begin="${map.paging.blockBegin}" end="${map.paging.blockEnd}">
										<!-- **현재페이지이면 하이퍼링크 제거 -->
										<c:choose>
											<c:when test="${num == map.paging.curPage}">
												<span style="color: red">${num}</span>&nbsp;
                                             </c:when>
											<c:otherwise>
												<a href="javascript:listnum('${num}')">${num}</a>&nbsp;
                                             </c:otherwise>
										</c:choose>
									</c:forEach> <!-- **다음페이지 블록으로 이동 : 현재 페이지 블럭이 전체 페이지 블럭보다 작거나 같으면 [다음]하이퍼링크를 화면에 출력 -->
									<c:if test="${map.paging.curBlock <= map.paging.totBlock}">
										<a href="javascript:listnum('${map.paging.nextPage}')">[다음]</a>
									</c:if> <!-- **끝페이지로 이동 : 현재 페이지가 전체 페이지보다 작거나 같으면 [끝]하이퍼링크를 화면에 출력 -->
									<c:if test="${map.paging.curPage <= map.paging.totPage}">
										<a href="javascript:listnum('${map.paging.totPage}')">[끝]</a>
									</c:if>
								</td>
							</tr>
						</table>
						<br>

					</div>
				</div>
			</div>
		</div>
		<!-- === END CONTENT === -->
		<%@include file="../include/footer.jsp"%>
		<%@include file="../include/jsFile.jsp"%>
		<script>
			// **원하는 페이지로 이동시 검색조건, 키워드 값을 유지하기 위해 
			function listnum(page) {
				location.href = "/exchange/message/gMessageList?curPage="
						+ page + "&searchOption=${map.searchOption}"
						+ "&keyword=${map.keyword}";
			}
		</script>

		<script>
			$(document).ready(function() {

				var formObj = $("form[role='form']");

				console.log(formObj);

				$(".btn-primary").on("click", function() {
					/* self.location = "noticeList"; */
					window.location.href = 'gMessageList';
				});
			});
		</script>

	</div>
</body>
</html>

<!-- === END FOOTER === -->