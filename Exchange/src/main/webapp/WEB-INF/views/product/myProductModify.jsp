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
						<ul class="list-group sidebar-nav" id="sidebar-nav">
							<!-- Typography -->
							<li class="list-group-item list-toggle"><a
								data-toggle="collapse" data-parent="#sidebar-nav"
								href="#collapse-typography">Typography</a>
								<ul id="collapse-typography" class="collapse">
									<li><a href="features-typo-basic.html"> <i
											class="fa fa-sort-alpha-asc"></i>Basic Typography
									</a></li>
									<li><a href="features-typo-blockquotes.html"> <i
											class="fa fa-magic"></i>Blockquotes
									</a></li>
								</ul></li>
							<!-- End Typography -->
							<!-- Components -->
							<li class="list-group-item list-toggle"><a
								class="accordion-toggle" href="#collapse-components"
								data-toggle="collapse">Components</a>
								<ul id="collapse-components" class="collapse">
									<li><span class="badge">New</span> <a
										href="features-labels.html"> <i class="fa fa-tags"></i>Labels
									</a></li>
									<li><span class="badge">New</span> <a
										href="features-progress-bars.html"> <i
											class="fa fa-align-left"></i>Progress Bars
									</a></li>
									<li><a href="features-panels.html"> <i
											class="fa fa-columns"></i>Panels
									</a></li>
									<li><a href="features-pagination.html"> <i
											class="fa fa-arrows-h"></i>Pagination
									</a></li>
								</ul></li>
							<!-- End Components -->
							<!-- Icons -->
							<li class="list-group-item list-toggle"><a
								data-toggle="collapse" data-parent="#sidebar-nav"
								href="#collapse-icons">Icons</a>
								<ul id="collapse-icons" class="collapse">
									<li><span class="badge badge-u">New</span> <a
										href="features-icons.html"> <i
											class="fa fa-chevron-circle-right"></i>Icon Styling
									</a></li>
									<li><a href="features-icons-font-awesome.html"> <i
											class="fa fa-chevron-circle-right"></i>Font Awesome Icons
									</a></li>
									<li><a href="features-icons-social.html"> <i
											class="fa fa-chevron-circle-right"></i>Social Icons
									</a></li>
									<li><a href="features-icons-glyphicons.html"> <i
											class="fa fa-chevron-circle-right"></i>Glyphicons
									</a></li>
								</ul></li>
							<!-- End Icons -->
							<!-- Testimonials -->
							<li class="list-group-item"><a
								href="features-testimonials.html">Testimonials</a></li>
							<!-- End Testimonials -->
							<!-- Accordion and Tabs -->
							<li class="list-group-item"><a
								href="features-accordions-tabs.html">Accordions & Tabs</a></li>
							<!-- End Accordion and Tabs -->
							<!-- Buttons -->
							<li class="list-group-item"><a href="features-buttons.html">Buttons</a>
							</li>
							<!-- End Buttons -->
							<!-- Carousels -->
							<li class="list-group-item"><a
								href="features-carousels.html">Carousels</a></li>
							<!-- End Accordion and Tabs -->
							<!-- Animate On Scroll -->
							<li class="list-group-item"><a
								href="features-animate-on-scroll.html">Animate On Scroll</a></li>
							<!-- End Animate On Scroll -->
							<!-- Grid System -->
							<li class="list-group-item"><a href="features-grid.html">Grid
									System</a></li>
							<!-- End Grid System -->
						</ul>
					</div>
					<!-- End Sidebar Menu -->
					<div class="col-md-10">
						<!-- Icon Size -->
						<h3 class="margin-bottom-20">상품 등록</h3>
						<form method="post" enctype="multipart/form-data">
						<input type="hidden" name ="mem_idx" value="${session_member.mem_idx }">
							<div class="row">
								<div class="col-md-3">
									<input type="file" name="photofile01" id="inputGroupFile01">
									<input type="file" name="photofile02" id="inputGroupFile02">
									<input type="file" name="photofile03" id="inputGroupFile03">
									 <div id="imgbox" draggable="auto">
										<img id="preview_img" height="200" style="max-width:300px; max-height:300px; width: 210px; height: 210px;"
                                     src="" />
                                     <ul id="imagelist" class="list-group" style="list-style-type:none;margin-top:1px">
                   					 </ul>
      								  </div>
								</div>
								<div class="col-md-7">
								<table><tr>
									<td nowrap="nowrap">카테고리 <td> <select id="fir_name" name="fir_name" style="width: 10ems">
									<option selected="selected" disabled="disabled">1차 분류</option>
									</select> <select id="sec_name" name="sec_name" style="width: 16em">
										<option selected="selected" disabled="disabled">2차 분류</option>
									</select>
									</td><tr>
									<td>브랜드 </td><td> <select id="brand" name="bra_idx" style="width: 10em">
										<option selected="selected" disabled="disabled">브랜드 분류</option>
									</select> 
									<input type="text" name="bra_name" id="bra_name">
									<input type="button" value="브랜드등록" id="createBrand"></td><tr>
									<td>거래지역</td><td><input type="text" name="pro_location" size="67" value="${myProduct.pro_location }"></td><tr>
									<td>제목 </td><td> <input type="text" name="pro_name" size="67" value="${myProduct.pro_name }"></td><tr>
									<td style='vertical-align:top'>설명 </td> <td> <textarea name="pro_contents" rows="5" cols="67">${myProduct.pro_contents }</textarea></td><tr>
									<td>연관태그</td><td><input type="text" name="pro_hash"  size="67" value="${myProduct.pro_hash }"></td><tr>
									<td colspan="2" align="right"><input type="submit" value="수정완료"></td>
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
		
		<script src="<%=request.getContextPath()%>/resources/js/category2.js">
		</script>
	   
    
        	<script type="text/javascript">  
        $(document).ready(function() {
        	var cnt=0;
        	var files=new Array();
            var upload = $('#inputGroupFile01')[0],
                imgbox = document.getElementById('imgbox'),
                state = $('#inputGroupFile01');

            if (typeof window.FileReader === 'undefined') {
                state.className = 'fail';
            } else {
                state.className = 'success';
            }
            upload.onchange = function(e) {
                e.preventDefault();
                var file = upload.files[0],
                reader = new FileReader();
                reader.onload = function(event) {
                	cnt+=1;
                	if(cnt>=4){
                		alert('사진은 3장만 등록가능합니다.');
                		return;
                	}
                	files[cnt]=file;
                	$('#imgbox ul').append(
                		    $('<li>').append(
                		        $('<a>').attr("href","/user/messages").append(
                		            $('<span>').attr({'class': 'tab'}).append($("<img id='img_"+cnt+"'>").attr({'src':event.target.result,'style':'width:55px; height:55px'})
                		            ))));  
                    $("#preview_img").attr("src",event.target.result);
                };
                reader.readAsDataURL(file);
                return false;
            };
        });

    </script>  

		<%-- 
		 <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
		<script src="<%=request.getContextPath()%>/resources/js/daumAdressAPI.js"></script> --%>
	</div>
	 <script>
		    	function load_fir_Select(){
		    		 $("#fir_name").val("${myProduct.fir_idx}").trigger('change');
		    	}
		    	function load_sec_Select(){
		    		 $("#sec_name").val("${myProduct.sec_idx}").trigger('change');
		    	}
		    	function load_bra_Select(){
		    		 $("#brand").val("${myProduct.bra_idx}").trigger('change');
		    	}
		    	 
		   		
	    	

		</script> 
</body>
</html>
<!-- === END FOOTER === -->
