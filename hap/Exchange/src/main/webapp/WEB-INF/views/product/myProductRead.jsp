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

								<h3>상세 설명</h3>
								<p style="border: solid; 1px; ">${productOne.pro_contents }</p>
								<br> <b>해시태그</b>
								<div id="hashDiv"></div>
							</div>
							<div class="col-md-6 margin-bottom-10 animate fadeInRight">
								<h2 class="padding-top-10 pull-left">${productOne.pro_name }
								</h2>
								<div class="fb-share-button"
									data-href="http://ec2-52-78-244-162.ap-northeast-2.compute.amazonaws.com:8080/exchange/product/myProductRead?pro_idx=${productOne.pro_idx }"
									data-layout="button_count"></div>
								<a id="kakao-link-btn" href="javascript:sendLink();"> <img
									src="//developers.kakao.com/assets/img/about/logos/kakaolink/kakaolink_btn_medium.png"
									style="width: 60px; height: 23px;" />
								</a> <span> <script type="text/javascript"
										src="http://share.naver.net/js/naver_sharebutton.js"></script>
									<script type="text/javascript">
	
											new ShareNaver.makeButton({"type": "c" , "title":"${productOne.pro_name}"});

									
									</script>
								</span> <br>

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
										<input type=button value="쪽지보내기" onclick="openWin1();">&nbsp;
									<input type="button" id="follow_btn" value="팔로우"
											onclick="javascript:follow();">
										<input type=button value="신고하기" onclick="openWin2();">
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
		<!-- === END CONTENT2=== -->
		<%@include file="../include/footer.jsp"%>
		<%@include file="../include/jsFile.jsp"%>
		<!-- 댓글 기능 스크립트 -->
		<%@include file="../include/myProductReply.jsp"%>
		<!-- 팔로우 기능 스크립트. -->
		<%@include file="../include/follow.jsp"%>
		<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
		<!-- 이미지 클릭시 이미지전환 -->
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