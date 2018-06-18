<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- === BEGIN HEADER === -->
<!DOCTYPE html>
<html lang="en">
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

#hashDiv {
	font-size: 12px;
	line-height: 18px;
	color: #666;
	background: #f0f0f0;
	border-radius: 2px;
	display: inline-block;
	padding: 1px 5px;
	margin-right: 5px;
}

.right h2 {
	line-height: 27px;
	margin-top: 11px;
}

.right h4 {
	line-height: 20px;
	font-weight: 400;
	margin-top: 5px;
}

.right {
	width: 540px;
	margin-left: 20px;
	float: left;
	position: relative;
}

.right-box {
	float: right;
}
}
</style>
<!-- Title -->
<title>Habitat - A Professional Bootstrap Template</title>
<%@include file="../include/style.jsp"%>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />

<meta property="og:title" content="지금바꾸러갑니다" />
<meta property="og:type" content="website" />
<meta property="og:image"
	content="http://ec2-52-78-244-162.ap-northeast-2.compute.amazonaws.com:8080/exchange/uploadfile/memberproduct/${productOne.pro_photo_01 }" />
<meta property="og:url"
	content="http://ec2-52-78-244-162.ap-northeast-2.compute.amazonaws.com:8080/exchange/product/myProductRead?pro_idx=${productOne.pro_idx }" />
<meta property="og:description" content="${productOne.pro_contents }" />

<meta name="twitter:url"
	content="http://localhost:8080/exchange/product/myProductRead?pro_idx=${productOne.pro_idx }" />
<meta name="twitter:title" content="C.m.A API 이야기 [chongmoa.com]" />
<meta name="twitter:description" content="" />

