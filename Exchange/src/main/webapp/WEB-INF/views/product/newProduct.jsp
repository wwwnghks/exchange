<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- === BEGIN HEADER === -->
<!DOCTYPE html>
<html lang="en">
<head>
<style>
#imgbox li {float:left; list-style:none; display: inline;}
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
				<div class="row margin-vert-40">
					<!-- Begin Sidebar Menu -->
					<div class="col-md-2">
						<%@include file="../include/myPageSide.jsp"%>
					</div>
					<!-- End Sidebar Menu -->
					<div class="col-md-10">
						<!-- Icon Size -->
						<h3 class="margin-bottom-20">상품 등록</h3>
						<form method="post" enctype="multipart/form-data">
						<input type="hidden" name ="mem_idx" value="${session_member.mem_idx }">
							<div class="row">
								<div class="col-md-3">
									<div id="file_div01">파일 1.<input type="file" name="photofile01" id="inputGroupFile01"></div>
									<div id="file_div02" style="display: none;">파일 2.<input type="file" name="photofile02" id="inputGroupFile02"></div>
									<div id="file_div03" style="display: none;">파일 3.<input type="file" name="photofile03" id="inputGroupFile03"></div>
									 <div id="imgbox" draggable="auto">
										<img id="preview_img" height="200" style="max-width:300px; display: none; max-height:300px; width: 210px; height: 210px;"
                                     src="" />
                                     <ul id="imagelist" class="list-group" style="list-style-type:none;margin-top:1px">
                                     	<li><a href="javascript:img01_change();" id="li_img01" style="display: none;"><img id='img01' style='width:55px; height:55px'></a></li>
                                     	<li><a href="javascript:img02_change();" id="li_img02" style="display: none;"><img id='img02' style='width:55px; height:55px'></a></li>
                                     	<li><a href="javascript:img03_change();" id="li_img03" style="display: none;"><img id='img03' style='width:55px; height:55px'></a></li>
                                     
                   					 </ul>
      								  </div>
								</div>
								<div class="col-md-7">
								<table><tr>
									<td nowrap="nowrap">카테고리 <td> <select id="fir_name" name="fir_name" style="width: 10ems">
										<option selected="selected" disabled="disabled" >1차 분류</option>
									</select> <select id="sec_name" name="sec_name" style="width: 16em">
										<option selected="selected" >2차 분류</option>
									</select>
									</td><tr>
									<td>브랜드 </td><td> <select id="brand" name="bra_idx" style="width: 10em">
										<option selected="selected" disabled="disabled">브랜드 분류</option>
									</select> 
									<input type="text" name="bra_name" id="bra_name">
									<input type="button" value="브랜드등록" id="createBrand"></td><tr>
									<td>거래지역</td><td><input
								type="text" style="width: 30%; white-space: nowrap;"
								name="address_post" id="sample4_postcode"
								onclick="sample4_execDaumPostcode(1)" placeholder="우편번호">
							<input type="button" onclick="sample4_execDaumPostcode(1);"
								value="우편번호 찾기"> <br> <input type="text"
								class="form-control margin-bottom-0" name="address_01"
								id="sample4_roadAddress" placeholder="도로명주소"> <input
								type="text" class="form-control margin-bottom-0"
								name="address_02" id="sample4_jibunAddress" placeholder="상세주소"><span id="guide" style="color: #999"></span></td><tr>
									<td>제목 </td><td> <input type="text" name="pro_name" size="67"></td><tr>
									<td style='vertical-align:top'>설명 </td> <td> <textarea name="pro_contents" rows="5" cols="67"></textarea></td><tr>
									<td>연관태그</td><td><input type="text" name="pro_hash"  size="67"></td><tr>
									<td colspan="2" align="right"><input type="submit" value="상품등록"></td>
									</table>
									
								</div>
							</div>
							<!-- End Icon Size -->
							<hr>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- === END CONTENT === -->
		<%@include file="../include/footer.jsp"%>
		<%@include file="../include/jsFile.jsp"%>
		
		<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
		<script src="<%=request.getContextPath()%>/resources/js/daumAdressAPI.js">
		</script>
		
		<script src="<%=request.getContextPath()%>/resources/js/category.js">
		</script>
	 	<script src="<%=request.getContextPath()%>/resources/js/imageShow.js">
		</script>
		

	</div>
</body>
</html>
<!-- === END FOOTER === -->
