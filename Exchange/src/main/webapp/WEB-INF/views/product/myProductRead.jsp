<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
#buttons{
	text-align: right;
	vertical-align: bottom;
}
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
				<div class="row margin-vert-30">
					<div class="col-md-12">
						<div class="row">
							<div class="col-md-5 animate fadeIn">
								<img width="350px" height="250px"
									src="<%=request.getContextPath() %>/uploadfile/memberproduct/${productOne.pro_photo_01 }"
									alt="about-me" class="margin-top-10">
								<ul class="list-inline about-me-icons margin-vert-20">
									<li><a href="#"> <img width="100px" height="70px"
											src="<%=request.getContextPath() %>/uploadfile/memberproduct/${productOne.pro_photo_01 }">
									</a></li>
									<li><a href="#"> <img width="100px" height="70px"
											src="<%=request.getContextPath() %>/uploadfile/memberproduct/${productOne.pro_photo_02 }">
									</a></li>
									<li><a href="#"> <img width="100px" height="70px"
											src="<%=request.getContextPath() %>/uploadfile/memberproduct/${productOne.pro_photo_03 }">
									</a></li>
								</ul>
								<br>
								<h3>상세 설명</h3>
								<p style="border: solid; 1px; ">${productOne.pro_contents }</p>
								
							</div>
							<div class="col-md-6 margin-bottom-10 animate fadeInRight">
								<h2 class="padding-top-10 pull-left">
									${productOne.pro_name }
								</h2><br>
								<div id="buttons"><input type="submit" value="수정" id="modify"><input type="submit" value="삭제" id="delete"></div>
								<div class="clearfix"></div>
								<h5>
									등록일 : <fmt:formatDate value="${productOne.pro_regdate }" pattern="yyyy.MM.dd" /><br>
									교환장소 : ${productOne.pro_location }
								</h5>
								<hr>
								
								<p>Lid est laborum dolo rumes fugats untras. Etharums ser
									quidem rerum facilis dolores nemis omnis fugats vitaes nemo
									minima rerums unsers sadips amets. Sed ut perspiciatis unde
									omnis iste natus error sit voluptatem accusantium doloremque
									laudantium, totam rem aperiam, eaque ipsa quae ab illo
									inventore veritatis et quasi architecto beatae vitae.</p>
								<p>Voluptatem accusantium doloremque laudantium, totam rem
									aperiam, eaque ipsa quae ab illo inventore veritatis et quasi
									architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam
									voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed
									quia consequuntur magni. Sed ut perspiciatis unde omnis iste
									natus error sit voluptatem accusantium doloremque laudantium,
									totam rem aperiam.</p>
							</div>
						</div>
						<hr>


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