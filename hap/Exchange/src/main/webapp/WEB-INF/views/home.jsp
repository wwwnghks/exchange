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
        <!-- Title -->
        <title>Habitat - A Professional Bootstrap Template</title>
        <%@include file="include/style.jsp"%>
    </head>
    <body>
        <div id="body-bg">
            <!-- Phone/Email -->
            <%@include file="include/header.jsp" %>
            <!-- End Top Menu -->
            <!-- === END HEADER === -->
            <!-- === BEGIN CONTENT === -->
            <div id="slideshow" class="bottom-border-shadow">
                <div class="container no-padding background-white bottom-border">
                    <div class="row">
                        <!-- Carousel Slideshow -->
                        <div id="carousel-example" class="carousel slide" data-ride="carousel">
                            <!-- Carousel Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example" data-slide-to="1"></li>
                                <li data-target="#carousel-example" data-slide-to="2"></li>
                            </ol>
                            <div class="clearfix"></div>
                            <!-- End Carousel Indicators -->
                            <!-- Carousel Images -->
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img src="<%=request.getContextPath() %>/resources/HTML/assets/img/slideshow/slide1.jpg">
                                </div>
                                <div class="item">
                                    <img src="<%=request.getContextPath() %>/resources/HTML/assets/img/slideshow/slide2.jpg">
                                </div>
                                <div class="item">
                                    <img src="<%=request.getContextPath() %>/resources/HTML/assets/img/slideshow/slide3.jpg">
                                </div>
                                <div class="item">
                                    <img src="<%=request.getContextPath() %>/resources/HTML/assets/img/slideshow/slide4.jpg">
                                </div>
                            </div>
                            <!-- End Carousel Images -->
                            <!-- Carousel Controls -->
                            <a class="left carousel-control" href="#carousel-example" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                            <!-- End Carousel Controls -->
                        </div>
                        <!-- End Carousel Slideshow -->
                    </div>
                </div>
            </div>
            <div id="icons" class="bottom-border-shadow">
                <div class="container background-grey bottom-border">
                    <div class="row padding-vert-60">
                        <!-- Icons -->
                        <div class="col-md-4 text-center">
                            <i class="fa-cogs fa-4x color-primary animate fadeIn"></i>
                            <h2 class="padding-top-10 animate fadeIn">Velit esse molestie</h2>
                            <p class="animate fadeIn">Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer.</p>
                        </div>
                        <div class="col-md-4 text-center">
                            <i class="fa-cloud-download fa-4x color-primary animate fadeIn"></i>
                            <h2 class="padding-top-10 animate fadeIn">Quam nunc putamus</h2>
                            <p class="animate fadeIn">Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer.</p>
                        </div>
                        <div class="col-md-4 text-center">
                            <i class="fa-bar-chart fa-4x color-primary animate fadeIn"></i>
                            <h2 class="padding-top-10 animate fadeIn">Placerat facer possim</h2>
                            <p class="animate fadeIn">Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer.</p>
                        </div>
                        <!-- End Icons -->
                    </div>
                </div>
            </div>
           
            <!-- Portfolio2 -->
            <div id="portfolio" class="bottom-border-shadow">
                <div class="container bottom-border">
                    <div class="row padding-top-40">
                        <h3><b>지금 바꾸러갑니다! 신규등록상품</b></h3> 
                         <table style="margin-right: 10px">
                        <tr>
                         <c:forEach items="${allProduct}" var="list" varStatus="status">
                         <c:if test="${status.index%4==0 }"><tr></c:if>
                        <td style="padding: 20px">
                        <a href="product/myProductRead?pro_idx=${list.pro_idx }"> <img alt="${list.pro_name }님의 사진" height="220px" width="220px"  
                       		src="<%=request.getContextPath() %>/uploadfile/memberproduct/${list.pro_photo_01 }"><br>[${list.loc_sub }] ${list.pro_name } </a>
                        </td>
                		 </c:forEach>
                        </table> 
                    </div>
                </div>
            </div>
            <!-- End Portfolioa -->
            <!-- === END CONTENT === -->

           <%@include file="include/footer.jsp" %>
           <%@include file="include/jsFile.jsp" %>
           
            </div>
    </body>
</html>
<!-- === END FOOTER === -->