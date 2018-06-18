<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- === BEGIN HEADER === -->
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Title -->
<title>Habitat - A Professional Bootstrap Template</title>
<!-- 각 서브밋 버튼에 따른 페이지이동 -->

<%@include file="../include/style.jsp"%>
<style type="text/css">
.layer {
	text-align: center;
}
#bspace {
	height: 500px;
	width: 80px;
}
.dl {
    clear: both;
    margin: 0;
    padding: 0;
}
.dl dd {
    float: left;
    
    display: block;
    -webkit-margin-start: 40px;
}

* {
    margin: 0;
    padding: 0;
}
th {
    line-height: 13px;
    padding: 10px 8px;
    color: #333;
    font-weight: normal;
    border-left: 1px solid #e5e5e5;
    border-top : 1px solid #e5e5e5;
    border-right: 1px solid #e5e5e5;
    border-bottom: 1px solid #e5e5e5;
    background: #f6f6f6;
    text-align: right;
}
.not{
    line-height: 13px;
    color: #666;
     border-left: 1px solid #e5e5e5;
    border-right: 1px solid #e5e5e5;
    border-bottom: 1px solid #e5e5e5;
    text-align: left;
}

.not_contents {
    padding: 5px 8px;
    color: #666;
     border-left: 1px solid #e5e5e5;
    border-right: 1px solid #e5e5e5;
    border-bottom: 1px solid #e5e5e5;
    text-align: left;
    height: 150px;
}

</style>
</head>
<body>
	<div id="body-bg">
		<%@include file="../include/header.jsp"%>
		<!-- === BEGIN CONTENT === -->
		<div id="content">
			<div class="container background-white" style="height:785px;">
				<div class="row margin-vert-40">
					<div class="col-md-2">
						<ul class="list-group sidebar-nav" id="sidebar-nav">
							<!-- Buttons -->
							<li class="list-group-item"> </li>
							<li class="list-group-item"><a
								href="<%=request.getContextPath()%>/notice/noticeList">공지사항</a></li>
							<!-- End Buttons -->
							<!-- Carousels -->
							<li class="list-group-item"><a
								href="<%=request.getContextPath()%>/qna/list">Q&A</a></li>
							<!-- End Accordion and Tabs -->
						</ul>
					</div>
					<!-- <div class="col-md-1" style="height: 400px"></div> -->
					<div id="bspace" class="col-md-2"></div>
					<div id="main_div">
					<h1>공지사항</h1>
					<br>
					<form role="form" method="get">
						<input type="hidden" name="man_idx"
							value="${session_manager.man_idx}"> <input type="hidden"
							name="not_idx" value="${read_notice.not_idx}">
						<div class="col-md-1"></div>
						<table style="width: 700px" class="tblWrt">
							<tr>
								<th id="not_title"
									style="font-weight: bold; letter-spacing: -0.01em; text-align: left;"
									colspan="2"><label>${read_notice.not_title}</label></th>
							</tr>
							<tr>
								<td class="not" colspan="2"
									style="padding-top: 10px; padding-bottom: 10px; font-size: 11px;">
									<dl class="dl">
										<dd>
											작성자 :
											<c:if
												test="${session_manager.man_id !=null && session_manager.man_id=='admin'}">
							${session_manager.man_name}
							</c:if>
											<c:if test="${session_member.mem_idx !=null}">
							관리자
							</c:if>
										</dd>
										<dd style="width: 50px;">&nbsp;</dd>
										<%-- ${read_notice.man_name} --%>
										<dd>
											작성일 :
											<fmt:formatDate value="${read_notice.not_regdate}"
												pattern="yyyy.MM.dd" />
										</dd>
									</dl>
								</td>

								<%-- <td id="not_regdate" align="right">날짜&nbsp; <fmt:formatDate
										value="${read_notice.not_regdate}" pattern="yyyy.MM.dd" /></td> --%>


								<%-- <td id="not_viewcnt" align="right">조회수&nbsp;&nbsp;
										${read_notice.not_viewcnt }</td> --%>
							</tr>

							<tr>
								<td class="not_contents" colspan="2" style="line-height: 150%;">
									${read_notice.not_contents }</td>
							</tr>
						</table>
					</form>
					<br>
					<div class="col-md-3"></div>
					<button type="submit" class="btn btn-default btn-sm">목록</button>
					<c:if
						test="${session_manager.man_id !=null && session_manager.man_id=='admin'}">
						<button type="submit" class="btn btn-warning btn-sm" >수정</button>
						<button type="submit" class="btn btn-danger btn-sm">삭제</button>
					</c:if>

				</div>
			</div>
		</div>
	</div>
	<!-- === END CONTENT === -->
	<!-- === BEGIN FOOTER === -->
	<%@include file="../include/footer.jsp"%>
	<%@include file="../include/jsFile.jsp"%>
	<script>
		$(document).ready(function() {

			var formObj = $("form[role='form']");

			console.log(formObj);

			$(".btn-warning").on("click", function() {
				/* formObj.attr("action", "noticeUpdate");
				formObj.attr("method", "get");
				formObj.submit(); */
				window.location.href = 'noticeUpdate?not_idx=' + ${read_notice.not_idx};
			});

			$(".btn-danger").on("click", function() {
				/* formObj.attr("action", "noticeDelete");
				formObj.submit(); */
				window.location.href = 'noticeDelete?not_idx=' + ${read_notice.not_idx};
			});

			$(".btn-default").on("click", function() {
				/* self.location = "noticeList"; */
				window.location.href = 'noticeList';
			});
		});
	</script>
	</div>
</body>
</html>

<!-- === END FOOTER === -->