<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<script
	src="<%=request.getContextPath()%>/resources/Documentation/assets/js/jquery.min.js"></script>
<script type="text/javascript">
	var pre_name;
	
	$(function(){
		read();
	})
	
	function read() {
		var table = document.getElementById('table');
		var str = "";
		$.ajax({
			url : "reply/read",
			dataType : "json",
			cache : false,
			success : function(data) {
				var key = Object.keys(data["replyList"][0]);
				str += "<table border='1'><tr>" + "<th>" + key[0] + "</th>"
						+ "<th>" + key[1] + "</th>" + "<th>" + key[2] + "</th>"
						+ "<th>" + key[3] + "</th>" + "<th>" + key[4] + "</th>"
						+ "<th>" + key[5] + "</th>" + "<th>" + key[6] + "</th>"
						+ "<th>" + key[7] + "</th>" + "<th>기능</th>";
				$.each(data.replyList, function(index, replyList) {
					var level='';
					for(var i=0;i<replyList.pro_re_level; i++){
						level+='-';
					}
					if(!level==''){level+='>';}
					str += "<tr><td>" + replyList.pro_re_idx  + "</td>" + "<td>"
							+ replyList.pro_re_p_num + "</td>" + "<td>"
							+ replyList.pro_re_s_num + "</td>" + "<td>"
							+ replyList.pro_re_level + "</td>" + "<td>"
							+ level+" "+ replyList.pro_re_contents + "</td>" + "<td>"
							+ replyList.pro_re_regdate + "</td>" + "<td>"
							+ replyList.pro_idx + "</td>" + "<td>"
							+ replyList.mem_idx + "</td>" + "<td>"
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
			url : "reply/rewrite",
			dataType : "json",
			cache : false,
			method : "post",
			data : {
				pro_re_contents : $("#recomment_"+pro_re_idx).val(),
				pro_re_p_num : pro_re_p_num,
				pro_re_s_num : pro_re_s_num,
				pro_re_level : pro_re_level,
				mem_idx : "1",
				pro_idx : "1"
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
				url : "reply/delete",
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
				url : "reply/write",
				data : {
					pro_re_contents : $("#comment").val(),
					mem_idx : "1",
					pro_idx : "1"
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

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
</style>
</head>
<body>

	<textarea id="comment" name="comment"></textarea>
	<input type="button" value="입력" id="write">

	<div id="table"></div>
</body>
</html>
