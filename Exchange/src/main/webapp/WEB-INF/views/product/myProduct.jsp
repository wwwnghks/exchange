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
</style>
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
                        <div class="col-md-3">
                           <%@include file="../include/myPageSide.jsp"%>
                        </div>
                        <!-- End Sidebar Menu -->
                        <h1>내 상품</h1>
                        <div id="categoryBox">
                        <select id="category">
                        	<option selected="selected">카테고리별</option>
                        </select>
                        </div>
                          <table style="margin-right: 10px">
                        <tr>
                         <c:forEach items="${productList}" var="productList" varStatus="status">
                         <c:if test="${status.index%4==0 }"><tr></c:if>
                        <td style="padding: 10px">
                        <a href="myProductRead?pro_idx=${productList.pro_idx }"> <img alt="${productList.pro_name }님의 사진" height="150px" width="150px"  
                       		src="<%=request.getContextPath() %>/uploadfile/memberproduct/${productList.pro_photo_01 }"><br> ${productList.pro_name } </a>
                        </td>
                		 </c:forEach>
                        </table> 
                       <%--  <div id="categoryBox">
                        <select id="category">
                        	<option selected="selected">카테고리별</option>
                        </select>
                        </div>
                       
                        
                        <ul id = "product_List">
                        <c:forEach items="${productList}" var="productList">
                       		<li style="text-align: center; margin-right: 10px"><a href="myProductRead?pro_idx=${productList.pro_idx }"> <img alt="${productList.pro_name }님의 사진" height="150px" width="150px"  
                       		src="<%=request.getContextPath() %>/uploadfile/memberproduct/${productList.pro_photo_01 }"><br> ${productList.pro_name } </a></li>
                      
                       
                        </c:forEach>
                        </ul> --%>
            
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