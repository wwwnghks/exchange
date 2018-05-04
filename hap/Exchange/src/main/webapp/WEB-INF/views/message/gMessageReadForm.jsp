<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
			<div class="row margin-vert-40">
					<!-- Begin Sidebar Menu -->
					<div class="col-md-2">
						<%@include file="../include/myPageSide.jsp"%>
	
					</div>
						<form role="form" method="get">
							<input type="hidden" name="mem_idx"
								value="${session_member.mem_idx}"> <input type="hidden"
								name="msg_idx" value="${read_message.msg_idx}">
							<table width="700" border="3" bordercolor="lightgray">
								<tr>
									<td colspan="2" id="msg_title" align="center">
									${read_message.msg_title}</td>
								</tr>
								<tr>
								<td id="mem_nickname" align="left">보낸사람 &nbsp;&nbsp;
									${read_message.mem_nickname }</td>
									
									<td id="msg_regdate" align="right">날짜 &nbsp;
									<fmt:formatDate value="${read_message.msg_regdate }" pattern="yyyy.MM.dd"/>
									</td>
								</tr>
								<tr>
									<td colspan="2" align="center" id="msg_contents">
									${read_message.msg_contents }</td>
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
						<div class="col-md-3"></div>
							<button type="submit" class="btn btn-primary">목록</button>
							<button type="submit" class="btn btn-danger">삭제</button>
						
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

				$(".btn-danger").on("click", function() {
					/* formObj.attr("action", "noticeDelete");
					formObj.submit(); */
					window.location.href = 'gMessageDelete?msg_idx='+ ${ read_message.msg_idx};
				});

				$(".btn-primary").on("click", function() {
					/* self.location = "noticeList"; */
					window.location.href = 'gMessageList';
				});
			});
		</script>
</body>
</html>

<!-- === END FOOTER === -->