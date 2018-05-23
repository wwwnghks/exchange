<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script>
		$(function(){
			$.ajax({
				type:"GET",
				url:"follow_current",
				dataType:"json",
				cache:false,
				data : {
					follower_mem : ${productOne.mem_idx},
					following_mem : ${session_member.mem_idx}
				},
				success:function(data){
					if(data==0){
						$("#follow_btn").val('✓팔로윙');
					}else{
						$("#follow_btn").val('팔로우');
					}
				}
			})
		})
		function follow(){
			var follow_btn=$("#follow_btn").val();
			if(follow_btn=='팔로우'){
				$.ajax({
					type:"GET",
					url:"follow",
					dataType:"json",
					cache:false,
					data : {
						follower_mem : ${productOne.mem_idx},
						following_mem : ${session_member.mem_idx}
					},
					success:function(data){
						$("#follow_btn").val('✓팔로윙');
					}
				})
			}else if(follow_btn=='✓팔로윙'){
				$.ajax({
					type:"GET",
					url:"follow_delete",
					dataType:"json",
					cache:false,
					data : {
						follower_mem : ${productOne.mem_idx},
						following_mem : ${session_member.mem_idx}
					},
					success:function(data){
						$("#follow_btn").val('팔로우');
					}
				})
			}
		}
		</script>