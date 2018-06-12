<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
	<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core"  %>
	

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
<!-- <script>
	var str = "${member.mem_address}";
	var arr = str.split(',');

	 console.log(str);
	 console.log(arr);
</script> -->

</head>

<body>
	<div id="body-bg">
		<%@include file="../include/header.jsp"%>
		<div id="content">
			<div class="container background-white">
				<div class="row margin-vert-30">
					<!-- Register Box -->
					<div class="col-md-6 col-md-offset-3 col-sm-offset-3">
						<form action="${pageContext.request.contextPath }/member/myDelete" method="post" enctype="multipart/form-data" class="signup-page">
							<div class="signup-header">
								<h2>회원탈퇴</h2>
								<p>회원탈퇴에 동의하며 회원 탈퇴를 신청합니다.</p>
							</div>
							<div>
								가입하신 아이디 : "${member.mem_id}" <br><br>
								회원탈퇴 하시겠습니까?<br><br>
								회원 탈퇴로 인해 발생하는 문제는 책임지지 않습니다.
							</div>
							<hr>
							<div class="row">
								<div align="right">
									<input type=button class="btn btn-aqua" value="뒤로가기"
										onclick="location='../'">
									<button class="btn btn-primary" type="submit">회원탈퇴</button>
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