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
						<br>
						<hr class="margin-vert-40">
						<form role="form" method="get">
							<input type="hidden" name="man_idx"
								value="${session_manager.man_idx}"> <input type="hidden"
								name="not_idx" value="${read_notice.not_idx}">
								<div class="col-md-1"></div>
							<table style="width: 820px" border="2" bordercolor="lightgray">
								<tr align="center">
									<td id="not_title" colspan="5">
									${read_notice.not_title}</td>
								</tr>
								<tr align="center">
								
								<td id="man_idx" align="left">작성자&nbsp;&nbsp;
									${session_manager.man_name}</td>
							
									<td id="not_regdate" align="right">날짜&nbsp;
									<fmt:formatDate value="${read_notice.not_regdate}"
													pattern="yyyy.MM.dd" /></td>
								</tr>
								<tr align="center">
									<td id="not_contents" colspan="5">
									${read_notice.not_contents }</td>
								</tr>
								<tr align="center" valign="middle">
									<td colspan="5">
										<!-- <input type="button"
										value="수정" onclick="location='noticeUpdate'"> <input
										type="button" value="목록" onclick="location='noticeList'">
										<input type="button" value="삭제"
										onclick="location='noticeDelete'"> -->


									</td>
								</tr>
							</table>
						</form>
						<br>
						<div class="col-md-5"></div>
						<c:if
							test="${session_manager.man_id !=null && session_manager.man_id=='admin'}">

							<button type="submit" class="btn btn-warning">수정</button>
							<button type="submit" class="btn btn-primary">목록</button>
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