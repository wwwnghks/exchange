<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script>
	function getContextPath() {
		var offset = location.href.indexOf(location.host)
				+ location.host.length;
		var ctxPath = location.href.substring(offset, location.href.indexOf(
				'/', offset + 1));
		return ctxPath;
	}
	$(function() {
		var hashPro = "${productOne.pro_hash }";
		var hashArr = hashPro.split('#');
		for (var i = 1; i < hashArr.length; i++) {
			$("#hashDiv").append(
					'&nbsp;<a href=' + getContextPath()
							+ '/product/productHashSearch?pro_hash='
							+ hashArr[i] + '>#' + hashArr[i]);
		}

	})
</script>
