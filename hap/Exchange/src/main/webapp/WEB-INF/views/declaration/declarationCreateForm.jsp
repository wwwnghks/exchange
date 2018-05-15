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
						<form action="declarationCreate" method="POST"
							enctype="multipart/form-data">
							<input type="hidden" name="mem_idx"
								value="${session_member.mem_idx}">
								<input type="hidden" name="pro_idx"
								value="${pro_idx}">
								<input type="hidden" name="man_idx"
								value="${man_idx}">
								<%-- <input type="hidden" name="msg_idx"
								value="${msg_idx}"> --%>
							<table width="550" border="3" bordercolor="lightgray">
								<tr>
									<td id="man_name" align="center">수신인</td>
									<td>&nbsp;&nbsp;관리자</td>
								</tr>
								<tr align="center">
									<td id="msg_title">제 목</td>
									<td><input name="msg_title" type="text" size="72"
										maxlength="100" /></td>
								</tr>
								<tr align="center">
									<td id="msg_contents">신고사유</td>
									<td><textarea name="msg_contents" cols="72" rows="22"></textarea>
									</td>
								</tr>
								<tr align="center" valign="middle">
									<td colspan="5"><input type="reset" value="작성취소">
										<input type="submit" value="전송"> <input type="button"
										value="닫기" onclick="window.close();"></td>
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