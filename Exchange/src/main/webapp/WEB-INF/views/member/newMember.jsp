<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
<%@include file="../include/style.jsp"%>
</head>

<body>
	<div id="body-bg">
		<%@include file="../include/header.jsp"%>
		<div id="content">
			<div class="container background-white">
				<div class="row margin-vert-30">
					<!-- Register Box -->
					<div class="col-md-6 col-md-offset-3 col-sm-offset-3">
						<form action="../" method="post" enctype="multipart/form-data"
							class="signup-page">
							<div class="signup-header">
								<h2>회원가입</h2>
								<p>안녕하세요,아래의 정보를 입려해 주세요.</p>
							</div>
							<label>아이디</label> <input class="form-control margin-bottom-20"
								type="text" name="mem_id"> <label>비밀번호</label> <input
								class="form-control margin-bottom-20" type="password"
								name="mem_pw"> <label>이름</label> <input
								class="form-control margin-bottom-20" type="text"
								name="mem_name"> <label>생년월일</label><br>
							<script src = "<%=request.getContextPath()%>/resources/js/birth.js">
								
							</script>
							<br> <br> <label>닉네임</label> <input
								class="form-control margin-bottom-20" type="text"
								name="mem_nickname"> <label>핸드폰번호</label> <input
								class="form-control margin-bottom-20" type="text"
								name="mem_phone"> <label>이메일</label> <input
								class="form-control margin-bottom-20" type="text"
								name="mem_email"> <label>주소</label><br> <input
								type="text" style="width: 30%; white-space: nowrap;"
								name="address_post" id="sample4_postcode"
								onclick="sample4_execDaumPostcode(1)" placeholder="우편번호">
							<input type="button" onclick="sample4_execDaumPostcode(1);"
								value="우편번호 찾기"> <br> <input type="text"
								class="form-control margin-bottom-0" name="address_01"
								id="sample4_roadAddress" placeholder="도로명주소"> <input
								type="text" class="form-control margin-bottom-0"
								name="address_02" id="sample4_jibunAddress" placeholder="상세주소">
							<span id="guide" style="color: #999"></span> <br>
							<br> <label>사진</label> <input type="file" name="photofile">

							<hr>
							<div class="row">
								<div align="right">
									<input type=button class="btn btn-aqua" value="뒤로가기"
										onclick="location='../'">
									<button class="btn btn-primary" type="submit">회원가입</button>
								</div>
							</div>
						</form>
					</div>
					<!-- End Register Box -->
				</div>
			</div>
		</div>
		<!-- === END CONTENT === -->

		<%@include file="../include/footer.jsp"%>
		<%@include file="../include/jsFile.jsp"%>

		<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
		<script src="<%=request.getContextPath()%>/resources/js/daumAdressAPI.js">
		</script>
	</div>
</body>
</html>
<!-- === END FOOTER === -->