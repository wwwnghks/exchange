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
<style>
#product_List li {
	float: left;
	list-style: none;
	display: inline;
}

#categoryBox {
	text-align: right;
}
/* #main_div {
 	height: 1000px;
} */
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
.msg{
    line-height: 13px;
    color: #666;
     border-left: 1px solid #e5e5e5;
    border-right: 1px solid #e5e5e5;
    border-bottom: 1px solid #e5e5e5;
    text-align: left;
}

.msg_contents {
    padding: 5px 8px;
    color: #666;
     border-left: 1px solid #e5e5e5;
    border-right: 1px solid #e5e5e5;
    border-bottom: 1px solid #e5e5e5;
    text-align: left;
    height: 150px;
}

</style>
<!-- Title -->
<title>Habitat - A Professional Bootstrap Template</title>
<%@include file="../include/style.jsp"%>
</head>
<body>
	<div id="body-bg">
		<%@include file="../include/header.jsp"%>
		<!-- === BEGIN CONTENT == -->
		<div id="content">
			<div class="container background-white" style="height: 800px;">
				<div class="row margin-vert-40">
					<!-- Begin Sidebar Menu. -->
					<div class="col-md-2">
						<%@include file="../include/myPageSide.jsp"%>
					</div>
					<div id="bspace" class="col-md-2"></div>
					<div id="main_div">
						<!-- End Sidebar Menu -->
						<h1>받은 쪽지</h1>
						<form role="form" method="get">
							<input type="hidden" name="mem_idx"
								value="${session_member.mem_idx}"> <input type="hidden"
								name="msg_idx" value="${read_message.msg_idx}"> <br>
							<!-- <table style="width: 700px" class="table"> -->
							<!-- <table style="width:100%" height="0" border="0" cellpadding="0" cellspacing="0" class="tblWrt"> -->
							<table style="width: 700px" class="tblWrt">
								<tr>
									<th id="msg_title" colspan="2"
										style="font-weight: bold; letter-spacing: -0.01em; text-align: left;">
										<label>${read_message.msg_title} </label>
									</th>
								</tr>
								<tr>
									<td class="msg" colspan="2"
										style="padding-top: 10px; padding-bottom: 10px; font-size: 11px;">
										<dl class="dl">
											<dd>발신인 : ${read_message.mem_nickname }</dd>
											<dd style="width: 50px;">&nbsp;</dd>
											<dd>
												작성일 :
												<fmt:formatDate value="${read_message.msg_regdate }"
													pattern="yyyy.MM.dd" />
											</dd>
										</dl>
									</td>
								</tr>
								<tr>
									<td class="msg_contents" colspan="2" style="line-height: 150%;">
										${read_message.msg_contents }</td>
								</tr>
							</table>
						</form>
						<br> <br>
						<div class="col-md-3"></div>
						<button type="submit" class="btn btn-default btn-sm">목록</button>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<button type="submit" class="btn btn-danger btn-sm">삭제</button>


					</div>
				</div>
			</div>
		</div>
		<!-- === END CONTENT === -->
		<%@include file="../include/footer.jsp"%>
		<%@include file="../include/jsFile.jsp"%>
		<script>
			$(document).ready(function() {

				var formObj = $("form[role='form']");

				console.log(formObj);

				$(".btn-danger").on("click", function() {
					/* formObj.attr("action", "noticeDelete");
					formObj.submit(); */
					window.location.href = 'gMessageDelete?msg_idx=' + ${read_message.msg_idx};
				});

				$(".btn-default").on("click", function() {
					/* self.location = "noticeList"; */
					window.location.href = 'gMessageList';
				});
			});
		</script>


	</div>
</body>
</html>

<!-- === END FOOTER === -->