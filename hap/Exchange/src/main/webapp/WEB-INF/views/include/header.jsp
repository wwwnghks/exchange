<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>

<%@include file="categorySearch.jsp"%>

<meta charset="UTF-8">
<style>
#location {
	width: 320px;
	overflow: auto;
}

#location>li {
	width: 75px !important;
	border-left: 1px solid rgba(0, 0, 0, 0.05);
	border-top: 1px solid rgba(0, 0, 0, 0.05);
	float: left !important;
}
</style>
<script>
	function productSearch(){
		location.href="<%=request.getContextPath()%>/product/productSearch?pro_name="+$("#pro_name").val();	 
	}
	function tagSearch(){
		location.href="<%=request.getContextPath()%>/product/productHashSearch?pro_hash="+$("#tag_name").val();	 
	}
	
</script>
<script>
	 $(function(){
		 $('#menu').change(function(){
			 if($("#menu").val()=='tag'){
				 $("#pro_name").attr('style','width: 450px;margin: 0 auto; display: none;" required class="search_box_input" placeholder="상품명을 입력하세요.');
				 $("#tag_name").attr('style','width: 450px;margin: 0 auto; display: inline;" required class="search_box_input" placeholder="태그명을 입력하세요.');
				 $("#tag_Atag").attr('style','display:inline;');
				 $("#pro_Atag").attr('style','display:none;');
			 }else{
				 $("#pro_name").attr('style','width: 450px;margin: 0 auto; display: inline;" required class="search_box_input" placeholder="상품명을 입력하세요.');
				 $("#tag_name").attr('style','width: 450px;margin: 0 auto; display: none;" required class="search_box_input" placeholder="태그명을 입력하세요.');
				 $("#tag_Atag").attr('style','display:none;');
				 $("#pro_Atag").attr('style','display:inline;');
			 }
		 })
	 })
</script>
<div id="pre-header" class="background-gray-lighter">
	<div class="container no-padding">
		<div class="row hidden-xs">
			<div class="col-sm-6 padding-vert-5">
				<!--  <strong>Phone:</strong>&nbsp;1-800-123-4567 -->
			</div>
			<div class="col-sm-6 text-right padding-vert-5">
				<c:if test="${session_member eq null && session_manager eq null}">
					<strong> <a
						href="<%=request.getContextPath()%>/member/loginMember">로그인</a>&nbsp;&nbsp;
						<a href="<%=request.getContextPath()%>/member/newMember">회원가입</a>&nbsp;&nbsp;
						<a href="<%=request.getContextPath()%>/notice/noticeList">고객지원센터</a></strong>
				</c:if>
				<c:if test="${session_member ne null }">
					<strong> ${session_member.mem_name }님 환영합니다. <a
						href="<%=request.getContextPath()%>/member/logout">로그아웃</a>&nbsp;&nbsp;
						<a href="<%=request.getContextPath()%>/product/myProduct">마이페이지</a>&nbsp;&nbsp;
						<a href="<%=request.getContextPath()%>/notice/noticeList">고객지원센터</a></strong>
				</c:if>

				<c:if test="${session_manager ne null }">
					<strong> ${session_manager.man_name }님 환영합니다.관리자입니다. <a
						href="<%=request.getContextPath()%>/member/logout">로그아웃</a>&nbsp;&nbsp;
						<a href="<%=request.getContextPath()%>/product/myProduct">마이페이지</a>&nbsp;&nbsp;
						<a href="<%=request.getContextPath()%>/notice/noticeList">고객지원센터</a></strong>
				</c:if>

			</div>
		</div>
	</div>
</div>

