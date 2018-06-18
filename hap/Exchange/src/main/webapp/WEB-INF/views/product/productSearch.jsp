<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- === BEGIN HEADER === -->
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<style>
table {
	margin-left: auto;
	margin-right: auto;
}
</style>
<%@include file="../include/style.jsp"%>
</head>
<body>
	<div id="body-bg">
		<%@include file="../include/header.jsp"%>
		<!-- === BEGIN CONTENT === -->
		<div id="content">
			<div class="container background-white" style="height: 801px;">
				<div class="row margin-vert-40">
					<div class="col-md-12">
						
						<h2 style="display: inline;"> &nbsp;&nbsp;&nbsp; ${search_product.pro_name } </h2><br>
						<c:if test="${empty search_list }">
							 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h2>검색결과없음</h2>
						</c:if>
						 <table>
						 <c:forEach items="${search_list}" var="search_list" varStatus="status">
                         <c:if test="${status.index%5==0 }"><tr></c:if>
                       		 <td style="padding: 10px">
                        <a href="myProductRead?pro_idx=${search_list.pro_idx }"> <img alt="${search_list.pro_name }님의 사진" height="150px" width="150px"  
                       		src="<%=request.getContextPath() %>/uploadfile/memberproduct/${search_list.pro_photo_01 }"><br> ${search_list.pro_name } </a>
                        </td>
                        </c:forEach>
                        </table>
					</div>
				</div>
			</div>
		</div>
		<!-- === END CONTENT === -->
		<%@include file="../include/footer.jsp"%>
		<%@include file="../include/jsFile.jsp"%>
	</div>
</body>
</html>
<!-- === END FOOTER === -->