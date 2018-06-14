<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<style>
div {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

html, h1, h2, h3, h4, h5, h6, form, fieldset, img {
	margin: 0;
	padding: 0;
	border: 0;
}

#listshow {
	width: 960px;
	margin: 0 auto;
	padding: 0px 10px 200px 10px;
}

#wrap-listshow {
	background: #f9f9f9;
}

.curation-item {
	background: #fff;
	border: 1px solid #d5d5d5;
	width: 300px;
	margin-right: 20px;
	margin-bottom: 20px;
	float: left;
	position: relative;
	border-radius: 2px;
}

.curation-item>a {
	display: block;
}

a:link, a:visited {
	color: inherit;
	text-decoration: none;
}

.curation-item .thumb {
	width: 100%;
	height: 168px;
	position: relative;
	overflow: hidden;
}

.curation-item .thumb img {
	position: absolute;
	top: 50%;
	left: 50%;
	height: 100%;
	width: 100%;
	-webkit-transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
	border-top-left-radius: 2px;
	border-top-right-radius: 2px;
	vertical-align: middle;
}

.curation-item .tag-list {
	padding: 0px 20px;
	height: 40px;
	width: 100%;
	overflow: hidden;
	margin: 20px 0px 15px;
}

.curation-item .tag-list .tag {
	font-size: 12px;
	line-height: 18px;
	color: #666;
	background: #f0f0f0;
	border-radius: 2px;
	display: inline-block;
	padding: 1px 5px;
	margin-bottom: 5px;
	margin-right: 5px;
}

.curation-item .title {
	font-size: 14px;
	color: #999;
	display: inline-block;
	/* height: 100px; */ 
	margin: 0px 20px 0px 20px;
	border-top: 1px solid #d5d5d5;
	width: 260px;
}
 .curation-item .title p {
	/* margin-top: 10px; */
	vertical-align: middle;
	font-size: 15px;
} 

.curation-item .title h3 {
	vertical-align: middle;
	font-size: 20px;
	line-height: 27px;
	/* height: 40px; */
	width: 100%;
	overflow: hidden;
	word-break: break-all;
	color: #222;
	text-overflow: ellipsis;
	white-space: nowrap;
	display: block;
}

.area {
	margin-top: 20px;
	width: 100%;
	float: left;
}

/* .row {
	margin-left: -20px;
	margin-right: -20px;
} */
</style>

</head>
<body>
	<div id="body-bg" style="background-color: white;">
		<!-- Phone/Email -->
		<%@include file="include/header.jsp"%>
		<!-- End Top Menu -->
		<!-- === END HEADER === -->
		<!-- === BEGIN CONTENT === -->
		<div id="slideshow" style="margin-top: -60px;">
			<div class="container no-padding background-white bottom-border">
				<div class="row">
					<!-- Carousel Slideshow -->
					<div id="carousel-example" class="carousel slide"
						data-ride="carousel">
						<!-- Carousel Indicators -->
						<ol class="carousel-indicators">
							<li data-target="#carousel-example" data-slide-to="0"
								class="active"></li>
							<li data-target="#carousel-example" data-slide-to="1"></li>
							<li data-target="#carousel-example" data-slide-to="2"></li>
						</ol>
						<div class="clearfix"></div>
						<!-- End Carousel Indicators -->
						<!-- Carousel Images -->
						<div class="carousel-inner">
							<div class="item active">
								<img
									src="<%=request.getContextPath()%>/resources/HTML/assets/img/slideshow/baggu2.jpg" width="1235%" height="400%">
							</div>
							<div class="item">
								<img
									src="<%=request.getContextPath()%>/resources/HTML/assets/img/slideshow/photo3.jpg" width="1235%" height="400%">
							</div>
							<%-- <div class="item">
								<img
									src="<%=request.getContextPath()%>/resources/HTML/assets/img/slideshow/baggu6.jpg" width="1235%" height="400%">
							</div> --%>
						</div>
						<!-- End Carousel Images -->
						<!-- Carousel Controls -->
						<a class="left carousel-control" href="#carousel-example"
							data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left"></span>
						</a> <a class="right carousel-control" href="#carousel-example"
							data-slide="next"> <span
							class="glyphicon glyphicon-chevron-right"></span>
						</a>
						<!-- End Carousel Controls -->
					</div>
					<!-- End Carousel Slideshow -->
				</div>
			</div>
		</div>
		<div id="wrap-listshow">
			<div id="listshow">
				<br>
				<h2>
					<strong>신규 상품</strong>
				</h2>
				<br>
				<div class="row">
					<c:forEach items="${allProduct}" var="list" varStatus="status">
						<div class="curation-item">
							<a href="product/myProductRead?pro_idx=${list.pro_idx }">
								<div class="thumb">
									<img title="" alt="${list.pro_name }님의 사진"
										src="<%=request.getContextPath() %>/uploadfile/memberproduct/${list.pro_photo_01 }">
								</div>
								<div class="tag-list">
									<span class="tag">${list.pro_hash }</span>
								</div>
								<div class="title">
									<p>[${list.loc_sub }]</p>
									<h3>
										<strong>${list.pro_name }</strong>
									</h3>
								</div>
							</a>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<!-- End Portfolioa -->
	<!-- === END CONTENT === -->

	<%-- <%@include file="include/footer.jsp"%> --%>
	<%@include file="include/jsFile.jsp"%>
	<%@include file="include/footer.jsp"%>

	<script type="text/javascript"
		src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js"
		charset="utf-8"></script>
	<script>
		$(function() {
			var url = window.location.href;
			var urlArr = url.split('access_token');
			if (urlArr.length > 1) {
				var naverLogin = new naver.LoginWithNaverId(
						{
							clientId : "QuDRvcnM4lcWAokv8mOE",
							callbackUrl : "http://ec2-52-78-244-162.ap-northeast-2.compute.amazonaws.com:8080/exchange/",
							isPopup : false,
							callbackHandle : false
						});

				naverLogin.init();

				naverLogin.getLoginStatus(function(status) {
					if (status) {
						var email = naverLogin.user.getEmail();
						var name = naverLogin.user.getNickName();
						var profileImage = naverLogin.user.getProfileImage();
						$.ajax({
							type : 'GET',
							url : 'navercreate',
							cache : false,
							data : {
								mem_id : email + '_Naver',
								mem_pw : 'naver',
								mem_name : name,
								mem_nickname : name + '_Naver',
								mem_photo : profileImage,
							},
							success : function(data) {
								window.location = '/exchange';
							},
							error : function(request, status, error) {
								alert('ERROR : ' + request + ' ' + status + ' '
										+ error);
							}
						});
					} else {
						console.log("AccessToken이 올바르지 않습니다.");
					}
				});
			}
		})
	</script>
	</div>
</body>
</html>
<!-- === END FOOTER === -->