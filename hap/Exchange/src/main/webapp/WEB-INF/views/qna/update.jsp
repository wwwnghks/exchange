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
	<h2>게시글 수정</h2>

	<form name="form1" method="post" action="update">
		<input type="hidden" name="mem_idx" value="${session_member.mem_idx}">
		<div>
			제목 <input name="qa_title" id="qa_title" value="${qna.qa_title}">
		</div>

		<div>

			이름 <input name="mem_name" id="mem_name" type="text"
				value="${session_member.mem_name}" readonly="readonly">
		</div>
		<div>
			<textarea name="qa_contents" id="qa_contents">${qna.qa_contents}</textarea>
		</div>

		<div style="width: 650px; text-align: center;">
			<!-- 게시물번호를 hidden으로 처리 -->
			<input type="hidden" name="qa_idx" value="${qna.qa_idx}">
			
			
			<button type="button" id="btnUpdete">저장</button>
			<!-- **상세보기 화면에서 게시글 목록화면으로 이동 -->
        <button type="button" id="btnList"><a href="list">목록</a></button>
		</div>

	</form>
	<%@include file="../include/footer.jsp"%>
	<%@include file="../include/jsFile.jsp"%>
</body>
</html>