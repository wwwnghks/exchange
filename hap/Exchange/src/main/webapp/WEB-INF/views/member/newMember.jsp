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
<style type="text/css">
#logCh{
	color: red;
}
#nickCh{
	color: red;
}
#pw{
color: red;
}
#pwCh{
color: red;
}
</style>
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
							<table style=" width: 420px;">
							<tr>
							<td><label style="display: inline;">아이디 </label> </td><td><div id="logCh" style="width: 200px;">8자 이상 입력하세요.</div> </td><tr>
							<td colspan='2'><input class="form-control margin-bottom-20"
								type="text" name="mem_id" id = "id" oninput="id_check()"><td><tr>
								
								<td> <label>비밀번호</label></td><td><div id="pw" style="width: 200px;">8자 이상 입력하세요.</div></td><tr><td colspan='2'> <input
								class="form-control margin-bottom-20" type="password"
								name="mem_pw" id="pwText" oninput="pw()"> </td><tr><td><label>비밀번호 확인</label></td><td><div id="pwCh" style="width: 200px;">일치하지 않습니다.</div></td><tr>
								<td colspan='2'> <input
								class="form-control margin-bottom-20" type="password"
								name="pwChect" id="pwCheck" oninput="pwCh()"></td>
								<tr><td colspan='2'><label>이름</label> </td><tr><td colspan='2'><input
								class="form-control margin-bottom-20" type="text"
								name="mem_name"></td><tr><td colspan='2'> <label>생년월일</label></td><tr>
							<td colspan='2'><script src = "<%=request.getContextPath()%>/resources/js/birth.js">
								
							</script><br><br></td><tr>
							<td><label>닉네임</label></td><td><div id="nickCh">4자 이상 입력하세요.</div></td><tr><td colspan='2'> <input
								class="form-control margin-bottom-20" type="text"
								name="mem_nickname" id="nick" oninput="nick_check()"> </td><tr>
								<td colspan='2'>
								<label>핸드폰번호</label></td><tr><td colspan='2'> <input
								class="form-control margin-bottom-20" type="text"
								name="mem_phone"></td><tr><td colspan='2'> <label>이메일</label></td><tr><td colspan='2'> <input
								class="form-control margin-bottom-20" type="text"
								name="mem_email"></td><tr><td colspan='2'> <label>주소</label></td><tr><td colspan='2'> <input
								type="text" style="width: 30%; white-space: nowrap;"
								name="address_post" id="sample4_postcode"
								onclick="sample4_execDaumPostcode(1)" placeholder="우편번호">
							<input type="button" onclick="sample4_execDaumPostcode(1);"
								value="우편번호 찾기"> <br> <input type="text"
								class="form-control margin-bottom-0" name="address_01"
								id="sample4_roadAddress" placeholder="도로명주소"> <input
								type="text" class="form-control margin-bottom-0"
								name="address_02" id="sample4_jibunAddress" placeholder="상세주소"></td><tr>
							<td colspan='2'><span id="guide" style="color: #999"></span></td><tr>
							<td colspan='2'> <label>사진</label></td><tr><td colspan='2'> <input type="file" name="photofile"></td>
							</table>
							<hr>
							
							<div class="row">
								<div align="right">
								
									<input type=button class="btn btn-aqua" value="뒤로가기"
										onclick="location='../'">
									<button class="btn btn-primary" type="submit" id="reg_btn" disabled="disabled">회원가입</button>
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
		<script src="<%=request.getContextPath()%>/resources/js/memberRegCheck.js">
		</script>
	</div>
</body>
</html>
<!-- === END FOOTER === -->