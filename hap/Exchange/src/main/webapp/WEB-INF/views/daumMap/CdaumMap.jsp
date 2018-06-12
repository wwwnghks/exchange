<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>키워드로 장소검색하기</title>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>


</head>
<body>
	<h1>바꾸자</h1>
	<form action="<%=request.getContextPath()%>/daumMap/daumMap"
		method="post">
		<table>
			<tr>
				<td>상품 주소</td>
				<td><input type="text" name="pro_location"></td>
			</tr>
			<tr>
				<td>내 주소</td>
				<td><input type="text" name="mem_address"></td>
			</tr>
			<tr>				
				<td><input type="submit" value="전송"></td>
			</tr>			
		</table>
	</form>

</body>
</html>