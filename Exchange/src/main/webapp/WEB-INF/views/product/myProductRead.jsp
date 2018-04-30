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
<meta property="fb:app_id" content="935663549947890" />
<meta property="og:title" content="지금바꾸러갑니다" />
<meta property="og:type" content="website" />
<meta property="og:image"
	content="<%=request.getContextPath() %>/uploadfile/memberproduct/${productOne.pro_photo_01 }" />
<meta property="og:site_name" content="C.m.A API 이야기 [chongmoa.com]" />
<meta property="og:url"
	content="http://localhost:8080/exchange/product/myProductRead?pro_idx=${productOne.pro_idx }" />
<meta property="og:description" content="${productOne.pro_contents }" />

<style>
#product_List li {
	float: left;
	list-style: none;
	display: inline;
}

#categoryBox {
	text-align: right;
}

#buttons {
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
									<c:if test="${productOne.pro_photo_02 ne null}">
										<li><a href="#"> <img width="100px" height="70px"
												src="<%=request.getContextPath() %>/uploadfile/memberproduct/${productOne.pro_photo_02 }">
										</a></li>
									</c:if>
									<c:if test="${productOne.pro_photo_03 ne null}">
										<li><a href="#"> <img width="100px" height="70px"
												src="<%=request.getContextPath() %>/uploadfile/memberproduct/${productOne.pro_photo_03 }">
										</a></li>
									</c:if>
								</ul>
								<br>
								<div class="fb-share-button"
									data-href="https://www.your-domain.com/your-page.html"
									data-layout="button_count"></div>
								<h3>상세 설명</h3>
								<p style="border: solid; 1px; ">${productOne.pro_contents }</p>
							</div>
							<div class="col-md-6 margin-bottom-10 animate fadeInRight">
								<h2 class="padding-top-10 pull-left">${productOne.pro_name }
								</h2>
								<a href='javascript:goFacebook();'>공유하기</a>
								<br>
								
								<c:if test="${productOne.mem_idx eq session_member.mem_idx}">
									<div id="buttons">
										<input type="button" value="수정" id="modify" onclick="location='myProductModify?pro_idx=${productOne.pro_idx}'">
										<!-- <input type="submit" value="수정" id="modify"> --> 
										<input type="submit" value="삭제" id="delete">
									</div>
								</c:if>
								<div class="clearfix"></div>
								<h5>
									등록일 :
									<fmt:formatDate value="${productOne.pro_regdate }"
										pattern="yyyy.MM.dd" />
									<br> 교환장소 : ${productOne.pro_location }
								</h5>
								<hr>
								<h4>등록자 정보</h4>
								<h5>
									닉네임 : ${ownerMember.mem_nickname }<br> 이메일 :
									${ownerMember.mem_email }<br> 전화번호 :
									${ownerMember.mem_phone }<br>
								</h5>
								<hr>
								댓글달기<br>
								<textarea id="comment" name="comment" cols="70"></textarea>
								<br> <input type="button" value="입력" id="write">
								<div id="table"></div>
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
		<!-- 댓글 기능 스크립트 -->
		<%@include file="../include/myProductReply.jsp"%>
		
		
		<script>
		function goFacebook(){
			var url = "http://g-y-e-o-m.tistory.com/";
			var encodeURL = encodeURIComponent(url);
			location.href = "https://www.facebook.com/sharer/sharer.php?u+"+encodeURL;
		}
		</script>

	</div>
</body>
</html>
<!-- === END FOOTER === -->