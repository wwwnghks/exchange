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

#main_div {
	margin-right: 0px;
}
</style>
<script type="text/javascript">
	function listNum(page) {
		location.href = "/exchange/declaration/declaration?curPage" + page
				+ "&searchOption=${map.searchOption}"
				+ "&keyword=${map.keyword}";
	}
</script>

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
					<div id="main_div">



						<table border="1">
							<tr>
								<td>신고 제목: ${dec_list.dec_msg_title }</td>
							</tr>
							<tr>
								<td>
									<%-- <dl>
										<dd>신고자: ${dec_list.mem_name }</dd>
										<dd style="width: 50px;">&nbsp;</dd>
										<dd>작성일: <fmt:formatDate value="${dec_list.dec_msg_regdate}" pattern="yyyy.MM.dd"/> </dd>
										<dd style="width: 50px;">&nbsp;</dd>
										<dd>조회수:</dd>
										<dd style="width: 50px;">&nbsp;</dd>
									</dl> --%>
									<dl>
										<dd>
											신고자: ${dec_list.mem_name } &nbsp;&nbsp;&nbsp;&nbsp; 작성일:
											<fmt:formatDate value="${dec_list.dec_msg_regdate}"
												pattern="yyyy.MM.dd" />
										</dd>
									</dl>
								</td>
							</tr>
							<tr>
								<td colspan="2" style="line-height: 150%;">신고 내용:
									${dec_list.dec_msg_contents }</td>
							</tr>

						</table>
					</div>
				</div>

			</div>
		</div>
	</div>
	<!-- === END CONTENT === -->
	<%@include file="../include/footer.jsp"%>
	<%@include file="../include/jsFile.jsp"%>

</body>
</html>
<!-- === END FOOTER === -->