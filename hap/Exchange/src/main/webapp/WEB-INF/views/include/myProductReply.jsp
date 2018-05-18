<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script>
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
		if(data["replyList"][0]!=null){
		var key = Object.keys(data["replyList"][0]);
		str += "<table border='1' style='width: 450px'><tr>";
		$.each(data.replyList, function(index, replyList) {
			var level='';
			for(var i=0;i<replyList.pro_re_level; i++){
				level+='&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp';
			}
			/* if(!level==''){level+='>';} */
			/* "<tr><td><img src="+getContextPath()+"/uploadfile/memberphoto/"+ replyList.mem_photo  + "</td>" + "<td>" */
			var date = new Date(replyList.pro_re_regdate);
			var a = getFormatDate(date);
			var photoArr = replyList.mem_photo.split("http");
			if(photoArr.length<2){
			str += "<tr><td>"+level+"<img width='50px' height='40px' src='"+getContextPath()+"/uploadfile/memberphoto/"+ replyList.mem_photo  + "'>"
					+ replyList.mem_nickname + "("
					+ getFormatDate(date) + ")<br>"
					+ level+" "+ replyList.pro_re_contents + "</td>" + "<td style='width: 80px'>"
					+ "<a href='#' class='re2ply' onclick='re2ply("+replyList.pro_re_idx+")'>답글</a>&nbsp;&nbsp;"
					+ "<a href='#' class='delete' onclick='del("+replyList.pro_re_p_num+","+replyList.pro_re_level+");'>삭제</a></td>"
					/* + "<div name='re2ply' id='re2ply_"+replyList.pro_re_idx+"' style='display:none;'><tr><td colspan='3'>" */
					+ "<tr name='re2ply' id='re2ply_"+replyList.pro_re_idx+"' style='display:none;'><td colspan='3'>"
					+ "<textarea id='recomment_"+replyList.pro_re_idx+"'></textarea>"
					+ "<input type='button' value='입력' onclick='rewrite("+replyList.pro_re_idx+","+replyList.pro_re_p_num+","
							+replyList.pro_re_s_num+","+replyList.pro_re_level+")'></td></div>";
			}
			else{
				str += "<tr><td>"+level+"<img width='50px' height='40px' src='"+ replyList.mem_photo  + "'>"
				+ replyList.mem_nickname + "("
				+ getFormatDate(date) + ")<br>"
				+ level+" "+ replyList.pro_re_contents + "</td>" + "<td style='width: 80px'>"
				+ "<a href='#' class='re2ply' onclick='re2ply("+replyList.pro_re_idx+")'>답글</a>&nbsp;&nbsp;"
				+ "<a href='#' class='delete' onclick='del("+replyList.pro_re_p_num+","+replyList.pro_re_level+");'>삭제</a></td>"
				/* + "<div name='re2ply' id='re2ply_"+replyList.pro_re_idx+"' style='display:none;'><tr><td colspan='3'>" */
				+ "<tr name='re2ply' id='re2ply_"+replyList.pro_re_idx+"' style='display:none;'><td colspan='3'>"
				+ "<textarea id='recomment_"+replyList.pro_re_idx+"'></textarea>"
				+ "<input type='button' value='입력' onclick='rewrite("+replyList.pro_re_idx+","+replyList.pro_re_p_num+","
						+replyList.pro_re_s_num+","+replyList.pro_re_level+")'></td></div>";
			}
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