<!-- End Phone/Email -->
<!-- Header -->
<div id="header">
	<div class="container">
		<div class="row">
			<!-- Logo -->
			<div class="logo">
				<a href="/exchange" title=""> <img
					src="<%=request.getContextPath()%>/resources/HTML/assets/img/logo.png"
					alt="Logo" />
				</a>
			</div>
			<!-- End Logo-->
		</div>
		<br> <br> <br>
		<table style="margin-left: auto; margin-right: auto;">
			<tr>
				<td nowrap="nowrap" style="vertical-align: bottom; padding-right: 5px;"><select class="form-control" id="menu" style="width: 100px; display: inline;"><option
							value="name">상품명</option>
						<option value="tag">태그명</option></select>
						
				</td>
				<td nowrap="nowrap" style="vertical-align: bottom; padding-right: 5px;"> <input type="text" id="pro_name"
					class="form-control"
					style="width: 450px; margin: 0 auto; display: inline;" required
					class="search_box_input" placeholder="상품명을 입력하세요."> <input
					type="text" id="tag_name" class="form-control"
					style="width: 450px; margin: 0 auto; display: none;" required
					class="search_box_input" placeholder="태그명을 입력하세요."> <a
					id="pro_Atag" href="javascript:void(0)" onclick="productSearch()"
					class="glyphicon glyphicon-search" style="display: inline;"></a> <a
					id="tag_Atag" href="javascript:void(0)" onclick="tagSearch()"
					class="glyphicon glyphicon-search" style="display: none;"></a>
				</td>
		</table>
	</div>
</div>
<br>
<br>
<!-- End Headera  -->
<!-- Top Menu -->
<div id="hornav" class="bottom-border-shadow">
	<div class="container no-padding border-bottom">
		<div class="row">
			<div class="col-md-8 no-padding">
				<div class="visible-lg">
					<ul id="hornavmenu" class="nav navbar-nav">

						<li><span class="fa-search ">상품별</span>
							<ul id="Mfir_name" class="nav navbar-nav">
							</ul>
						<li><span class="fa-search">지역별</span>
							<ul id="location">
								<li><a
									href="<%=request.getContextPath()%>/product/locationRead?location=경기">경기</a></li>
								<li><a
									href="<%=request.getContextPath()%>/product/locationRead?location=서울">서울</a></li>
								<li><a
									href="<%=request.getContextPath()%>/product/locationRead?location=부산">부산</a></li>
								<li><a
									href="<%=request.getContextPath()%>/product/locationRead?location=강원">강원</a></li>
								<li><a
									href="<%=request.getContextPath()%>/product/locationRead?location=경남">경남</a></li>
								<li><a
									href="<%=request.getContextPath()%>/product/locationRead?location=경북">경북</a></li>
								<li><a
									href="<%=request.getContextPath()%>/product/locationRead?location=광주">광주</a></li>
								<li><a
									href="<%=request.getContextPath()%>/product/locationRead?location=대구">대구</a></li>
								<li><a
									href="<%=request.getContextPath()%>/product/locationRead?location=대전">대전</a></li>
								<li><a
									href="<%=request.getContextPath()%>/product/locationRead?location=세종">세종</a></li>
								<li><a
									href="<%=request.getContextPath()%>/product/locationRead?location=울산">울산</a></li>
								<li><a
									href="<%=request.getContextPath()%>/product/locationRead?location=인천">인천</a></li>
								<li><a
									href="<%=request.getContextPath()%>/product/locationRead?location=전남">전남</a></li>
								<li style="border-bottom: 1px solid rgba(0, 0, 0, 0.05);"><a
									href="<%=request.getContextPath()%>/product/locationRead?location=전북">전북</a></li>
								<li style="border-bottom: 1px solid rgba(0, 0, 0, 0.05);"><a
									href="<%=request.getContextPath()%>/product/locationRead?location=제주">제주</a></li>
								<li style="border-bottom: 1px solid rgba(0, 0, 0, 0.05);"><a
									href="<%=request.getContextPath()%>/product/locationRead?location=충남">충남</a></li>
								<li><a
									href="<%=request.getContextPath()%>/product/locationRead?location=충북">충북</a></li>
							</ul></li>
						<li><a
							href="<%=request.getContextPath()%>/product/newProduct"
							class="fa-pencil ">상품등록</a></li>
						<li><a href="<%=request.getContextPath()%>/product/myProduct"
							class="fa-folder">내 상품</a></li>
						<li><a href="<%=request.getContextPath()%>/notice/noticeList"
							class="fa-bullhorn">공지사항</a></li>
						                  <li><a href="<%=request.getContextPath()%>/qna/list"
                     class="fa-question-circle">Q&A</a></li>

					</ul>
				</div>
			</div>

		</div>
	</div>
</div>
