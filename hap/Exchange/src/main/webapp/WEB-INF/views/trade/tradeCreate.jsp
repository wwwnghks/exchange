<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
</style>
</head>
<%-- <script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/HTML/assets/js/jquery.min.js"
	type="text/javascript"></script>
 <script type="text/javascript">
        function setParentText(){
             opener.document.getElementById("mypro_idx").value = $('input[name="myproduct"]:checked').val();
             window.close();
        }
   </script> --%>
<body>
<!-- 상품선택 -->
<h2>내상품 선택</h2>
<div>
<form method="post">
<input type="hidden" name="oppro_idx" value=${oppro_idx }>
<table border="1">
<tr>
<c:forEach items="${myProduct }" var="myProduct" varStatus="status">
    <c:if test="${status.index%4==0 }"><tr></c:if>
	<td align="center">
	 <img alt="${myProduct.pro_name }님의 사진" height="150px" width="150px"  
                       		src="<%=request.getContextPath() %>/uploadfile/memberproduct/${myProduct.pro_photo_01 }"><br>
                       		<input type = "radio"  name="mypro_idx" value="${myProduct.pro_idx }"></td>          		
</c:forEach>
</table>
</div>
<br><br>
<div>
<input type="submit" value="거래신청">
<input type="button" value="닫기" onclick="window.close();">
</div>
</form>
</body>
</html>