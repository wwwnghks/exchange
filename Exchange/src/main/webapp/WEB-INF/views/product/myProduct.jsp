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
                            <ul class="list-group sidebar-nav" id="sidebar-nav">
                                <!-- Typography -->
                                <li class="list-group-item list-toggle">
                                    <a data-toggle="collapse" data-parent="#sidebar-nav" href="#collapse-typography">Typography</a>
                                    <ul id="collapse-typography" class="collapse">
                                        <li>
                                            <a href="features-typo-basic.html">
                                                <i class="fa fa-sort-alpha-asc"></i>Basic Typography</a>
                                        </li>
                                        <li>
                                            <a href="features-typo-blockquotes.html">
                                                <i class="fa fa-magic"></i>Blockquotes</a>
                                        </li>
                                    </ul>
                                </li>
                                <!-- End Typography -->
                                <!-- Components -->
                                <li class="list-group-item list-toggle">
                                    <a class="accordion-toggle" href="#collapse-components" data-toggle="collapse">Components</a>
                                    <ul id="collapse-components" class="collapse">
                                        <li>
                                            <span class="badge">New</span>
                                            <a href="features-labels.html">
                                                <i class="fa fa-tags"></i>Labels</a>
                                        </li>
                                        <li>
                                            <span class="badge">New</span>
                                            <a href="features-progress-bars.html">
                                                <i class="fa fa-align-left"></i>Progress Bars</a>
                                        </li>
                                        <li>
                                            <a href="features-panels.html">
                                                <i class="fa fa-columns"></i>Panels</a>
                                        </li>
                                        <li>
                                            <a href="features-pagination.html">
                                                <i class="fa fa-arrows-h"></i>Pagination</a>
                                        </li>
                                    </ul>
                                </li>
                                <!-- End Components -->
                                <!-- Icons -->
                                <li class="list-group-item list-toggle">
                                    <a data-toggle="collapse" data-parent="#sidebar-nav" href="#collapse-icons">Icons</a>
                                    <ul id="collapse-icons" class="collapse">
                                        <li>
                                            <span class="badge badge-u">New</span>
                                            <a href="features-icons.html">
                                                <i class="fa fa-chevron-circle-right"></i>Icon Styling</a>
                                        </li>
                                        <li>
                                            <a href="features-icons-font-awesome.html">
                                                <i class="fa fa-chevron-circle-right"></i>Font Awesome Icons</a>
                                        </li>
                                        <li>
                                            <a href="features-icons-social.html">
                                                <i class="fa fa-chevron-circle-right"></i>Social Icons</a>
                                        </li>
                                        <li>
                                            <a href="features-icons-glyphicons.html">
                                                <i class="fa fa-chevron-circle-right"></i>Glyphicons</a>
                                        </li>
                                    </ul>
                                </li>
                                <!-- End Icons -->
                                <!-- Testimonials -->
                                <li class="list-group-item">
                                    <a href="features-testimonials.html">Testimonials</a>
                                </li>
                                <!-- End Testimonials -->
                                <!-- Accordion and Tabs -->
                                <li class="list-group-item">
                                    <a href="features-accordions-tabs.html">Accordions & Tabs</a>
                                </li>
                                <!-- End Accordion and Tabs -->
                                <!-- Buttons -->
                                <li class="list-group-item">
                                    <a href="features-buttons.html">Buttons</a>
                                </li>
                                <!-- End Buttons -->
                                <!-- Carousels -->
                                <li class="list-group-item">
                                    <a href="features-carousels.html">Carousels</a>
                                </li>
                                <!-- End Accordion and Tabs -->
                                <!-- Animate On Scroll -->
                                <li class="list-group-item">
                                    <a href="features-animate-on-scroll.html">Animate On Scroll</a>
                                </li>
                                <!-- End Animate On Scroll -->
                                <!-- Grid System -->
                                <li class="list-group-item">
                                    <a href="features-grid.html">Grid System</a>
                                </li>
                                <!-- End Grid System -->
                            </ul>
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