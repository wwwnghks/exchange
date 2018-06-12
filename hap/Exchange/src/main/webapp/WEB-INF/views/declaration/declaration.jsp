<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- === BEGIN HEADER === -->
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>

<script type="text/javascript">
	function btnWrite() {
		location.href = "/exchange/qna/write";
	}

	// **원하는 페이지로 이동시 검색조건, 키워드 값을 유지하기 위해 
	function listnum(page) {
		location.href = "/exchange/declaration/declaration?curPage=" + page
				+ "&searchOption=${map.searchOption}"
				+ "&keyword=${map.keyword}";
	}
</script>
<style>
#product_List li {
	float: left;
	list-style: none;
	display: inline;
}

#categoryBox {
	text-align: right;
}

#main_div {
	margin-right: 0px;
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

				<div class="row margin-vert-40">
					<!-- Begin Sidebar Menu -->
					<div class="col-md-2">
						<%@include file="../include/myPageSide.jsp"%>
					</div>

					<div id="bspace" class="col-md-2"></div>
					<h1>신고함</h1>
					<br>
					<c:if
						test="${session_manager.man_id !=null && session_manager.man_id=='admin' }">
						<div id="main_div">
							<form name="form" method="post" action="declaration">
								<select name="searchOption">
									<option value="all"
										<c:out value ="${map.searchOption == 'all'?'selected':''}"/>>
										제목+이름</option>
									<option value="mem_name"
										<c:out value="${map.searchOption =='mem_name'?'selected':'' }"/>>이름</option>
									<option value="dec_msg_title"
										<c:out value="${map.searchOption == 'dec_msg_title'?'selected':''}"/>>제목</option>
								</select> <input name="keyword" value="${map.keyword}"> <input
									type="submit" value="조회">
							</form>

						</div>
						<br>
						<div id="declaration">
							<table id="dList" style="width: 700px" class="table">
								<thead>
									<tr>
										<th width="80">글번호</th>
										<th width="80">신고자</th>
										<th width="220">신고제목</th>
										<th width="120">작성일</th>
										<th width="60">조회수</th>
									</tr>

									<c:forEach varStatus="status" var="dec" items="${map.dec}">
										<tr>
											<td>${(map.count-status.index)-((map.qnaPager.curPage-1)*10)}</td>
											<td>${dec.mem_name }</td>
											<td><a
												href="<%=request.getContextPath()%>/declaration/declarationRead?dec_msg_idx=${dec.dec_msg_idx }">${dec.dec_msg_title }</a></td>
											<td><fmt:formatDate value="${dec.dec_msg_regdate }"
													pattern="yyyy.MM.dd" /></td>
											<td>${dec.dec_viewCnt }</td>
										</tr>
									</c:forEach>

									<tr>
										<td colspan="5">
											<!-- **처음페이지로 이동 : 현재 페이지가 1보다 크면  [처음]하이퍼링크를 화면에 출력--> <c:if
												test="${map.qnaPager.curBlock > 1}">
												<a href="javascript:listnum('1')">[처음]</a>
											</c:if> <!-- **이전페이지 블록으로 이동 : 현재 페이지 블럭이 1보다 크면 [이전]하이퍼링크를 화면에 출력 -->
											<c:if test="${map.qnaPager.curBlock > 1}">
												<a href="javascript:listnum('${map.qnaPager.prevPage}')">[이전]</a>
											</c:if> <!-- **하나의 블럭에서 반복문 수행 시작페이지부터 끝페이지까지 --> <c:forEach
												var="num" begin="${map.qnaPager.blockBegin}"
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
											<c:if
												test="${map.qnaPager.curBlock <= map.qnaPager.totBlock}">
												<a href="javascript:listnum('${map.qnaPager.nextPage}')">[다음]</a>
											</c:if> <!-- **끝페이지로 이동 : 현재 페이지가 전체 페이지보다 작거나 같으면 [끝]하이퍼링크를 화면에 출력 -->
											<c:if test="${map.qnaPager.curPage <= map.qnaPager.totPage}">
												<a href="javascript:listnum('${map.qnaPager.totPage}')">[끝]</a>
											</c:if>
										</td>
									</tr>


								</thead>

							</table>
						</div>
					</c:if>



					<%-- 

					<c:if
						test="${session_manager.man_id !=null && session_manager.man_id=='admin' }">
						<div id="main_div">
							<form name="form" method="post" action="declaration">
								<select name="searchOption">
									<option value="all"
										<c:out value ="${map.searchOption == 'all'?'selected':''}"/>>
										제목+이름</option>
									<option value="mem_name"
										<c:out value="${map.searchOption =='mem_name'?'selected':'' }"/>>이름</option>
									<option value="dec_msg_title"
										<c:out value="${map.searchOption == 'dec_msg_title'?'selected':''}"/>>제목</option>
								</select> <input name="keyword" value="${map.keyword}"> <input
									type="submit" value="조회">
							</form>

							<h1>신고함</h1>
							<table border="1">
								<tr>
									<td>글번호</td>
									<td>신고자</td>
									<td>신고제목</td>
									<td>작성일</td>
									<td>조회수</td>
								</tr>

								<c:forEach varStatus="status" var="dec" items="${map.dec}">
									<tr>
										<td>${(map.count-status.index)-((map.qnaPager.curPage-1)*10)}</td>
										<td>${dec.mem_name }</td>
										<td><a
											href="<%=request.getContextPath()%>/declaration/declarationRead?dec_msg_idx=${dec.dec_msg_idx }">${dec.dec_msg_title }</a></td>
										<td><fmt:formatDate value="${dec.dec_msg_regdate }"
												pattern="yyyy.MM.dd" /></td>
										<td>${dec.dec_viewCnt }</td>
									</tr>
								</c:forEach>

								<tr>
									<td colspan="5">
										<!-- **처음페이지로 이동 : 현재 페이지가 1보다 크면  [처음]하이퍼링크를 화면에 출력--> <c:if
											test="${map.qnaPager.curBlock > 1}">
											<a href="javascript:listnum('1')">[처음]</a>
										</c:if> <!-- **이전페이지 블록으로 이동 : 현재 페이지 블럭이 1보다 크면 [이전]하이퍼링크를 화면에 출력 -->
										<c:if test="${map.qnaPager.curBlock > 1}">
											<a href="javascript:listnum('${map.qnaPager.prevPage}')">[이전]</a>
										</c:if> <!-- **하나의 블럭에서 반복문 수행 시작페이지부터 끝페이지까지 --> <c:forEach
											var="num" begin="${map.qnaPager.blockBegin}"
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
											<a href="javascript:listnum('${map.qnaPager.nextPage}')">[다음]</a>
										</c:if> <!-- **끝페이지로 이동 : 현재 페이지가 전체 페이지보다 작거나 같으면 [끝]하이퍼링크를 화면에 출력 -->
										<c:if test="${map.qnaPager.curPage <= map.qnaPager.totPage}">
											<a href="javascript:listnum('${map.qnaPager.totPage}')">[끝]</a>
										</c:if>
									</td>
								</tr>

							</table>
						</div>
					</c:if> --%>

					<c:if
						test="${!(session_manager.man_id !=null && session_manager.man_id=='admin') }">
						<h1>관리자만 확인 할 수 있습니다.</h1>
					</c:if>


					<%-- 
					<c:choose>
						<c:when
							test="${(session_manager.man_id ne null && session_memeber.mem_id ne null)}">
							<div id="main_div">
										<form name="form" method="post" action="Memberdeclaration">
								<select name="searchOption">
									<option value="all"
										<c:out value ="${map.searchOption == 'all'?'selected':''}"/>>
										제목+이름</option>
									<option value="mem_name"
										<c:out value="${map.searchOption =='mem_name'?'selected':'' }"/>>이름</option>
									<option value="dec_msg_title"
										<c:out value="${map.searchOption == 'dec_msg_title'?'selected':''}"/>>제목</option>
								</select> <input name="keyword" value="${map.keyword}"> <input
									type="submit" value="조회">
							</form>
								${session_member.mem_id }
								<h1>신고함2</h1>
								${mem_name }
								<table border="1">
									<tr>
										<td>신고자</td>
										<td>신고제목</td>
										<td>작성일</td>
									</tr>
									<c:forEach varStatus="status" var="dec" items="${map.dec}">

									<c:if test="${session_member.mem_id ne null">

									<tr>
										<td>${dec.mem_name }</td>
										<td><a
											href="<%=request.getContextPath()%>/declaration/declarationRead?dec_msg_idx=${dec.dec_msg_idx }">${dec.dec_msg_title }</a></td>
										<td><fmt:formatDate value="${dec.dec_msg_regdate }"
												pattern="yyyy.MM.dd" /></td>
									</tr>

									</c:if> 
								</c:forEach>
								<tr>
									<td colspan="5">
										<!-- **처음페이지로 이동 : 현재 페이지가 1보다 크면  [처음]하이퍼링크를 화면에 출력--> <c:if
											test="${map.qnaPager.curBlock > 1}">
											<a href="javascript:listnum('1')">[처음]</a>
										</c:if> <!-- **이전페이지 블록으로 이동 : 현재 페이지 블럭이 1보다 크면 [이전]하이퍼링크를 화면에 출력 -->
										<c:if test="${map.qnaPager.curBlock > 1}">
											<a href="javascript:listnum('${map.qnaPager.prevPage}')">[이전]</a>
										</c:if> <!-- **하나의 블럭에서 반복문 수행 시작페이지부터 끝페이지까지 --> <c:forEach
											var="num" begin="${map.qnaPager.blockBegin}"
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
											<a href="javascript:listnum('${map.qnaPager.nextPage}')">[다음]</a>
										</c:if> <!-- **끝페이지로 이동 : 현재 페이지가 전체 페이지보다 작거나 같으면 [끝]하이퍼링크를 화면에 출력 -->
										<c:if test="${map.qnaPager.curPage <= map.qnaPager.totPage}">
											<a href="javascript:listnum('${map.qnaPager.totPage}')">[끝]</a>
										</c:if>
									</td>
								</tr>
								</table>
							</div>
						</c:when>
					</c:choose> --%>
					<%-- <div id="main_div">
								<h1>신고함2</h1>
								<table border="1">
									<tr>
										<td>신고자</td>
										<td>신고제목</td>
										<td>작성일</td>
									</tr>
									<c:forEach varStatus="status" var="Mdec" items="${map.Mdec}">
										<tr>
										<td>${(Mdec.count-status.index)-((Mdec.qnaPager.curPage-1)*10)}</td>	
											<td>나</td>
											<td><a
												href="<%=request.getContextPath()%>/declaration/declarationRead?dec_msg_idx=${Mdec.dec_msg_idx }">${Mdec.dec_msg_title }</a></td>
											<td><fmt:formatDate value="${Mdec.dec_msg_regdate }"
													pattern="yyyy.MM.dd" /></td>
										</tr>
									</c:forEach>
									
										<c:forEach varStatus="status" var="dec" items="${map.dec}">
										<tr>
											<td>${(map.count-status.index)-((map.qnaPager.curPage-1)*10)}</td>
											<td>${dec.mem_name }</td>
											<td><a
												href="<%=request.getContextPath()%>/declaration/declarationRead?dec_msg_idx=${dec.dec_msg_idx }">${dec.dec_msg_title }</a></td>
											<td><fmt:formatDate value="${dec.dec_msg_regdate }"
													pattern="yyyy.MM.dd" /></td>
											<td>${dec.dec_viewCnt }</td>
										</tr>
									</c:forEach>
								</table>
							</div> --%>
				</div>
			</div>
		</div>
	</div>
	<!-- === END CONTENT === -->
	<%@include file="../include/footer.jsp"%>
	<%@include file="../include/jsFile.jsp"%>
</body>
</html>
<!-- === END FOOTER === -->