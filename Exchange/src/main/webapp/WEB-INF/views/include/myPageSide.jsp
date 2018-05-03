<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<ul class="list-group sidebar-nav" id="sidebar-nav">
	<!-- Typography -->
	<li class="list-group-item list-toggle"><a data-toggle="collapse"
		data-parent="#sidebar-nav" href="#collapse-typography">Typography</a>
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
				href="features-progress-bars.html"> <i class="fa fa-align-left"></i>Progress
					Bars
			</a></li>
			<li><a href="features-panels.html"> <i class="fa fa-columns"></i>Panels
			</a></li>
			<li><a href="features-pagination.html"> <i
					class="fa fa-arrows-h"></i>Pagination
			</a></li>
		</ul></li>
	<!-- End Components -->
	<!-- Icons -->
	<li class="list-group-item list-toggle"><a data-toggle="collapse"
		data-parent="#sidebar-nav" href="#collapse-icons">Icons</a>
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
	<li class="list-group-item"><a href="features-testimonials.html">Testimonials</a>
	</li>
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
	<li class="list-group-item"><a href="features-carousels.html">Carousels</a>
	</li>
	<!-- End Accordion and Tabs -->
	<!-- Animate On Scroll -->
	<li class="list-group-item"><a href="<%=request.getContextPath()%>/product/favoriteRead">관심 상품</a></li>
	<!-- End Animate On Scroll -->
	<!-- Grid System -->
	<li class="list-group-item"><a href="<%=request.getContextPath()%>/product/myProduct">내 상품</a></li>
	<!-- End Grid System -->
</ul>