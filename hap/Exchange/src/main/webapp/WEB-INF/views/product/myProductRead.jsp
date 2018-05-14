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

#buttons {
	text-align: right;
	vertical-align: bottom;
}
</style>
<!-- Title -->
<title>Habitat - A Professional Bootstrap Template</title>
<%@include file="../include/style.jsp"%>
<meta property="og:title" content="지금바꾸러갑니다" />
<meta property="og:type" content="website" />
<meta property="og:image"
	content="<%=request.getContextPath() %>/uploadfile/memberproduct/${productOne.pro_photo_01 }" />
<meta property="og:url"
	content="http://localhost:8080/exchange/product/myProductRead?pro_idx=${productOne.pro_idx }" />
<meta property="og:description" content="${productOne.pro_contents }" />

</head>
<body>
	<div id="body-bg">
		<%@include file="../include/header.jsp"%>
		<!-- === BEGIN CONTENT == -->
		<div id="content">
			<div class="container background-white">
				<div class="row margin-vert-30">
					<div class="col-md-12">
						<div class="row">
							<div class="col-md-5 animate fadeIn">
								<img width="350px" height="250px" id="preview_img"
									src="<%=request.getContextPath() %>/uploadfile/memberproduct/${productOne.pro_photo_01 }"
									alt="about-me" class="margin-top-10">
								<ul class="list-inline about-me-icons margin-vert-20">
									<li><a href="javascript:img01_change();" id="li_img01" > <img width="100px" height="70px" id="img01" 
											src="<%=request.getContextPath() %>/uploadfile/memberproduct/${productOne.pro_photo_01 }">
									</a></li>
									<c:if test="${productOne.pro_photo_02 ne null}">
										<li><a href="javascript:img02_change();" id="li_img01" > <img width="100px" height="70px" id="img02" 
												src="<%=request.getContextPath() %>/uploadfile/memberproduct/${productOne.pro_photo_02 }">
										</a></li>
									</c:if>
									<c:if test="${productOne.pro_photo_03 ne null}">
										<li><a href="javascript:img03_change();" id="li_img01" > <img width="100px" height="70px" id="img03" 
												src="<%=request.getContextPath() %>/uploadfile/memberproduct/${productOne.pro_photo_03 }">
										</a></li>
									</c:if>
								</ul>
								<br>

								<h3>상세 설명</h3>
								<p style="border: solid; 1px; ">${productOne.pro_contents }</p>
								<br> 해시태그 : ${productOne.pro_hash }
							</div>
							<div class="col-md-6 margin-bottom-10 animate fadeInRight">
								<h2 class="padding-top-10 pull-left">${productOne.pro_name }
								</h2>
								<div id="fb-root"></div>
								<script>
									(function(d, s, id) {
										var js, fjs = d.getElementsByTagName(s)[0];
										if (d.getElementById(id))
											return;
										js = d.createElement(s);
										js.id = id;
										js.src = 'https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v3.0&appId=935663549947890&autoLogAppEvents=1';
										fjs.parentNode.insertBefore(js, fjs);
									}(document, 'script', 'facebook-jssdk'));
								</script>

								<div class="fb-share-button"
									data-href="http://localhost:8080/exchange/product/myProductRead?pro_idx=${productOne.pro_idx }"
									data-layout="button_count" data-size="small"
									data-mobile-iframe="true"></div>

								<br>

								<c:if test="${productOne.mem_idx eq session_member.mem_idx}">
									<div id="buttons">
										<input type="button" value="수정" id="modify"
											onclick="location='myProductModify?pro_idx=${productOne.pro_idx}'">
										<input type="submit" value="삭제" id="delete"
											onclick="location='myProductDelete?pro_idx=${productOne.pro_idx}'">
									</div>
								</c:if>

								<c:if test="${productOne.mem_idx ne session_member.mem_idx}">
									<input type="button" value="관심상품 추가"
										style="position: absolute; right: 0"
										onclick="location='favoriteProduct?pro_idx=${productOne.pro_idx}'">
								</c:if>

								<div class="clearfix"></div>
								<h5>
									조회수 : ${productOne.pro_cnt }<br>
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
									${ownerMember.mem_phone } &nbsp; 
									<c:if test="${productOne.mem_idx ne session_member.mem_idx}">
									<input type="button" value="쪽지보내기" onclick="openWin();"> 
									<input type="button" id="follow_btn" value="팔로우" onclick="javascript:follow();">
									<br>
									
									</c:if>
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
		<!-- 팔로우 기능 스크립트 -->
		<%@include file="../include/follow.jsp" %>
		
		<script>
		function img01_change(){
   			$("#preview_img").attr("src",$("#img01").attr("src"));
   		 }
   		 function img02_change(){
   			$("#preview_img").attr("src",$("#img02").attr("src"));
   		 }
   		 function img03_change(){
   			$("#preview_img").attr("src",$("#img03").attr("src"));
   		 }
		</script>
		
		<script>
			function openWin() {
				window.open("http://localhost:8080/exchange/message/messageCreate?mem_nickname=${ownerMember.mem_nickname }&pro_idx=${productOne.pro_idx}","쪽지 보내기",
								"width=800, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
			}
		</script>

	</div>
</body>
</html>
<!-- === END FOOTER === -->