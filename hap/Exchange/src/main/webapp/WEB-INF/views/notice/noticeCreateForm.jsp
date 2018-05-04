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
		<%@include file="../include/header.jsp"%>
		<!-- === BEGIN CONTENT === -->
		<div id="content">
			<div class="container background-white">
				<div class="row margin-vert-30">
					<div class="col-md-12">
						<h2>공지사항</h2>
						<hr class="margin-vert-30">
						<!-- <br> <b><font size="6" color="gray">글쓰기</font></b> <br> -->

						<form action="noticeCreate" method="POST" enctype="multipart/form-data">
							<input type="hidden" name="man_idx"
								value="${session_manager.man_idx}">
							<table width="520" border="2" bordercolor="lightgray"
								align="center">
								<tr>
									<td id="man_name">작성자</td>
									<td>${session_manager.man_name}</td>
								</tr>
								<tr>
									<td id="not_title">제 목</td>
									<td><input name="not_title" type="text" size="70"
										maxlength="100"/></td>
								</tr>
								<tr>
									<td id="not_contents">내 용</td>
									<td><textarea name="not_contents" cols="70" rows="20"></textarea>
									</td>
								</tr>
								<tr align="center" valign="middle">
									<td colspan="5"><input type="reset" value="작성취소">
										<input type="submit" value="등록"> 
										<input type="button" value="목록" onclick="location='noticeList'"></td>
								</tr>
							</table>
						</form>

					</div>
				</div>
			</div>
		</div>
		<!-- === END CONTENT === -->
		<!-- === BEGIN FOOTER === -->
		<%@include file="../include/footer.jsp"%>
		<%@include file="../include/jsFile.jsp"%>
	</div>
</body>
</html>
<!-- === END FOOTER === -->