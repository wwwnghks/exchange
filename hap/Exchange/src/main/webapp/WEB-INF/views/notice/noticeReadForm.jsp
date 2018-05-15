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
<!-- 각 서브밋 버튼에 따른 페이지이동 -->

<%@include file="../include/style.jsp"%>
<style type="text/css">
.layer {
	text-align: center;
}
</style>
</head>
<body>
	<div id="body-bg">
		<%@include file="../include/header.jsp"%>
		<!-- === BEGIN CONTENT === -->
		<div id="content">
			<div class="container background-white">
				<div class="row margin-vert-40">
					<div class="col-md-2">
						<ul class="list-group sidebar-nav" id="sidebar-nav">
							<!-- Buttons -->
							<li class="list-group-item"><a
								href="<%=request.getContextPath()%>/notice/noticeList">공지사항</a></li>
							<!-- End Buttons -->
							<!-- Carousels -->
							<li class="list-group-item"><a
								href="<%=request.getContextPath()%>/qna/list">Q&A</a></li>
							<!-- End Accordion and Tabs -->
						</ul>
					</div>
					<div class="col-md-1" style="height: 400px"></div>
					<h2>공지사항</h2>
					<br>
					<div id="wrap">
					<div class="col-md-2"></div>
						<form role="form" method="get">
							<input type="hidden" name="man_idx"
								value="${session_manager.man_idx}"> <input type="hidden"
								name="not_idx" value="${read_notice.not_idx}">
							<div class="col-md-1"></div>
							<table style="width: 700px" class="table table-striped">
							<thead>
								<tr>
								<th id="not_title" style="text-align: center" colspan="5">${read_notice.not_title}</th>
								</tr>
								</thead>
								<tr align="center">
									<td id="man_idx" align="left">작성자&nbsp;&nbsp; <c:if
											test="${session_manager.man_id !=null && session_manager.man_id=='admin'}">
							${session_manager.man_name}
							</c:if> <c:if test="${session_member.mem_idx !=null}">
							관리자
							</c:if> <%-- ${read_notice.man_name} --%>
									</td>

									<td id="not_regdate" align="right">날짜&nbsp; <fmt:formatDate
											value="${read_notice.not_regdate}" pattern="yyyy.MM.dd" /></td>


									<%-- <td id="not_viewcnt" align="right">조회수&nbsp;&nbsp;
										${read_notice.not_viewcnt }</td> --%>
								</tr>

								<tr>
									<td id="not_contents" colspan="5">
										${read_notice.not_contents }</td>
								</tr>
							</table>
						</form>
						<br>
						<div class="col-md-3"></div>
						<button type="submit" class="btn btn-primary">목록</button>
						<c:if
							test="${session_manager.man_id !=null && session_manager.man_id=='admin'}">
							<button type="submit" class="btn btn-warning">수정</button>
							<button type="submit" class="btn btn-danger">삭제</button>
						</c:if>

					</div>
				</div>
			</div>
		</div>
		<!-- === END CONTENT === -->
		<!-- === BEGIN FOOTER === -->
		<%@include file="../include/footer.jsp"%>
		<%@include file="../include/jsFile.jsp"%>
		<script>
			$(document).ready(function() {

				var formObj = $("form[role='form']");

				console.log(formObj);

				$(".btn-warning").on("click", function() {
					/* formObj.attr("action", "noticeUpdate");
					formObj.attr("method", "get");
					formObj.submit(); */
					window.location.href = 'noticeUpdate?not_idx=' + ${read_notice.not_idx};
				});

				$(".btn-danger").on("click", function() {
					/* formObj.attr("action", "noticeDelete");
					formObj.submit(); */
					window.location.href = 'noticeDelete?not_idx=' + ${read_notice.not_idx};
				});

				$(".btn-primary").on("click", function() {
					/* self.location = "noticeList"; */
					window.location.href = 'noticeList';
				});
			});
		</script>
	</div>
</body>
</html>

<!-- === END FOOTER === -->