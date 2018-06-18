<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- === BEGIN HEADER === -->
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<style>
#product_List li {float:left; list-style:none; display: inline;}
#categoryBox {text-align: right;}
/* #main_div {
 	height: 1000px;
} */
#bspace{
	height:500px;
	width: 80px;
}
.name{
	text-overflow: ellipsis;
	white-space: nowrap;
	display: inline-block;
	overflow: hidden;
}

.margin-center {
   margin: auto;
   width: 55%;   
   padding: 10px;
   padding-top: 40px;
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
                <div class="container background-white" style="height: 800px;">
                    <div class="margin-center">
                        <!-- Begin Sidebar Menu -->
                        <div class="col-md-2">
                           <%@include file="../include/myPageSide.jsp"%>
                        </div>
                         <div id="bspace" class="col-md-2"></div>
                        <div id="main_div">
                        <!-- End Sidebar Menu -->
                        <h1>내 상품</h1>
                          <table style="margin-right: 10px">
                        <tr>
                         <c:forEach items="${productList}" var="productList" varStatus="status">
                         <c:if test="${status.index%4==0 }"><tr></c:if>
                        <td style="padding: 10px" class="name">
                        <a href="myProductRead?pro_idx=${productList.pro_idx }"> <img alt="${productList.pro_name }님의 사진" height="150px" width="150px"  
                       		src="<%=request.getContextPath() %>/uploadfile/memberproduct/${productList.pro_photo_01 }"><br> ${productList.pro_name } </a>
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