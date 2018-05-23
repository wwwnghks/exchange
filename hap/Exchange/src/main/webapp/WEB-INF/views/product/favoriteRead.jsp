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
						<h1>관심 상품</h1>
						<c:if test="${!empty favorite_list }">
							<form id="favoriteproduct" action="favoriteRead" method="post">
								<table style="width: 750px;" class="table ">
									<tr>
										<th><input type="checkbox" id="checkall" name="checkall"></th>
										<th>사진</th>
										<th>상품명</th>
										<th>판매자</th>
										<th>상품 등록일</th>
									</tr>

									<c:forEach items="${favorite_list }" var="list">
										<tr>
											<td style="vertical-align: middle;"><input type="checkbox" name="fav_pro_arr"
												value="${list.fav_pro_idx }"></td>
											<td style="vertical-align: middle;"><a href="myProductRead?pro_idx=${list.pro_idx }">
													<img alt="${list.pro_name }님의 사진" height="80px"
													width="80px"
													src="<%=request.getContextPath() %>/uploadfile/memberproduct/${list.pro_photo_01 }">
											</a></td>
											<td style="vertical-align: middle;">${list.pro_name }</td>
											<td style="vertical-align: middle;">${list.mem_nickname }</td>
											<td style="vertical-align: middle;"><fmt:formatDate value="${list.pro_regdate }"
													pattern="yyyy.MM.dd  hh:mm" /></td>
									</c:forEach>
								</table>

							</form>
							<input type="submit" class="btn btn-danger btn-sm" value="삭제"
								onclick="Javascript:favoriteDelete();">
						</c:if>
					</div>
				</div>
			</div>
		</div>
		<!-- === END CONTENT === -->
		<%@include file="../include/footer.jsp"%>
		<%@include file="../include/jsFile.jsp"%>
		<script>
			function favoriteDelete() {
				if (confirm('삭제 하시겠습니까?')) {
					$("#favoriteproduct").submit();
				}
			}
		</script>

		<script>
			$(document).ready(function() {
				$("#checkall").click(function() {
					if ($("#checkall").prop("checked")) {
						$("input[name=fav_pro_arr]").prop("checked", true);
					} else {
						$("input[name=fav_pro_arr]").prop("checked", false);
					}
				})
			})
		</script>
	</div>
</body>
</html>

<!-- === END FOOTER === -->