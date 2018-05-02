<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta charset="UTF-8">
<style>

#location{
	width : 320px;
	overflow: auto;
}

#location > li{
	width : 75px!important; 
	border-left: 1px solid rgba(0, 0, 0, 0.05);
	border-top: 1px solid rgba(0, 0, 0, 0.05);
	float:left!important;
}
</style>
<div id="pre-header" class="background-gray-lighter">
	<div class="container no-padding">
		<div class="row hidden-xs">
			<div class="col-sm-6 padding-vert-5">
				<!--  <strong>Phone:</strong>&nbsp;1-800-123-4567 -->
			</div>
			<div class="col-sm-6 text-right padding-vert-5">
				<c:if test="${session_member eq null && session_manager eq null}">
				<strong>
				<a href="<%=request.getContextPath()%>/member/loginMember">로그인</a>&nbsp;&nbsp;
				<a href="<%=request.getContextPath()%>/member/newMember">회원가입</a>&nbsp;&nbsp;
				<a href="customer">고객지원센터</a></strong>
				</c:if>
				<c:if test="${session_member ne null }">
				<strong>
				${session_member.mem_name }님 환영합니다.
				<a href="<%=request.getContextPath()%>/member/logout">로그아웃</a>&nbsp;&nbsp;
				<a href="<%=request.getContextPath()%>/member/mypage">마이페이지</a>&nbsp;&nbsp;
				<a href="customer">고객지원센터</a></strong>
				</c:if>
				
				<c:if test="${session_manager ne null }">
				<strong>
				${session_manager.man_name }님 환영합니다.
				<a href="<%=request.getContextPath()%>/member/logout">로그아웃</a>&nbsp;&nbsp;
				<a href="<%=request.getContextPath()%>/member/mypage">마이페이지</a>&nbsp;&nbsp;
				<a href="customer">고객지원센터</a></strong>
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
			<!-- End Logo -->
		</div>
	</div>
</div>
<!-- End Header -->
<!-- Top Menu -->
<div id="hornav" class="bottom-border-shadow">
	<div class="container no-padding border-bottom">
		<div class="row">
			<div class="col-md-8 no-padding">
				<div class="visible-lg">
					<ul id="hornavmenu" class="nav navbar-nav">

						<li>
							<!--  <span class="fa-copy ">Pages</span> --> <span
							class="fa-search ">상품별</span>
							<ul>
								<li><a href="pages-about-us.html">About Us</a></li>
								<li><a href="pages-services.html">Services</a></li>
								<li><a href="pages-faq.html">F.A.Q.</a></li>
								<li><a href="pages-about-me.html">About Me</a></li>
								<li><a href="pages-full-width.html">Full Width</a></li>
								<li><a href="pages-left-sidebar.html">Left Sidebar</a></li>
								<li><a href="pages-right-sidebar.html">Right Sidebar</a></li>
								<li><a href="pages-login.html">Login</a></li>
								<li><a href="pages-sign-up.html">Sign-Up</a></li>
								<li><a href="pages-404.html">404 Error Page</a></li>
							</ul>
						</li>
						<li><span class="fa-search">지역별</span>
							<ul id="location">
								<li><a href="<%=request.getContextPath()%>/product/locationRead?location=경기">경기</a></li>
								<li><a href="<%=request.getContextPath()%>/product/locationRead?location=서울">서울</a></li>
								<li><a href="<%=request.getContextPath()%>/product/locationRead?location=부산">부산</a></li>
								<li><a href="<%=request.getContextPath()%>/product/locationRead?location=강원">강원</a></li>
								<li><a href="<%=request.getContextPath()%>/product/locationRead?location=경남">경남</a></li>
								<li><a href="<%=request.getContextPath()%>/product/locationRead?location=경북">경북</a></li>
								<li><a href="<%=request.getContextPath()%>/product/locationRead?location=광주">광주</a></li>
								<li><a href="<%=request.getContextPath()%>/product/locationRead?location=대구">대구</a></li>
								<li><a href="<%=request.getContextPath()%>/product/locationRead?location=대전">대전</a></li>
								<li><a href="<%=request.getContextPath()%>/product/locationRead?location=세종">세종</a></li>
								<li><a href="<%=request.getContextPath()%>/product/locationRead?location=울산">울산</a></li>
								<li><a href="<%=request.getContextPath()%>/product/locationRead?location=인천">인천</a></li>
								<li><a href="<%=request.getContextPath()%>/product/locationRead?location=전남">전남</a></li>
								<li style="border-bottom: 1px solid rgba(0, 0, 0, 0.05);"><a href="<%=request.getContextPath()%>/product/locationRead?location=전북">전북</a></li>
								<li style="border-bottom: 1px solid rgba(0, 0, 0, 0.05);"><a href="<%=request.getContextPath()%>/product/locationRead?location=제주">제주</a></li>
								<li style="border-bottom: 1px solid rgba(0, 0, 0, 0.05);"><a href="<%=request.getContextPath()%>/product/locationRead?location=충남">충남</a></li>
								<li><a href="<%=request.getContextPath()%>/product/locationRead?location=충북">충북</a></li>
							</ul>
							</li>
						<li><a href="<%=request.getContextPath()%>/product/newProduct" class="fa-pencil ">상품등록</a></li>
						<li><a href="<%=request.getContextPath()%>/product/myProduct" class="fa-folder">내 상품</a></li>
						<li><a href="contact.html" class="fa-bullhorn">공지사항</a></li>
						<li><a href="contact.html" class="fa-question-circle">Q&A</a>
						</li>

					</ul>
				</div>
			</div>
			<div class="col-md-4 no-padding">
				<ul class="social-icons pull-right">
					<li class="social-rss"><a href="#" target="_blank" title="RSS"></a>
					</li>
					<li class="social-twitter"><a href="#" target="_blank"
						title="Twitter"></a></li>
					<li class="social-facebook"><a href="#" target="_blank"
						title="Facebook"></a></li>
					<li class="social-googleplus"><a href="#" target="_blank"
						title="Google+"></a></li>
				</ul>
			</div>
		</div>
	</div>
</div>