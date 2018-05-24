<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- === BEGIN HEADER === -->
<!DOCTYPE html>
<html lang="en">
<head>
<style>
#imgbox li {
	float:left; list-style:none; display: inline;
}
button{
	border-radius: 5px;
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
				<div class="row margin-vert-40">
					<!-- Begin Sidebar Menu -->
					<div class="col-md-2">
						<%@include file="../include/myPageSide.jsp"%>
					</div>
					<!-- End Sidebar Menu . -->
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
								<div class="col-md-8">
								<table><tr>
									<td nowrap="nowrap">카테고리 <td> <select class="form-control" id="fir_name" name="fir_name" style="width: 190px; display: inline; font-size: 13px;">
										<option selected="selected" disabled="disabled" >1차 분류</option>
									</select> <select id="sec_name" name="sec_name" class="form-control" style="width: 230px; display: inline; font-size: 13px;">
										<option selected="selected" >2차 분류</option>
									</select>
									</td><tr>
									<td>브랜드 </td><td> <select id="brand" name="bra_idx" style="width: 150px; display: inline;" class="form-control">
										<option selected="selected" disabled="disabled">브랜드 분류</option>
									</select> 
									<input type="text" name="bra_name" id="bra_name" class="form-control" style="width: 190px; display: inline;">
									<input type="button" value="브랜드등록" id="createBrand" class="btn btn-default btn-sm"></td><tr>
									<td>거래지역</td><td><input
								type="text" style="width: 100px; display: inline; width: 30%; white-space: nowrap;"
								name="address_post" id="sample4_postcode"
								onclick="sample4_execDaumPostcode(1)" class="form-control" placeholder="우편번호">
							<input type="button" onclick="sample4_execDaumPostcode(1);"
								value="우편번호 찾기" style="display: inline;" class="btn btn-default btn-sm"> <br> <input type="text"
								class="form-control margin-bottom-0" name="address_01"
								id="sample4_roadAddress" placeholder="도로명주소"> <input
								type="text" class="form-control margin-bottom-0"
								name="address_02" id="sample4_jibunAddress" placeholder="상세주소"><span id="guide" style="color: #999"></span></td><tr>
									<td>제목 </td><td> <input type="text" name="pro_name" size="67" class="form-control"></td><tr>
									<td style='vertical-align:top'>설명 </td> <td> <textarea name="pro_contents" rows="5" cols="67" class="form-control"></textarea></td><tr>
									<td>태그검색</td><td><input type="text" id="tag" name="hashTag"  style="width: 410px; display: inline;" class="form-control"><input type="button" class="btn btn-default btn-sm" value="추가" onclick="javascript:hashPut();"></td><tr>
									<td>연관태그</td><td><div id='hash_result' style="display: inline;"></div> <input type="button" value="초기화" class="btn btn-warning btn-sm" onclick="javascript:resetHash();"></td><tr>
									<td colspan="2" align="right"><input type="submit" value="상품등록" class="btn btn-success btn-sm" style="border-radius: 7px;"></td>
									</table>
									<input type="hidden" id="hidden_hash" name="pro_hash" value=''>
								</div>
							</div>
							<!-- End Icon Size!!! -->
							<hr>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- === END CONTENT === -->
		<%@include file="../include/footer.jsp"%>
		<%@include file="../include/jsFile.jsp"%>
		<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
		<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
		<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
			
		<script src="<%=request.getContextPath()%>/resources/js/hashTag.js">
		</script>
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