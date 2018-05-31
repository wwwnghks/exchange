<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시글 작성</title>
<%@include file="../include/style.jsp"%>


<script>
	function btnDelete() {
		if (confirm("삭제하시겠습니까?")) {
			document.form1.action = "delete?qa_idx=${qna.qa_idx}";
			document.form1.submit();
		}
	}
</script>
<style type="text/css">
/* .layer {
	text-align: center;
} */
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
						<!-- End Accordion and Tabs  -->
					</ul>
				</div>
				<div class="col-md-1" style="height: 900px"></div>
				<h2>게시글 보기</h2>
				<hr class="margin-vert-40">
				<div class="col-md-2"></div>
				<div id="topForm">
					<form name="form1" method="post">

						<div class="layer">


							<table style="width: 700px" class="table table-striped">
								<tr>
									<th colspan="6" style="text-align: center">${qna.qa_title}</th>
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
							

							댓글달기<br>
							<textarea id="comment" name="comment" cols="70"></textarea>
							<br> <input type="button" value="입력" id="reply_write">
							<div id="table"></div>
							<hr>
							<button type="button" id="btnPre">
								<a href="list">목록</a>
							</button>
							<!-- 게시물번호를 hidden으로 처리   -->
							<input type="hidden" name="bno" id="qa_idx" value="${qna.qa_idx}">
							<c:if test="${session_member ne null }">
							<input type="hidden" name="member" id ="writer" value="member">
							</c:if>
							<c:if test="${session_manager ne null }">
							<input type="hidden" name="manager" id ="writer" value="manager">
							</c:if>
							

						</div>
						<br>
					</form>
					<!-- 댓글 기능 스크립트 -->


				</div>
			</div>
		</div>

 
		<!-- === END CONTENT = == -->
		<%@include file="../include/footer.jsp"%>
		<%@include file="../include/jsFile.jsp"%>
		
		<script>
		var pre_name;
		function getFormatDate(date){
			var year = date.getFullYear();  
			var month = date.getMonth()+1;
			var date2 = date.getDate();
			var hour = date.getHours();
			var minutes = date.getMinutes();
			return year+"."+month+"."+date2+"&nbsp&nbsp"+hour+":"+minutes;
		}
		function getContextPath(){
		    var offset=location.href.indexOf(location.host)+location.host.length;
		    var ctxPath=location.href.substring(offset,location.href.indexOf('/',offset+1));
		    return ctxPath;
		}
		
		$(function(){
			read();
		})
		
		$("#reply_write").on("click",function(){
			var comment = $("#comment").val();
			$.ajax({
				url : "qna_reply/write",
				data : {
					qa_re_contents : comment,
					qa_re_writer : $("#writer").val(),
					qa_idx : $("#qa_idx").val(),
					man_idx : 2
				},
				method : "post",
				success : function(data){
					if(data == 1) { 
						read(); 
					    $("#comment").val('');
					}
				},
				error : function(request, status, error) {
					alert("code:" + request.status + "\n" + "error:" + error);
				}
			}); 
		});
		
		function read(){
			var table = document.getElementById("table");
			var str = "";
			$.ajax({
				url : "qna_reply/read",
				dataType : "json",
				data : {
					qa_idx : $("#qa_idx").val()
				},
				method : "get",
				success : function(data){
					if(data["list"][0]!=null){
						var key = Object.keys(data["list"][0]);
						str += "<table  class='table' style='width: 450px'><tr>";
						$.each(data.list, function(index, list) {
							var level='';
							for(var i=0;i<list.qa_re_level; i++){
								level+='&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp';
							}
							var date = new Date(list.qa_re_regdate);
							var a = getFormatDate(date);
							str += "<tr><td>" 
									+ level+"└ "+ list.writer_name + "("
									+ getFormatDate(date) + ")<br>"
									+ level+" "+list.qa_re_contents + "</td>" + "<td style='width: 80px'>"
									+ "<a href='javascript:void(0)' class='re2ply' onclick='re2ply("+list.qa_re_idx+")'>답글</a>&nbsp;&nbsp;"
									+ "<a href='javascript:void(0)' class='delete' onclick='del("+list.qa_re_p_num+","+list.qa_re_level+");'>삭제</a></td>"
									/* + "<div name='re2ply' id='re2ply_"+replyList.pro_re_idx+"' style='display:none;'><tr><td colspan='3'>" */
									+ "<tr name='re2ply' id='re2ply_"+list.qa_re_idx+"' style='display:none;'><td colspan='3'>"
									+ "<textarea class='form-control' style='width:450px;' id='recomment_"+list.qa_re_idx+"'></textarea>"
									+ "<input type='button' value='입력' class='btn btn-default btn-sm' onclick='rewrite("+list.qa_re_idx+","+list.qa_re_p_num+","
											+list.qa_re_s_num+","+list.qa_re_level+")'></td></div>";
						
						});
						str += "</table>";
						table.innerHTML = str;
						}
				},
				error : function(request, status, error) {
					alert("code:" + request.status + "\n" + "error:" + error);
				}
			});
		}
		function re2ply(qa_re_idx){	
			var re2ply = $('#re2ply_'+qa_re_idx).attr('id');
			if(pre_name){
				$('#'+pre_name).hide(); 
			}
			$('#'+re2ply).show(); 
			pre_name=re2ply;
		}
		
		function rewrite(qa_re_idx,qa_re_p_num,qa_re_s_num,qa_re_level){
			$.ajax({
				url : "qna_reply/rewrite",
				dataType : "json",
				cache : false,
				method : "post",
				data : {
					qa_re_contents : $("#recomment_"+qa_re_idx).val(),
					qa_re_writer : $("#writer").val(),
					qa_re_p_num : qa_re_p_num,
					qa_re_s_num : qa_re_s_num,
					qa_re_level : qa_re_level,
					qa_idx : $("#qa_idx").val(),
					man_idx : 2
				},
				success : function(data) {
					if(data == 1) { 
						read(); 
					    $("#recomment").val('');
					    
					}
				},
				error : function(request, status, error) {
					alert("code:" + request.status + "\n" + "error:" + error);
				}
			});
		}
		
		function del(qa_re_p_num,qa_re_level){
			if(confirm("정말 삭제할까요?")){
				if(qa_re_level>0){
					alert('답글이 있는 댓글은 삭제할 수 없습니다.');
					return;
				}
				$.ajax({
					url : "qna_reply/delete",
					data : {
						qa_re_p_num : qa_re_p_num,
					},
					method : "post",
					success : function(data) {
						if(data == 1) {
							alert('삭제되었습니다.');
						}else{
							alert('답글이 있는 댓글은 삭제할 수 없습니다.');
						}
						read();
						
					},
					error : function(request, status, error) {
						alert("code:" + request.status + "\n" + "error:" + error);
					}
				});
			}
			}
			 
		
		</script>
		<!-- aa -->
</body>

</html>

