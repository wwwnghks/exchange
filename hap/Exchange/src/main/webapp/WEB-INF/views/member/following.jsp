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
					<!-- Begin Sidebar Menu -->
					<div class="col-md-2">
						<%@include file="../include/myPageSide.jsp"%>
					</div>
					<div id="bspace" class="col-md-2"></div>
					<div id="main_div">
						<!-- End Sidebar Menu -->
						<h1>팔로윙 목록</h1>
						<c:if test="${!empty following_list }">
							<form id="followDelete" action="followDelete" method="POST">
								<input type="hidden" name="mem_idx"
									value="${session_member.mem_idx}">
								<table  style="width: 600px" class="table ">
									<tr align="center">
										<th><input type="checkbox" id="checkall" name="checkall"></th>
										<th>번호</th>
										<th>팔로윙</th>
										<th>팔로윙 날짜</th>
									</tr>
									<c:forEach var="list" items="${following_list}">
										<tr>
											<td><input type="checkbox" name="follow_arr"
												value="${list.follow_idx }"></td>
											<td>${list.num}<input type="hidden" name="msg_idx"
												value="${message.msg_idx}"></td>
											<td><a
												href="follower?follower_mem=${list.follower_mem }&mem_nickname=${list.mem_nickname }">${list.mem_nickname}</a></td>
											<td><fmt:formatDate value="${list.fol_regdate}"
													pattern="yyyy.MM.dd" /></td>
										</tr>
									</c:forEach>
								</table>
							</form>
							<input type="submit" class="btn btn-danger btn-sm" value="삭제"
								onclick="Javascript:followDelete();">
						</c:if>
					</div>
				</div>
			</div>
		</div>
		<!-- === END CONTENT === -->
		<%@include file="../include/footer.jsp"%>
		<%@include file="../include/jsFile.jsp"%>
	<script>
			function followDelete() {
				if (confirm('삭제 하시겠습니까?')) {
					$("#followDelete").submit();
				}
			}
		</script>

		<script>
			$(document).ready(function() {
				$("#checkall").click(function() {
					if ($("#checkall").prop("checked")) {
						$("input[name=follow_arr]").prop("checked", true);
					} else {
						$("input[name=follow_arr]").prop("checked", false);
					}
				})
			})
		</script>
	</div>
</body>
</html>

<!-- === END FOOTER === -->