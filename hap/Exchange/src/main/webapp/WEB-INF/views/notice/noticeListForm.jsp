<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- === BEGIN HEADER === -->
<!DOCTYPE html>
<html lang="en">
<head>
<style>
.margin-center {
   margin: auto;
   width: 55%;  
   padding: 10px;
   padding-top: 40px;
}
</style>

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
				<div class="margin-center">
					<div class="col-md-2">
						<ul class="list-group sidebar-nav" id="sidebar-nav">
							<!-- Buttons -->
							<div class=box style="background-color: #09d2e5">
									<li class="list-group-item"> </li></div>
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
					<h2>공지사항</h2>
					<br> 저희 영이집에 오신 고객 여러분들을 진심으로 환영합니다.
					<p>자세한 문의 사항이나 건의사항은 Q&A, 고객센터로 문의 주시면 친절하게 답변해 드리겠습니다 .</p>
					
					<hr class="margin-center">
					<div id="wrap">
						<div class="col-md-2"></div>
						<div id="topForm">
							<form name="form1" method="post" action="noticeList">
								<select name="searchOption">
									<!-- 검색조건을 검색처리후 결과화면에 보여주기위해  c:out 출력태그 사용, 삼항연산자 -->
									<option value="all"
										<c:out value="${map.searchOption == 'all'?'selected':''}"/>>제목+내용</option>
									<option value="not_contents"
										<c:out value="${map.searchOption == 'not_contents'?'selected':''}"/>>내용</option>
									<option value="not_title"
										<c:out value="${map.searchOption == 'not_title'?'selected':''}"/>>제목</option>
								</select> <input name="keyword" value="${map.keyword}"> <input
									type="submit" value="조회" class="btn btn-default btn-sm">&nbsp;&nbsp;&nbsp;&nbsp;
								<c:if
									test="${session_manager.man_id !=null && session_manager.man_id=='admin'}">
									<input type="button" value="글쓰기"
										onclick="location='noticeCreate'" class="btn btn-default btn-sm">
								</c:if>
							</form>
						</div>

						<!-- 공지사항 목록 부분. -->
						<br>
						<div class="col-md-2"></div>
						<div id="notice" style="display: inline;">
							<table id="nList" style="width: 670px" class="table">
							<thead>
								<tr>
									<th width="40">번호</th>
									<th width="200">제목</th>
									<th width="80">작성자</th>
									<th width="120">작성일</th>
									<th width="50">조회수</th>
									
								</tr>
								</thead>
								<%-- <c:forEach var="notice" items="${noticeList}">

										<tr align="center">
											<td>${notice.not_idx}<input type="hidden" name="not_idx"
												value="${notice.not_idx}"></td>
											<td><a href="noticeRead?not_idx=${notice.not_idx }">${notice.not_title}</a></td>
											<!-- &firstRow=${firstRow} -->
											<td><c:if
													test="${session_manager.man_id !=null && session_manager.man_id=='admin'}">
														${session_manager.man_name}
													</c:if> <c:if
													test="${session_manager.man_id ==null && session_manager.man_id!='admin'}">
														관리자
													</c:if></td>
											<td><a href="#"> ${session_manager.man_name} </a></td>
											<td><fmt:formatDate value="${notice.not_regdate}"
													pattern="yyyy.MM.dd" /></td>
										</tr>
									</c:forEach> --%>
								<c:forEach varStatus="status" var="notice" items="${map.list}">
									<tr>
										<td>${(map.count-status.index)-((map.paging.curPage-1)*10)}<input
											type="hidden" name="not_idx" value="${notice.not_idx}"></td>

										<td>
											<%-- <input type="hidden" name="man_idx"
												value="${session_manager.man_idx}">  --%> <a
											href="noticeRead?not_idx=${notice.not_idx}&man_name=${notice.man_name}&curPage=${map.paging.curPage}&searchOption=${map.searchOption}&keyword=${map.keyword}">${notice.not_title}</a>
										</td>

										<td><c:if
												test="${session_manager.man_id !=null && session_manager.man_id=='admin'}">
														${session_manager.man_name}
													</c:if> <c:if
												test="${session_manager.man_id ==null && session_manager.man_id!='admin'}">
														관리자
													</c:if></td>
										<%-- <td>${notice.man_name}</td> --%>
										<td><fmt:formatDate value="${notice.not_regdate}"
												pattern="yyyy.MM.dd" /></td>
										<td>${notice.not_viewcnt}</td>
									</tr>
								</c:forEach>
								<tr align="center">
									<td colspan="5">
										<!-- **처음페이지로 이동 : 현재 페이지가 1보다 크면  [처음]하이퍼링크를 화면에 출력--> <c:if
											test="${map.paging.curBlock > 1}">
											<a href="javascript:listnum('1')">[처음]</a>
										</c:if> <!-- **이전페이지 블록으로 이동 : 현재 페이지 블럭이 1보다 크면 [이전]하이퍼링크를 화면에 출력 -->
										<c:if test="${map.paging.curBlock > 1}">
											<a href="javascript:listnum('${map.paging.prevPage}')">[이전]</a>
										</c:if> <!-- **하나의 블럭에서 반복문 수행 시작페이지부터 끝페이지까지 --> <c:forEach
											var="num" begin="${map.paging.blockBegin}"
											end="${map.paging.blockEnd}">
											<!-- **현재페이지이면 하이퍼링크 제거 -->
											<c:choose>
												<c:when test="${num == map.paging.curPage}">
													<span style="color: red">${num}</span>&nbsp;
                        							</c:when>
												<c:otherwise>
													<a href="javascript:listnum('${num}')">${num}</a>&nbsp;
                        							</c:otherwise>
											</c:choose>
										</c:forEach> <!-- **다음페이지 블록으로 이동 : 현재 페이지 블럭이 전체 페이지 블럭보다 작거나 같으면 [다음]하이퍼링크를 화면에 출력 -->
										<c:if test="${map.paging.curBlock <= map.paging.totBlock}">
											<a href="javascript:listnum('${map.paging.nextPage}')">[다음]</a>
										</c:if> <!-- **끝페이지로 이동 : 현재 페이지가 전체 페이지보다 작거나 같으면 [끝]하이퍼링크를 화면에 출력 -->
										<c:if test="${map.paging.curPage <= map.paging.totPage}">
											<a href="javascript:listnum('${map.paging.totPage}')">[끝]</a>
										</c:if>
									</td>
								</tr>
							</table>
							<!-- <br>
							<div class="col-md-7"></div>
							<button type="submit" class="btn btn-primary">목록</button> -->
						</div>

						<!-- 페이지 넘버 부분 -->
						<%-- <br>
									<div id="pageForm">
								<c:if test="${firstRow != 1}">
									<a href='noticeList?requestPage=${firstRow-1}'>[ 이전 ]</a>
								</c:if>

								<c:forEach var="requestPage" begin="${firstRow}" end="${endRow}">
									<c:if test="${requestPage == 1}"> ${requestPage}&nbsp;
           						 </c:if>
									<c:if test="${requestPage != 1}">
										<a href='noticeList?requestPage=${requestPage}'>${requestPage}&nbsp;</a>
									</c:if>
								</c:forEach>

								<c:if test="${endRow != totalPageCount }">
									<a href='noticeList?requestPage=${endRow+1 }'>[다음]</a>
								</c:if>
							</div> --%>
					</div>
				</div>
			</div>
		</div>
		<!-- === END CONTENT === -->
		<!-- === BEGIN FOOTER === -->
		<%@include file="../include/footer.jsp"%>
		<%@include file="../include/jsFile.jsp"%>
	</div>
	<script>
		// **원하는 페이지로 이동시 검색조건, 키워드 값을 유지하기 위해 
		function listnum(page) {
			location.href = "/exchange/notice/noticeList?curPage=" + page+ "&searchOption=${map.searchOption}"+ "&keyword=${map.keyword}";
		}
	</script>

	<script>
		$(document).ready(function() {

			var formObj = $("form[role='form']");

			console.log(formObj);

			$(".btn-primary").on("click", function() {
				/* self.location = "noticeList"; */
				window.location.href = 'noticeList';
			});
		});
	</script>
</body>
</html>
<!-- === END FOOTER === -->