</head>
<body>
	<div id="body-bg">
		<%@include file="../include/header.jsp"%>
		<!-- === BEGIN CONTENT === -->
		<div id="content">
			<div class="container background-white" style="height: 945px;">
				<div class="row margin-vert-40">
					<div class="col-md-12">
						<div class="row">
							<div class="col-md-4">
								<img width="350px" height="250px" id="preview_img"
									src="<%=request.getContextPath() %>/uploadfile/memberproduct/${productOne.pro_photo_01 }"
									alt="about-me" class="margin-top-10">
								<ul class="list-inline about-me-icons margin-vert-20">
									<li><a href="javascript:img01_change();"> <img
											width="100px" height="70px" id="img01"
											src="<%=request.getContextPath() %>/uploadfile/memberproduct/${productOne.pro_photo_01 }">
									</a></li>
									<c:if test="${productOne.pro_photo_02 ne null}">
										<li><a href="javascript:img02_change();"> <img
												width="100px" height="70px" id="img02"
												src="<%=request.getContextPath() %>/uploadfile/memberproduct/${productOne.pro_photo_02 }">
										</a></li>
									</c:if>
									<c:if test="${productOne.pro_photo_03 ne null}">
										<li><a href="javascript:img03_change();"> <img
												width="100px" height="70px" id="img03"
												src="<%=request.getContextPath() %>/uploadfile/memberproduct/${productOne.pro_photo_03 }">
										</a></li>
									</c:if>
								</ul>
								<br>
								<div id="hashDiv">${productOne.pro_hash }</div>
								<br> <br>
								<%-- <div class="fb-share-button"
									data-href="http://ec2-52-78-244-162.ap-northeast-2.compute.amazonaws.com:8080/exchange/product/myProductRead?pro_idx=${productOne.pro_idx }"
									data-layout="button_count"></div> --%>

								<div class="fb-share-button"
									data-href="http://ec2-52-78-244-162.ap-northeast-2.compute.amazonaws.com:8080/exchange/product/myProductRead?pro_idx=${productOne.pro_idx }"
									data-layout="button" data-size="small"
									data-mobile-iframe="true">
									<a target="_blank"
										href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&amp;src=sdkpreparse"
										class="fb-xfbml-parse-ignore">공유하기</a>
								</div>

								<a id="kakao-link-btn" href="javascript:sendLink();"> <img
									src="<%=request.getContextPath()%>/resources/HTML/assets/img/blog/카카오.PNG"
									style="width: 25px" style="width: 60px; height: 23px;" />
								</a> 
								<span> <script type="text/javascript"
										src="http://share.naver.net/js/naver_sharebutton.js"></script>
									<script type="text/javascript">
										new ShareNaver.makeButton({
											"type" : "c",
											"title" : "${productOne.pro_name}"
										});
									</script>
								</span> 
								<a href="#"
									onclick="javascript:window.open('https://twitter.com/intent/tweet?text=[%EA%B3%B5%EC%9C%A0]%20 ${productOne.pro_name }%20-%20'+ encodeURIComponent(document.URL), 'twittersharedialog', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=300,width=600');return false;"
									target="_blank" alt="Share on Twitter"><img
									src="<%=request.getContextPath()%>/resources/HTML/assets/img/blog/트위터.PNG"
									style="width: 25px"></a> <br>
							</div>

							<div class="right">
								<h2 class="padding-top-10 pull-left">
									<strong>${productOne.pro_name }</strong>
								</h2>
								<div class='right-box'>
									<c:if test="${productOne.mem_idx ne session_member.mem_idx}">
										<input type="button" value="관심상품" class="btn btn-sm"
											style="background-color: #222; color: white;"
											onclick="location='favoriteProduct?pro_idx=${productOne.pro_idx}'">&nbsp;
										<input type="button" id="follow_btn" value="팔로우"
											style="background-color: #222; width: 70px; color: white;"
											class="btn btn-sm" onclick="javascript:follow();">&nbsp;
										<input type=button class="btn btn-sm"
											style="background-color: #222; color: white;" value="신고하기"
											onclick="openWin2();">
									</c:if>
									<c:if test="${productOne.mem_idx eq session_member.mem_idx}">
										<div id="buttons">
											<input type="button" class="btn btn-sm"
												style="background-color: white; border-color: #222; color: #222;"
												value="수정" id="modify"
												onclick="location='myProductModify?pro_idx=${productOne.pro_idx}'">
											<input type="submit" class="btn btn-danger btn-sm" value="삭제"
												id="delete"
												onclick="location='myProductDelete?pro_idx=${productOne.pro_idx}'">
										</div>
									</c:if>
								</div>
								<div class="clearfix"></div>
								<br>
								<h4>${productOne.pro_contents }</h4>

								<div class="clearfix"></div>
								<h5 class="padding-top-10 pull-left">
									<br> <strong>교환장소 : </strong>${productOne.pro_location }<br>
									<br> <strong>등록일 :</strong>
									<fmt:formatDate value="${productOne.pro_regdate }"
										pattern="yyyy.MM.dd" />
								</h5>
								<div class='right-box'>
									<c:if test="${productOne.mem_idx ne session_member.mem_idx}">
										<input type="button" value="추천장소" class="btn btn-lm"
											style="background-color: #ffc044; color: white;"
											id="exchange" onclick="openMap();">
									</c:if>
								</div>
								<div class="clearfix"></div>
								<hr>

								<h4>등록자 정보</h4>
								<h5>
									<strong>닉네임 : </strong>${ownerMember.mem_nickname }<br> <br>
									<strong> 이메일 :</strong> ${ownerMember.mem_email }<br> <br>
									<strong> 전화번호 :</strong> ${ownerMember.mem_phone }
									<div class='right-box'>
										<c:if test="${productOne.mem_idx ne session_member.mem_idx}">
											<input type="button" class="btn btn-lm" value="거래신청"
												style="background-color: #09d2e5; color: white;"
												onclick="openWin3();">
											<input type="hidden" value="" id="mypro_idx">
									&nbsp;
										<input type=button class="btn btn-lm" value="쪽지보내기"
												style="background-color: #222; color: white;"
												onclick="openWin1();">&nbsp;
									</c:if>
									</div>
								</h5>
								<br> <br> 댓글<br>
								<textarea class='form-control' id="comment" name="comment" cols="70"></textarea>
								<br>
								<div class='right-box'>
									<input type="button" value="입력" id="write">
								</div>
								<br> <br>
								<div id="table"></div>
							</div>
						</div>
						<hr>
					</div>
				</div>
			</div>
		</div>
		<!-- ===END CONTENT2===  -->
		<%@include file="../include/footer.jsp"%>
		<%@include file="../include/jsFile.jsp"%>
		<!-- 댓글 기능 스크립트 -->
		<%@include file="../include/myProductReply.jsp"%>
		<!-- 팔로우 기능 스크립트. -->
		<%@include file="../include/follow.jsp"%>
		<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
		<!-- 이미지 클릭시 이미지전환  -->
		<script src="<%=request.getContextPath()%>/resources/js/imageRead.js">
			
		</script>
		<script
			src="<%=request.getContextPath()%>/resources/js/facebooksharing.js">
			
		</script>

		<script type='text/javascript'>
			//<![CDATA[
			// // 사용할 앱의 JavaScript 키를 설정해 주세요.
			Kakao.init('01573e66ef996be032057b0b4df7039e');
			// // 카카오링크 버튼을 생성합니다. 처음 한번만 호출하면 됩니다.
			function sendLink() {
				Kakao.Link
						.sendDefault({
							objectType : 'feed',
							content : {
								title : '${productOne.pro_name}',
								description : '${productOne.pro_contents}',
								imageUrl : 'http://ec2-52-78-244-162.ap-northeast-2.compute.amazonaws.com:8080/exchange/uploadfile/memberproduct/${productOne.pro_photo_01 }',
								link : {
									mobileWebUrl : 'http://ec2-52-78-244-162.ap-northeast-2.compute.amazonaws.com:8080/exchange/product/myProductRead?pro_idx=${productOne.pro_idx }',
									webUrl : 'http://ec2-52-78-244-162.ap-northeast-2.compute.amazonaws.com:8080/exchange/product/myProductRead?pro_idx=${productOne.pro_idx }'
								}
							},
							social : {
								likeCount : 286,
								commentCount : 45,
								sharedCount : 845
							},
							buttons : [
									{
										title : '웹으로 보기',
										link : {
											mobileWebUrl : 'http://ec2-52-78-244-162.ap-northeast-2.compute.amazonaws.com:8080/exchange/product/myProductRead?pro_idx=${productOne.pro_idx }',
											webUrl : 'http://ec2-52-78-244-162.ap-northeast-2.compute.amazonaws.com:8080/exchange/product/myProductRead?pro_idx=${productOne.pro_idx }'
										}
									},
									{
										title : '앱으로 보기',
										link : {
											mobileWebUrl : 'http://ec2-52-78-244-162.ap-northeast-2.compute.amazonaws.com:8080/exchange/product/myProductRead?pro_idx=${productOne.pro_idx }',
											webUrl : 'http://ec2-52-78-244-162.ap-northeast-2.compute.amazonaws.com:8080/exchange/product/myProductRead?pro_idx=${productOne.pro_idx }'
										}
									} ]
						});
			}
			//]]>
		</script>


		<!-- 신고하기,메시지보내기 창 띄우기 -->
		<%@include file="../include/openWin.jsp"%>
		<!-- 해시태그 a태그로 변환 -->
		<%@include file="../include/aTag_hash.jsp"%>

	</div>
</body>
</html>
<!-- === END FOOTER === -->