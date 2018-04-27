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

#buttons {
	text-align: right;
	vertical-align: bottom;
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
				<div class="row margin-vert-30">
					<div class="col-md-12">
						<div class="row">
							<div class="col-md-5 animate fadeIn">
								<img width="350px" height="250px"
									src="<%=request.getContextPath() %>/uploadfile/memberproduct/${productOne.pro_photo_01 }"
									alt="about-me" class="margin-top-10">
								<ul class="list-inline about-me-icons margin-vert-20">
									<li><a href="#"> <img width="100px" height="70px"
											src="<%=request.getContextPath() %>/uploadfile/memberproduct/${productOne.pro_photo_01 }">
									</a></li>
									<li><a href="#"> <img width="100px" height="70px"
											src="<%=request.getContextPath() %>/uploadfile/memberproduct/${productOne.pro_photo_02 }">
									</a></li>
									<li><a href="#"> <img width="100px" height="70px"
											src="<%=request.getContextPath() %>/uploadfile/memberproduct/${productOne.pro_photo_03 }">
									</a></li>
								</ul>
								<br>
								<h3>상세 설명</h3>
								<p style="border: solid; 1px; ">${productOne.pro_contents }</p>

							</div>
							<div class="col-md-6 margin-bottom-10 animate fadeInRight">
								<h2 class="padding-top-10 pull-left">${productOne.pro_name }
								</h2>
								<br>
								<div id="buttons">
									<input type="submit" value="수정" id="modify"><input
										type="submit" value="삭제" id="delete">
								</div>
								<div class="clearfix"></div>
								<h5>
									등록일 :
									<fmt:formatDate value="${productOne.pro_regdate }"
										pattern="yyyy.MM.dd" />
									<br> 교환장소 : ${productOne.pro_location }
								</h5>
								<hr>
								<h4>등록자 정보</h4>
								<h5>
									닉네임 : ${ownerMember.mem_nickname }<br> 이메일 :
									${ownerMember.mem_email }<br> 전화번호 :
									${ownerMember.mem_phone }<br>
								</h5>
								<hr>
								댓글달기<br>
								
								<textarea id="comment" name="comment" cols="70"></textarea><br>
								<input type="button" value="입력" id="write">
								<div id="table"></div>

								
							</div>
						</div>
						<hr>


					</div>
				</div>
			</div>
		</div>
		<!-- === END CONTENT === -->


		<%@include file="../include/footer.jsp"%>
		<%@include file="../include/jsFile.jsp"%>
		<script type="text/javascript">
		
		function getContextPath(){
		    var offset=location.href.indexOf(location.host)+location.host.length;
		    var ctxPath=location.href.substring(offset,location.href.indexOf('/',offset+1));
		    return ctxPath;
		}


	var pre_name;
	
	$(function(){
		read();
	})
	
	function read() {
		var table = document.getElementById('table');
		var str = "";
		$.ajax({
			url : "../reply/read",
			dataType : "json",
			data : {
					pro_idx : ${productOne.pro_idx }
				},
			cache : false,
			success : function(data) {
				var key = Object.keys(data["replyList"][0]);
				str += "<table border='1'><tr>";
				$.each(data.replyList, function(index, replyList) {
					var level='';
					for(var i=0;i<replyList.pro_re_level; i++){
						level+='&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp';
					}
					/* if(!level==''){level+='>';} */
					/* "<tr><td><img src="+getContextPath()+"/uploadfile/memberphoto/"+ replyList.mem_photo  + "</td>" + "<td>" */
					str += "<tr><td>"+level+"<img width='50px' height='40px' src='"+getContextPath()+"/uploadfile/memberphoto/"+ replyList.mem_photo  + "'></td>" + "<td>"
							+ replyList.mem_nickname + "("
							+ replyList.pro_re_regdate + ")<br>"
							+ level+" "+ replyList.pro_re_contents + "</td>" + "<td>"
							+ "<a href='#' class='re2ply' onclick='re2ply("+replyList.pro_re_idx+")'>답글</a>&nbsp;&nbsp;"
							+ "<a href='#' class='delete' onclick='del("+replyList.pro_re_p_num+","+replyList.pro_re_level+");'>삭제</a>"
							+ "<br><div name='re2ply' id='re2ply_"+replyList.pro_re_idx+"' style='display:none;'>"
							+ "<textarea id='recomment_"+replyList.pro_re_idx+"'></textarea>"
							+ "<input type='button' value='입력' onclick='rewrite("+replyList.pro_re_idx+","+replyList.pro_re_p_num+","
									+replyList.pro_re_s_num+","+replyList.pro_re_level+")'></td>";
				});
				str += "</table>";
				table.innerHTML = str;
			},
			error : function(request, status, error) {
				alert("code:" + request.status + "\n" + "error:" + error);
			}
		});
	}
	
	function rewrite(pro_re_idx,pro_re_p_num,pro_re_s_num,pro_re_level){
		$.ajax({
			url : "../reply/rewrite",
			dataType : "json",
			cache : false,
			method : "post",
			data : {
				pro_re_contents : $("#recomment_"+pro_re_idx).val(),
				pro_re_p_num : pro_re_p_num,
				pro_re_s_num : pro_re_s_num,
				pro_re_level : pro_re_level,
				mem_idx : ${session_member.mem_idx },
				pro_idx : ${productOne.pro_idx }
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
	
	function del(pro_re_p_num,pro_re_level){
		if(confirm("정말 삭제할까요?")){
			if(pro_re_level>0){
				alert('답글이 있는 댓글은 삭제할 수 없습니다.');
				return;
			}
			$.ajax({
				url : "../reply/delete",
				data : {
					pro_re_p_num : pro_re_p_num,
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
	
	function re2ply(pro_re_idx){	
		var re2ply = $('#re2ply_'+pro_re_idx).attr('id');
		if(pre_name){
			$('#'+pre_name).hide(); 
		}
		$('#'+re2ply).show(); 
		pre_name=re2ply;
	}
	
	$(function() {
		$("#write").on("click", function() {
			$.ajax({
				url : "../reply/write",
				data : {
					pro_re_contents : $("#comment").val(),
					mem_idx : ${session_member.mem_idx },
					pro_idx : ${productOne.pro_idx}
				},
				method : "post",
				success : function(data) {
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
	});
	
	
</script>
	</div>
</body>
</html>
<!-- === END FOOTER === -->