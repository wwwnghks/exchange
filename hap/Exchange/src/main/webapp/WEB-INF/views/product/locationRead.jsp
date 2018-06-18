followerRead<%@ page language="java" contentType="text/html; charset=UTF-8"
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
			<div class="container background-white" style="height: 780px;">
				<div class="row margin-vert-30">
					<div class="col-md-12">
						
						<h2>&nbsp;&nbsp;&nbsp; ${location } </h2>
						 <table>
						 <c:forEach items="${location_list}" var="location_list" varStatus="status">
                         <c:if test="${status.index%5==0 }"><tr></c:if>
                       		 <td style="padding: 10px">
                        <a href="myProductRead?pro_idx=${location_list.pro_idx }"> <img alt="${location_list.pro_name }님의 사진" height="150px" width="150px"  
                       		src="<%=request.getContextPath() %>/uploadfile/memberproduct/${location_list.pro_photo_01 }"><br> ${location_list.pro_name } </a>
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