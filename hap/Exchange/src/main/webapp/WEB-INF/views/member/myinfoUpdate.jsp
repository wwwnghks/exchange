<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


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

<!-- <script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script> -->
<!-- <link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"> -->
<style type="text/css">
#nowpw{
color: red;
}

</style>	
	
	
</head>

<body>
	<div id="body-bg">
		<%@include file="../include/header.jsp"%>
		<div id="content">
			<div class="container background-white">
				<div class="row margin-vert-30">
					<!-- Register Box -->
					<div class="col-md-6 col-md-offset-3 col-sm-offset-3">
						<form action="${pageContext.request.contextPath }/member/myinfo"
							method="post" enctype="multipart/form-data" class="signup-page">
							<div class="signup-header">
								<h2>회원수정</h2>
								<p>안녕하세요,아래의 정보를 입려해 주세요.</p>
							</div>
							<div style="width: 420px;">
							<tr>
							<input type="hidden" name="mem_idx" value="${member.mem_idx}">
							<label>아이디</label> <br>
							<td>${member.mem_id}</td> <br> <br> 
							
							<td><label style="display: inline;">현재 비밀번호</label></td><td><div id="nowpw" style="width: 200px;"> 필수로 입력하세요.</div></td><tr>
							<td colspan="2"><input class="form-control margin-bottom-20" id="nowPw" type="password" name="mem_pwc"></td> 
							<td> <label>새 비밀번호</label></td><td><div id="pw" style="width: 200px;">8자 이상 입력하세요.</div></td><tr><td colspan='2'> <input
								class="form-control margin-bottom-20" type="password"
								name="mem_pw" id="pwText" oninput="pw()"> </td><tr><td><label>새 비밀번호 확인</label></td><td><div id="pwCh" style="width: 200px;">일치하지 않습니다.</div></td><tr>
								<td colspan='2'> <input
								class="form-control margin-bottom-20" type="password"
								name="pwChect" id="pwCheck" oninput="pwCh()"></td>
								
								<label>이름</label><br>
							<td>${member.mem_name}</td> <br> <br> <label>생년월일</label><br>
							<td><fmt:formatDate value="${member.mem_birth}"
									pattern="yyyy-MM-dd" /></td> <br> <br> <br> <label>닉네임</label><br>
							<td>${member.mem_nickname}</td> <br> <br> 
							<label>핸드폰번호</label>
							<input class="form-control margin-bottom-20" type="text"
								name="mem_phone" value="${member.mem_phone}"> <label>이메일</label>
							<input class="form-control margin-bottom-20" type="text"
								name="mem_email" value="${member.mem_email}"> 
							<label>주소</label><br>
							<input type="text" style="width: 30%; white-space: nowrap;"
								name="address_post" id="sample4_postcode"
								onclick="sample4_execDaumPostcode(1)" class="form-control"
								placeholder="우편번호">
								
								 <input type="button"
								onclick="sample4_execDaumPostcode(1);" value="우편번호 찾기">
								
							<br> <input type="text" class="form-control margin-bottom-0"
								name="address_01" id="sample4_roadAddress" placeholder="도로명주소">
							<input type="text" class="form-control margin-bottom-0"
								name="address_02" id="sample4_jibunAddress" placeholder="상세주소">


							<span id="guide" style="color: #999"></span> <br> <br>
							<label onmouseover="changeImg()" onmouseout="normalImg()" class="photos">회원사진</label>
							<td><c:if test="${member.mem_photo !=null}">
									<img
										src="${pageContext.request.contextPath }/uploadfile/memberphoto/${member.mem_photo}" alt="pt" id="m_photo">
								</c:if></td> <br>
							<td>사진수정</td>
							<td><input type="file" name="photofile"></td>
							</div>
							<hr>
							<div class="row">
								<div align="right">
									<input type=button class="btn btn-aqua" value="뒤로가기"
										onclick="location='../'">
									<button class="btn btn-primary" type="submit">회원수정</button>
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
		<script
			src="<%=request.getContextPath()%>/resources/js/daumAdressAPI.js">
		</script>
		<script src="<%=request.getContextPath()%>/resources/js/memberRegCheck.js">
		</script>
	</div>

<script>
 
          function changeImg() 
          {
           var element = document.getElementById('m_photo');
           element.style.opacity = "1";
           element.style.filter  = 'alpha(opacity=100)';
          }
 
          function normalImg() 
          {
          var element = document.getElementById('m_photo');
          element.style.opacity = "0";
          element.style.filter  = 'alpha(opacity=0)';
          }
        </script>

	<script> 
		var address = "${member.mem_address}";
		var locationArr = address.split(' ,');
		$("#sample4_postcode").val(locationArr[1]);
		var locationArr2 = locationArr[0].split(')');
		$("#sample4_roadAddress").val(locationArr2[0]+')');
		$("#sample4_jibunAddress").val(locationArr2[1]);
	</script>
	
	
	
	
</body>
</html>
<!-- === END FOOTER === -->