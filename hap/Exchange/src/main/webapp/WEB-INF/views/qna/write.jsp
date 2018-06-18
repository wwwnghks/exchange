<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시글 작성</title>
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

		CKEDITOR.replace('qa_contents', {
			width : '100%',
			height : '300px'
		});

		CKEDITOR.editorConfig = function(config) {
			config.language = 'ko';

			config.toolbarCanCollapse = true;
		};

		$("#btnSave").click(function() {

			//에디터 내용 가져옴
			var qa_contents = CKEDITOR.instances.qa_contents.getData();
			var qa_title = $("#qa_title").val();
			/*  var qa_contents = $("#qa_contents").val(); */

			// 널 검사
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
	<div id="body-bg">
		<%@include file="../include/header.jsp"%>
		<div id="content">
			<div class="container background-white" style="height: 785px;">
				<div class="row margin-vert-40">
					<%-- <div class="col-md-2">
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

					<h2>게시글 작성</h2>
					<br>
					<!-- <hr class="margin-vert-40"> -->
					<form name="form1" method="post" action="insert"
						enctype="multipart/form-data">
						<input type="hidden" name="mem_idx"
							value="${session_member.mem_idx}">
						<table width="600" border="2" bordercolor="lightgray"
							align="center">
							<tr>

								<td style="width:40px"><label>제 목</label></td>&nbsp;
								<td><input name="qa_title" id="qa_title" size="90"
									placeholder="제목을 입력해주세요"></td>
							</tr>


							<tr>
								<td><label>이 름</label></td>&nbsp;
								<td><input name="mem_name" id="mem_name" type="text" 
									value="${session_member.mem_name}" readonly="readonly" size="90"></td>
							</tr>
							<tr>
								<td colspan='2'><textarea name="qa_contents"
										id="qa_contents"></textarea></td>
							</tr>

							<tr align="center" valign="middle">
								<td colspan="5">

									<button type="button" id="btnSave" class="btn btn-sm">확인</button>
									<button type="button" OnClick="javascript:history.back(-1)"
										class="btn btn-sm">취소</button>
								</td>
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
