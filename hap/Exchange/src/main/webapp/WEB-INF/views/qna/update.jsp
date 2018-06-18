<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.js"></script>
<script src="//cdn.ckeditor.com/4.9.2/standard/ckeditor.js"></script>
<%@include file="../include/style.jsp"%>
<script type="text/javascript">
	$(document).ready(function() {

		// ** 목록 버튼 클릭 이벤트 : 버튼 클릭시 상세보기화면에 있던 페이지, 검색옵션, 키워드 값을 가지로 목록으로 이동
		/*  $("#btnList").click(function(){
		     location.href="exchange/qna/list?curPage=${curPage}&searchOption=${searchOption}&keyword=${keyword}";
		 }); */

		CKEDITOR.replace('qa_contents');
		CKEDITOR.config.height = 500;

		$("#btnUpdete").click(function() {

			var qa_title = $("#qa_title").val();
			var qa_contents = CKEDITOR.instances.qa_contents.getData();

			if (qa_title == "") {
				alert("제목을 입력하세요");
				document.form1.qa_title.focus();
				return;
			}
			if (qa_contents == "") {
				alert("내용을 입력하세요");
				document.form1.qa_contents.focus();
				return;
			}

			// 폼에 입력한 데이터를 서버로 전송
			document.form1.submit();

		});
	});
</script>
</head>
<body>
	<%@include file="../include/header.jsp"%>
	<div id="content">
		<div class="container background-white">
			<div class="row margin-vert-40">
		<%-- 		<div class="col-md-2">
					<ul class="list-group sidebar-nav" id="sidebar-nav">
						<!-- Buttons -->
						<li class="list-group-item"><a
							href="<%=request.getContextPath()%>/notice/noticeList">공지사항</a></li>
						<!-- End Buttons -->
						<!-- Carousels -->
						<li class="list-group-item"><a
							href="<%=request.getContextPath()%>/qna/list">Q&A</a></li>
						<!-- End Accordion and Tabs -->
					</ul>
				</div> --%>

				<h2>게시글 수정</h2>
				<br>

				<form name="form1" method="post" action="update"
					enctype="multipart/form-data">
					<table width="600" border="2" bordercolor="lightgray"
						align="center">

						<input type="hidden" name="mem_idx"
							value="${session_member.mem_idx}">
						<tr>
							<td style="width:40px"><label>제목</label></td>
							<td><input name="qa_title" id="qa_title" size="90"
								value="${qna.qa_title}"></td>
						</tr>
						<tr>
							<td><label>이름</label></td>
							<td><input name="mem_name" id="mem_name" type="text"
								value="${session_member.mem_name}" readonly="readonly" size="90">
							</td>
						</tr>
						<tr>
							<td colspan='2'><textarea name="qa_contents"
									id="qa_contents">${qna.qa_contents}</textarea></td>
						</tr>


						<!-- 게시물번호를 hidden으로 처리 -->
						<input type="hidden" name="qa_idx" value="${qna.qa_idx}">
						<tr align="center" valign="middle">

							<td colspan="5"><button type="button" id="btnUpdete" class="btn btn-sm"
									>저장</button> <!-- **상세보기 화면에서 게시글 목록화면으로 이동 -->
								<button type="button" id="btnList" class="btn btn-sm">
									<a href="list">목록</a>
								</button></td>
						</tr>
					</table>
				</form>

			</div>
		</div>
	</div>
	</div>
	<%@include file="../include/footer.jsp"%>
	<%@include file="../include/jsFile.jsp"%>
</body>
</html>