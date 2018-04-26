<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- === BEGIN HEADER === -->
<!DOCTYPE html>
<html lang="en">
<head>
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
							<div class="row">
								<div class="col-md-3">
									<input type="file" name="photofile">
								</div>
								<div class="col-md-7">
									카테고리 : <select id="fir_name" name="fir_name" style="width: 10ems">
										<option selected="selected">1차 분류</option>
									</select> <select id="sec_name" name="sec_name" style="width: 16em">
										<option selected="selected">2차 분류</option>
									</select> <br>
									브랜드 : <select id="brand" name="brand" style="width: 10em">
										<option selected="selected">브랜드 분류</option>
									</select> 
									<input type="text" name="bra_name" id="bra_name">
									<input type="submit" value="등록">
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
		<script>
	function category01(){
		$.ajax({
			type:'GET',
			url:'category01',
			dataType : "json",
			cache : false,
			success:function(data){
				$.each(data.first_Category, function(index, first_Category) {
					$('#fir_name').append('<option value='+first_Category.fir_name+'>'+first_Category.fir_name+'</option>');
				});
			},
			error:function(request,status,error){
				alert('ERROR : ' +request + ' ' + status + ' ' + error);
			}
		});
	};
 	$(function category02(){
 		$('#fir_name').change(function(){
 			$("#sec_name").find("option").remove();
 			$("#sec_name").append("<option selected='selected'>2차분류</option>");
 			$.ajax({
 				type:'GET',
 				url:'category02',
 				dataType : "json",
 				cache : false,
 				data : {
 					fir_name : this.value
 				},
 				success:function(data){
 					$.each(data.second_Category, function(index, second_Category) {	
 						$('#sec_name').append('<option value='+second_Category.sec_name+'>'+second_Category.sec_name+'</option>');
 					});
 				},
 				error:function(request,status,error){
 					
 					alert('ERROR : ' +request + ' ' + status + ' ' + error);
 				}
 			});
 		});
 		
	}); 
 	
 	$(function brand(){
 		$('#sec_name').change(function(){
 			$("#brand").find("option").remove();
 			$("#brand").append("<option selected='selected'>2차분류</option>");
 			$.ajax({
 				type:'GET',
 				url:'brand',
 				dataType : "json",
 				cache : false,
 				data : {
 					sec_name : this.value
 				},
 				success:function(data){
 					$.each(data.brand_Category, function(index, brand_Category) {	
 						$('#brand').append('<option value='+brand_Category.bra_name+'>'+brand_Category.bra_name+'</option>');
 					});
 				},
 				error:function(request,status,error){
 					
 					alert('ERROR : ' +request + ' ' + status + ' ' + error);
 				}
 			});
 		});
 		
	});  

	$(function(){
		category01();
	});
</script>
	</div>
</body>
</html>
<!-- === END FOOTER === -->
