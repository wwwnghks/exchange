<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
					<!-- Begin Sidebar Menu -->
					<div class="col-md-2">
						<%@include file="../include/myPageSide.jsp"%>
					</div>
					<div id="bspace" class="col-md-2"></div>
					<div id="main_div">
						<!-- End Sidebar Menu -->
						<h1>거래함</h1><br>
						<h3>[ 거래신청발신내역 ]</h3>
						<br>
						<c:if test="${empty mytrade }">없음</c:if>
						<c:if test="${!empty mytrade }">
							<table class="table" style="width: 700px;">
								<tr>
									<th style="width: 100px;">내상품명</th>
									<th style="width: 110px;">내상품사진</th>
									<th style="width: 100px;">상대상품명</th>
									<th style="width: 110px;">상대상품사진</th>
									<th style="width: 120px;">날짜</th>
									<th style="width: 80px;">거래상태</th>
									<th style="width: 100px;">상세기능</th>
									<c:forEach items="${mytrade }" var="mytrade">
										<tr>
											<td style="vertical-align: middle;">${mytrade.mypro_name }</td>
											<td style="vertical-align: middle;"><a href="../product/myProductRead?pro_idx=${mytrade.mypro_idx }">
													<img alt="${mytrade.mypro_name }님의 사진" height="80px"
													width="80px"
													src="<%=request.getContextPath() %>/uploadfile/memberproduct/${mytrade.mypro_photo_01 }">
											</a></td>
											<td style="vertical-align: middle;">${mytrade.oppro_name }</td>
											<td style="vertical-align: middle;"><a href="../product/myProductRead?pro_idx=${mytrade.oppro_idx }">
													<img alt="${mytrade.oppro_name }님의 사진" height="80px"
													width="80px"
													src="<%=request.getContextPath() %>/uploadfile/memberproduct/${mytrade.oppro_photo_01 }">
											</a></td>
											<td style="vertical-align: middle;"><fmt:formatDate value="${mytrade.tra_regdate }"
													pattern="yyyy.MM.dd  hh:mm" /></td>
											<td style="vertical-align: middle;">${mytrade.tra_mystatus }</td>
											<td style="vertical-align: middle;"><c:if test="${mytrade.tra_mystatus eq '거래중'}">
											<input type="button" value="거래완료" class="btn btn-default btn-sm" onclick="mytradefinish(${mytrade.tra_idx});">
											</c:if>
											<c:if test="${mytrade.tra_mystatus eq '신청중'}">
											<input type="button" value="취소" class="btn btn-danger btn-sm" onclick="tradeCancle(${mytrade.tra_idx});">
											</c:if>
											<c:if test="${mytrade.tra_mystatus eq '거래중'}">
											<input type="button" value="취소" class="btn btn-danger btn-sm" onclick="tradeCancle(${mytrade.tra_idx});">
											</c:if>
											<c:if test="${mytrade.tra_mystatus eq '거래완료'}">
											<input type="hidden" id="pro_idx" value=${mytrade.mypro_idx }>
											<select id="score_${mytrade.tra_idx }">
												<option disabled="disabled" selected="selected">평점</option>
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
											</select>
											<input type="button" class="btn btn-default btn-sm" value="평점주기" onclick="mytradeScore(${mytrade.oppro_idx },${mytrade.tra_idx})">
											</c:if>
											
											</td>
									</c:forEach>
							</table>
						</c:if>
						<br>
						<h3>[ 거래신청수신내역 ]</h3><br>
						<c:if test="${empty optrade }">없음</c:if>
						<c:if test="${!empty optrade }">
							<table class="table" style="width: 700px;">
								<tr>
									<th style="width: 100px;">내상품명</th>
									<th style="width: 110px;">내상품사진</th>
									<th style="width: 100px;">상대상품명</th>
									<th style="width: 110px;">상대상품사진</th>
									<th style="width: 120px;">날짜</th>
									<th style="width: 80px;">거래상태</th>
									<th style="width: 100px;">상세기능</th>
									<c:forEach items="${optrade }" var="optrade">
										<tr>
											<td style="vertical-align: middle;">${optrade.oppro_name }</td>
											<td style="vertical-align: middle;"><a href="../product/myProductRead?pro_idx=${optrade.oppro_idx }">
													<img alt="${optrade.oppro_name }님의 사진" height="80px"
													width="80px"
													src="<%=request.getContextPath() %>/uploadfile/memberproduct/${optrade.oppro_photo_01 }">
											</a></td>
											<td style="vertical-align: middle;">${optrade.mypro_name }</td>
											<td style="vertical-align: middle;"><a href="../product/myProductRead?pro_idx=${optrade.mypro_idx }">
													<img alt="${optrade.mypro_name }님의 사진" height="80px"
													width="80px"
													src="<%=request.getContextPath() %>/uploadfile/memberproduct/${optrade.mypro_photo_01 }">
											</a></td>
											<td style="vertical-align: middle;"><fmt:formatDate value="${optrade.tra_regdate }"
													pattern="yyyy.MM.dd  hh:mm" /></td>
											<td style="vertical-align: middle;">${optrade.tra_opstatus }</td>
											<td style="vertical-align: middle;"><c:if test="${optrade.tra_opstatus eq '신청중'}"><input type="button" class="btn btn-default btn-sm" value="수락" onclick="tradeOK(${optrade.tra_idx});">
											<input type="button" class="btn btn-danger btn-sm" value="거절" onclick="tradeNO(${optrade.tra_idx});"></c:if>
											<c:if test="${optrade.tra_opstatus eq '거절'}"><input type="button" value="삭제" onclick="tradeCancle(${optrade.tra_idx});"></c:if>
											<c:if test="${optrade.tra_opstatus eq '거래중'}">
											<input type="button" class="btn btn-default btn-sm" value="거래완료" onclick="optradefinish(${optrade.tra_idx});">
											<input type="button" class="btn btn-danger btn-sm" value="삭제" onclick="tradeCancle(${optrade.tra_idx});"></c:if>
											<c:if test="${optrade.tra_opstatus eq '거래완료'}">
											<input type="hidden" id="pro_idx" value=${optrade.mypro_idx }>
											<select id="score_${optrade.tra_idx }">
												<option disabled="disabled" selected="selected">평점</option>
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
											</select>
											<input type="button" class="btn btn-default btn-sm" value="평점주기" onclick="optradeScore(${optrade.mypro_idx },${optrade.tra_idx})">
											</c:if>
										
											</td>
									</c:forEach>
							</table>
						</c:if>

					</div>
				</div>
			</div>
		</div>
		<!-- === END CONTENT ==== -->
		<%@include file="../include/footer.jsp"%>
		<%@include file="../include/jsFile.jsp"%>
		<!-- <script>
		function tradeCancle(tra_idx){
			$.ajax({
				type : 'GET',
				url : 'tradeDelete',
				data : {
					tra_idx : tra_idx
				},
				cache : false,
				success:function(data){
 					alert('삭제되었습니다.');
 					window.location='tradeRead';
 				},
 				error:function(request,status,error){
 					alert('ERROR : ' +request + ' ' + status + ' ' + error);
 				}
			})
		}
		</script> -->
		<script>
		function tradeCancle(tra_idx){
			 window.location.href="tradeDelete?tra_idx=" + tra_idx;
		}
		function tradeOK(tra_idx){
			 window.location.href="tradeOK?tra_idx=" + tra_idx;
		}
		function tradeNO(tra_idx){
			 window.location.href="tradeNO?tra_idx=" + tra_idx;
		}
		function mytradefinish(tra_idx){
			 window.location.href="mytradefinish?tra_idx=" + tra_idx;
		}
		
		function optradefinish(tra_idx){
			 window.location.href="optradefinish?tra_idx=" + tra_idx;
		}
		
	 	function optradeScore(pro_idx,tra_idx){
			window.location.href="../member/getmemberScore?tra_idx="+tra_idx+"&pro_idx="+pro_idx+"&mem_score=" + $('#score_'+tra_idx).val();
		} 
	 	
	 	function mytradeScore(pro_idx,tra_idx){
	 		window.location.href="../member/sendmemberScore?tra_idx="+tra_idx+"&pro_idx="+pro_idx+"&mem_score=" + $('#score_'+tra_idx).val();
	 	}
		</script>
	</div>
</body>
</html>
<!-- === END FOOTER === -->