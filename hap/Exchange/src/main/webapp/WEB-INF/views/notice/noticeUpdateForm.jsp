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
						<h2>공지사항</h2><!-- 
						<hr class="margin-vert-30">
						<div class="col-md-2"></div>
						<b><font size="4" color="gray">수정하기</font></b> <br> -->
						<br>

						<form action="noticeUpdate" method="POST" enctype="multipart/form-data">
							<input type="hidden" name="man_idx"
								value="${session_manager.man_idx}">
								<input type="hidden" name="not_idx"
								value="${update_notice.not_idx}">
							<table width="520" border="2" bordercolor="lightgray"
								align="center">
								<tr>
									<td id="man_name">작성자</td>
									<td>${session_manager.man_name}</td>
								</tr>
								<tr>
									<td id="not_title">제 목</td>
									<td><input type="text" name="not_title"size="70"
										maxlength="100"  value="${update_notice.not_title }"  ></td>
								</tr>
								<tr>
									<td id="not_contents">내 용</td>
									<td><textarea name="not_contents"cols="70" rows="20" >${update_notice.not_contents }</textarea>
									</td>
								</tr>
								
								<tr align="center" valign="middle">
									<td colspan="5"><input type="reset" value="작성취소" class="btn" style="border-radius: 5px;">
										<input type="submit" value="수정완료" class="btn" style="border-radius: 5px;"> 
										<input type="button" value="목록" onclick="location='noticeList'" class="btn" style="border-radius: 5px;"></td>
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