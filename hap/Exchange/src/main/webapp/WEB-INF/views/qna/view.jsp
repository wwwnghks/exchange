<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시글 작성</title>
<%@include file="../include/style.jsp"%>
<script type="text/javascript">

	function btnDelete() {
		if (confirm("삭제하시겠습니까?")) {
			document.form1.action = "delete?qa_idx=${qna.qa_idx}";
			document.form1.submit();
		}
	}
</script>
<style type="text/css">
.layer {
	text-align: center;
}
</style>
</head>
<body>
	<%-- <td><c:if
			test="${session_manager.man_id !=null && session_manager.man_id=='admin'}">
                                          ${session_manager.man_name}
                                       </c:if> <c:if
			test="${session_manager.man_id ==null && session_manager.man_id!='admin'}">
                                          관리자
                                       </c:if></td> --%>


	<%@include file="../include/header.jsp"%>
	<h2>게시글 보기</h2>
	<form name="form1" method="post">

		<div class="layer">


			<table border="1" align="center">
				<tr>
					<th colspan="6">${qna.qa_title}</th>
				</tr>
				<tr>
					<th>작성자</th>
					<td>${qna.mem_name}</td>
					<th>작성일</th>
					<td>${qna.qa_regdate}</td>
					<th>조회수</th>
					<td>${qna.qa_viewcnt}</td>
				</tr>
				<tr>
					<td colspan="6">${qna.qa_contents}</td>
				</tr>


			</table>


<br>
<br>

				<!-- <button type="button" id="btnList">목록</button> -->
				<button type="button" id="btnPre">
					<a href="list">목록</a>
				</button>
				<!-- 게시물번호를 hidden으로 처리 -->
				<input type="hidden" name="bno" value="${qna.qa_idx}">
				<!-- 본인이 쓴 게시물만 수정, 삭제가 가능하도록 처리 -->
				<c:if test="${session_member.mem_name == qna.mem_name}">
					<button type="button" id="btnUpdate">
						<a href="update?qa_idx=${qna.qa_idx}">수정</a>
					</button>
					<input type="button" value="삭제" onclick="javascript:btnDelete();">
				</c:if>
		
		</div>
	</form>

	<%@include file="../include/footer.jsp"%>
	<%@include file="../include/jsFile.jsp"%>
</body>
</html>

