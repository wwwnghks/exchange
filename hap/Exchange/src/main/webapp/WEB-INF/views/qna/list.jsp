<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Q&A 목록</title>
<%@include file="../include/style.jsp"%>
<script type="text/javascript">
	function btnWrite() {
		location.href = "/exchange/qna/write";
	}

	// **원하는 페이지로 이동시 검색조건, 키워드 값을 유지하기 위해 
	function listnum(page) {
		location.href = "/exchange/qna/list?curPage=" + page
				+ "&searchOption=${map.searchOption}"
				+ "&keyword=${map.keyword}";
	}
</script>
<style>
.layer {
	text-align: cneter;
}
</style>
</head>
<body>
	<%@include file="../include/header.jsp"%>
	<div id="content">
		<div class="container background-white">
			<div class="row margin-vert-40">
				<div class="col-md-2">
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
				</div>
				<div class="col-md-1" style="height: 400px"></div>


				<h2>Q&A 목록</h2>
				<hr class="margin-vert-40">
				<div class="col-md-2"></div>
				<div id="topForm">
					<form name="form1" method="post" action="list">
						<select name="searchOption">
							<!-- 검색조건을 검색처리후 결과화면에 보여주기위해  c:out 출력태그 사용, 삼항연산자 -->
							<option value="all"
								<c:out value="${map.searchOption == 'all'?'selected':''}"/>>제목+이름+내용</option>
							<option value="mem_name"
								<c:out value="${map.searchOption == 'mem_name'?'selected':''}"/>>이름</option>
							<option value="qa_contents"
								<c:out value="${map.searchOption == 'qa_contents'?'selected':''}"/>>내용</option>
							<option value="qa_title"
								<c:out value="${map.searchOption == 'qa_title'?'selected':''}"/>>제목</option>
						</select> <input name="keyword" value="${map.keyword}"> <input
							type="submit" value="조회">
						<!-- 로그인한 사용자만 글쓰기 버튼을 활성화 -->
						<c:if test="${session_member.mem_name != null}">
							<button type="button" onclick="btnWrite()">글쓰기</button>
						</c:if>
					</form>
					<!-- 레코드의 갯수를 출력 -->
					${map.count}개의 게시물이 있습니다.
					<table id="nList" style="width: 680px" class="table table-striped">
						
						
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>이름</th>
								<th>작성일</th>
								<th>조회수</th>
							</tr>
						

						<c:forEach varStatus="status" var="row" items="${map.list}">
							<tr>
								<td>${(map.count-status.index)-((map.qnaPager.curPage-1)*10)}</td>
								<td><input type="hidden" name="mem_idx"
									value="${session_member.mem_idx}"> <a
									href="view?qa_idx=${row.qa_idx}&curPage=${map.qnaPager.curPage}&searchOption=${map.searchOption}&keyword=${map.keyword}">${row.qa_title}</a>
								</td>

								<td>${row.mem_name}</td>
								<td>${row.qa_regdate}</td>
								<td>${row.qa_viewcnt}</td>
							</tr>
						</c:forEach>
						<tr align="center">
							<td colspan="5">
								<!-- **처음페이지로 이동 : 현재 페이지가 1보다 크면  [처음]하이퍼링크를 화면에 출력--> <c:if
									test="${map.qnaPager.curBlock > 1}">
									<a href="javascript:listnum('1')">[처음]</a>
								</c:if> <!-- **이전페이지 블록으로 이동 : 현재 페이지 블럭이 1보다 크면 [이전]하이퍼링크를 화면에 출력 -->
								<c:if test="${map.qnaPager.curBlock > 1}">
									<a href="javascript:listnum('${map.qnaPager.prevPage}')">[이전]</a>
								</c:if> <!-- **하나의 블럭에서 반복문 수행 시작페이지부터 끝페이지까지 --> <c:forEach var="num"
									begin="${map.qnaPager.blockBegin}"
									end="${map.qnaPager.blockEnd}">
									<!-- **현재페이지이면 하이퍼링크 제거 -->
									<c:choose>
										<c:when test="${num == map.qnaPager.curPage}">
											<span style="color: red">${num}</span>&nbsp;
                        </c:when>
										<c:otherwise>
											<a href="javascript:listnum('${num}')">${num}</a>&nbsp;
                        </c:otherwise>
									</c:choose>
								</c:forEach> <!-- **다음페이지 블록으로 이동 : 현재 페이지 블럭이 전체 페이지 블럭보다 작거나 같으면 [다음]하이퍼링크를 화면에 출력 -->
								<c:if test="${map.qnaPager.curBlock <= map.qnaPager.totBlock}">
									<a href="javascript:listnum('${map.qRnaPager.nextPage}')">[다음]</a>
								</c:if> <!-- **끝페이지로 이동 : 현재 페이지가 전체 페이지보다 작거나 같으면 [끝]하이퍼링크를 화면에 출력 -->
								<c:if test="${map.qnaPager.curPage <= map.qnaPager.totPage}">
									<a href="javascript:listnum('${map.qnaPager.totPage}')">[끝]</a>
								</c:if>
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<%@include file="../include/footer.jsp"%>
		<%@include file="../include/jsFile.jsp"%>
</body>
</html>