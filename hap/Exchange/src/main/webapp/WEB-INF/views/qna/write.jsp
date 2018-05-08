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
		
		CKEDITOR.replace('qa_contents');

		CKEDITOR.editorConfig = function(config) {
			config.language = 'ko';
			config.height = 500;
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
	<%@include file="../include/header.jsp"%>
	<h2>게시글 작성</h2>
	<form name="form1" method="post" action="insert">
		<input type="hidden" name="mem_idx" value="${session_member.mem_idx}">
		<div>
			제목 <input name="qa_title" id="qa_title" size="80"
				placeholder="제목을 입력해주세요">
		</div>

		<div>

			이름 <input name="mem_name" id="mem_name" type="text"
				value="${session_member.mem_name}" readonly="readonly">

		</div>
		<div>
			<textarea name="qa_contents" id="qa_contents"></textarea>
		</div>

		<div>
			<button type="button" id="btnSave">확인</button>
			<button type="button" OnClick="javascript:history.back(-1)">취소</button>
		</div>
	</form>
	<%@include file="../include/footer.jsp"%>
	<%@include file="../include/jsFile.jsp"%>
</body>
</html>
