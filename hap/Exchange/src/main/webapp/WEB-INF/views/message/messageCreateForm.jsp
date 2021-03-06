<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- === BEGIN HEADER === -->
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Title -->
<title>Habitat - A Professional Bootstrap Template</title>
<%@include file="../include/style.jsp"%>
</head>
<body>
	<div id="body-bg">
		<div id="content">
			<div class="container background-white">
				<div class="row margin-vert-30">
					<div class="col-md-12">
<!-- 
						<b><font size="5" color="black">쪽지보내기</font></b>
						<hr>
 -->
						<form action="messageCreate" method="POST"
							enctype="multipart/form-data">
							<input type="hidden" name="mem_idx"
								value="${session_member.mem_idx}">
								<input type="hidden" name="pro_idx"
								value="${pro_idx}">
								<%-- <input type="hidden" name="msg_idx"
								value="${msg_idx}"> --%>
							<table style="width: 550px" class="table" >
								<tr>
									<td id="mem_id"><strong>수신인</strong></td>
									<td>&nbsp;&nbsp;&nbsp;${mem_nickname}</td>
								</tr>
								<tr align="center">
									<td id="msg_title"><strong>제 목</strong></td>
									<td><input name="msg_title" type="text" size="70"
										maxlength="100" /></td>
								</tr>
								<tr align="center">
									<td id="msg_contents"><strong>내 용</strong></td>
									<td><textarea name="msg_contents" cols="70" rows="20"></textarea>
									</td>
								</tr>
								<tr align="center" valign="middle">
									<td colspan="5"><input type="reset" class="btn btn-lm" style="background-color: #ee627d; color: white;" value="초기화" >
										<input type="submit" class="btn btn-lm" style="background-color: #09d2e5; color: white;" value="전송" > <input type="button"
										 class="btn btn-lm" style="background-color: #b4b6c1; color: white;" value="닫기" onclick="window.close();"></td>
								</tr>
							</table>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>